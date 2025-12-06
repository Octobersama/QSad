package sama.october.QSad.hook.api;

import org.json.JSONObject;

import java.lang.reflect.Method;
import java.util.ArrayList;

import kotlin.collections.CollectionsKt;
import sama.october.QSad.hook.base.ApiHookItem;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.json.ProtoData;
import sama.october.QSad.utils.qq.FriendTool;
import sama.october.QSad.utils.qq.HostInfo;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

public final class OnTroopQuit extends ApiHookItem {
    public static final ApiHookItem INSTANCE = new OnTroopQuit();

    @Override
    public void loadHook() throws Throwable {
        if (HostInfo.isTIM()) {
            Method handleMemberExit = MethodUtils.create(ClassUtils._TroopOnlinePushHandler())
                    .withMethodName("handleMemberExit")
                    .findOne();
            HookUtils.hookAlways(handleMemberExit, null, param -> handleQuit((String) param.args[0], (String) param.args[1]));
        }

        if (HostInfo.isQQ()) {
            Class<?> troopMemberRemovePushProcessor = ClassUtils
                    .load("com.tencent.qqnt.push.processor.TroopMemberRemovePushProcessor");
            Method quitGroup = MethodUtils.create(troopMemberRemovePushProcessor)
                    .withReturnType(void.class)
                    .withParamTypes(ArrayList.class)
                    .findOne();

            HookUtils.hookAlways(quitGroup, null, param -> {
                ArrayList<Byte> byteList = (ArrayList<Byte>) param.args[0];
                ProtoData data = new ProtoData();
                data.fromBytes(CollectionsKt.toByteArray(byteList));
                JSONObject json = data.toJSON();

                String troopUin = String.valueOf(json.getJSONObject("1").getLong("1"));
                String memberUid = json.getJSONObject("3").getJSONObject("2").getString("3");
                String memberUin = FriendTool.getUinFromUid(memberUid);
                handleQuit(troopUin, memberUin);

            });
        }
    }

    private void handleQuit(String troopUin, String memberUin) throws Throwable {
        for (Listener listener : mListenerSet) {
            if (listener instanceof TroopQuitListener) {
                ((TroopQuitListener) listener).onQuit(troopUin, memberUin);
            }
        }
    }

    public interface TroopQuitListener extends Listener {
        void onQuit(String troopUin, String memberUin) throws Throwable;
    }
}