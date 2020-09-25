.class final Lo/onContentChanged;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onContentChanged$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:I

.field private static final onMessageChannelReady:I

.field private static onNavigationEvent:I

.field private static final onPostMessage:Lo/onContentChanged;


# instance fields
.field private final extraCallback:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lo/onContentChanged;

    invoke-direct {v0}, Lo/onContentChanged;-><init>()V

    sput-object v0, Lo/onContentChanged;->onPostMessage:Lo/onContentChanged;

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 59
    sput v0, Lo/onContentChanged;->onMessageChannelReady:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lo/onContentChanged;->ICustomTabsCallback:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 60
    sput v0, Lo/onContentChanged;->onNavigationEvent:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lo/onContentChanged$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/onContentChanged$onMessageChannelReady;-><init>(B)V

    iput-object v0, p0, Lo/onContentChanged;->extraCallback:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static extraCallback()Ljava/util/concurrent/Executor;
    .locals 1

    .line 129
    sget-object v0, Lo/onContentChanged;->onPostMessage:Lo/onContentChanged;

    iget-object v0, v0, Lo/onContentChanged;->extraCallback:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static onMessageChannelReady()Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 74
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lo/onContentChanged;->ICustomTabsCallback:I

    sget v2, Lo/onContentChanged;->onNavigationEvent:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 1120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1121
    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_0
    return-object v7
.end method
