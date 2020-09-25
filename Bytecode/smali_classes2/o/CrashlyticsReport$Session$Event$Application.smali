.class public abstract Lo/CrashlyticsReport$Session$Event$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReport$Session$Event$Log;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReport$Session$Event$Application$onPostMessage;,
        Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;,
        Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        "CallbackT::",
        "Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;",
        ">",
        "Ljava/lang/Object;",
        "Lo/CrashlyticsReport$Session$Event$Log<",
        "TCallbackT;>;"
    }
.end annotation


# static fields
.field private static final BACKOFF_CLIENT_NETWORK_FAILURE_MAX_DELAY_MS:J

.field private static final BACKOFF_FACTOR:D = 1.5

.field private static final BACKOFF_INITIAL_DELAY_MS:J

.field private static final BACKOFF_MAX_DELAY_MS:J

.field private static final IDLE_TIMEOUT_MS:J


# instance fields
.field final backoff:Lo/subList;

.field private call:Lo/resetPreviouslyActiveTrackedQueries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/resetPreviouslyActiveTrackedQueries<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private closeCount:J

.field private final firestoreChannel:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

.field private final idleTimeoutRunnable:Lo/CrashlyticsReport$Session$Event$Application$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReport$Session$Event$Application<",
            "TReqT;TRespT;TCallbackT;>.onPostMessage;"
        }
    .end annotation
.end field

.field private idleTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

.field private final idleTimerId:Lo/CrashlyticsReport$Type$extraCallback;

.field final listener:Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field private final methodDescriptor:Lo/reverseIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/reverseIterator<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

.field private final workerQueue:Lo/CrashlyticsReport$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 169
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lo/CrashlyticsReport$Session$Event$Application;->BACKOFF_INITIAL_DELAY_MS:J

    .line 171
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lo/CrashlyticsReport$Session$Event$Application;->BACKOFF_MAX_DELAY_MS:J

    .line 175
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/CrashlyticsReport$Session$Event$Application;->IDLE_TIMEOUT_MS:J

    .line 180
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    .line 181
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/CrashlyticsReport$Session$Event$Application;->BACKOFF_CLIENT_NETWORK_FAILURE_MAX_DELAY_MS:J

    return-void
.end method

.method constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/reverseIterator;Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;Lo/CrashlyticsReport$Type$extraCallback;Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;",
            "Lo/reverseIterator<",
            "TReqT;TRespT;>;",
            "Lo/CrashlyticsReport$Type;",
            "Lo/CrashlyticsReport$Type$extraCallback;",
            "Lo/CrashlyticsReport$Type$extraCallback;",
            "TCallbackT;)V"
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    sget-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Initial:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    const-wide/16 v0, 0x0

    .line 197
    iput-wide v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->closeCount:J

    .line 210
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application;->firestoreChannel:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    .line 211
    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application;->methodDescriptor:Lo/reverseIterator;

    .line 212
    iput-object p3, p0, Lo/CrashlyticsReport$Session$Event$Application;->workerQueue:Lo/CrashlyticsReport$Type;

    .line 213
    iput-object p5, p0, Lo/CrashlyticsReport$Session$Event$Application;->idleTimerId:Lo/CrashlyticsReport$Type$extraCallback;

    .line 214
    iput-object p6, p0, Lo/CrashlyticsReport$Session$Event$Application;->listener:Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;

    .line 215
    new-instance p1, Lo/CrashlyticsReport$Session$Event$Application$onPostMessage;

    invoke-direct {p1, p0}, Lo/CrashlyticsReport$Session$Event$Application$onPostMessage;-><init>(Lo/CrashlyticsReport$Session$Event$Application;)V

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application;->idleTimeoutRunnable:Lo/CrashlyticsReport$Session$Event$Application$onPostMessage;

    .line 217
    new-instance p1, Lo/subList;

    sget-wide v3, Lo/CrashlyticsReport$Session$Event$Application;->BACKOFF_INITIAL_DELAY_MS:J

    sget-wide v7, Lo/CrashlyticsReport$Session$Event$Application;->BACKOFF_MAX_DELAY_MS:J

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v8}, Lo/subList;-><init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;JDJ)V

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application;->backoff:Lo/subList;

    return-void
.end method

.method static synthetic access$000(Lo/CrashlyticsReport$Session$Event$Application;)Lo/CrashlyticsReport$Type;
    .locals 0

    .line 46
    iget-object p0, p0, Lo/CrashlyticsReport$Session$Event$Application;->workerQueue:Lo/CrashlyticsReport$Type;

    return-object p0
.end method

.method static synthetic access$100(Lo/CrashlyticsReport$Session$Event$Application;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->closeCount:J

    return-wide v0
.end method

.method static synthetic access$200(Lo/CrashlyticsReport$Session$Event$Application;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application;->onOpen()V

    return-void
.end method

.method static synthetic access$300(Lo/CrashlyticsReport$Session$Event$Application;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application;->handleIdleCloseTimer()V

    return-void
.end method

.method private cancelIdleCheck()V
    .locals 1

    .line 442
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->idleTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Lo/CrashlyticsReport$Type$onNavigationEvent;->cancel()V

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->idleTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    :cond_0
    return-void
.end method

.method private close(Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;Lo/emptyMap;)V
    .locals 7

    .line 274
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Only started streams should be closed."

    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 275
    sget-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Error:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    sget-object v0, Lo/emptyMap;->onMessageChannelReady:Lo/emptyMap;

    .line 276
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Can\'t provide an error when not in an error state."

    .line 275
    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->workerQueue:Lo/CrashlyticsReport$Type;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Type;->verifyIsCurrentThread()V

    .line 280
    invoke-static {p2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->isMissingSslCiphers(Lo/emptyMap;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1509
    iget-object v3, p2, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    const-string v4, "The Cloud Firestore client failed to establish a secure connection. This is likely a problem with your app, rather than with Cloud Firestore itself. See https://bit.ly/2XFpdma for instructions on how to enable TLS on Android 4.x devices."

    .line 284
    invoke-direct {v0, v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    invoke-static {v0}, Lo/eventFromJson;->crashMainThread(Ljava/lang/RuntimeException;)V

    .line 288
    :cond_2
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application;->cancelIdleCheck()V

    .line 289
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->backoff:Lo/subList;

    invoke-virtual {v0}, Lo/subList;->cancel()V

    .line 293
    iget-wide v3, p0, Lo/CrashlyticsReport$Session$Event$Application;->closeCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lo/CrashlyticsReport$Session$Event$Application;->closeCount:J

    .line 2492
    iget-object v0, p2, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 296
    sget-object v3, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    if-ne v0, v3, :cond_3

    .line 298
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->backoff:Lo/subList;

    invoke-virtual {v0}, Lo/subList;->reset()V

    goto :goto_2

    .line 299
    :cond_3
    sget-object v3, Lo/emptyMap$onPostMessage;->onTransact:Lo/emptyMap$onPostMessage;

    if-ne v0, v3, :cond_4

    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    .line 303
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "(%x) Using maximum backoff delay to prevent overloading the backend."

    .line 300
    invoke-static {v0, v4, v3}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->backoff:Lo/subList;

    invoke-virtual {v0}, Lo/subList;->resetToMax()V

    goto :goto_2

    .line 305
    :cond_4
    sget-object v3, Lo/emptyMap$onPostMessage;->extraCommand:Lo/emptyMap$onPostMessage;

    if-ne v0, v3, :cond_5

    .line 308
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->firestoreChannel:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->invalidateToken()V

    goto :goto_2

    .line 309
    :cond_5
    sget-object v3, Lo/emptyMap$onPostMessage;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v0, v3, :cond_7

    .line 2509
    iget-object v0, p2, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    .line 312
    instance-of v0, v0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_6

    .line 3509
    iget-object v0, p2, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    .line 313
    instance-of v0, v0, Ljava/net/ConnectException;

    if-eqz v0, :cond_7

    .line 314
    :cond_6
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->backoff:Lo/subList;

    sget-wide v3, Lo/CrashlyticsReport$Session$Event$Application;->BACKOFF_CLIENT_NETWORK_FAILURE_MAX_DELAY_MS:J

    invoke-virtual {v0, v3, v4}, Lo/subList;->setTemporaryMaxDelay(J)V

    .line 318
    :cond_7
    :goto_2
    sget-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Error:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    if-eq p1, v0, :cond_8

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    .line 322
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "(%x) Performing stream teardown"

    .line 319
    invoke-static {v0, v4, v3}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application;->tearDown()V

    .line 326
    :cond_8
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->call:Lo/resetPreviouslyActiveTrackedQueries;

    if-eqz v0, :cond_b

    .line 3516
    sget-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v3, p2, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v0, v3, :cond_9

    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_a

    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 333
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "(%x) Closing stream client-side"

    .line 330
    invoke-static {v0, v1, v2}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->call:Lo/resetPreviouslyActiveTrackedQueries;

    invoke-virtual {v0}, Lo/resetPreviouslyActiveTrackedQueries;->halfClose()V

    :cond_a
    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->call:Lo/resetPreviouslyActiveTrackedQueries;

    .line 341
    :cond_b
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    .line 344
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application;->listener:Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;

    invoke-interface {p1, p2}, Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;->onClose(Lo/emptyMap;)V

    return-void
.end method

.method private handleIdleCloseTimer()V
    .locals 2

    .line 382
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Initial:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    sget-object v1, Lo/emptyMap;->onMessageChannelReady:Lo/emptyMap;

    invoke-direct {p0, v0, v1}, Lo/CrashlyticsReport$Session$Event$Application;->close(Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;Lo/emptyMap;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$performBackoff$0(Lo/CrashlyticsReport$Session$Event$Application;)V
    .locals 4

    .line 415
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    sget-object v1, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Backoff:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    aput-object v2, v1, v3

    const-string v2, "State should still be backoff but was %s"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 417
    sget-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Initial:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    .line 418
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application;->start()V

    .line 419
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isStarted()Z

    move-result p0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Stream should have started"

    invoke-static {p0, v1, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onOpen()V
    .locals 1

    .line 403
    sget-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Open:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    .line 404
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->listener:Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;

    invoke-interface {v0}, Lo/CrashlyticsReport$Session$Event$Log$ICustomTabsCallback;->onOpen()V

    return-void
.end method

.method private performBackoff()V
    .locals 3

    .line 410
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    sget-object v1, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Error:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Should only perform backoff in an error state"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 411
    sget-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Backoff:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    .line 413
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->backoff:Lo/subList;

    invoke-static {p0}, Lo/startTracking$onMessageChannelReady;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/subList;->backoffAndRun(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method handleServerClose(Lo/emptyMap;)V
    .locals 3

    .line 392
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Can\'t handle server close on non-started stream!"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 398
    sget-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Error:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    invoke-direct {p0, v0, p1}, Lo/CrashlyticsReport$Session$Event$Application;->close(Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;Lo/emptyMap;)V

    return-void
.end method

.method public inhibitBackoff()V
    .locals 3

    .line 362
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isStarted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Can only inhibit backoff after in a stopped state"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->workerQueue:Lo/CrashlyticsReport$Type;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Type;->verifyIsCurrentThread()V

    .line 365
    sget-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Initial:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    .line 366
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->backoff:Lo/subList;

    invoke-virtual {v0}, Lo/subList;->reset()V

    return-void
.end method

.method public isOpen()Z
    .locals 2

    .line 234
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->workerQueue:Lo/CrashlyticsReport$Type;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Type;->verifyIsCurrentThread()V

    .line 235
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    sget-object v1, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Open:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 228
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->workerQueue:Lo/CrashlyticsReport$Type;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Type;->verifyIsCurrentThread()V

    .line 229
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    sget-object v1, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Starting:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    sget-object v1, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Open:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    sget-object v1, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Backoff:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method markIdle()V
    .locals 5

    .line 435
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->idleTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->workerQueue:Lo/CrashlyticsReport$Type;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application;->idleTimerId:Lo/CrashlyticsReport$Type$extraCallback;

    sget-wide v2, Lo/CrashlyticsReport$Session$Event$Application;->IDLE_TIMEOUT_MS:J

    iget-object v4, p0, Lo/CrashlyticsReport$Session$Event$Application;->idleTimeoutRunnable:Lo/CrashlyticsReport$Session$Event$Application$onPostMessage;

    .line 437
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/CrashlyticsReport$Type;->enqueueAfterDelay(Lo/CrashlyticsReport$Type$extraCallback;JLjava/lang/Runnable;)Lo/CrashlyticsReport$Type$onNavigationEvent;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->idleTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    :cond_0
    return-void
.end method

.method public abstract onNext(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation
.end method

.method public start()V
    .locals 5

    .line 240
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->workerQueue:Lo/CrashlyticsReport$Type;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Type;->verifyIsCurrentThread()V

    .line 241
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->call:Lo/resetPreviouslyActiveTrackedQueries;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Last call still set"

    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->idleTimer:Lo/CrashlyticsReport$Type$onNavigationEvent;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Idle timer still set"

    invoke-static {v0, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    sget-object v3, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Error:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    if-ne v0, v3, :cond_2

    .line 245
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application;->performBackoff()V

    return-void

    .line 249
    :cond_2
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    sget-object v3, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Initial:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Already started"

    invoke-static {v1, v2, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 251
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;

    iget-wide v1, p0, Lo/CrashlyticsReport$Session$Event$Application;->closeCount:J

    invoke-direct {v0, p0, v1, v2}, Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;-><init>(Lo/CrashlyticsReport$Session$Event$Application;J)V

    .line 252
    new-instance v1, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;

    invoke-direct {v1, p0, v0}, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;-><init>(Lo/CrashlyticsReport$Session$Event$Application;Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;)V

    .line 253
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->firestoreChannel:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application;->methodDescriptor:Lo/reverseIterator;

    invoke-virtual {v0, v2, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->runBidiStreamingRpc(Lo/reverseIterator;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;)Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->call:Lo/resetPreviouslyActiveTrackedQueries;

    .line 255
    sget-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Starting:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->state:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 355
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Event$Application;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;->Initial:Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;

    sget-object v1, Lo/emptyMap;->onMessageChannelReady:Lo/emptyMap;

    invoke-direct {p0, v0, v1}, Lo/CrashlyticsReport$Session$Event$Application;->close(Lo/CrashlyticsReport$Session$Event$Log$onMessageChannelReady;Lo/emptyMap;)V

    :cond_0
    return-void
.end method

.method protected tearDown()V
    .locals 0

    return-void
.end method

.method protected writeRequest(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->workerQueue:Lo/CrashlyticsReport$Type;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Type;->verifyIsCurrentThread()V

    .line 372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 374
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "(%x) Stream sending: %s"

    .line 371
    invoke-static {v0, v2, v1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application;->cancelIdleCheck()V

    .line 377
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application;->call:Lo/resetPreviouslyActiveTrackedQueries;

    invoke-virtual {v0, p1}, Lo/resetPreviouslyActiveTrackedQueries;->sendMessage(Ljava/lang/Object;)V

    return-void
.end method
