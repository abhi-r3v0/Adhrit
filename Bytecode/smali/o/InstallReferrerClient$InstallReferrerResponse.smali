.class public Lo/InstallReferrerClient$InstallReferrerResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getReferrerClickTimestampSeconds;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;,
        Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getReferrerClickTimestampSeconds<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Lo/getLayoutInflater$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Lo/getLayoutInflater$extraCallback;

.field private extraCallback:Lo/InstallReferrerClient$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstallReferrerClient$Builder<",
            "TK;",
            "Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/InstallReferrerCommons;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstallReferrerCommons<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback<",
            "TK;>;"
        }
    .end annotation
.end field

.field private onPostMessage:Lo/InstallReferrerClient$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstallReferrerClient$Builder<",
            "TK;",
            "Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:J


# direct methods
.method public constructor <init>(Lo/InstallReferrerCommons;Lo/setPivotX;Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InstallReferrerCommons<",
            "TV;>;",
            "Lo/setPivotX<",
            "Lo/getLayoutInflater$extraCallback;",
            ">;",
            "Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback<",
            "TK;>;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 119
    iput-object p1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onMessageChannelReady:Lo/InstallReferrerCommons;

    .line 120
    new-instance v0, Lo/InstallReferrerClient$Builder;

    .line 1131
    new-instance v1, Lo/InstallReferrerClient$InstallReferrerResponse$3;

    invoke-direct {v1, p1}, Lo/InstallReferrerClient$InstallReferrerResponse$3;-><init>(Lo/InstallReferrerCommons;)V

    .line 120
    invoke-direct {v0, v1}, Lo/InstallReferrerClient$Builder;-><init>(Lo/InstallReferrerCommons;)V

    iput-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage:Lo/InstallReferrerClient$Builder;

    .line 121
    new-instance v0, Lo/InstallReferrerClient$Builder;

    .line 2131
    new-instance v1, Lo/InstallReferrerClient$InstallReferrerResponse$3;

    invoke-direct {v1, p1}, Lo/InstallReferrerClient$InstallReferrerResponse$3;-><init>(Lo/InstallReferrerCommons;)V

    .line 121
    invoke-direct {v0, v1}, Lo/InstallReferrerClient$Builder;-><init>(Lo/InstallReferrerCommons;)V

    iput-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->extraCallback:Lo/InstallReferrerClient$Builder;

    .line 123
    iput-object p2, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback:Lo/setPivotX;

    .line 124
    invoke-interface {p2}, Lo/setPivotX;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getLayoutInflater$extraCallback;

    iput-object p1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback$Stub:Lo/getLayoutInflater$extraCallback;

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onRelationshipValidationResult:J

    .line 126
    iput-object p3, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onNavigationEvent:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    return-void
.end method

.method private declared-synchronized ICustomTabsCallback()I
    .locals 2

    monitor-enter p0

    .line 526
    :try_start_0
    iget-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->extraCallback:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v0}, Lo/InstallReferrerClient$Builder;->onNavigationEvent()I

    move-result v0

    iget-object v1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v1}, Lo/InstallReferrerClient$Builder;->onNavigationEvent()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized ICustomTabsCallback(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)Lo/getRootAlpha;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback<",
            "TK;TV;>;)",
            "Lo/getRootAlpha<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 240
    :try_start_0
    invoke-direct {p0, p1}, Lo/InstallReferrerClient$InstallReferrerResponse;->extraCallback(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)V

    .line 241
    iget-object v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onMessageChannelReady:Lo/getRootAlpha;

    .line 242
    invoke-virtual {v0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lo/InstallReferrerClient$InstallReferrerResponse$1;

    invoke-direct {v1, p0, p1}, Lo/InstallReferrerClient$InstallReferrerResponse$1;-><init>(Lo/InstallReferrerClient$InstallReferrerResponse;Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)V

    .line 241
    invoke-static {v0, v1}, Lo/getRootAlpha;->extraCallback(Ljava/lang/Object;Lo/setPageMargin;)Lo/getRootAlpha;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private ICustomTabsCallback(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 449
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;

    .line 450
    invoke-direct {p0, v0}, Lo/InstallReferrerClient$InstallReferrerResponse;->onTransact(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)Lo/getRootAlpha;

    move-result-object v0

    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized extraCallback()I
    .locals 2

    monitor-enter p0

    .line 531
    :try_start_0
    iget-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->extraCallback:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v0}, Lo/InstallReferrerClient$Builder;->extraCallback()I

    move-result v0

    iget-object v1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v1}, Lo/InstallReferrerClient$Builder;->extraCallback()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static extraCallback(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 457
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;

    if-eqz v0, :cond_0

    .line 9464
    iget-object v1, v0, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->extraCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    if-eqz v1, :cond_0

    .line 9465
    iget-object v1, v0, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->extraCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    iget-object v0, v0, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized extraCallback(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 494
    :try_start_0
    iget-boolean v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->ICustomTabsCallback:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 495
    iget v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onPostMessage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onPostMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    monitor-exit p0

    return-void

    .line 12162
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 11215
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onMessageChannelReady(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback<",
            "TK;TV;>;>;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 426
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 427
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 429
    iget-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v0}, Lo/InstallReferrerClient$Builder;->onNavigationEvent()I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v0}, Lo/InstallReferrerClient$Builder;->extraCallback()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, p2, :cond_0

    const/4 p1, 0x0

    .line 430
    monitor-exit p0

    return-object p1

    .line 432
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    :goto_0
    iget-object v1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v1}, Lo/InstallReferrerClient$Builder;->onNavigationEvent()I

    move-result v1

    if-gt v1, p1, :cond_2

    iget-object v1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v1}, Lo/InstallReferrerClient$Builder;->extraCallback()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v1, p2, :cond_1

    goto :goto_1

    .line 438
    :cond_1
    monitor-exit p0

    return-object v0

    .line 434
    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v1}, Lo/InstallReferrerClient$Builder;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v1

    .line 435
    iget-object v2, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v2, v1}, Lo/InstallReferrerClient$Builder;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v2, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->extraCallback:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v2, v1}, Lo/InstallReferrerClient$Builder;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onMessageChannelReady(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 478
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;

    .line 479
    invoke-direct {p0, v0}, Lo/InstallReferrerClient$InstallReferrerResponse;->onMessageChannelReady(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 482
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized onMessageChannelReady(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 487
    :try_start_0
    iget-boolean v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->ICustomTabsCallback:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 488
    iput-boolean v1, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->ICustomTabsCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p0

    return-void

    .line 11162
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 10215
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onMessageChannelReady:Lo/InstallReferrerCommons;

    invoke-interface {v0, p1}, Lo/InstallReferrerCommons;->onPostMessage(Ljava/lang/Object;)I

    move-result p1

    .line 194
    iget-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback$Stub:Lo/getLayoutInflater$extraCallback;

    iget v0, v0, Lo/getLayoutInflater$extraCallback;->ICustomTabsCallback:I

    if-gt p1, v0, :cond_0

    .line 195
    invoke-direct {p0}, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback()I

    move-result v0

    iget-object v1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback$Stub:Lo/getLayoutInflater$extraCallback;

    iget v1, v1, Lo/getLayoutInflater$extraCallback;->onNavigationEvent:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 196
    invoke-direct {p0}, Lo/InstallReferrerClient$InstallReferrerResponse;->extraCallback()I

    move-result v0

    iget-object v1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback$Stub:Lo/getLayoutInflater$extraCallback;

    iget v1, v1, Lo/getLayoutInflater$extraCallback;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    const/4 p1, 0x0

    .line 194
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onNavigationEvent()V
    .locals 4

    .line 401
    monitor-enter p0

    const v0, 0x7fffffff

    .line 402
    :try_start_0
    iget-object v1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback$Stub:Lo/getLayoutInflater$extraCallback;

    iget v1, v1, Lo/getLayoutInflater$extraCallback;->onNavigationEvent:I

    .line 405
    invoke-direct {p0}, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback()I

    move-result v2

    sub-int/2addr v1, v2

    .line 403
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 406
    iget-object v1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback$Stub:Lo/getLayoutInflater$extraCallback;

    iget v1, v1, Lo/getLayoutInflater$extraCallback;->onMessageChannelReady:I

    iget-object v2, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback$Stub:Lo/getLayoutInflater$extraCallback;

    iget v2, v2, Lo/getLayoutInflater$extraCallback;->extraCallback:I

    .line 409
    invoke-direct {p0}, Lo/InstallReferrerClient$InstallReferrerResponse;->extraCallback()I

    move-result v3

    sub-int/2addr v2, v3

    .line 407
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 410
    invoke-direct {p0, v0, v1}, Lo/InstallReferrerClient$InstallReferrerResponse;->onMessageChannelReady(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 411
    invoke-direct {p0, v0}, Lo/InstallReferrerClient$InstallReferrerResponse;->onMessageChannelReady(Ljava/util/ArrayList;)V

    .line 412
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-direct {p0, v0}, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback(Ljava/util/ArrayList;)V

    .line 414
    invoke-static {v0}, Lo/InstallReferrerClient$InstallReferrerResponse;->extraCallback(Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception v0

    .line 412
    monitor-exit p0

    throw v0
.end method

.method static synthetic onNavigationEvent(Lo/InstallReferrerClient$InstallReferrerResponse;Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 13256
    monitor-enter p0

    .line 13257
    :try_start_0
    invoke-direct {p0, p1}, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)V

    .line 13258
    invoke-direct {p0, p1}, Lo/InstallReferrerClient$InstallReferrerResponse;->onNavigationEvent(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)Z

    move-result v1

    .line 13259
    invoke-direct {p0, p1}, Lo/InstallReferrerClient$InstallReferrerResponse;->onTransact(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)Lo/getRootAlpha;

    move-result-object v2

    .line 13260
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13261
    invoke-static {v2}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 14470
    iget-object v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->extraCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    if-eqz v0, :cond_1

    .line 14471
    iget-object v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->extraCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    iget-object p1, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;Z)V

    .line 13263
    :cond_1
    invoke-direct {p0}, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage()V

    .line 13264
    invoke-direct {p0}, Lo/InstallReferrerClient$InstallReferrerResponse;->onNavigationEvent()V

    return-void

    :catchall_0
    move-exception p1

    .line 13260
    monitor-exit p0

    throw p1

    .line 14215
    :cond_2
    throw v0
.end method

.method private declared-synchronized onNavigationEvent(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback<",
            "TK;TV;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 269
    :try_start_0
    iget-boolean v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    iget v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onPostMessage:I

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage:Lo/InstallReferrerClient$Builder;

    iget-object v1, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lo/InstallReferrerClient$Builder;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 271
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 273
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onPostMessage()V
    .locals 5

    monitor-enter p0

    .line 381
    :try_start_0
    iget-wide v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onRelationshipValidationResult:J

    iget-object v2, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback$Stub:Lo/getLayoutInflater$extraCallback;

    iget-wide v2, v2, Lo/getLayoutInflater$extraCallback;->onTransact:J

    add-long/2addr v0, v2

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 383
    monitor-exit p0

    return-void

    .line 385
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onRelationshipValidationResult:J

    .line 386
    iget-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback:Lo/setPivotX;

    invoke-interface {v0}, Lo/setPivotX;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getLayoutInflater$extraCallback;

    iput-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback$Stub:Lo/getLayoutInflater$extraCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onPostMessage(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 501
    :try_start_0
    iget v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onPostMessage:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 502
    iget v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onPostMessage:I

    sub-int/2addr v0, v1

    iput v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onPostMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    .line 13162
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 12215
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onTransact(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)Lo/getRootAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback<",
            "TK;TV;>;)",
            "Lo/getRootAlpha<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 509
    :try_start_0
    iget-boolean v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onPostMessage:I

    if-nez v0, :cond_0

    iget-object p1, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onMessageChannelReady:Lo/getRootAlpha;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 13215
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Lo/getRootAlpha;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/getRootAlpha<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v1, p1}, Lo/InstallReferrerClient$Builder;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;

    .line 211
    iget-object v2, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->extraCallback:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v2, p1}, Lo/InstallReferrerClient$Builder;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;

    if-eqz p1, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)Lo/getRootAlpha;

    move-result-object v0

    .line 215
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 5464
    iget-object p1, v1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->extraCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 5465
    iget-object p1, v1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->extraCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    iget-object v1, v1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;Z)V

    .line 217
    :cond_1
    invoke-direct {p0}, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage()V

    .line 218
    invoke-direct {p0}, Lo/InstallReferrerClient$InstallReferrerResponse;->onNavigationEvent()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 215
    monitor-exit p0

    throw p1

    .line 5215
    :cond_2
    throw v0
.end method

.method public final extraCallback(Ljava/lang/Object;)Lo/getRootAlpha;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/getRootAlpha<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v1, p1}, Lo/InstallReferrerClient$Builder;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 290
    iget-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->extraCallback:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v0, p1}, Lo/InstallReferrerClient$Builder;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;

    if-eqz p1, :cond_2

    .line 292
    iget v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onPostMessage:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onMessageChannelReady:Lo/getRootAlpha;

    goto :goto_1

    .line 8162
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 7215
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_3
    const/4 v2, 0x0

    .line 298
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 8464
    iget-object p1, v1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->extraCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    if-eqz p1, :cond_4

    .line 8465
    iget-object p1, v1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->extraCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    iget-object v1, v1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    invoke-interface {p1, v1, v3}, Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;Z)V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    .line 298
    monitor-exit p0

    throw p1

    .line 6215
    :cond_5
    throw v0
.end method

.method public final onPostMessage(Ljava/lang/Object;Lo/getRootAlpha;)Lo/getRootAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lo/getRootAlpha<",
            "TV;>;)",
            "Lo/getRootAlpha<",
            "TV;>;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onNavigationEvent:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    invoke-virtual {p0, p1, p2, v0}, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage(Ljava/lang/Object;Lo/getRootAlpha;Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;)Lo/getRootAlpha;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/Object;Lo/getRootAlpha;Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;)Lo/getRootAlpha;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lo/getRootAlpha<",
            "TV;>;",
            "Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback<",
            "TK;>;)",
            "Lo/getRootAlpha<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 164
    invoke-direct {p0}, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage()V

    .line 169
    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v1, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->onPostMessage:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v1, p1}, Lo/InstallReferrerClient$Builder;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;

    .line 172
    iget-object v2, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->extraCallback:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v2, p1}, Lo/InstallReferrerClient$Builder;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;

    if-eqz v2, :cond_0

    .line 174
    invoke-direct {p0, v2}, Lo/InstallReferrerClient$InstallReferrerResponse;->onMessageChannelReady(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)V

    .line 175
    invoke-direct {p0, v2}, Lo/InstallReferrerClient$InstallReferrerResponse;->onTransact(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)Lo/getRootAlpha;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 178
    :goto_0
    invoke-virtual {p2}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lo/InstallReferrerClient$InstallReferrerResponse;->onMessageChannelReady(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4081
    new-instance v0, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;

    invoke-direct {v0, p1, p2, p3}, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;-><init>(Ljava/lang/Object;Lo/getRootAlpha;Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;)V

    .line 180
    iget-object p2, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->extraCallback:Lo/InstallReferrerClient$Builder;

    invoke-virtual {p2, p1, v0}, Lo/InstallReferrerClient$Builder;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-direct {p0, v0}, Lo/InstallReferrerClient$InstallReferrerResponse;->ICustomTabsCallback(Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;)Lo/getRootAlpha;

    move-result-object v0

    .line 183
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-static {v2}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    if-eqz v1, :cond_2

    .line 4464
    iget-object p1, v1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->extraCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    if-eqz p1, :cond_2

    .line 4465
    iget-object p1, v1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->extraCallback:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    iget-object p2, v1, Lo/InstallReferrerClient$InstallReferrerResponse$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;Z)V

    .line 187
    :cond_2
    invoke-direct {p0}, Lo/InstallReferrerClient$InstallReferrerResponse;->onNavigationEvent()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 183
    monitor-exit p0

    throw p1

    .line 3215
    :cond_3
    throw v0

    .line 2215
    :cond_4
    throw v0
.end method

.method public final declared-synchronized onPostMessage(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lo/InstallReferrerClient$InstallReferrerResponse;->extraCallback:Lo/InstallReferrerClient$Builder;

    invoke-virtual {v0, p1}, Lo/InstallReferrerClient$Builder;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
