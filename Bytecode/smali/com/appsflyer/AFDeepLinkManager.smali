.class public Lcom/appsflyer/AFDeepLinkManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static instance:Lcom/appsflyer/AFDeepLinkManager;

.field public static trampolineUri:Landroid/net/Uri;

.field public static ı:[Ljava/lang/String;

.field static ǃ:[Ljava/lang/String;

.field static volatile ɩ:Z

.field static final Ι:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/appsflyer/AFDeepLinkManager;->Ι:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/appsflyer/AFDeepLinkManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/appsflyer/AFDeepLinkManager;->instance:Lcom/appsflyer/AFDeepLinkManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/appsflyer/AFDeepLinkManager;

    invoke-direct {v0}, Lcom/appsflyer/AFDeepLinkManager;-><init>()V

    sput-object v0, Lcom/appsflyer/AFDeepLinkManager;->instance:Lcom/appsflyer/AFDeepLinkManager;

    .line 35
    :cond_0
    sget-object v0, Lcom/appsflyer/AFDeepLinkManager;->instance:Lcom/appsflyer/AFDeepLinkManager;

    return-object v0
.end method

.method private static ǃ(Ljava/lang/String;)Z
    .locals 7

    .line 41
    sget-object v0, Lcom/appsflyer/AFDeepLinkManager;->ǃ:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "af_tranid="

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Validate ESP URLs :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/appsflyer/AFDeepLinkManager;->ǃ:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/appsflyer/AFDeepLinkManager;->ǃ:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 55
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 56
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Deeplink matches ESP domain: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method static ɩ(Landroid/content/Intent;Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1168
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "af_consumed"

    .line 136
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 138
    invoke-static {p1, p2, v0}, Lcom/appsflyer/AFDeepLinkManager;->Ι(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    return-void

    .line 140
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "skipping re-use of previously consumed deep link: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " w/af_consumed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_2
    sget-object p0, Lcom/appsflyer/AFDeepLinkManager;->trampolineUri:Landroid/net/Uri;

    if-eqz p0, :cond_3

    .line 146
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "using trampoline Intent fallback with URI: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/AFDeepLinkManager;->trampolineUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 147
    sget-object p0, Lcom/appsflyer/AFDeepLinkManager;->trampolineUri:Landroid/net/Uri;

    invoke-static {p1, p2, p0}, Lcom/appsflyer/AFDeepLinkManager;->Ι(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    return-void

    .line 149
    :cond_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object p0

    iget-object p0, p0, Lcom/appsflyer/AppsFlyerLibCore;->latestDeepLink:Landroid/net/Uri;

    if-eqz p0, :cond_4

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "using Unity/plugin Intent fallback with URI: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLibCore;->latestDeepLink:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object p0

    iget-object p0, p0, Lcom/appsflyer/AppsFlyerLibCore;->latestDeepLink:Landroid/net/Uri;

    invoke-static {p1, p2, p0}, Lcom/appsflyer/AFDeepLinkManager;->Ι(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    return-void

    :cond_4
    const-string p0, "No deep link detected"

    .line 154
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void
.end method

.method static Ι(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFDeepLinkManager;->ǃ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 72
    sput-boolean v0, Lcom/appsflyer/AFDeepLinkManager;->ɩ:Z

    .line 73
    invoke-static {}, Lcom/appsflyer/AFExecutor;->getInstance()Lcom/appsflyer/AFExecutor;

    move-result-object v0

    .line 1052
    iget-object v1, v0, Lcom/appsflyer/AFExecutor;->ǃ:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 1053
    iget-object v1, v0, Lcom/appsflyer/AFExecutor;->ı:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/appsflyer/AFExecutor;->ǃ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1055
    :cond_0
    iget-object v0, v0, Lcom/appsflyer/AFExecutor;->ǃ:Ljava/util/concurrent/ScheduledExecutorService;

    .line 73
    new-instance v1, Lcom/appsflyer/AFDeepLinkManager$5;

    invoke-direct {v1, p2, p1, p0}, Lcom/appsflyer/AFDeepLinkManager$5;-><init>(Landroid/net/Uri;Ljava/util/Map;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/appsflyer/AppsFlyerLibCore;->handleDeepLinkCallback(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    :goto_0
    const/4 p0, 0x0

    .line 130
    sput-object p0, Lcom/appsflyer/AFDeepLinkManager;->trampolineUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected collectIntentsFromActivities(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2168
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2169
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/AFDeepLinkManager;->trampolineUri:Landroid/net/Uri;

    if-eq v0, v1, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    sput-object p1, Lcom/appsflyer/AFDeepLinkManager;->trampolineUri:Landroid/net/Uri;

    :cond_1
    return-void
.end method
