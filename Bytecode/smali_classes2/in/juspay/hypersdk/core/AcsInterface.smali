.class public Lin/juspay/hypersdk/core/AcsInterface;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AcsInterface"


# instance fields
.field private browserFragment:Lin/juspay/hypersdk/HyperFragment;

.field private dui:Lin/juspay/mystique/DynamicUI;

.field private sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;


# direct methods
.method public constructor <init>(Lin/juspay/hypersdk/HyperFragment;Lin/juspay/hypersdk/core/JuspayServices;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/juspay/hypersdk/core/AcsInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p2}, Lin/juspay/hypersdk/core/JuspayServices;->getDynamicUI()Lin/juspay/mystique/DynamicUI;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/core/AcsInterface;->dui:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p2}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/core/AcsInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    return-void
.end method

.method private isFunctionAllowedToInvoke(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[a-zA-Z0-9]*$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/core/AcsInterface;->isFunctionAllowedToInvoke(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "window[\"onEvent\'\"](\'%s\',atob(\'%s\'))"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lin/juspay/hypersdk/core/AcsInterface;->dui:Lin/juspay/mystique/DynamicUI;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/core/AcsInterface;->isFunctionAllowedToInvoke(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    aput-object p3, v1, v0

    const-string p1, "window[\"onEvent\'\"](\'%s\',atob(\'%s\'),\'%s\')"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lin/juspay/hypersdk/core/AcsInterface;->dui:Lin/juspay/mystique/DynamicUI;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public invokeInDUIGatekeeper(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/AcsInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/AcsInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lin/juspay/hypersdk/core/AcsInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v2}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object v0, p0, Lin/juspay/hypersdk/core/AcsInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v1, "AcsInterface"

    const-string v2, "action"

    const-string v3, "user"

    const-string v4, "acs_interface"

    const-string v5, "Trying to access a method which is inaccessible"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v7, v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/AcsInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error while Invoking "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v7, v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/AcsInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Method "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Not found "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    const-string v2, "AcsInterface"

    const-string v3, "action"

    const-string v4, "user"

    const-string v5, "acs_interface"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method public invokeInDUIGatekeeper(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lin/juspay/hypersdk/core/AcsInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/AcsInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v3, p0, Lin/juspay/hypersdk/core/AcsInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v3}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    aput-object v0, v2, v6

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v7, p1

    iget-object v1, p0, Lin/juspay/hypersdk/core/AcsInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v2, "AcsInterface"

    const-string v3, "action"

    const-string v4, "user"

    const-string v5, "acs_interface"

    const-string v6, "Trying to access a method which is inaccessible"

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v7, p2

    iget-object v1, p0, Lin/juspay/hypersdk/core/AcsInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error while Invoking "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catch_2
    move-exception p2

    move-object v7, p2

    iget-object v1, p0, Lin/juspay/hypersdk/core/AcsInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Method "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Not found "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    const-string v2, "AcsInterface"

    const-string v3, "action"

    const-string v4, "user"

    const-string v5, "acs_interface"

    :goto_1
    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method
