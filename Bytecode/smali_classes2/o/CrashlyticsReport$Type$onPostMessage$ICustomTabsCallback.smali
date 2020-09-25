.class final Lo/CrashlyticsReport$Type$onPostMessage$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Type$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private delegate:Ljava/lang/Runnable;

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$1:Lo/CrashlyticsReport$Type$onPostMessage;


# direct methods
.method private constructor <init>(Lo/CrashlyticsReport$Type$onPostMessage;)V
    .locals 1

    .line 218
    iput-object p1, p0, Lo/CrashlyticsReport$Type$onPostMessage$ICustomTabsCallback;->this$1:Lo/CrashlyticsReport$Type$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lo/CrashlyticsReport$Type$onPostMessage$ICustomTabsCallback;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lo/CrashlyticsReport$Type$onPostMessage;Lo/CrashlyticsReport$Type$2;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Type$onPostMessage$ICustomTabsCallback;-><init>(Lo/CrashlyticsReport$Type$onPostMessage;)V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 234
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onPostMessage$ICustomTabsCallback;->delegate:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Only one thread may be created in an AsyncQueue."

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iput-object p1, p0, Lo/CrashlyticsReport$Type$onPostMessage$ICustomTabsCallback;->delegate:Ljava/lang/Runnable;

    .line 236
    iget-object p1, p0, Lo/CrashlyticsReport$Type$onPostMessage$ICustomTabsCallback;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 237
    iget-object p1, p0, Lo/CrashlyticsReport$Type$onPostMessage$ICustomTabsCallback;->this$1:Lo/CrashlyticsReport$Type$onPostMessage;

    invoke-static {p1}, Lo/CrashlyticsReport$Type$onPostMessage;->access$300(Lo/CrashlyticsReport$Type$onPostMessage;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method

.method public final run()V
    .locals 1

    .line 225
    :try_start_0
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onPostMessage$ICustomTabsCallback;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 229
    :goto_0
    iget-object v0, p0, Lo/CrashlyticsReport$Type$onPostMessage$ICustomTabsCallback;->delegate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
