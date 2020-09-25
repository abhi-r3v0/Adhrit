.class public final Lo/setTrackTintList;
.super Lo/onSessionEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setTrackTintList$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0008\u0010\u0011\u001a\u00020\rH\u0014J\u0008\u0010\u0012\u001a\u00020\rH\u0002R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/UPIActivity;",
        "Landroidx/fragment/app/FragmentActivity;",
        "()V",
        "hyperPaymentsCallback",
        "com/dreamplug/androidapp/UPIActivity$hyperPaymentsCallback$1",
        "Lcom/dreamplug/androidapp/UPIActivity$hyperPaymentsCallback$1;",
        "hyperServices",
        "Lin/juspay/services/HyperServices;",
        "getInitialPayload",
        "Lorg/json/JSONObject;",
        "sessionToken",
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
        "onBackPressed",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "processInitialResult",
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


# instance fields
.field private final ICustomTabsCallback:Lo/setTrackTintList$onPostMessage;

.field private onNavigationEvent:Lin/juspay/services/HyperServices;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/onSessionEvent;-><init>()V

    .line 47
    new-instance v0, Lo/setTrackTintList$onPostMessage;

    invoke-direct {v0, p0}, Lo/setTrackTintList$onPostMessage;-><init>(Lo/setTrackTintList;)V

    iput-object v0, p0, Lo/setTrackTintList;->ICustomTabsCallback:Lo/setTrackTintList$onPostMessage;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/setTrackTintList;)Lin/juspay/services/HyperServices;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/setTrackTintList;->onNavigationEvent:Lin/juspay/services/HyperServices;

    return-object p0
.end method

.method public static final synthetic ICustomTabsCallback(Lcom/cred/pay/repository/models/JuspaySessionToken;)Lorg/json/JSONObject;
    .locals 5

    .line 3088
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3089
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "service"

    const-string v2, "in.juspay.hyperupi"

    .line 3090
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3091
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3092
    invoke-virtual {p0}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMerchantId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "merchantId"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3093
    invoke-virtual {p0}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMerchantChannelId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "merchantChannelId"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3094
    invoke-virtual {p0}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMcc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mcc"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "clientId"

    const-string v3, "dreamplug_android"

    .line 3095
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "checkoutLoader"

    const v3, 0x7f0e02a1

    .line 3096
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3097
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    sget-object v2, Lo/setTrackTintMode;->onRelationshipValidationResult:Lo/setSubtitleTextColor;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "customerId"

    .line 3097
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "environment"

    const-string v3, "prod"

    .line 3098
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3099
    invoke-virtual {p0}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getAxisHmacKey()Ljava/lang/String;

    move-result-object p0

    const-string v2, "axisHmacKey"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "action"

    const-string v2, "initiate"

    .line 3100
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "payload"

    .line 3091
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static final synthetic ICustomTabsCallback(Lo/setTrackTintList;Lin/juspay/services/HyperServices;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/setTrackTintList;->onNavigationEvent:Lin/juspay/services/HyperServices;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/setTrackTintList;)V
    .locals 10

    .line 4063
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "tag"

    const-string v2, "processInitialResult() called with : managementPayload = "

    const-string v3, "UPIActivity"

    const-string v4, "action"

    const-string v5, "payload"

    const-string v6, "in.juspay.hyperupi"

    const-string/jumbo v7, "service"

    const-string v8, "requestId"

    if-eqz v0, :cond_2

    .line 4064
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4065
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4066
    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4067
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "IncomingIntent"

    .line 4068
    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4069
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "intent"

    invoke-static {v4, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "intentData"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4067
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4072
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5065
    invoke-static {v3, v2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 4073
    iget-object p0, p0, Lo/setTrackTintList;->onNavigationEvent:Lin/juspay/services/HyperServices;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lin/juspay/services/HyperServices;->process(Lorg/json/JSONObject;)V

    :cond_1
    return-void

    .line 4075
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4076
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4077
    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4078
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "Management"

    .line 4079
    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4078
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4082
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6065
    invoke-static {v3, v2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 4083
    iget-object p0, p0, Lo/setTrackTintList;->onNavigationEvent:Lin/juspay/services/HyperServices;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Lin/juspay/services/HyperServices;->process(Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method

.method public static final synthetic onPostMessage(Lo/setTrackTintList;)Lo/setTrackTintList$onPostMessage;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/setTrackTintList;->ICustomTabsCallback:Lo/setTrackTintList$onPostMessage;

    return-object p0
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 2

    .line 112
    iget-object v0, p0, Lo/setTrackTintList;->onNavigationEvent:Lin/juspay/services/HyperServices;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lin/juspay/services/HyperServices;->onBackPressed()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 113
    :cond_0
    invoke-super {p0}, Lo/onSessionEvent;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 22
    invoke-super {p0, p1}, Lo/onSessionEvent;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "UPIActivity"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    const p1, 0x7f0e0025

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 30
    sget-object p1, Lo/setHeight;->onPostMessage:Lo/setHeight;

    .line 3000
    sget-object p1, Lo/setHeight;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 2028
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 30
    move-object v0, p0

    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lo/setTrackTintList$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/setTrackTintList$ICustomTabsCallback;-><init>(Lo/setTrackTintList;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 106
    invoke-super {p0}, Lo/onSessionEvent;->onDestroy()V

    .line 107
    iget-object v0, p0, Lo/setTrackTintList;->onNavigationEvent:Lin/juspay/services/HyperServices;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lin/juspay/services/HyperServices;->terminate()V

    :cond_0
    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lo/setTrackTintList;->onNavigationEvent:Lin/juspay/services/HyperServices;

    return-void
.end method
