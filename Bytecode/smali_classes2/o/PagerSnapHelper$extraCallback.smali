.class public final Lo/PagerSnapHelper$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PagerSnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/security/GameScoreStream$Companion;",
        "",
        "()V",
        "PARAM_GAME_ID",
        "",
        "PARAM_IDEMPOTENCY_ID",
        "PARAM_SCORES",
        "PARAM_USER_ID",
        "SCORE_COLLECTION",
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
.field private final onNavigationEvent:Lo/getOnFlingListener$onNavigationEvent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/getOnFlingListener$onNavigationEvent;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PagerSnapHelper$extraCallback;->onNavigationEvent:Lo/getOnFlingListener$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 2000
    iget-object v0, p0, Lo/PagerSnapHelper$extraCallback;->onNavigationEvent:Lo/getOnFlingListener$onNavigationEvent;

    .line 3000
    iget-object v1, v0, Lo/getOnFlingListener$onNavigationEvent;->onMessageChannelReady:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v1}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/toGraph;

    iget-object v2, v0, Lo/getOnFlingListener$onNavigationEvent;->extraCallback:Lo/onVerificationFailed;

    .line 4000
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Lo/onVerificationFailed;->extraCallback()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7000
    new-instance v6, Ljava/io/File;

    .line 8000
    new-instance v7, Ljava/io/File;

    iget-object v8, v2, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "assetpacks"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7000
    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6000
    invoke-static {v6}, Lo/onVerificationFailed;->onPostMessage(Ljava/io/File;)J

    move-result-wide v6

    long-to-int v7, v6

    .line 9000
    new-instance v6, Ljava/io/File;

    .line 10000
    new-instance v8, Ljava/io/File;

    .line 11000
    new-instance v10, Ljava/io/File;

    iget-object v11, v2, Lo/onVerificationFailed;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10000
    invoke-direct {v8, v10, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9000
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5000
    invoke-static {v6}, Lo/onVerificationFailed;->onPostMessage(Ljava/io/File;)J

    move-result-wide v6

    .line 4000
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3000
    :cond_0
    invoke-interface {v1, v3}, Lo/toGraph;->extraCallback(Ljava/util/Map;)Lo/getMinidumpFile;

    move-result-object v1

    iget-object v2, v0, Lo/getOnFlingListener$onNavigationEvent;->ICustomTabsCallback:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v2}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v3, v0, Lo/getOnFlingListener$onNavigationEvent;->extraCallback:Lo/onVerificationFailed;

    .line 12000
    new-instance v4, Lo/exceptionLabel$extraCallback;

    invoke-direct {v4, v3}, Lo/exceptionLabel$extraCallback;-><init>(Lo/onVerificationFailed;)V

    .line 3000
    invoke-virtual {v1, v2, v4}, Lo/getMinidumpFile;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getAppFile;)Lo/getMinidumpFile;

    move-result-object v1

    iget-object v0, v0, Lo/getOnFlingListener$onNavigationEvent;->ICustomTabsCallback:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v0}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    sget-object v2, Lo/setInstrumentId;->extraCallback:Lo/getLogger;

    invoke-virtual {v1, v0, v2}, Lo/getMinidumpFile;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getLogger;)Lo/getMinidumpFile;

    return-void
.end method
