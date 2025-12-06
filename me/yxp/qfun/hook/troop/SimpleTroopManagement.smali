.class public final Lme/yxp/qfun/hook/troop/SimpleTroopManagement;
.super Lme/yxp/qfun/hook/base/BaseSwitchHookItem;
.source "SimpleTroopManagement.java"


# annotations
.annotation runtime Lme/yxp/qfun/hook/base/HookItemAnnotation;
    TAG = "简洁群管"
    desc = "点击群聊头像开启菜单，省去进入主页管理群员"
.end annotation


# static fields
.field private static sOnClickAvatar:Ljava/lang/reflect/Method;


# direct methods
.method public static synthetic $r8$lambda$3QdljRxS-c_8JYz-qRLFT9xYVoU(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 4

    .line 123
    :try_start_0
    iget-object p2, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p2, p0, v0}, Lme/yxp/qfun/utils/qq/TroopTool;->setGroupAdmin(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 127
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :catchall_c
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$5zK3FpusGmlkMwpmXZ_NXc_ZpC4(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 5

    .line 176
    :try_start_0
    iget-object p2, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {p2, p0, v0, v1}, Lme/yxp/qfun/utils/qq/TroopTool;->shutUp(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 180
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :catchall_d
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$CzZBEviYMgHToxERdxrVS9DYF0Y(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 5

    .line 113
    :try_start_0
    iget-object p2, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->contact:Ljava/lang/Object;

    iget-wide v0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->msgId:J

    invoke-static {p2, v0, v1}, Lme/yxp/qfun/utils/qq/MsgTool;->recallMsg(Ljava/lang/Object;J)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_b

    .line 117
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :catchall_b
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$GWfH-KTCBomqnAtK0G4F3NUb6PM(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 4

    .line 220
    :try_start_0
    iget-object p2, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUid:Ljava/lang/String;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p0, v0}, Lme/yxp/qfun/utils/qq/TroopTool;->kickGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 224
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :catchall_c
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$LUG7CPnCh1U7JgpBKprYdxN8KVE(Landroid/content/Context;Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 6

    .line 185
    new-instance p3, Landroid/widget/EditText;

    invoke-direct {p3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 186
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string p0, "设置头衔"

    .line 187
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 188
    invoke-virtual {p0, p3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p3}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda15;-><init>(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/EditText;)V

    .line 189
    const-string p1, "确定"

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 196
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 197
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$NPMjgNrCahnsu5u5be62vvsnkyc(Lme/yxp/qfun/hook/troop/SimpleTroopManagement;Landroid/content/Context;Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement;->lambda$setOnClickListener$6(Landroid/content/Context;Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OyumPcWGwy2i94XDJUDgY8Ps1Cg(Landroid/content/Context;Ljava/lang/String;Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 6

    .line 201
    new-instance p4, Landroid/widget/EditText;

    invoke-direct {p4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    new-instance p1, Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string p0, "设置群昵称"

    .line 204
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 205
    invoke-virtual {p0, p4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "取消"

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda14;

    invoke-direct {p1, p2, p4}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda14;-><init>(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/EditText;)V

    .line 207
    const-string p2, "确定"

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 214
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 215
    invoke-virtual {p3}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$S98iorO2i_akNeUxOKIDodBD2i8(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 4

    .line 103
    :try_start_0
    iget-object p2, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p0, p0, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p2, v0, p0}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 107
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :catchall_d
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$SLBULYtIYHClB-W10F0T3v5-D9Q(Lme/yxp/qfun/hook/troop/SimpleTroopManagement;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement;->lambda$initCallback$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T016eiDMqRZXoFWBeCcOIIUl6lA(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 4

    .line 230
    :try_start_0
    iget-object p2, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p2, p0, v0}, Lme/yxp/qfun/utils/qq/TroopTool;->kickGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 234
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :catchall_c
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZoJFO4pdhlqsCZ83vpNHuEB7fcU(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 4

    .line 133
    :try_start_0
    iget-object p2, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p0, v0}, Lme/yxp/qfun/utils/qq/TroopTool;->setGroupAdmin(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 137
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :catchall_c
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$dAwoHuRqCzeCHeTPB53QOBkbs7A(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 3

    .line 240
    :try_start_0
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lme/yxp/qfun/utils/qq/TroopTool;->shutUpAll(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_a

    .line 244
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :catchall_a
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$e4PPoGy7j-rNFZ-EXcNH63T41oE(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 3

    .line 250
    :try_start_0
    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lme/yxp/qfun/utils/qq/TroopTool;->shutUpAll(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_a

    .line 254
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :catchall_a
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$fUD2sPRBToOup82aIxQxyDX2KbA(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 209
    :try_start_0
    iget-object p2, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {p2, p0, p1}, Lme/yxp/qfun/utils/qq/TroopTool;->changeMemberName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method

.method public static synthetic $r8$lambda$ic4aeFMyClQjRkUrMZLKicR4K_M(Lme/yxp/qfun/hook/troop/SimpleTroopManagement;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/content/DialogInterface;I)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement;->lambda$setOnClickListener$5(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kXhUSKhD4IfgMO8NIS7xRMbpInw(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 191
    :try_start_0
    iget-object p2, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    iget-object p0, p0, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {p2, p0, p1}, Lme/yxp/qfun/utils/qq/TroopTool;->setGroupMemberTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;-><init>()V

    return-void
.end method

.method private getInputValue(Landroid/widget/EditText;)I
    .registers 3

    const/4 p0, 0x0

    .line 83
    :try_start_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    return p0

    .line 87
    :cond_14
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_18} :catch_18

    :catch_18
    return p0
.end method

.method private synthetic lambda$initCallback$0(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 11

    .line 47
    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 48
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOAvatarContentComponent()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_AIOMsgItem()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->inParent(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    .line 52
    invoke-static {}, Lme/yxp/qfun/utils/reflect/ClassUtils;->_MsgRecord()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->ofType(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 53
    iget-object v1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Landroid/view/View;

    .line 54
    new-instance v3, Lme/yxp/qfun/javaplugin/api/MsgData;

    invoke-direct {v3, v0}, Lme/yxp/qfun/javaplugin/api/MsgData;-><init>(Ljava/lang/Object;)V

    .line 56
    iget-object v0, v3, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    invoke-static {}, Lme/yxp/qfun/utils/qq/QQCurrentEnv;->getCurrentUin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lme/yxp/qfun/utils/qq/TroopTool;->getMemberInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    iget v4, v3, Lme/yxp/qfun/javaplugin/api/MsgData;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_ad

    if-nez v0, :cond_58

    goto :goto_ad

    .line 62
    :cond_58
    invoke-static {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils;->create(Ljava/lang/Object;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    const-string v4, "role"

    invoke-virtual {v0, v4}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->withName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;

    move-result-object v0

    invoke-virtual {v0}, Lme/yxp/qfun/utils/reflect/FieldUtils$Finder;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v4, "MEMBER"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 64
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 67
    :cond_7d
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Lme/yxp/qfun/R$layout;->troopmanagement:I

    const/4 v6, 0x0

    .line 69
    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 70
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 71
    new-instance v4, Landroid/widget/PopupWindow;

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/2addr v7, v5

    const/4 v5, 0x1

    const/4 v8, -0x1

    invoke-direct {v4, v1, v8, v7, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 74
    invoke-direct {p0, v1, v4, p1, v3}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement;->setOnClickListener(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Lme/yxp/qfun/javaplugin/api/MsgData;)V

    const/16 p0, 0x50

    .line 75
    invoke-virtual {v4, v0, p0, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-object v6

    .line 59
    :cond_ad
    :goto_ad
    iget-object p0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    iget-object v0, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lme/yxp/qfun/utils/hook/xpcompat/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setOnClickListener$5(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/content/DialogInterface;I)V
    .registers 10

    .line 154
    invoke-direct {p0, p1}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement;->getInputValue(Landroid/widget/EditText;)I

    move-result p1

    .line 155
    invoke-direct {p0, p2}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement;->getInputValue(Landroid/widget/EditText;)I

    move-result p2

    .line 156
    invoke-direct {p0, p3}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement;->getInputValue(Landroid/widget/EditText;)I

    move-result p3

    .line 157
    invoke-direct {p0, p4}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement;->getInputValue(Landroid/widget/EditText;)I

    move-result p0

    if-ltz p1, :cond_32

    if-ltz p2, :cond_32

    if-ltz p3, :cond_32

    if-gez p0, :cond_19

    goto :goto_32

    :cond_19
    int-to-long p6, p0

    int-to-long p3, p3

    const-wide/16 v0, 0x3c

    mul-long/2addr p3, v0

    add-long/2addr p6, p3

    int-to-long p2, p2

    const-wide/16 v0, 0xe10

    mul-long/2addr p2, v0

    add-long/2addr p6, p2

    int-to-long p0, p1

    const-wide/32 p2, 0x15180

    mul-long/2addr p0, p2

    add-long/2addr p6, p0

    .line 166
    :try_start_2a
    iget-object p0, p5, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    iget-object p1, p5, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    invoke-static {p0, p1, p6, p7}, Lme/yxp/qfun/utils/qq/TroopTool;->shutUp(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_31

    :catch_31
    return-void

    :cond_32
    :goto_32
    const/4 p0, 0x1

    .line 160
    const-string p1, "请输入非负数"

    invoke-static {p0, p1}, Lme/yxp/qfun/utils/qq/ToastUtils;->QQToast(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setOnClickListener$6(Landroid/content/Context;Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .registers 13

    .line 142
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v0, Lme/yxp/qfun/R$layout;->shutuplayout:I

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    .line 145
    sget v0, Lme/yxp/qfun/R$id;->etDays:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    .line 146
    sget v0, Lme/yxp/qfun/R$id;->etHours:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 147
    sget v0, Lme/yxp/qfun/R$id;->etMinutes:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    .line 148
    sget v0, Lme/yxp/qfun/R$id;->etSeconds:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    .line 150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 151
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p4, "设置禁言时间"

    .line 152
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda13;

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda13;-><init>(Lme/yxp/qfun/hook/troop/SimpleTroopManagement;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lme/yxp/qfun/javaplugin/api/MsgData;)V

    .line 153
    const-string p0, "确定"

    invoke-virtual {p1, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 171
    invoke-virtual {p3}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private setOnClickListener(Landroid/widget/LinearLayout;Landroid/widget/PopupWindow;Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Lme/yxp/qfun/javaplugin/api/MsgData;)V
    .registers 9

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    iget-object v1, p4, Lme/yxp/qfun/javaplugin/api/MsgData;->peerUin:Ljava/lang/String;

    iget-object v2, p4, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    invoke-static {v1, v2}, Lme/yxp/qfun/utils/qq/TroopTool;->getMemberName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    sget v2, Lme/yxp/qfun/R$id;->troopmanagementUinText:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p4, Lme/yxp/qfun/javaplugin/api/MsgData;->userUin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    sget v2, Lme/yxp/qfun/R$id;->troopmanagementNickText:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    sget v2, Lme/yxp/qfun/R$id;->troopmanagementButton1:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3, p2}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda0;-><init>(Lme/yxp/qfun/utils/hook/xpcompat/XC_MethodHook$MethodHookParam;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget p3, Lme/yxp/qfun/R$id;->troopmanagementButton2:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v2, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda3;

    invoke-direct {v2, p4, p2}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda3;-><init>(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget p3, Lme/yxp/qfun/R$id;->troopmanagementButton3:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v2, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda4;

    invoke-direct {v2, p4, p2}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda4;-><init>(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget p3, Lme/yxp/qfun/R$id;->troopmanagementButton4:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v2, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda5;

    invoke-direct {v2, p4, p2}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda5;-><init>(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget p3, Lme/yxp/qfun/R$id;->troopmanagementButton5:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v2, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, p4, p2}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda6;-><init>(Lme/yxp/qfun/hook/troop/SimpleTroopManagement;Landroid/content/Context;Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    sget p0, Lme/yxp/qfun/R$id;->troopmanagementButton6:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p3, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda7;

    invoke-direct {p3, p4, p2}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda7;-><init>(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    sget p0, Lme/yxp/qfun/R$id;->troopmanagementButton7:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p3, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda8;

    invoke-direct {p3, v0, p4, p2}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    sget p0, Lme/yxp/qfun/R$id;->troopmanagementButton8:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p3, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda9;

    invoke-direct {p3, v0, v1, p4, p2}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;Ljava/lang/String;Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    sget p0, Lme/yxp/qfun/R$id;->troopmanagementButton9:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p3, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda10;

    invoke-direct {p3, p4, p2}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda10;-><init>(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    sget p0, Lme/yxp/qfun/R$id;->troopmanagementButton10:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p3, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda11;

    invoke-direct {p3, p4, p2}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda11;-><init>(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    sget p0, Lme/yxp/qfun/R$id;->troopmanagementButton11:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p3, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda1;

    invoke-direct {p3, p4, p2}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda1;-><init>(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    sget p0, Lme/yxp/qfun/R$id;->troopmanagementButton12:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda2;

    invoke-direct {p1, p4, p2}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda2;-><init>(Lme/yxp/qfun/javaplugin/api/MsgData;Landroid/widget/PopupWindow;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public initCallback()V
    .registers 3

    .line 46
    sget-object v0, Lme/yxp/qfun/hook/troop/SimpleTroopManagement;->sOnClickAvatar:Ljava/lang/reflect/Method;

    new-instance v1, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lme/yxp/qfun/hook/troop/SimpleTroopManagement$$ExternalSyntheticLambda12;-><init>(Lme/yxp/qfun/hook/troop/SimpleTroopManagement;)V

    invoke-static {p0, v0, v1}, Lme/yxp/qfun/utils/hook/HookUtils;->replaceIfEnable(Lme/yxp/qfun/hook/base/BaseSwitchHookItem;Ljava/lang/reflect/Method;Lme/yxp/qfun/utils/hook/HookUtils$Replacement;)V

    return-void
.end method

.method public initMethod()Z
    .registers 2

    .line 39
    invoke-virtual {p0}, Lme/yxp/qfun/hook/base/BaseSwitchHookItem;->getNAME()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lme/yxp/qfun/utils/dexkit/DexKit;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 40
    invoke-static {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils;->create(Ljava/lang/Class;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    const-string v0, "onClick"

    invoke-virtual {p0, v0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->withMethodName(Ljava/lang/String;)Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;

    move-result-object p0

    invoke-virtual {p0}, Lme/yxp/qfun/utils/reflect/MethodUtils$Finder;->findOne()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lme/yxp/qfun/hook/troop/SimpleTroopManagement;->sOnClickAvatar:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    return p0
.end method
