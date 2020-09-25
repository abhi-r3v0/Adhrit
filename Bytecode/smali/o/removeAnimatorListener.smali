.class public final Lo/removeAnimatorListener;
.super Lo/addAnimatorUpdateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeAnimatorListener$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/reverseAnimationSpeed;",
        ">",
        "Lo/addAnimatorUpdateListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/removeAnimatorListener$onPostMessage;

.field private final ICustomTabsCallback$Stub:Ljava/lang/Runnable;

.field private asInterface:J

.field extraCallback:J

.field onMessageChannelReady:J

.field final onNavigationEvent:Lo/CoroutineWorker;

.field onPostMessage:Z

.field private final onRelationshipValidationResult:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lo/reverseAnimationSpeed;Lo/removeAnimatorListener$onPostMessage;Lo/CoroutineWorker;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/removeAnimatorListener$onPostMessage;",
            "Lo/CoroutineWorker;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lo/addAnimatorUpdateListener;-><init>(Lo/reverseAnimationSpeed;)V

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lo/removeAnimatorListener;->onPostMessage:Z

    const-wide/16 v0, 0x7d0

    .line 70
    iput-wide v0, p0, Lo/removeAnimatorListener;->onMessageChannelReady:J

    const-wide/16 v0, 0x3e8

    .line 71
    iput-wide v0, p0, Lo/removeAnimatorListener;->asInterface:J

    .line 79
    new-instance p1, Lo/removeAnimatorListener$2;

    invoke-direct {p1, p0}, Lo/removeAnimatorListener$2;-><init>(Lo/removeAnimatorListener;)V

    iput-object p1, p0, Lo/removeAnimatorListener;->ICustomTabsCallback$Stub:Ljava/lang/Runnable;

    .line 101
    iput-object p2, p0, Lo/removeAnimatorListener;->ICustomTabsCallback:Lo/removeAnimatorListener$onPostMessage;

    .line 102
    iput-object p3, p0, Lo/removeAnimatorListener;->onNavigationEvent:Lo/CoroutineWorker;

    .line 103
    iput-object p4, p0, Lo/removeAnimatorListener;->onRelationshipValidationResult:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 2

    .line 108
    iget-object v0, p0, Lo/removeAnimatorListener;->onNavigationEvent:Lo/CoroutineWorker;

    invoke-interface {v0}, Lo/CoroutineWorker;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lo/removeAnimatorListener;->extraCallback:J

    .line 109
    invoke-super {p0, p1, p2, p3}, Lo/addAnimatorUpdateListener;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result p1

    .line 110
    invoke-virtual {p0}, Lo/removeAnimatorListener;->ICustomTabsCallback$Stub()V

    return p1
.end method

.method final declared-synchronized ICustomTabsCallback$Stub()V
    .locals 5

    monitor-enter p0

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lo/removeAnimatorListener;->onPostMessage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lo/removeAnimatorListener;->onPostMessage:Z

    .line 141
    iget-object v0, p0, Lo/removeAnimatorListener;->onRelationshipValidationResult:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lo/removeAnimatorListener;->ICustomTabsCallback$Stub:Ljava/lang/Runnable;

    iget-wide v2, p0, Lo/removeAnimatorListener;->asInterface:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
