.class public final Lo/getMaxAvailableHeight$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMaxAvailableHeight;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/fromPathMerge<",
        "+",
        "Lcom/cred/pay/repository/models/UpiSuccessResponse;",
        "+",
        "Lcom/cred/pay/repository/models/UpiErrorResponse;",
        "+",
        "Lo/snapFromFling$extraCallback;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012>\u0010\u0002\u001a:\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006 \u0007*\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "upiResponse",
        "Lkotlin/Triple;",
        "Lcom/cred/pay/repository/models/UpiSuccessResponse;",
        "Lcom/cred/pay/repository/models/UpiErrorResponse;",
        "Lcom/dreamplug/upi/UpiViewModel$SetMPinItem;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic ICustomTabsCallback:Lo/getMaxAvailableHeight;

.field private synthetic onNavigationEvent:Lo/toDebugString$onPostMessage;


# direct methods
.method constructor <init>(Lo/getMaxAvailableHeight;Lo/toDebugString$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    iput-object p2, p0, Lo/getMaxAvailableHeight$onTransact;->onNavigationEvent:Lo/toDebugString$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 14

    .line 45
    check-cast p1, Lo/fromPathMerge;

    .line 1271
    iget-object v0, p0, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 2000
    iget-object v0, v0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 2051
    iget-object v0, v0, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 1271
    new-instance v1, Lo/addWrite;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    if-eqz p1, :cond_1b

    .line 2067
    iget-object v0, p1, Lo/fromPathMerge;->onMessageChannelReady:Ljava/lang/Object;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v0, :cond_f

    .line 1275
    iget-object v0, p0, Lo/getMaxAvailableHeight$onTransact;->onNavigationEvent:Lo/toDebugString$onPostMessage;

    iput v8, v0, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 3067
    iget-object v0, p1, Lo/fromPathMerge;->onMessageChannelReady:Ljava/lang/Object;

    .line 1276
    check-cast v0, Lcom/cred/pay/repository/models/UpiSuccessResponse;

    if-eqz v0, :cond_0

    .line 3128
    iget-object v0, v0, Lcom/cred/pay/repository/models/UpiSuccessResponse;->onNavigationEvent:Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v9

    .line 1277
    :goto_0
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v0, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->unable_to_set_mpin:I

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "00"

    .line 1279
    invoke-static {v3, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1281
    iget-object v0, p0, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-static {v0}, Lo/getMaxAvailableHeight;->extraCallback(Lo/getMaxAvailableHeight;)V

    .line 1283
    iget-object v0, p0, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1799
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    iput-boolean v8, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1800
    new-instance v2, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v2}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v9, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1801
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 3212
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_a

    .line 1284
    iget-object v3, p0, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    const-string v4, "childFragmentManager"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3896
    iget-object v3, v3, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v3}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v3

    const-string v4, "childFragmentManager.fragments"

    .line 1284
    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 1803
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1804
    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 1284
    instance-of v4, v4, Lo/createDrawableIfNeeded;

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_9

    .line 1285
    iget-object v3, p0, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 4000
    iget-object v3, v3, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MenuItemHoverListener;

    .line 4035
    iget-object v3, v3, Lo/MenuItemHoverListener;->ICustomTabsCallback:Lo/onMoveStarting$onNavigationEvent;

    if-eqz v3, :cond_5

    .line 4258
    iget-object v3, v3, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    if-eqz v3, :cond_5

    .line 5013
    iget-object v3, v3, Lcom/cred/pay/repository/models/UpiAccountResponse;->extraCallback:Ljava/util/List;

    goto :goto_3

    :cond_5
    move-object v3, v9

    :goto_3
    if-nez v3, :cond_6

    .line 5070
    sget-object v3, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v3, Ljava/util/List;

    .line 1285
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cred/pay/repository/models/VpaAccount;

    .line 6048
    iget-object v5, v4, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 6072
    iget-object v5, v5, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 7069
    iget-object v10, p1, Lo/fromPathMerge;->ICustomTabsCallback:Ljava/lang/Object;

    .line 1286
    check-cast v10, Lo/snapFromFling$extraCallback;

    if-eqz v10, :cond_8

    .line 8054
    iget-object v10, v10, Lo/snapFromFling$extraCallback;->extraCallback:Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object v10, v9

    .line 1286
    :goto_5
    invoke-static {v5, v10}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1287
    iget-object v5, p0, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 9000
    iget-object v5, v5, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/MenuItemHoverListener;

    .line 1287
    new-instance v10, Lcom/cred/pay/repository/models/CredUpiInstrument;

    const/16 v11, 0x1e

    invoke-direct {v10, v4, v11}, Lcom/cred/pay/repository/models/CredUpiInstrument;-><init>(Lcom/cred/pay/repository/models/VpaAccount;I)V

    check-cast v10, Lo/isInputMethodNotNeeded;

    const-string/jumbo v4, "setting m-pin"

    invoke-virtual {v5, v10, v4, v7}, Lo/MenuItemHoverListener;->onPostMessage(Lo/isInputMethodNotNeeded;Ljava/lang/String;Z)V

    goto :goto_4

    .line 1806
    :cond_9
    iput-boolean v7, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_6

    .line 1807
    :cond_a
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v3, v4, :cond_b

    .line 1808
    new-instance v3, Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;

    invoke-direct {v3, v0, v1, p0, p1}, Lcom/cred/pay/ui/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getMaxAvailableHeight$onTransact;Lo/fromPathMerge;)V

    check-cast v3, Lo/createCallback;

    iput-object v3, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1809
    iget-object v1, v2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 1811
    :cond_b
    :goto_6
    new-instance v1, Lo/getMaxAvailableHeight$onTransact$onPostMessage;

    invoke-direct {v1, v2, v0}, Lo/getMaxAvailableHeight$onTransact$onPostMessage;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    goto/16 :goto_9

    :cond_c
    const-string v0, "ZR"

    const-string v1, "ZS"

    const-string v4, "ZT"

    const-string v5, "SP"

    const-string v10, "AJ"

    .line 1293
    filled-new-array {v0, v1, v4, v5, v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/getSessionPersistenceKey;->extraCallback([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v3}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    const-string v10, "MPIN_SET_FAILED_DIALOG"

    if-eqz v0, :cond_d

    .line 1294
    new-instance v11, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v11}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v9, v11, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1295
    new-instance v0, Lo/updateAllRemainingSpans;

    invoke-direct {v0}, Lo/updateAllRemainingSpans;-><init>()V

    iput-object v0, v11, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1296
    iget-object v0, v11, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lo/updateAllRemainingSpans;

    new-instance v13, Lo/getMaxAvailableHeight$onTransact$4;

    move-object v0, v13

    move-object v1, p0

    move-object v4, p1

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lo/getMaxAvailableHeight$onTransact$4;-><init>(Lo/getMaxAvailableHeight$onTransact;Ljava/lang/String;Ljava/lang/String;Lo/fromPathMerge;Lo/toDebugString$ICustomTabsCallback;)V

    check-cast v13, Lo/onDisconnectSetValue;

    invoke-virtual {v12, v13}, Lo/updateAllRemainingSpans;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    .line 1306
    iget-object v0, v11, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/updateAllRemainingSpans;

    iget-object v1, p0, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_d
    const-string v0, "XN"

    const-string v1, "XR"

    const-string v4, "YA"

    .line 1309
    filled-new-array {v0, v1, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/getSessionPersistenceKey;->extraCallback([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v3}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1311
    new-instance v0, Lo/updateAllRemainingSpans;

    invoke-direct {v0}, Lo/updateAllRemainingSpans;-><init>()V

    .line 1312
    new-instance v1, Lo/getMaxAvailableHeight$onTransact$5;

    invoke-direct {v1, p0, v2, v3, p1}, Lo/getMaxAvailableHeight$onTransact$5;-><init>(Lo/getMaxAvailableHeight$onTransact;Ljava/lang/String;Ljava/lang/String;Lo/fromPathMerge;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-virtual {v0, v1}, Lo/updateAllRemainingSpans;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    .line 1322
    iget-object v1, p0, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1325
    :cond_e
    new-instance v11, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v11}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v9, v11, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1326
    new-instance v0, Lo/updateAllRemainingSpans;

    invoke-direct {v0}, Lo/updateAllRemainingSpans;-><init>()V

    iput-object v0, v11, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1327
    iget-object v0, v11, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lo/updateAllRemainingSpans;

    new-instance v13, Lo/getMaxAvailableHeight$onTransact$3;

    move-object v0, v13

    move-object v1, p0

    move-object v4, p1

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lo/getMaxAvailableHeight$onTransact$3;-><init>(Lo/getMaxAvailableHeight$onTransact;Ljava/lang/String;Ljava/lang/String;Lo/fromPathMerge;Lo/toDebugString$ICustomTabsCallback;)V

    check-cast v13, Lo/onDisconnectSetValue;

    invoke-virtual {v12, v13}, Lo/updateAllRemainingSpans;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    .line 1338
    iget-object v0, v11, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/updateAllRemainingSpans;

    iget-object v1, p0, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 9068
    :cond_f
    iget-object v0, p1, Lo/fromPathMerge;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 10068
    iget-object v0, p1, Lo/fromPathMerge;->onNavigationEvent:Ljava/lang/Object;

    .line 1341
    check-cast v0, Lcom/cred/pay/repository/models/UpiErrorResponse;

    if-eqz v0, :cond_10

    .line 10135
    iget-object v0, v0, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_7

    :cond_10
    move-object v0, v9

    :goto_7
    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_8

    :cond_11
    const-string v1, "USER_ABORTED"

    .line 11054
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_8
    if-nez v0, :cond_16

    .line 1342
    iget-object v0, p0, Lo/getMaxAvailableHeight$onTransact;->onNavigationEvent:Lo/toDebugString$onPostMessage;

    iget v0, v0, Lo/toDebugString$onPostMessage;->onPostMessage:I

    if-ge v0, v6, :cond_13

    .line 1343
    iget-object v0, p0, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 11069
    iget-object v1, p1, Lo/fromPathMerge;->ICustomTabsCallback:Ljava/lang/Object;

    if-nez v1, :cond_12

    .line 1343
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_12
    check-cast v1, Lo/snapFromFling$extraCallback;

    invoke-static {v0, v1}, Lo/getMaxAvailableHeight;->onMessageChannelReady(Lo/getMaxAvailableHeight;Lo/snapFromFling$extraCallback;)V

    .line 1344
    iget-object v0, p0, Lo/getMaxAvailableHeight$onTransact;->onNavigationEvent:Lo/toDebugString$onPostMessage;

    iget v1, v0, Lo/toDebugString$onPostMessage;->onPostMessage:I

    add-int/2addr v1, v7

    iput v1, v0, Lo/toDebugString$onPostMessage;->onPostMessage:I

    goto :goto_9

    .line 1346
    :cond_13
    iget-object v0, p0, Lo/getMaxAvailableHeight$onTransact;->onNavigationEvent:Lo/toDebugString$onPostMessage;

    iput v8, v0, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 1347
    sget-object v0, Lo/getEpicenterBounds;->onMessageChannelReady:Lo/getEpicenterBounds;

    invoke-static {}, Lo/getEpicenterBounds;->onPostMessage()Ljava/lang/String;

    move-result-object v9

    .line 1348
    sget-object v0, Lo/onMoveFinished;->onMessageChannelReady:Lo/onMoveFinished;

    .line 12068
    iget-object v0, p1, Lo/fromPathMerge;->onNavigationEvent:Ljava/lang/Object;

    .line 1348
    check-cast v0, Lcom/cred/pay/repository/models/UpiErrorResponse;

    if-eqz v0, :cond_14

    .line 12135
    iget-object v0, v0, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    if-nez v0, :cond_15

    :cond_14
    const-string v0, ""

    .line 1348
    :cond_15
    invoke-static {v0, v7}, Lo/onMoveFinished;->ICustomTabsCallback(Ljava/lang/String;Z)Lo/snapFromFling$ICustomTabsCallback$Stub;

    move-result-object v0

    .line 13058
    iget-object v0, v0, Lo/snapFromFling$ICustomTabsCallback$Stub;->onNavigationEvent:Ljava/lang/String;

    .line 1350
    iget-object v1, p0, Lo/getMaxAvailableHeight$onTransact;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n logId - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/getMaxAvailableHeight;->extraCallback(Lo/getMaxAvailableHeight;Ljava/lang/String;)V

    .line 13067
    :cond_16
    :goto_9
    iget-object v0, p1, Lo/fromPathMerge;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v0, :cond_18

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "success_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14067
    iget-object p1, p1, Lo/fromPathMerge;->onMessageChannelReady:Ljava/lang/Object;

    if-nez p1, :cond_17

    .line 1355
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_17
    check-cast p1, Lcom/cred/pay/repository/models/UpiSuccessResponse;

    .line 14128
    iget-object p1, p1, Lcom/cred/pay/repository/models/UpiSuccessResponse;->onNavigationEvent:Ljava/lang/String;

    .line 1355
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    .line 15068
    :cond_18
    iget-object v0, p1, Lo/fromPathMerge;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failure_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16068
    iget-object p1, p1, Lo/fromPathMerge;->onNavigationEvent:Ljava/lang/Object;

    if-nez p1, :cond_19

    .line 1356
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_19
    check-cast p1, Lcom/cred/pay/repository/models/UpiErrorResponse;

    .line 16135
    iget-object p1, p1, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    .line 1356
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_1a
    const-string p1, "N/A"

    :goto_a
    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    .line 17043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "source"

    const-string v4, "checkout"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v8

    .line 18043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "response"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v7

    .line 19043
    new-instance p1, Lo/addWrite;

    const-string v2, "logger_id"

    invoke-direct {p1, v2, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p1, v1, v6

    const-string p1, "pairs"

    .line 1359
    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "upi_setup_set_mpin_response"

    .line 1359
    invoke-static {v0, p1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1b
    return-void
.end method
