.class public final Lo/getInstance;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/urlString;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field private final extraCallback:Ljava/util/concurrent/Executor;

.field private final onNavigationEvent:Ljava/util/concurrent/Executor;

.field private final onPostMessage:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lo/params;

    const-string v1, "FrescoIoBoundExecutor"

    invoke-direct {v0, v1}, Lo/params;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 32
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/getInstance;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 36
    new-instance v0, Lo/params;

    const-string v1, "FrescoDecodeExecutor"

    invoke-direct {v0, v1}, Lo/params;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo/getInstance;->extraCallback:Ljava/util/concurrent/Executor;

    .line 41
    new-instance v0, Lo/params;

    const-string v1, "FrescoBackgroundExecutor"

    invoke-direct {v0, v1}, Lo/params;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lo/getInstance;->onPostMessage:Ljava/util/concurrent/Executor;

    .line 46
    new-instance p1, Lo/params;

    const-string v0, "FrescoLightWeightBackgroundExecutor"

    invoke-direct {p1, v0}, Lo/params;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 47
    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lo/getInstance;->onNavigationEvent:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/concurrent/Executor;
    .locals 1

    .line 75
    iget-object v0, p0, Lo/getInstance;->onNavigationEvent:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final asInterface()Ljava/util/concurrent/Executor;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/getInstance;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final extraCallback()Ljava/util/concurrent/Executor;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/getInstance;->onPostMessage:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/util/concurrent/Executor;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/getInstance;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/util/concurrent/Executor;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/getInstance;->extraCallback:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final onPostMessage()Ljava/util/concurrent/Executor;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/getInstance;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-object v0
.end method
