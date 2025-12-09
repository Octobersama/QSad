package sama.october.QSad.hook.troop;

import java.lang.reflect.Method;

import sama.october.QSad.hook.base.BaseSwitchHookItem;
import sama.october.QSad.hook.base.HookItemAnnotation;
import sama.october.QSad.ui.host.HostUIFactory;
import sama.october.QSad.javaplugin.api.MsgData;
import sama.october.QSad.utils.dexkit.DexKit;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.hook.xpcompat.XposedBridge;
import sama.october.QSad.utils.qq.MsgTool;
import sama.october.QSad.utils.qq.QQCurrentEnv;
import sama.october.QSad.utils.qq.TroopTool;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.FieldUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

@HookItemAnnotation(TAG = "???????", desc = "????????????????????????????????")
public final class SimpleTroopManagement extends BaseSwitchHookItem {
    private static Method sOnClickAvatar;

    @Override
    protected boolean initMethod() throws Throwable {
        Class<?> listener = DexKit.getClass(getNAME());
        sOnClickAvatar = MethodUtils.create(listener).withMethodName("onClick").findOne();
        return true;
    }

    @Override
    public void initCallback() {
        HookUtils.replaceIfEnable(this, sOnClickAvatar, param -> {
            Object aioAvatarContentComponent = FieldUtils.create(param.thisObject)
                    .ofType(ClassUtils._AIOAvatarContentComponent()).getValue();
            Object aioMsgItem = FieldUtils.create(aioAvatarContentComponent).ofType(ClassUtils._AIOMsgItem())
                    .getValue();
            Object msgRecord = FieldUtils.create(aioMsgItem).inParent(ClassUtils._AIOMsgItem())
                    .ofType(ClassUtils._MsgRecord()).getValue();
            final MsgData msgData = new MsgData(msgRecord);

            Object memberInfo = TroopTool.getMemberInfo(msgData.peerUin, QQCurrentEnv.getCurrentUin());

            if (msgData.type != 2 || memberInfo == null) {
                return XposedBridge.invokeOriginalMethod(param.method, param.thisObject, param.args);
            }

            String role = FieldUtils.create(memberInfo).withName("role").getValue().toString();
            if (role.equals("MEMBER")) {
                return XposedBridge.invokeOriginalMethod(param.method, param.thisObject, param.args);
            }

            String troopNick = TroopTool.getMemberName(msgData.peerUin, msgData.userUin);

            HostUIFactory.showTroopManagementPanel(QQCurrentEnv.getActivity(), msgData.userUin, troopNick,
                    new HostUIFactory.TroopManagementHandler() {
                        @Override
                        public void onViewAvatar() {
                            try {
                                XposedBridge.invokeOriginalMethod(param.method, param.thisObject, param.args);
                            } catch (Throwable th) {
                                // 忽略异常
                            }
                        }

                        @Override
                        public void onRecall() {
                            try {
                                MsgTool.recallMsg(msgData.contact, msgData.msgId);
                            } catch (Throwable th) {
                                // 忽略异常
                            }
                        }

                        @Override
                        public void onSetAdmin(boolean enable) {
                            try {
                                TroopTool.setGroupAdmin(msgData.peerUin, msgData.userUin, enable);
                            } catch (Throwable th) {
                                // 忽略异常
                            }
                        }

                        @Override
                        public void onShutUp(long seconds) {
                            try {
                                TroopTool.shutUp(msgData.peerUin, msgData.userUin, seconds);
                            } catch (Exception e) {
                                // 忽略异常
                            }
                        }

                        @Override
                        public void onSetTitle(String title) {
                            try {
                                TroopTool.setGroupMemberTitle(msgData.peerUin, msgData.userUin, title);
                            } catch (Exception e) {
                                // 忽略异常
                            }
                        }

                        @Override
                        public void onSetCard(String card) {
                            try {
                                TroopTool.changeMemberName(msgData.peerUin, msgData.userUin, card);
                            } catch (Exception e) {
                                // 忽略异常
                            }
                        }

                        @Override
                        public void onKick(boolean ban) {
                            try {
                                if (ban) {
                                    TroopTool.kickGroup(msgData.peerUin, msgData.userUin, true);
                                } else {
                                    TroopTool.kickGroup(msgData.peerUid, msgData.userUin, false);
                                }
                            } catch (Throwable th) {
                                // 忽略异常
                            }
                        }

                        @Override
                        public void onShutUpAll(boolean enable) {
                            try {
                                TroopTool.shutUpAll(msgData.peerUin, enable);
                            } catch (Throwable th) {
                                // 忽略异常
                            }
                        }
                    });

            return null;
        });
    }
}
