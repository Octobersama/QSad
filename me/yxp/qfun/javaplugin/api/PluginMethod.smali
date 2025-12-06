.class public Lme/yxp/qfun/javaplugin/api/PluginMethod;
.super Ljava/lang/Object;
.source "PluginMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;
    }
.end annotation


# instance fields
.field private final mConfigPath:Ljava/lang/String;

.field private final mPluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

.field private final mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;


# direct methods
.method public static synthetic $r8$lambda$0-EejC11tagSOUTSSxzsentJ8K0(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 89
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/FriendTool;->getUidFromUin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1CaDMU_HX-xsN5MhJshoDeEV0iA(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 138
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/TroopTool;->getTroopInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1CfNluWoTnuGIUr5GYffjQecVos(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 146
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/TroopTool;->getMemberName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1RogM_9wyfDhRwwZU3JROs4MXA4(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3

    .line 203
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->sendFile(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1_YE-mzyvfpwPOPlawU9daDPBxg(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3

    .line 195
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->sendVideo(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4cEPTPhlxgKGwo_OoAgZgmLiKRs(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 1

    .line 85
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/FriendTool;->isFriend(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5tGtSvUOppijR5NXX27qef6w7LQ(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 134
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/TroopTool;->getProhibitList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5zTzC6TXijgalCEoHjF6T9y85eM(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .line 183
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->sendPtt(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7_E28R6xTLJlIeqiK63E9_n9GYQ(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->lambda$getInt$41(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9EqjmQ6lilgRDX6zpiwBgXwHu30(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .line 207
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->sendFile(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9aRmdf5hX0K_FoeqD2B3jW5vuKs(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .line 175
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->sendPic(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AdZoaORNKwO6mpASKKgIxhGTtwE(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->lambda$putLong$39(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$B3xvpPv1kBHQ_VO9KPxJfn8_jSQ(Ljava/lang/String;I)V
    .registers 2

    .line 97
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/FriendTool;->sendZan(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CrL7gA3jwyZVi0xZ6wrvXUXemY8(Ljava/lang/String;JLjava/lang/String;I)V
    .registers 5

    .line 211
    invoke-static {p0, p1, p2, p3, p4}, Lme/yxp/qfun/utils/qq/MsgTool;->sendReplyMsg(Ljava/lang/String;JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Do8sWtndx_Qnx9ups55p4ssLIY4(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3

    .line 163
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IRZWOexPV2nxlzuK8F-Kg1AayR4(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 2

    .line 159
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->recallMsg(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JpkuFCn0q6-0CeSQbDPuu6F4lt4(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 130
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/TroopTool;->getGroupMemberList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K-5JFMXPzEftIFDTzYFyyCd9K_Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 150
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/qq/TroopTool;->changeMemberName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K5MniNR-KNInuRlrhHpOYNoko8Q(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 93
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/FriendTool;->getUidFromUin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KrgUOxsoNIWHZrJEDBdoDd4vR2U(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 122
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/qq/TroopTool;->setGroupMemberTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Miohq32QlzUI_0k2HZzFJPN77G0(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .line 167
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->sendMsg(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P6ejjqv3273dbZ_Y0x05qqspx4A(Ljava/lang/String;Z)V
    .registers 2

    .line 106
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/TroopTool;->shutUpAll(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$PCtuFOQWkfXk5GNXDLNzdZZMYEQ(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 1

    .line 110
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/TroopTool;->isShutUp(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PhD_qE-R9jANQobYwNbCLMnVTzI(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Long;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->lambda$getLong$43(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qo6sMbYeClUk1LF-naMHkPjOOwk(Ljava/lang/Object;JLjava/lang/String;)V
    .registers 4

    .line 215
    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/qq/MsgTool;->sendReplyMsg(Ljava/lang/Object;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RFxDh47Laa8MvW6mriPfLAap9m4(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 228
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/CookieTool;->getPskey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Vd_jEcpl1pcLtwzKbZGpG-9fYds(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3

    .line 171
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->sendPic(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vtn0ldmxnFZkdoMrFBPVpW36hx4(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 4

    .line 102
    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/qq/TroopTool;->shutUp(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$WmMyl1Fm8LWb0AE94YOLqtN4FiI(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 240
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/CookieTool;->getPt4Token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WqXyGOgWgjk0PMv6vZXlvcTOjjo(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->lambda$putString$36(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XPmq4ArpEKi3QHrslB__KwoLsEc(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 232
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/CookieTool;->getGTK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YfVP_v0gyTC1kevp1cxYUuTJrZY(ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 3

    .line 155
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->recallMsg(ILjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bITf0J-crUy4IVLMnx4xNU9BdgU(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3

    .line 187
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->sendCard(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dUXa4p2QDD7-bGoI2uYysbjS-Ok(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 3

    .line 114
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/qq/TroopTool;->setGroupAdmin(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$e2V2n1m36tFvgGMzz0GnuiMeS_Y(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->lambda$getBoolean$42(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fcUUPDAYI3My9Vjec_vZ9WASOO8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 142
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/TroopTool;->getMemberInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iOeim0XM9qKArJzw6Na4QsxH9eI(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .line 191
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->sendCard(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kuOoGcjpVEtp-seFH6RAkEXrguI(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->lambda$putBoolean$38(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ms5US3wIu8Uijl7xpkBC3hmqrcY(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .line 199
    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/MsgTool;->sendVideo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nkj8wbo3R42b7_jNx7iDwVkwWPU(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->lambda$putInt$37(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pyJxiSwIbNGKpG0USOJDcR5BE44(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3

    .line 179
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/qq/MsgTool;->sendPtt(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qIg5B4XyJQrcq--drjWojefXPTg(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    .line 244
    invoke-static {p0}, Lme/yxp/qfun/utils/qq/CookieTool;->getBkn(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uL-wIo9NgtskPzaHY15pr1JsPh4(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->lambda$getString$40(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wnYTfXWDyBF5PZyv2U_KCku4pJM(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 3

    .line 118
    invoke-static {p0, p1, p2}, Lme/yxp/qfun/utils/qq/TroopTool;->kickGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lme/yxp/qfun/javaplugin/loader/PluginCompiler;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mPluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    .line 31
    iget-object p1, p1, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->pluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "config/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mConfigPath:Ljava/lang/String;

    return-void
.end method

.method private executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 303
    :try_start_0
    invoke-interface {p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p1

    .line 305
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/error/PluginError;->callError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    return-object p2
.end method

.method private executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V
    .registers 2

    .line 295
    :try_start_0
    invoke-interface {p1}, Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p1

    .line 297
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/error/PluginError;->callError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    return-void
.end method

.method private synthetic lambda$getBoolean$42(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .registers 4

    .line 284
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mConfigPath:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->getBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getInt$41(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 4

    .line 279
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mConfigPath:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->getInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getLong$43(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Long;
    .registers 5

    .line 289
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mConfigPath:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, p4}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->getLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getString$40(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 274
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mConfigPath:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$putBoolean$38(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 265
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mConfigPath:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->putBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$putInt$37(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 261
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mConfigPath:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->putInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$putLong$39(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 269
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mConfigPath:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, p4}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->putLong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private synthetic lambda$putString$36(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 257
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mConfigPath:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lme/yxp/qfun/utils/json/JsonConfigUtils;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public QQToast(ILjava/lang/Object;)V
    .registers 3

    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    return-void
.end method

.method public Toast(Ljava/lang/Object;)V
    .registers 2

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/qq/ToastUtils;->Toast(Ljava/lang/String;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 67
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mPluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    invoke-virtual {p0, p1, p2}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addMenuItem(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 71
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mPluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QFun],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->addMenuItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addMenuItem(Ljava/lang/String;Ljava/lang/String;[I)V
    .registers 8

    .line 75
    invoke-static {p3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p3

    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda19;-><init>()V

    invoke-interface {p3, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p3

    const-string v0, ","

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mPluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QFun],"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/loader/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p2}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->addMenuItem(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeMemberName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 150
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public getAllFriend()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 81
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda21;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getBkn(Ljava/lang/String;)J
    .registers 5

    .line 244
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda36;

    invoke-direct {v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda36;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .line 283
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda23;-><init>(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 284
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 283
    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getFriendRKey()Ljava/lang/String;
    .registers 3

    .line 248
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getGTK(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 232
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda41;

    invoke-direct {v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda41;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getGroupList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda28;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getGroupMemberList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 130
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda51;

    invoke-direct {v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda51;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getGroupRKey()Ljava/lang/String;
    .registers 3

    .line 252
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .line 278
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda3;-><init>(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;I)V

    .line 279
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 278
    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 11

    .line 288
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda17;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda17;-><init>(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;J)V

    .line 289
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 288
    invoke-direct {v1, v0, p0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getMemberInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 142
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda39;

    invoke-direct {v0, p1, p2}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda39;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getMemberName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 146
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1, p2}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda24;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getNowActivity()Landroid/app/Activity;
    .registers 1

    .line 62
    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getProhibitList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 134
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda25;

    invoke-direct {v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda25;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getPskey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 228
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda33;

    invoke-direct {v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda33;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPt4Token(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 240
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRealSkey()Ljava/lang/String;
    .registers 3

    .line 220
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSkey()Ljava/lang/String;
    .registers 3

    .line 224
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda30;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 273
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda45;-><init>(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStweb()Ljava/lang/String;
    .registers 3

    .line 236
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda44;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTroopInfo(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 138
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getUidFromUin(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 89
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda32;

    invoke-direct {v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda32;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUinFromUid(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isFriend(Ljava/lang/String;)Z
    .registers 3

    .line 85
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda27;

    invoke-direct {v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda27;-><init>(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isShutUp(Ljava/lang/String;)Z
    .registers 3

    .line 110
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda38;

    invoke-direct {v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda38;-><init>(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/javaplugin/api/PluginMethod$SupplierWithException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public kickGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 118
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public loadJar(Ljava/lang/String;)V
    .registers 3

    .line 38
    :try_start_0
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mPluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    iget-object v0, v0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->fixClassLoader:Lme/yxp/qfun/javaplugin/loader/PluginCompiler$FixClassLoader;

    invoke-static {p1}, Lme/yxp/qfun/javaplugin/loader/LoadJarHelper;->loadJar(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Lme/yxp/qfun/javaplugin/loader/PluginCompiler$FixClassLoader;->addClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    .line 40
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/error/PluginError;->callError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    return-void
.end method

.method public loadJava(Ljava/lang/String;)V
    .registers 3

    .line 46
    :try_start_0
    iget-object v0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mPluginCompiler:Lme/yxp/qfun/javaplugin/loader/PluginCompiler;

    iget-object v0, v0, Lme/yxp/qfun/javaplugin/loader/PluginCompiler;->interpreter:Lbsh/Interpreter;

    invoke-virtual {v0, p1}, Lbsh/Interpreter;->source(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    .line 48
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/PluginMethod;->mPluginInfo:Lme/yxp/qfun/javaplugin/loader/PluginInfo;

    invoke-static {p1, p0}, Lme/yxp/qfun/utils/error/PluginError;->callError(Ljava/lang/Throwable;Lme/yxp/qfun/javaplugin/loader/PluginInfo;)V

    return-void
.end method

.method public putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 265
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda29;-><init>(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public putInt(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 261
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda10;-><init>(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public putLong(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    .line 269
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda47;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda47;-><init>(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 257
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda50;-><init>(Lme/yxp/qfun/javaplugin/api/PluginMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public recallMsg(ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 155
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda15;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public recallMsg(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 159
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda31;

    invoke-direct {v0, p1, p2}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda31;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendCard(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 191
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda46;

    invoke-direct {v0, p1, p2}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda46;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendCard(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 187
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda43;

    invoke-direct {v0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda43;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendFile(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 207
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda42;

    invoke-direct {v0, p1, p2}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 203
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendMsg(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 167
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendMsg(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 163
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda40;

    invoke-direct {v0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda40;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendPic(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 175
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendPic(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 171
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendPtt(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 183
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1, p2}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendPtt(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 179
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda48;

    invoke-direct {v0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda48;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendReplyMsg(Ljava/lang/Object;JLjava/lang/String;)V
    .registers 6

    .line 215
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p3, p4}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendReplyMsg(Ljava/lang/String;JLjava/lang/String;I)V
    .registers 12

    .line 211
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda34;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda34;-><init>(Ljava/lang/String;JLjava/lang/String;I)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendVideo(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 199
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1, p2}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda26;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendVideo(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 195
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public sendZan(Ljava/lang/String;I)V
    .registers 4

    .line 97
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1, p2}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda20;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public setGroupAdmin(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 114
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public setGroupMemberTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 122
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda37;

    invoke-direct {v0, p1, p2, p3}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda37;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public shutUp(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 102
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda35;

    invoke-direct {v0, p1, p2, p3, p4}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda35;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method

.method public shutUpAll(Ljava/lang/String;Z)V
    .registers 4

    .line 106
    new-instance v0, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2}, Lme/yxp/qfun/javaplugin/api/PluginMethod$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lme/yxp/qfun/javaplugin/api/PluginMethod;->executeWithErrorHandling(Lme/yxp/qfun/utils/thread/SyncUtils$MyRunnable;)V

    return-void
.end method
