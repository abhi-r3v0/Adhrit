.class final Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;
.super Landroid/os/Handler;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile ICustomTabsCallback$Stub:Z

.field private asBinder:Ljava/io/IOException;

.field private volatile asInterface:Z

.field private extraCallback:Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:J

.field final synthetic onNavigationEvent:Lcom/google/android/exoplayer2/upstream/Loader;

.field public final onPostMessage:I

.field private volatile onRelationshipValidationResult:Ljava/lang/Thread;

.field private onTransact:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onNavigationEvent:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 337
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 338
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;

    .line 339
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->extraCallback:Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;

    .line 340
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onPostMessage:I

    .line 341
    iput-wide p6, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onMessageChannelReady:J

    return-void
.end method

.method private extraCallback()J
    .locals 2

    .line 503
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onTransact:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private onNavigationEvent()V
    .locals 2

    const/4 v0, 0x0

    .line 494
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->asBinder:Ljava/io/IOException;

    .line 495
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onNavigationEvent:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->onPostMessage(Lcom/google/android/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onNavigationEvent:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onPostMessage()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onNavigationEvent:Lcom/google/android/exoplayer2/upstream/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->onPostMessage(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;)Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 440
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->asInterface:Z

    if-eqz v0, :cond_0

    return-void

    .line 443
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 444
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onNavigationEvent()V

    return-void

    .line 447
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    .line 450
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onPostMessage()V

    .line 451
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 452
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onMessageChannelReady:J

    sub-long v6, v4, v0

    .line 453
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_2

    .line 454
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->extraCallback:Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;->onMessageChannelReady(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;JJZ)V

    return-void

    .line 457
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v10, 0x2

    if-eq v0, v10, :cond_8

    const/4 v11, 0x3

    if-eq v0, v11, :cond_3

    goto :goto_1

    .line 471
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->asBinder:Ljava/io/IOException;

    .line 472
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onTransact:I

    add-int/lit8 v9, p1, 0x1

    iput v9, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onTransact:I

    .line 473
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->extraCallback:Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;

    .line 474
    invoke-interface/range {v2 .. v9}, Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;->onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;

    move-result-object p1

    .line 475
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;->extraCallback(Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;)I

    move-result v0

    if-ne v0, v11, :cond_4

    .line 476
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onNavigationEvent:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->asBinder:Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->ICustomTabsCallback(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    .line 477
    :cond_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;->extraCallback(Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;)I

    move-result v0

    if-eq v0, v10, :cond_7

    .line 478
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;->extraCallback(Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 479
    iput v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onTransact:I

    .line 482
    :cond_5
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;->onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 483
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;->onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;)J

    move-result-wide v0

    goto :goto_0

    .line 484
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->extraCallback()J

    move-result-wide v0

    .line 481
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onPostMessage(J)V

    :cond_7
    :goto_1
    return-void

    .line 463
    :cond_8
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->extraCallback:Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;->onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    .line 466
    invoke-static {v0, v1, p1}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 467
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onNavigationEvent:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->ICustomTabsCallback(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    .line 459
    :cond_9
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->extraCallback:Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;->onMessageChannelReady(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;JJZ)V

    return-void

    .line 448
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public final onMessageChannelReady(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->asBinder:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onTransact:I

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 9

    .line 361
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->asInterface:Z

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->asBinder:Ljava/io/IOException;

    const/4 v1, 0x0

    .line 363
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 364
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_1

    .line 366
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 369
    :cond_0
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->ICustomTabsCallback$Stub:Z

    .line 370
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;->onTransact()V

    .line 371
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onRelationshipValidationResult:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onRelationshipValidationResult:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 376
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onPostMessage()V

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 378
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->extraCallback:Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onMessageChannelReady:J

    sub-long v6, v4, v6

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;->onMessageChannelReady(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;JJZ)V

    .line 383
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->extraCallback:Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;

    :cond_2
    return-void
.end method

.method public final onPostMessage(J)V
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onNavigationEvent:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onNavigationEvent:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->onPostMessage(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;)Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 354
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 356
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onNavigationEvent()V

    return-void
.end method

.method public final run()V
    .locals 5

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 390
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->onRelationshipValidationResult:Ljava/lang/Thread;

    .line 391
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->ICustomTabsCallback$Stub:Z

    if-nez v3, :cond_0

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/StatementResponse;->ICustomTabsCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->ICustomTabsCallback:Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;->ICustomTabsCallback$Stub()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :try_start_2
    invoke-static {}, Lo/StatementResponse;->onPostMessage()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {}, Lo/StatementResponse;->onPostMessage()V

    .line 397
    throw v3

    .line 399
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->asInterface:Z

    if-nez v3, :cond_1

    .line 400
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    .line 430
    invoke-static {v0, v2, v1}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 431
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->asInterface:Z

    if-nez v0, :cond_2

    const/4 v0, 0x4

    .line 432
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 434
    :cond_2
    throw v1

    :catch_1
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    .line 422
    invoke-static {v0, v3, v1}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->asInterface:Z

    if-nez v0, :cond_3

    .line 424
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void

    :catch_2
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    .line 414
    invoke-static {v0, v3, v1}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->asInterface:Z

    if-nez v0, :cond_4

    .line 416
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void

    :catch_3
    nop

    .line 408
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->ICustomTabsCallback$Stub:Z

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 409
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->asInterface:Z

    if-nez v0, :cond_5

    .line 410
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    return-void

    :catch_4
    move-exception v0

    .line 403
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$onNavigationEvent;->asInterface:Z

    if-nez v1, :cond_6

    .line 404
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    return-void
.end method
