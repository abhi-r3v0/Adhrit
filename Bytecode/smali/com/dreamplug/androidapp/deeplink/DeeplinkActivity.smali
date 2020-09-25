.class public final Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;
.super Lo/asBinder;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0002J\u0012\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014J\u001c\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0012\u0010\u0013\u001a\u00020\n2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "notificationService",
        "Lcom/dreamplug/androidapp/service/NotificationService;",
        "getNotificationService",
        "()Lcom/dreamplug/androidapp/service/NotificationService;",
        "notificationService$delegate",
        "Lkotlin/Lazy;",
        "observePayResponse",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "start",
        "deepLink",
        "",
        "status",
        "Lcom/dreamplug/utils/health/Health$ServiceStatus;",
        "tagSource",
        "source",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/isSameListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lo/asBinder;-><init>()V

    .line 40
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 177
    sget-object v0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$onPostMessage;->onNavigationEvent:Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$onPostMessage;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 177
    iput-object v1, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;->extraCallback:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic extraCallback(Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;)V
    .locals 3

    .line 15166
    sget-object v0, Lo/getWrappedTypeArray;->asBinder:Lo/getWrappedTypeArray;

    move-object v1, p0

    check-cast v1, Lo/toLegacyStreamType;

    new-instance v2, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$extraCallback;

    invoke-direct {v2, p0}, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$extraCallback;-><init>(Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method

.method public static synthetic onNavigationEvent(Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;->onPostMessage(Ljava/lang/String;Lcom/dreamplug/utils/health/Health$ServiceStatus;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 25

    move-object/from16 v0, p0

    .line 42
    invoke-super/range {p0 .. p1}, Lo/asBinder;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0e001e

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cta_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pn_deeplink"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v12, "title"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "msg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v15, "action"

    invoke-virtual {v3, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v9, "notification"

    const/4 v8, 0x0

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "tag"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v5, Lo/isInLayout;->AudioAttributesImplApi21Parcelizer:Lo/isDetached;

    sget-object v6, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v7, 0x30

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/push-service/v1/call-back/update"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3000
    iget-object v3, v0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;->extraCallback:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lo/getChildHorizontalGravity;

    .line 54
    new-instance v5, Lcom/dreamplug/androidapp/service/NotificationStatusRequest;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v20, "OPENED"

    move-object v3, v5

    move-object/from16 v21, v5

    move-object/from16 v5, v16

    move-object/from16 v22, v6

    move-object/from16 v6, v17

    move-object/from16 v23, v7

    move-object/from16 v7, v20

    move-object v8, v1

    move-object/from16 v24, v9

    move/from16 v9, v18

    move-object/from16 p1, v1

    move-object v1, v10

    move-object/from16 v10, v19

    .line 54
    invoke-direct/range {v3 .. v10}, Lcom/dreamplug/androidapp/service/NotificationStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    move-object/from16 v3, v23

    .line 53
    invoke-interface {v4, v3, v5}, Lo/getChildHorizontalGravity;->onPostMessage(Ljava/lang/String;Lcom/dreamplug/androidapp/service/NotificationStatusRequest;)Lo/clearScrap;

    move-result-object v3

    .line 59
    new-instance v4, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$onNavigationEvent;

    invoke-direct {v4}, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$onNavigationEvent;-><init>()V

    check-cast v4, Lo/getScrapOrCachedViewForId;

    invoke-interface {v3, v4}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    goto :goto_0

    :cond_0
    move-object/from16 p1, v1

    move-object/from16 v24, v9

    move-object v1, v10

    .line 67
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, -0x1

    const-string/jumbo v5, "t_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v4, v24

    .line 68
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    check-cast v4, Landroid/app/NotificationManager;

    .line 69
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v3, 0x5

    new-array v4, v3, [Lo/addWrite;

    .line 3043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v12, v13}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    if-eqz v14, :cond_3

    .line 73
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    const/16 v8, 0x32

    if-le v7, v8, :cond_1

    const/16 v7, 0x32

    :cond_1
    if-eqz v14, :cond_2

    invoke-virtual {v14, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v6, 0x0

    .line 4043
    :goto_1
    new-instance v7, Lo/addWrite;

    const-string v8, "body"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v4, v5

    const/4 v5, 0x2

    .line 5043
    new-instance v6, Lo/addWrite;

    const-string v7, "deeplink"

    invoke-direct {v6, v7, v11}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 6043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v15, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v5

    const/4 v1, 0x4

    .line 7043
    new-instance v5, Lo/addWrite;

    move-object/from16 v6, p1

    invoke-direct {v5, v2, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v1

    const-string v1, "pairs"

    .line 71
    invoke-static {v4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "pn_opened"

    .line 70
    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_2

    .line 68
    :cond_4
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "source"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 7160
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, -0x56b64b33

    if-eq v2, v3, :cond_7

    goto :goto_3

    :cond_7
    const-string v2, "RiverForeGroundWorker"

    .line 7161
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "river_fns_clicked"

    invoke-static {v1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 82
    :cond_8
    :goto_3
    sget-object v1, Lcom/dreamplug/utils/health/Health;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health;

    sget-object v1, Lcom/dreamplug/utils/health/Health$onPostMessage;->asBinder:Lcom/dreamplug/utils/health/Health$onPostMessage;

    invoke-static {v1}, Lcom/dreamplug/utils/health/Health;->onMessageChannelReady(Lcom/dreamplug/utils/health/Health$onPostMessage;)Lo/setActive;

    move-result-object v1

    .line 83
    sget-object v2, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v2, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$ICustomTabsCallback;

    invoke-direct {v2, v0, v1, v11}, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$ICustomTabsCallback;-><init>(Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;Lo/setActive;Ljava/lang/String;)V

    check-cast v2, Lo/getServerTime;

    const-string v3, "command"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0xbb8

    .line 8018
    new-instance v5, Lo/updateItemAt$extraCallback;

    invoke-direct {v5, v2}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v5, Ljava/lang/Runnable;

    invoke-static {v3, v4, v5}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    move-result-object v2

    .line 88
    move-object v3, v0

    check-cast v3, Lo/toLegacyStreamType;

    new-instance v4, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$onMessageChannelReady;

    invoke-direct {v4, v0, v2, v11}, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$onMessageChannelReady;-><init>(Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;Ljava/io/Closeable;Ljava/lang/String;)V

    check-cast v4, Lo/setPlaybackToRemote;

    invoke-virtual {v1, v3, v4}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Lcom/dreamplug/utils/health/Health$ServiceStatus;)V
    .locals 7

    .line 100
    sget-object v0, Lo/length;->extraCallback:Lo/length;

    invoke-static {p1}, Lo/length;->extraCallback(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_4

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "intent"

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz p2, :cond_3

    const-string v4, "$this$codeRed"

    .line 106
    invoke-static {p2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9016
    invoke-virtual {p2}, Lcom/dreamplug/utils/health/Health$ServiceStatus;->getStatus()I

    move-result v4

    sget-object v5, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    .line 9056
    iget v5, v5, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->onNavigationEvent:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    .line 106
    invoke-virtual {p2}, Lcom/dreamplug/utils/health/Health$ServiceStatus;->getConfigs()Ljava/util/HashMap;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_3

    .line 107
    invoke-virtual {p2}, Lcom/dreamplug/utils/health/Health$ServiceStatus;->getConfigs()Ljava/util/HashMap;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 175
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 109
    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "$"

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    .line 10048
    invoke-static {v4, v6, v3}, Lo/childWrites;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    .line 10202
    invoke-static {v4, v6, v3, v3}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v6

    .line 111
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 112
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 11202
    invoke-static {v4, v5, v3, v3}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    .line 112
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 113
    invoke-static {v6, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v4

    goto :goto_1

    :cond_3
    move-object p2, v0

    goto :goto_2

    :cond_4
    move-object p2, v1

    .line 123
    :goto_2
    sget-object v0, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DeeplinkActivity data: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v5

    const-string v6, "lifecycle"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12029
    invoke-interface {v0, v4, v5, v3}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    if-eqz p2, :cond_9

    .line 129
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v1

    :goto_3
    const/4 v0, 0x2

    invoke-static {p2, v3, p1, v0}, Lo/length;->ICustomTabsCallback(Landroid/net/Uri;ZLjava/lang/String;I)V

    .line 130
    sget-object p1, Lo/getDrawableIfKnown;->onMessageChannelReady:Lo/getDrawableIfKnown;

    invoke-static {}, Lo/getDrawableIfKnown;->onMessageChannelReady()Lo/getThumbTintList;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 13011
    iget-boolean p2, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz p2, :cond_6

    move-object p1, v1

    goto :goto_4

    .line 13016
    :cond_6
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 130
    :goto_4
    check-cast p1, Lo/TintInfo;

    if-eqz p1, :cond_7

    .line 13032
    iget-object v1, p1, Lo/TintInfo;->extraCallback:Ljava/lang/String;

    :cond_7
    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    .line 131
    :goto_5
    new-instance p1, Landroid/content/Intent;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    const-class v0, Lcom/dreamplug/androidapp/SplashActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    sget-object p2, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance p2, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$ICustomTabsCallback$Stub;

    invoke-direct {p2, p0}, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$ICustomTabsCallback$Stub;-><init>(Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;)V

    check-cast p2, Lo/getServerTime;

    const-string v0, "command"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x7d0

    .line 14018
    new-instance v4, Lo/updateItemAt$extraCallback;

    invoke-direct {v4, p2}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-static {v0, v1, v4}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    goto :goto_6

    :cond_9
    if-eqz p1, :cond_a

    .line 137
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 139
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object p1, p2

    goto :goto_6

    .line 144
    :cond_a
    new-instance p1, Landroid/content/Intent;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    const-class v0, Lcom/dreamplug/androidapp/SplashActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    :goto_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 149
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    :cond_b
    const-string p1, "You don\'t have any app to perform this action"

    .line 151
    check-cast p1, Ljava/lang/CharSequence;

    const/16 p2, 0x50

    .line 14168
    invoke-static {p0, p1, p2, v3}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    :goto_7
    if-eqz v2, :cond_c

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 156
    :cond_c
    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
