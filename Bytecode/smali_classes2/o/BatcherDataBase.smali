.class public final Lo/BatcherDataBase;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z

.field private final extraCallback:Z

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Z

.field private final onPostMessage:Z


# direct methods
.method private constructor <init>(Lo/BatcherDataBase_Impl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lo/BatcherDataBase_Impl;->onNavigationEvent(Lo/BatcherDataBase_Impl;)Z

    move-result v0

    iput-boolean v0, p0, Lo/BatcherDataBase;->onNavigationEvent:Z

    invoke-static {p1}, Lo/BatcherDataBase_Impl;->ICustomTabsCallback(Lo/BatcherDataBase_Impl;)Z

    move-result v0

    iput-boolean v0, p0, Lo/BatcherDataBase;->ICustomTabsCallback:Z

    invoke-static {p1}, Lo/BatcherDataBase_Impl;->onPostMessage(Lo/BatcherDataBase_Impl;)Z

    move-result v0

    iput-boolean v0, p0, Lo/BatcherDataBase;->onMessageChannelReady:Z

    invoke-static {p1}, Lo/BatcherDataBase_Impl;->extraCallback(Lo/BatcherDataBase_Impl;)Z

    move-result v0

    iput-boolean v0, p0, Lo/BatcherDataBase;->onPostMessage:Z

    invoke-static {p1}, Lo/BatcherDataBase_Impl;->onMessageChannelReady(Lo/BatcherDataBase_Impl;)Z

    move-result p1

    iput-boolean p1, p0, Lo/BatcherDataBase;->extraCallback:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/BatcherDataBase_Impl;Lo/AuthRefreshJobWorker;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/BatcherDataBase;-><init>(Lo/BatcherDataBase_Impl;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sms"

    iget-boolean v2, p0, Lo/BatcherDataBase;->onNavigationEvent:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tel"

    iget-boolean v2, p0, Lo/BatcherDataBase;->ICustomTabsCallback:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "calendar"

    iget-boolean v2, p0, Lo/BatcherDataBase;->onMessageChannelReady:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "storePicture"

    iget-boolean v2, p0, Lo/BatcherDataBase;->onPostMessage:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "inlineVideo"

    iget-boolean v2, p0, Lo/BatcherDataBase;->extraCallback:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error occured while obtaining the MRAID capabilities."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
