.class public final Lo/initProgress$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/initProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/initProgress$extraCallback;

.field extraCallback:I

.field onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Z

.field onPostMessage:I


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    sget-object v0, Lo/initProgress$extraCallback;->onNavigationEvent:Lo/initProgress$extraCallback;

    iput-object v0, p0, Lo/initProgress$onPostMessage;->ICustomTabsCallback:Lo/initProgress$extraCallback;

    .line 425
    iput-boolean p1, p0, Lo/initProgress$onPostMessage;->onNavigationEvent:Z

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/initProgress;
    .locals 11

    .line 466
    iget-object v0, p0, Lo/initProgress$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lo/initProgress$onPostMessage;->onPostMessage:I

    iget v3, p0, Lo/initProgress$onPostMessage;->extraCallback:I

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lo/initProgress$onNavigationEvent;

    iget-object v1, p0, Lo/initProgress$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    iget-object v9, p0, Lo/initProgress$onPostMessage;->ICustomTabsCallback:Lo/initProgress$extraCallback;

    iget-boolean v10, p0, Lo/initProgress$onPostMessage;->onNavigationEvent:Z

    invoke-direct {v8, v1, v9, v10}, Lo/initProgress$onNavigationEvent;-><init>(Ljava/lang/String;Lo/initProgress$extraCallback;Z)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 483
    new-instance v1, Lo/initProgress;

    invoke-direct {v1, v0}, Lo/initProgress;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v1

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Name must be non-null and non-empty, but given: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/initProgress$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
