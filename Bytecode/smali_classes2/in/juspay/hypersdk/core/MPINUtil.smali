.class public Lin/juspay/hypersdk/core/MPINUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "MPINUtil"

.field private static orchestrator:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lin/juspay/hypersdk/core/MPINUtil;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private component:Landroid/content/ComponentName;

.field private connection:Lin/juspay/hypersdk/core/GodelServiceConnection;


# direct methods
.method private constructor <init>(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lin/juspay/hypersdk/core/GodelServiceConnection;

    invoke-direct {v0, p1}, Lin/juspay/hypersdk/core/GodelServiceConnection;-><init>(Lin/juspay/hypersdk/core/JuspayServices;)V

    iput-object v0, p0, Lin/juspay/hypersdk/core/MPINUtil;->connection:Lin/juspay/hypersdk/core/GodelServiceConnection;

    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lin/juspay/hypersdk/core/MPINUtil;->component:Landroid/content/ComponentName;

    return-void
.end method

.method private bind(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lin/juspay/hypersdk/core/MPINUtil;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lin/juspay/hypersdk/core/MPINUtil;->connection:Lin/juspay/hypersdk/core/GodelServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public static closeAllConnections(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lin/juspay/hypersdk/core/MPINUtil;->orchestrator:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p0}, Lin/juspay/hypersdk/core/MPINUtil;->closeConnection(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lin/juspay/hypersdk/core/MPINUtil;->orchestrator:Ljava/util/HashMap;

    return-void
.end method

.method public static closeConnection(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lin/juspay/hypersdk/core/MPINUtil;->orchestrator:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lin/juspay/hypersdk/core/MPINUtil;->orchestrator:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/juspay/hypersdk/core/MPINUtil;

    invoke-direct {v0, p1}, Lin/juspay/hypersdk/core/MPINUtil;->unbind(Landroid/content/Context;)V

    sget-object p1, Lin/juspay/hypersdk/core/MPINUtil;->orchestrator:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static communicate(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lin/juspay/hypersdk/HyperFragment;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p4}, Lin/juspay/hypersdk/HyperFragment;->getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    :try_start_0
    sget-object v2, Lin/juspay/hypersdk/core/MPINUtil;->orchestrator:Ljava/util/HashMap;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lin/juspay/hypersdk/core/MPINUtil;->orchestrator:Ljava/util/HashMap;

    :cond_0
    sget-object v2, Lin/juspay/hypersdk/core/MPINUtil;->orchestrator:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p1, Lin/juspay/hypersdk/core/MPINUtil;->orchestrator:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/juspay/hypersdk/core/MPINUtil;

    goto :goto_0

    :cond_1
    new-instance v2, Lin/juspay/hypersdk/core/MPINUtil;

    invoke-direct {v2, v0, p0, p1}, Lin/juspay/hypersdk/core/MPINUtil;-><init>(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1}, Lin/juspay/hypersdk/core/MPINUtil;->bind(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p2, p4, p5}, Lin/juspay/hypersdk/core/MPINUtil;->reportBindFailure(ILin/juspay/hypersdk/HyperFragment;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object p1, Lin/juspay/hypersdk/core/MPINUtil;->orchestrator:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v2

    :goto_0
    iget-object p0, p0, Lin/juspay/hypersdk/core/MPINUtil;->connection:Lin/juspay/hypersdk/core/GodelServiceConnection;

    new-instance p1, Lin/juspay/hypersdk/core/GodelServiceResponseHandler;

    invoke-direct {p1, p5, p4}, Lin/juspay/hypersdk/core/GodelServiceResponseHandler;-><init>(Ljava/lang/String;Lin/juspay/hypersdk/HyperFragment;)V

    invoke-virtual {p0, p2, p3, p1}, Lin/juspay/hypersdk/core/GodelServiceConnection;->request(ILandroid/os/Bundle;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    move-object v7, p0

    const-string v2, "MPINUtil"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "mpin_util"

    const-string v6, "Exception while trying to connect"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static reportBindFailure(ILin/juspay/hypersdk/HyperFragment;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "code"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "error"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "message"

    const-string v2, "BIND_FAILURE"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v7, p0

    const-string v2, "MPINUtil"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "mpin_util"

    const-string v6, "Exception while creating bind failure response"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private unbind(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/MPINUtil;->connection:Lin/juspay/hypersdk/core/GodelServiceConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lin/juspay/hypersdk/core/GodelServiceConnection;->isBound:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/MPINUtil;->connection:Lin/juspay/hypersdk/core/GodelServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lin/juspay/hypersdk/core/MPINUtil;->connection:Lin/juspay/hypersdk/core/GodelServiceConnection;

    :cond_0
    return-void
.end method
