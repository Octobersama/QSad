package sama.october.QSad.hook;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import sama.october.QSad.hook.api.OnAIOViewUpdate;
import sama.october.QSad.hook.api.OnGetMsgRecord;
import sama.october.QSad.hook.api.OnMsg;
import sama.october.QSad.hook.api.OnMsgMenuOpen;
import sama.october.QSad.hook.api.OnPaiYiPai;
import sama.october.QSad.hook.api.OnRKey;
import sama.october.QSad.hook.api.OnSendMsg;
import sama.october.QSad.hook.api.OnTroopJoin;
import sama.october.QSad.hook.api.OnTroopQuit;
import sama.october.QSad.hook.api.OnTroopShutUp;
import sama.october.QSad.hook.base.ApiHookItem;
import sama.october.QSad.hook.base.BaseSwitchHookItem;
import sama.october.QSad.hook.base.BaseWithDataHookItem;
import sama.october.QSad.hook.browser.RemoveRiskWebpageBlockHook;
import sama.october.QSad.hook.chat.DefaultBubbleAndFontHook;
import sama.october.QSad.hook.chat.ForwardPttHook;
import sama.october.QSad.hook.chat.MsgTimeHook;
import sama.october.QSad.hook.chat.MultiRecallHook;
import sama.october.QSad.hook.chat.RemoveReplyAtHook;
import sama.october.QSad.hook.chat.ShowAtTargetHook;
import sama.october.QSad.hook.device.CustomDeviceHook;
import sama.october.QSad.hook.device.TabletModeHook;
import sama.october.QSad.hook.entry.QQHomeInject;
import sama.october.QSad.hook.entry.QQSettingInject;
import sama.october.QSad.hook.file.AutoRemarkApkHook;
import sama.october.QSad.hook.file.AutoSendOriginalPicHook;
import sama.october.QSad.hook.file.DownloadTimesHook;
import sama.october.QSad.hook.msg.EmotionToPicHook;
import sama.october.QSad.hook.msg.FlashPicHook;
import sama.october.QSad.hook.msg.MsgContentHook;
import sama.october.QSad.hook.msg.PicSummaryHook;
import sama.october.QSad.hook.msg.RandomFaceHook;
import sama.october.QSad.hook.msg.RecordsReplyMsgHook;
import sama.october.QSad.hook.msg.RepeatMsgHook;
import sama.october.QSad.hook.msg.RevokeMsgHook;
import sama.october.QSad.hook.purify.AntiInteractivePopHook;
import sama.october.QSad.hook.purify.AntiLinkPreviewHook;
import sama.october.QSad.hook.purify.RemoveEmoReplyHook;
import sama.october.QSad.hook.purify.RemoveFilterVideoHook;
import sama.october.QSad.hook.qrcode.LiftQRCodeLimitHook;
import sama.october.QSad.hook.qrcode.SkipWaitTimeHook;
import sama.october.QSad.hook.redpacket.RedPacketHook;
import sama.october.QSad.hook.social.AutoKeepSparkHook;
import sama.october.QSad.hook.social.OneClickLikeHook;
import sama.october.QSad.hook.social.PaiYiPaiHook;
import sama.october.QSad.hook.troop.AntiAtAllHook;
import sama.october.QSad.hook.troop.SimpleTroopManagement;
import sama.october.QSad.hook.troop.TroopClockInHook;
import sama.october.QSad.javaplugin.MainPlugin;
import sama.october.QSad.utils.data.DataUtils;
import sama.october.QSad.utils.error.ErrorOutput;
import sama.october.QSad.utils.hook.HookUtils;
import sama.october.QSad.utils.qq.QQCurrentEnv;
import sama.october.QSad.utils.reflect.ClassUtils;
import sama.october.QSad.utils.reflect.MethodUtils;

public class MainHook {
    public static final String DATA_KEY_ENABLE = "Enable";
    private static final String ACTION_INIT = "init";
    private static final String ACTION_SAVE = "save";

    public static List<BaseSwitchHookItem> HookItems = new ArrayList<>();
    public static Map<String, Boolean> Enable = new HashMap<>();

    public static void hook() throws Throwable {
        initEntry();
        loadApiHook();
        initHookItem();
        MainPlugin.initView();

        Method onCreate = MethodUtils.create(ClassUtils._QQAppInterface())
                .withMethodName("onCreateQQMessageFacade")
                .findOne();

        HookUtils.hookAlways(onCreate, param -> {
            Object qQAppInterface = param.thisObject;
            QQCurrentEnv.setCurrentEnv(qQAppInterface);
            onAccountChange();
        }, null);
    }

    public static void savaData() {
        updateHook();
        DataUtils.serialize("data", DATA_KEY_ENABLE, Enable);
        hookItemData(ACTION_SAVE);
    }

    public static void initData() {
        initEnable();
        hookItemData(ACTION_INIT);
        updateHook();
    }

    private static void initEntry() {
        try {
            QQSettingInject.hook();
        } catch (Throwable th) {
            ErrorOutput.Error("QQSettingInject", th);
        }

        try {
            QQHomeInject.hook();
        } catch (Throwable th) {
            ErrorOutput.Error("QQHomeInject", th);
        }
    }

    public static void initHookItem() {
        Class<?>[] hookClasses = {
            TroopClockInHook.class, AutoKeepSparkHook.class, RevokeMsgHook.class, PaiYiPaiHook.class,
                RepeatMsgHook.class, MsgTimeHook.class, FlashPicHook.class,
                PicSummaryHook.class, RemoveRiskWebpageBlockHook.class, RandomFaceHook.class,
                AntiAtAllHook.class, MsgContentHook.class,
                OneClickLikeHook.class, LiftQRCodeLimitHook.class, SkipWaitTimeHook.class,
                AutoRemarkApkHook.class, RemoveReplyAtHook.class, TabletModeHook.class,
                SimpleTroopManagement.class, DefaultBubbleAndFontHook.class, EmotionToPicHook.class,
                AutoSendOriginalPicHook.class, RecordsReplyMsgHook.class,
                ForwardPttHook.class, DownloadTimesHook.class, CustomDeviceHook.class,
                AntiInteractivePopHook.class, RemoveFilterVideoHook.class, AntiLinkPreviewHook.class,
                MultiRecallHook.class, RemoveEmoReplyHook.class, ShowAtTargetHook.class,
                RedPacketHook.class
        };

        for (Class<?> hookClass : hookClasses) {
            BaseSwitchHookItem hookItem = ClassUtils.getHookItem(hookClass);
            if (hookItem == null) {
                continue;
            }

            try {
                hookItem.init();
            } catch (Exception e) {
                ErrorOutput.itemHookError(hookItem, e);
            }
            HookItems.add(hookItem);
        }
    }

    private static void loadApiHook() {
        Class<?>[] apiClasses = {
                OnSendMsg.class, OnAIOViewUpdate.class, OnRKey.class,
                OnMsg.class, OnTroopJoin.class, OnTroopQuit.class,
                OnTroopShutUp.class, OnMsgMenuOpen.class,
                OnPaiYiPai.class, OnGetMsgRecord.class
        };

        for (Class<?> apiClass : apiClasses) {
            try {
                ApiHookItem apiHookItem = (ApiHookItem) apiClass.getDeclaredField("INSTANCE").get(null);
                apiHookItem.loadHook();
            } catch (Throwable th) {
                ErrorOutput.Error(apiClass.getSimpleName(), th);
            }
        }
    }

    private static void initEnable() {
        Object data = DataUtils.deserialize("data", DATA_KEY_ENABLE);
        if (data == null) {
            for (BaseSwitchHookItem hookItem : HookItems) {
                Enable.put(hookItem.getNAME(), false);
            }
        } else {
            Enable = (HashMap<String, Boolean>) data;
            for (BaseSwitchHookItem hookItem : HookItems) {
                if (!Enable.containsKey(hookItem.getNAME())) {
                    Enable.put(hookItem.getNAME(), false);
                }
            }
        }
    }

    private static void onAccountChange() {
        initData();
        MainPlugin.initPlugins();
    }

    private static void updateHook() {
        for (BaseSwitchHookItem hookItem : HookItems) {
            if (Enable.get(hookItem.getNAME()) && hookItem.isAvailable) {
                hookItem.startHook();
            } else {
                hookItem.stopHook();
            }
        }
    }

    private static void hookItemData(String action) {
        for (BaseSwitchHookItem hookItem : HookItems) {
            if (!(hookItem instanceof BaseWithDataHookItem) || !hookItem.isAvailable) {
                continue;
            }

            BaseWithDataHookItem dataHookItem = (BaseWithDataHookItem) hookItem;
            switch (action) {
                case ACTION_INIT:
                    dataHookItem.initData();
                    break;
                case ACTION_SAVE:
                    dataHookItem.savaData();
                    break;
                default:
                    break;
            }
        }
    }
}
