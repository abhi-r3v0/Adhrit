.class public final Lo/addCustomViewsWithGravity;
.super Lo/Sha1FileIdStrategy;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/addCustomViewsWithGravity$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\rH\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/service/CredFirebaseMessagingService;",
        "Lcom/google/firebase/messaging/FirebaseMessagingService;",
        "()V",
        "notificationService",
        "Lcom/dreamplug/androidapp/service/NotificationService;",
        "getNotificationService",
        "()Lcom/dreamplug/androidapp/service/NotificationService;",
        "notificationService$delegate",
        "Lkotlin/Lazy;",
        "handleMessage",
        "",
        "extras",
        "",
        "",
        "onMessageReceived",
        "remoteMessage",
        "Lcom/google/firebase/messaging/RemoteMessage;",
        "onNewToken",
        "token",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/addCustomViewsWithGravity$onMessageChannelReady;


# instance fields
.field private final extraCallback:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/addCustomViewsWithGravity$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/addCustomViewsWithGravity$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/addCustomViewsWithGravity;->ICustomTabsCallback:Lo/addCustomViewsWithGravity$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lo/Sha1FileIdStrategy;-><init>()V

    .line 22
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 129
    sget-object v0, Lo/addCustomViewsWithGravity$onPostMessage;->onMessageChannelReady:Lo/addCustomViewsWithGravity$onPostMessage;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 129
    iput-object v1, p0, Lo/addCustomViewsWithGravity;->extraCallback:Lo/isSameListener;

    return-void
.end method


# virtual methods
.method public final onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "remoteMessage"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-super/range {p0 .. p1}, Lo/Sha1FileIdStrategy;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "remoteMessage.data"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "senderId"

    .line 34
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->toIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v4}, Lo/getCacheDuration;->onNavigationEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 36
    invoke-static/range {p1 .. p1}, Lcom/freshchat/consumer/sdk/Freshchat;->isFreshchatNotification(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "pn_received"

    const-string v5, "pairs"

    const-string v6, "action"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/Freshchat;->handleFcmMessage(Landroid/content/Context;Ljava/lang/Object;)V

    new-array v0, v7, [Lo/addWrite;

    .line 2043
    new-instance v1, Lo/addWrite;

    const-string v2, "freshchat"

    invoke-direct {v1, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v8

    .line 39
    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v7}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 38
    invoke-static {v4, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    :cond_0
    if-eqz v2, :cond_11

    const-string v0, "dp"

    .line 43
    invoke-static {v2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "tag"

    .line 44
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 3000
    sget-object v3, Lo/isInLayout;->AudioAttributesImplApi21Parcelizer:Lo/isDetached;

    sget-object v9, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v10, 0x30

    aget-object v9, v9, v10

    invoke-virtual {v3, v9}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/push-service/v1/call-back/update"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "id"

    .line 46
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_1

    move-object/from16 v2, p0

    .line 4000
    iget-object v3, v2, Lo/addCustomViewsWithGravity;->extraCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getChildHorizontalGravity;

    .line 48
    new-instance v15, Lcom/dreamplug/androidapp/service/NotificationStatusRequest;

    const/4 v11, 0x0

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v14, 0x0

    const/16 v16, 0x12

    const/16 v17, 0x0

    const-string v13, "RECEIVED"

    move-object v9, v15

    move-object v7, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    .line 48
    invoke-direct/range {v9 .. v16}, Lcom/dreamplug/androidapp/service/NotificationStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    invoke-interface {v3, v0, v7}, Lo/getChildHorizontalGravity;->onPostMessage(Ljava/lang/String;Lcom/dreamplug/androidapp/service/NotificationStatusRequest;)Lo/clearScrap;

    move-result-object v0

    .line 51
    new-instance v3, Lo/addCustomViewsWithGravity$ICustomTabsCallback;

    invoke-direct {v3}, Lo/addCustomViewsWithGravity$ICustomTabsCallback;-><init>()V

    check-cast v3, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v3}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    goto :goto_0

    :cond_1
    move-object/from16 v2, p0

    :goto_0
    const-string/jumbo v0, "type"

    .line 4065
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4066
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v7, "silent"

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 5056
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_f

    const/4 v0, 0x2

    new-array v9, v0, [Lo/addWrite;

    .line 6043
    new-instance v10, Lo/addWrite;

    const-string/jumbo v11, "title"

    invoke-direct {v10, v11, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v9, v8

    .line 7043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x1

    aput-object v7, v9, v6

    .line 4070
    invoke-static {v9, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7088
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v6, Ljava/util/Map;

    invoke-static {v6, v9}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 4069
    invoke-static {v4, v6}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    if-nez v3, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const-string v4, "RIVER_APP_SETUP"

    .line 8054
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_2
    const-string v6, "RIVER_silent_pn_received"

    if-eqz v4, :cond_4

    .line 4077
    invoke-static {v6}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    const-string v0, "r_sdays"

    .line 4078
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4079
    sget-object v0, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {v0}, Lo/isPendingInitialRun;->onPostMessage(Lo/isPendingInitialRun;)V

    return-void

    :cond_4
    if-nez v3, :cond_5

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    const-string v4, "RIVER_TIMED"

    .line 9054
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_8

    const-string/jumbo v3, "rv_stime"

    .line 4083
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide/16 v9, 0x0

    if-eqz v3, :cond_6

    invoke-static {v3}, Lo/childWrites;->extraCallback(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    goto :goto_4

    :cond_6
    move-wide v3, v9

    :goto_4
    const-string/jumbo v7, "rv_rtime"

    .line 4084
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {v1}, Lo/childWrites;->extraCallback(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    :cond_7
    new-array v1, v0, [Lo/addWrite;

    .line 4087
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 10043
    new-instance v11, Lo/addWrite;

    const-string/jumbo v12, "start_time"

    invoke-direct {v11, v12, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v8

    .line 4088
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 11043
    new-instance v8, Lo/addWrite;

    const-string v11, "end_time"

    invoke-direct {v8, v11, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x1

    aput-object v8, v1, v7

    .line 4086
    invoke-static {v1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11105
    new-instance v5, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 4085
    invoke-static {v6, v5}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 4090
    sget-object v0, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    .line 11150
    sget-object v0, Lo/isPendingInitialRun$ICustomTabsCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/isPendingInitialRun$ICustomTabsCallback$onMessageChannelReady;

    check-cast v0, Lo/isPendingInitialRun$ICustomTabsCallback;

    invoke-static {v0, v3, v4, v9, v10}, Lo/isPendingInitialRun;->onNavigationEvent(Lo/isPendingInitialRun$ICustomTabsCallback;JJ)V

    return-void

    :cond_8
    if-nez v3, :cond_9

    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    const-string v0, "COIN_REFRESH"

    .line 12054
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_a

    .line 4093
    sget-object v0, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    invoke-static {}, Lo/getTextOff;->ICustomTabsCallback()V

    return-void

    :cond_a
    if-nez v3, :cond_b

    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    const-string v0, "REWARDS_REFRESH"

    .line 13054
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_c

    .line 4094
    sget-object v0, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    invoke-static {}, Lo/getTextOff;->onPostMessage()V

    return-void

    :cond_c
    if-nez v3, :cond_d

    goto :goto_7

    :cond_d
    const-string v0, "NBA_REFRESH"

    .line 14054
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_7
    if-eqz v8, :cond_e

    .line 4095
    sget-object v0, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    invoke-static {}, Lo/getTextOff;->extraCallback()V

    :cond_e
    return-void

    .line 4103
    :cond_f
    new-instance v0, Lo/isChildOrHidden;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_10

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_10
    invoke-direct {v0, v1, v3}, Lo/isChildOrHidden;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    goto :goto_8

    :cond_11
    move-object/from16 v2, p0

    :goto_8
    return-void
.end method

.method public final onNewToken(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1}, Lo/Sha1FileIdStrategy;->onNewToken(Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lo/getCacheDuration;->onNavigationEvent(Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Refreshed token: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyFirebaseMsgService"

    const-string/jumbo v2, "tag"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    invoke-static {v1, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lo/addCustomViewsWithGravity$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
