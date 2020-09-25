.class public final Lo/setPrecomputedText;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setLastBaselineToBottomHeight$onPostMessage;
.implements Lo/setVerticalOffset$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setPrecomputedText$ICustomTabsCallback;,
        Lo/setPrecomputedText$onMessageChannelReady;,
        Lo/setPrecomputedText$onPostMessage;,
        Lo/setPrecomputedText$extraCallback;,
        Lo/setPrecomputedText$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setLastBaselineToBottomHeight$onPostMessage<",
        "TR;>;",
        "Lo/setVerticalOffset$onNavigationEvent;"
    }
.end annotation


# static fields
.field private static final asInterface:Lo/setPrecomputedText$ICustomTabsCallback;


# instance fields
.field public ICustomTabsCallback:Z

.field private final ICustomTabsCallback$Stub:Lo/RatingCompat$StarStyle$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Lo/setPrecomputedText<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub$Proxy:Lo/initProgress;

.field private final ICustomTabsService:Lo/initProgress;

.field private ICustomTabsService$Stub:Z

.field private ICustomTabsService$Stub$Proxy:Z

.field private IPostMessageService$Stub:Lo/setLastBaselineToBottomHeight;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setLastBaselineToBottomHeight<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/setHorizontalOffset;

.field extraCallback:Lo/setTextFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setTextFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private extraCommand:Z

.field private final getInterfaceDescriptor:Lo/initProgress;

.field private mayLaunchUrl:Z

.field private final newSession:Ljava/util/concurrent/atomic/AtomicInteger;

.field onMessageChannelReady:Lcom/bumptech/glide/load/engine/GlideException;

.field final onNavigationEvent:Lo/setPrecomputedText$onPostMessage;

.field onPostMessage:Lo/setImageURI;

.field private final onRelationshipValidationResult:Lo/setTextMetricsParamsCompat;

.field private final onTransact:Lo/setTextFuture$onPostMessage;

.field private postMessage:Z

.field private requestPostMessageChannel:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "*>;"
        }
    .end annotation
.end field

.field private updateVisuals:Lo/AppCompatImageHelper;

.field private volatile validateRelationship:Z

.field private final warmup:Lo/initProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lo/setPrecomputedText$ICustomTabsCallback;

    invoke-direct {v0}, Lo/setPrecomputedText$ICustomTabsCallback;-><init>()V

    sput-object v0, Lo/setPrecomputedText;->asInterface:Lo/setPrecomputedText$ICustomTabsCallback;

    return-void
.end method

.method constructor <init>(Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/setTextMetricsParamsCompat;Lo/setTextFuture$onPostMessage;Lo/RatingCompat$StarStyle$extraCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/initProgress;",
            "Lo/initProgress;",
            "Lo/initProgress;",
            "Lo/initProgress;",
            "Lo/setTextMetricsParamsCompat;",
            "Lo/setTextFuture$onPostMessage;",
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Lo/setPrecomputedText<",
            "*>;>;)V"
        }
    .end annotation

    .line 81
    sget-object v8, Lo/setPrecomputedText;->asInterface:Lo/setPrecomputedText$ICustomTabsCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lo/setPrecomputedText;-><init>(Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/setTextMetricsParamsCompat;Lo/setTextFuture$onPostMessage;Lo/RatingCompat$StarStyle$extraCallback;Lo/setPrecomputedText$ICustomTabsCallback;)V

    return-void
.end method

.method private constructor <init>(Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/setTextMetricsParamsCompat;Lo/setTextFuture$onPostMessage;Lo/RatingCompat$StarStyle$extraCallback;Lo/setPrecomputedText$ICustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/initProgress;",
            "Lo/initProgress;",
            "Lo/initProgress;",
            "Lo/initProgress;",
            "Lo/setTextMetricsParamsCompat;",
            "Lo/setTextFuture$onPostMessage;",
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Lo/setPrecomputedText<",
            "*>;>;",
            "Lo/setPrecomputedText$ICustomTabsCallback;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance p8, Lo/setPrecomputedText$onPostMessage;

    invoke-direct {p8}, Lo/setPrecomputedText$onPostMessage;-><init>()V

    iput-object p8, p0, Lo/setPrecomputedText;->onNavigationEvent:Lo/setPrecomputedText$onPostMessage;

    .line 1016
    new-instance p8, Lo/setHorizontalOffset$ICustomTabsCallback;

    invoke-direct {p8}, Lo/setHorizontalOffset$ICustomTabsCallback;-><init>()V

    .line 34
    iput-object p8, p0, Lo/setPrecomputedText;->asBinder:Lo/setHorizontalOffset;

    .line 43
    new-instance p8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p8, p0, Lo/setPrecomputedText;->newSession:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 102
    iput-object p1, p0, Lo/setPrecomputedText;->ICustomTabsService:Lo/initProgress;

    .line 103
    iput-object p2, p0, Lo/setPrecomputedText;->ICustomTabsCallback$Stub$Proxy:Lo/initProgress;

    .line 104
    iput-object p3, p0, Lo/setPrecomputedText;->warmup:Lo/initProgress;

    .line 105
    iput-object p4, p0, Lo/setPrecomputedText;->getInterfaceDescriptor:Lo/initProgress;

    .line 106
    iput-object p5, p0, Lo/setPrecomputedText;->onRelationshipValidationResult:Lo/setTextMetricsParamsCompat;

    .line 107
    iput-object p6, p0, Lo/setPrecomputedText;->onTransact:Lo/setTextFuture$onPostMessage;

    .line 108
    iput-object p7, p0, Lo/setPrecomputedText;->ICustomTabsCallback$Stub:Lo/RatingCompat$StarStyle$extraCallback;

    return-void
.end method

.method private declared-synchronized extraCallback()V
    .locals 4

    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lo/setPrecomputedText;->updateVisuals:Lo/AppCompatImageHelper;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lo/setPrecomputedText;->onNavigationEvent:Lo/setPrecomputedText$onPostMessage;

    .line 8466
    iget-object v0, v0, Lo/setPrecomputedText$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lo/setPrecomputedText;->updateVisuals:Lo/AppCompatImageHelper;

    .line 302
    iput-object v0, p0, Lo/setPrecomputedText;->extraCallback:Lo/setTextFuture;

    .line 303
    iput-object v0, p0, Lo/setPrecomputedText;->requestPostMessageChannel:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    const/4 v1, 0x0

    .line 304
    iput-boolean v1, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub:Z

    .line 305
    iput-boolean v1, p0, Lo/setPrecomputedText;->validateRelationship:Z

    .line 306
    iput-boolean v1, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub$Proxy:Z

    .line 307
    iget-object v2, p0, Lo/setPrecomputedText;->IPostMessageService$Stub:Lo/setLastBaselineToBottomHeight;

    .line 9150
    iget-object v3, v2, Lo/setLastBaselineToBottomHeight;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$extraCallback;

    invoke-virtual {v3, v1}, Lo/setLastBaselineToBottomHeight$extraCallback;->onPostMessage(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9151
    invoke-virtual {v2}, Lo/setLastBaselineToBottomHeight;->onNavigationEvent()V

    .line 308
    :cond_0
    iput-object v0, p0, Lo/setPrecomputedText;->IPostMessageService$Stub:Lo/setLastBaselineToBottomHeight;

    .line 309
    iput-object v0, p0, Lo/setPrecomputedText;->onMessageChannelReady:Lcom/bumptech/glide/load/engine/GlideException;

    .line 310
    iput-object v0, p0, Lo/setPrecomputedText;->onPostMessage:Lo/setImageURI;

    .line 311
    iget-object v0, p0, Lo/setPrecomputedText;->ICustomTabsCallback$Stub:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v0, p0}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    .line 298
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onNavigationEvent(I)V
    .locals 2

    monitor-enter p0

    .line 5217
    :try_start_0
    iget-boolean v0, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub$Proxy:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/setPrecomputedText;->validateRelationship:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Not yet complete!"

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lo/setPrecomputedText;->newSession:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lo/setPrecomputedText;->extraCallback:Lo/setTextFuture;

    if-eqz p1, :cond_2

    .line 271
    iget-object p1, p0, Lo/setPrecomputedText;->extraCallback:Lo/setTextFuture;

    invoke-virtual {p1}, Lo/setTextFuture;->ICustomTabsCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_2
    monitor-exit p0

    return-void

    .line 6017
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final extraCallback(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 4

    .line 325
    monitor-enter p0

    .line 326
    :try_start_0
    iput-object p1, p0, Lo/setPrecomputedText;->onMessageChannelReady:Lcom/bumptech/glide/load/engine/GlideException;

    .line 327
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12349
    monitor-enter p0

    .line 12350
    :try_start_1
    iget-object p1, p0, Lo/setPrecomputedText;->asBinder:Lo/setHorizontalOffset;

    invoke-virtual {p1}, Lo/setHorizontalOffset;->extraCallback()V

    .line 12351
    iget-boolean p1, p0, Lo/setPrecomputedText;->validateRelationship:Z

    if-eqz p1, :cond_0

    .line 12352
    invoke-direct {p0}, Lo/setPrecomputedText;->extraCallback()V

    .line 12353
    monitor-exit p0

    return-void

    .line 12354
    :cond_0
    iget-object p1, p0, Lo/setPrecomputedText;->onNavigationEvent:Lo/setPrecomputedText$onPostMessage;

    .line 12458
    iget-object p1, p1, Lo/setPrecomputedText$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 12356
    iget-boolean p1, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 12359
    iput-boolean p1, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub:Z

    .line 12361
    iget-object v0, p0, Lo/setPrecomputedText;->updateVisuals:Lo/AppCompatImageHelper;

    .line 12363
    iget-object v1, p0, Lo/setPrecomputedText;->onNavigationEvent:Lo/setPrecomputedText$onPostMessage;

    .line 12470
    new-instance v2, Lo/setPrecomputedText$onPostMessage;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v1, Lo/setPrecomputedText$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3}, Lo/setPrecomputedText$onPostMessage;-><init>(Ljava/util/List;)V

    .line 13462
    iget-object v1, v2, Lo/setPrecomputedText$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p1

    .line 12366
    invoke-direct {p0, v1}, Lo/setPrecomputedText;->onNavigationEvent(I)V

    .line 12367
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12369
    iget-object p1, p0, Lo/setPrecomputedText;->onRelationshipValidationResult:Lo/setTextMetricsParamsCompat;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lo/setTextMetricsParamsCompat;->onNavigationEvent(Lo/setPrecomputedText;Lo/AppCompatImageHelper;Lo/setTextFuture;)V

    .line 12371
    invoke-virtual {v2}, Lo/setPrecomputedText$onPostMessage;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPrecomputedText$onMessageChannelReady;

    .line 12372
    iget-object v1, v0, Lo/setPrecomputedText$onMessageChannelReady;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v2, Lo/setPrecomputedText$onNavigationEvent;

    iget-object v0, v0, Lo/setPrecomputedText$onMessageChannelReady;->onNavigationEvent:Lo/setOrientation;

    invoke-direct {v2, p0, v0}, Lo/setPrecomputedText$onNavigationEvent;-><init>(Lo/setPrecomputedText;Lo/setOrientation;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 12374
    :cond_1
    invoke-virtual {p0}, Lo/setPrecomputedText;->onPostMessage()V

    return-void

    .line 12357
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already failed once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12355
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Received an exception without any callbacks to notify"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 12367
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    .line 327
    monitor-exit p0

    throw p1
.end method

.method public final extraCallback(Lo/setLastBaselineToBottomHeight;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setLastBaselineToBottomHeight<",
            "*>;)V"
        }
    .end annotation

    .line 14195
    iget-boolean v0, p0, Lo/setPrecomputedText;->postMessage:Z

    if-eqz v0, :cond_0

    .line 14196
    iget-object v0, p0, Lo/setPrecomputedText;->warmup:Lo/initProgress;

    goto :goto_0

    .line 14197
    :cond_0
    iget-boolean v0, p0, Lo/setPrecomputedText;->mayLaunchUrl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/setPrecomputedText;->getInterfaceDescriptor:Lo/initProgress;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/setPrecomputedText;->ICustomTabsCallback$Stub$Proxy:Lo/initProgress;

    .line 335
    :goto_0
    invoke-virtual {v0, p1}, Lo/initProgress;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f_()Lo/setHorizontalOffset;
    .locals 1

    .line 380
    iget-object v0, p0, Lo/setPrecomputedText;->asBinder:Lo/setHorizontalOffset;

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Lo/setImageURI;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "TR;>;",
            "Lo/setImageURI;",
            ")V"
        }
    .end annotation

    .line 316
    monitor-enter p0

    .line 317
    :try_start_0
    iput-object p1, p0, Lo/setPrecomputedText;->requestPostMessageChannel:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    .line 318
    iput-object p2, p0, Lo/setPrecomputedText;->onPostMessage:Lo/setImageURI;

    .line 319
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9232
    monitor-enter p0

    .line 9233
    :try_start_1
    iget-object p1, p0, Lo/setPrecomputedText;->asBinder:Lo/setHorizontalOffset;

    invoke-virtual {p1}, Lo/setHorizontalOffset;->extraCallback()V

    .line 9234
    iget-boolean p1, p0, Lo/setPrecomputedText;->validateRelationship:Z

    if-eqz p1, :cond_0

    .line 9237
    iget-object p1, p0, Lo/setPrecomputedText;->requestPostMessageChannel:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    invoke-interface {p1}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onMessageChannelReady()V

    .line 9238
    invoke-direct {p0}, Lo/setPrecomputedText;->extraCallback()V

    .line 9239
    monitor-exit p0

    return-void

    .line 9240
    :cond_0
    iget-object p1, p0, Lo/setPrecomputedText;->onNavigationEvent:Lo/setPrecomputedText$onPostMessage;

    .line 9458
    iget-object p1, p1, Lo/setPrecomputedText$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 9242
    iget-boolean p1, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub$Proxy:Z

    if-nez p1, :cond_2

    .line 9245
    iget-object v1, p0, Lo/setPrecomputedText;->requestPostMessageChannel:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    iget-boolean v2, p0, Lo/setPrecomputedText;->extraCommand:Z

    iget-object v4, p0, Lo/setPrecomputedText;->updateVisuals:Lo/AppCompatImageHelper;

    iget-object v5, p0, Lo/setPrecomputedText;->onTransact:Lo/setTextFuture$onPostMessage;

    .line 9512
    new-instance p1, Lo/setTextFuture;

    const/4 v3, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lo/setTextFuture;-><init>(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;ZZLo/AppCompatImageHelper;Lo/setTextFuture$onPostMessage;)V

    .line 9245
    iput-object p1, p0, Lo/setPrecomputedText;->extraCallback:Lo/setTextFuture;

    const/4 p1, 0x1

    .line 9250
    iput-boolean p1, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub$Proxy:Z

    .line 9251
    iget-object p2, p0, Lo/setPrecomputedText;->onNavigationEvent:Lo/setPrecomputedText$onPostMessage;

    .line 10470
    new-instance v0, Lo/setPrecomputedText$onPostMessage;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p2, p2, Lo/setPrecomputedText$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lo/setPrecomputedText$onPostMessage;-><init>(Ljava/util/List;)V

    .line 11462
    iget-object p2, v0, Lo/setPrecomputedText$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p2, p1

    .line 9252
    invoke-direct {p0, p2}, Lo/setPrecomputedText;->onNavigationEvent(I)V

    .line 9254
    iget-object p1, p0, Lo/setPrecomputedText;->updateVisuals:Lo/AppCompatImageHelper;

    .line 9255
    iget-object p2, p0, Lo/setPrecomputedText;->extraCallback:Lo/setTextFuture;

    .line 9256
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9258
    iget-object v1, p0, Lo/setPrecomputedText;->onRelationshipValidationResult:Lo/setTextMetricsParamsCompat;

    invoke-interface {v1, p0, p1, p2}, Lo/setTextMetricsParamsCompat;->onNavigationEvent(Lo/setPrecomputedText;Lo/AppCompatImageHelper;Lo/setTextFuture;)V

    .line 9260
    invoke-virtual {v0}, Lo/setPrecomputedText$onPostMessage;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/setPrecomputedText$onMessageChannelReady;

    .line 9261
    iget-object v0, p2, Lo/setPrecomputedText$onMessageChannelReady;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/setPrecomputedText$extraCallback;

    iget-object p2, p2, Lo/setPrecomputedText$onMessageChannelReady;->onNavigationEvent:Lo/setOrientation;

    invoke-direct {v1, p0, p2}, Lo/setPrecomputedText$extraCallback;-><init>(Lo/setPrecomputedText;Lo/setOrientation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9263
    :cond_1
    invoke-virtual {p0}, Lo/setPrecomputedText;->onPostMessage()V

    return-void

    .line 9243
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already have resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9241
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Received a resource without any callbacks to notify"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 9256
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    .line 319
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onNavigationEvent(Lo/AppCompatImageHelper;ZZZZ)Lo/setPrecomputedText;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatImageHelper;",
            "ZZZZ)",
            "Lo/setPrecomputedText<",
            "TR;>;"
        }
    .end annotation

    monitor-enter p0

    .line 119
    :try_start_0
    iput-object p1, p0, Lo/setPrecomputedText;->updateVisuals:Lo/AppCompatImageHelper;

    .line 120
    iput-boolean p2, p0, Lo/setPrecomputedText;->extraCommand:Z

    .line 121
    iput-boolean p3, p0, Lo/setPrecomputedText;->postMessage:Z

    .line 122
    iput-boolean p4, p0, Lo/setPrecomputedText;->mayLaunchUrl:Z

    .line 123
    iput-boolean p5, p0, Lo/setPrecomputedText;->ICustomTabsCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(Lo/setOrientation;)V
    .locals 3

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lo/setPrecomputedText;->asBinder:Lo/setHorizontalOffset;

    invoke-virtual {v0}, Lo/setHorizontalOffset;->extraCallback()V

    .line 180
    iget-object v0, p0, Lo/setPrecomputedText;->onNavigationEvent:Lo/setPrecomputedText$onPostMessage;

    .line 2450
    iget-object v0, v0, Lo/setPrecomputedText$onPostMessage;->extraCallback:Ljava/util/List;

    .line 2474
    new-instance v1, Lo/setPrecomputedText$onMessageChannelReady;

    invoke-static {}, Lo/setAnchorView;->ICustomTabsCallback()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lo/setPrecomputedText$onMessageChannelReady;-><init>(Lo/setOrientation;Ljava/util/concurrent/Executor;)V

    .line 2450
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 181
    iget-object p1, p0, Lo/setPrecomputedText;->onNavigationEvent:Lo/setPrecomputedText$onPostMessage;

    .line 3458
    iget-object p1, p1, Lo/setPrecomputedText$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4217
    iget-boolean p1, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub$Proxy:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lo/setPrecomputedText;->validateRelationship:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_3

    .line 4206
    iput-boolean v1, p0, Lo/setPrecomputedText;->validateRelationship:Z

    .line 4207
    iget-object p1, p0, Lo/setPrecomputedText;->IPostMessageService$Stub:Lo/setLastBaselineToBottomHeight;

    .line 5211
    iput-boolean v1, p1, Lo/setLastBaselineToBottomHeight;->requestPostMessageChannel:Z

    .line 5212
    iget-object p1, p1, Lo/setLastBaselineToBottomHeight;->mayLaunchUrl:Lo/compatMeasureContentWidth;

    if-eqz p1, :cond_2

    .line 5214
    invoke-interface {p1}, Lo/compatMeasureContentWidth;->extraCallback()V

    .line 4208
    :cond_2
    iget-object p1, p0, Lo/setPrecomputedText;->onRelationshipValidationResult:Lo/setTextMetricsParamsCompat;

    iget-object v2, p0, Lo/setPrecomputedText;->updateVisuals:Lo/AppCompatImageHelper;

    invoke-interface {p1, p0, v2}, Lo/setTextMetricsParamsCompat;->ICustomTabsCallback(Lo/setPrecomputedText;Lo/AppCompatImageHelper;)V

    .line 183
    :cond_3
    iget-boolean p1, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub$Proxy:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub:Z

    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    .line 184
    iget-object p1, p0, Lo/setPrecomputedText;->newSession:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_6

    .line 185
    invoke-direct {p0}, Lo/setPrecomputedText;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onNavigationEvent(Lo/setOrientation;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lo/setPrecomputedText;->asBinder:Lo/setHorizontalOffset;

    invoke-virtual {v0}, Lo/setHorizontalOffset;->extraCallback()V

    .line 136
    iget-object v0, p0, Lo/setPrecomputedText;->onNavigationEvent:Lo/setPrecomputedText$onPostMessage;

    .line 1446
    iget-object v0, v0, Lo/setPrecomputedText$onPostMessage;->extraCallback:Ljava/util/List;

    new-instance v1, Lo/setPrecomputedText$onMessageChannelReady;

    invoke-direct {v1, p1, p2}, Lo/setPrecomputedText$onMessageChannelReady;-><init>(Lo/setOrientation;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-boolean v0, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub$Proxy:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0, v1}, Lo/setPrecomputedText;->onNavigationEvent(I)V

    .line 141
    new-instance v0, Lo/setPrecomputedText$extraCallback;

    invoke-direct {v0, p0, p1}, Lo/setPrecomputedText$extraCallback;-><init>(Lo/setPrecomputedText;Lo/setOrientation;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 142
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub:Z

    if-eqz v0, :cond_1

    .line 143
    invoke-direct {p0, v1}, Lo/setPrecomputedText;->onNavigationEvent(I)V

    .line 144
    new-instance v0, Lo/setPrecomputedText$onNavigationEvent;

    invoke-direct {v0, p0, p1}, Lo/setPrecomputedText$onNavigationEvent;-><init>(Lo/setPrecomputedText;Lo/setOrientation;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 146
    :cond_1
    :try_start_2
    iget-boolean p1, p0, Lo/setPrecomputedText;->validateRelationship:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p1, "Cannot add callbacks to a cancelled EngineJob"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 148
    monitor-exit p0

    return-void

    .line 2017
    :cond_3
    :try_start_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final onPostMessage()V
    .locals 4

    .line 279
    monitor-enter p0

    .line 280
    :try_start_0
    iget-object v0, p0, Lo/setPrecomputedText;->asBinder:Lo/setHorizontalOffset;

    invoke-virtual {v0}, Lo/setHorizontalOffset;->extraCallback()V

    .line 6217
    iget-boolean v0, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/setPrecomputedText;->ICustomTabsService$Stub$Proxy:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/setPrecomputedText;->validateRelationship:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, "Not yet complete!"

    if-eqz v0, :cond_6

    .line 282
    iget-object v0, p0, Lo/setPrecomputedText;->newSession:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    const-string v2, "Can\'t decrement below 0"

    if-eqz v1, :cond_5

    if-nez v0, :cond_3

    .line 285
    iget-object v0, p0, Lo/setPrecomputedText;->extraCallback:Lo/setTextFuture;

    .line 287
    invoke-direct {p0}, Lo/setPrecomputedText;->extraCallback()V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 289
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 292
    invoke-virtual {v0}, Lo/setTextFuture;->ICustomTabsCallback$Stub()V

    :cond_4
    return-void

    .line 8017
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7017
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 289
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPostMessage(Lo/setLastBaselineToBottomHeight;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setLastBaselineToBottomHeight<",
            "TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 128
    :try_start_0
    iput-object p1, p0, Lo/setPrecomputedText;->IPostMessageService$Stub:Lo/setLastBaselineToBottomHeight;

    .line 1139
    sget-object v0, Lo/setLastBaselineToBottomHeight$onTransact;->onMessageChannelReady:Lo/setLastBaselineToBottomHeight$onTransact;

    invoke-virtual {p1, v0}, Lo/setLastBaselineToBottomHeight;->onMessageChannelReady(Lo/setLastBaselineToBottomHeight$onTransact;)Lo/setLastBaselineToBottomHeight$onTransact;

    move-result-object v0

    .line 1140
    sget-object v1, Lo/setLastBaselineToBottomHeight$onTransact;->ICustomTabsCallback:Lo/setLastBaselineToBottomHeight$onTransact;

    if-eq v0, v1, :cond_1

    sget-object v1, Lo/setLastBaselineToBottomHeight$onTransact;->onNavigationEvent:Lo/setLastBaselineToBottomHeight$onTransact;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lo/setPrecomputedText;->ICustomTabsService:Lo/initProgress;

    goto :goto_2

    .line 1195
    :cond_2
    iget-boolean v0, p0, Lo/setPrecomputedText;->postMessage:Z

    if-eqz v0, :cond_3

    .line 1196
    iget-object v0, p0, Lo/setPrecomputedText;->warmup:Lo/initProgress;

    goto :goto_2

    .line 1197
    :cond_3
    iget-boolean v0, p0, Lo/setPrecomputedText;->mayLaunchUrl:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/setPrecomputedText;->getInterfaceDescriptor:Lo/initProgress;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lo/setPrecomputedText;->ICustomTabsCallback$Stub$Proxy:Lo/initProgress;

    .line 131
    :goto_2
    invoke-virtual {v0, p1}, Lo/initProgress;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
