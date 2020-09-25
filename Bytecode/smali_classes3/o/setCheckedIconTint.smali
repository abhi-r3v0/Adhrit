.class final Lo/setCheckedIconTint;
.super Ljava/util/concurrent/FutureTask;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Ljava/lang/Comparable<",
        "Lo/setCheckedIconTint<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Z

.field private final extraCallback:Ljava/lang/String;

.field private final onNavigationEvent:J

.field private final synthetic onPostMessage:Lo/setShapeAppearanceModel;


# direct methods
.method constructor <init>(Lo/setShapeAppearanceModel;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 2

    .line 10
    iput-object p1, p0, Lo/setCheckedIconTint;->onPostMessage:Lo/setShapeAppearanceModel;

    .line 11
    invoke-static {}, Lo/z$a;->ICustomTabsCallback()Lo/CustomEventBanner;

    move-result-object v0

    invoke-interface {v0, p2}, Lo/CustomEventBanner;->extraCallback(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 12
    invoke-static {p4}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lo/setShapeAppearanceModel;->onRelationshipValidationResult()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lo/setCheckedIconTint;->onNavigationEvent:J

    .line 14
    iput-object p4, p0, Lo/setCheckedIconTint;->extraCallback:Ljava/lang/String;

    .line 15
    iput-boolean p3, p0, Lo/setCheckedIconTint;->ICustomTabsCallback:Z

    const-wide p2, 0x7fffffffffffffffL

    cmp-long p4, v0, p2

    if-nez p4, :cond_0

    .line 17
    invoke-virtual {p1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Tasks index overflow"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Lo/setShapeAppearanceModel;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lo/setCheckedIconTint;->onPostMessage:Lo/setShapeAppearanceModel;

    .line 2
    invoke-static {}, Lo/z$a;->ICustomTabsCallback()Lo/CustomEventBanner;

    move-result-object v0

    invoke-interface {v0, p2}, Lo/CustomEventBanner;->onPostMessage(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3
    invoke-static {p4}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lo/setShapeAppearanceModel;->onRelationshipValidationResult()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lo/setCheckedIconTint;->onNavigationEvent:J

    .line 5
    iput-object p4, p0, Lo/setCheckedIconTint;->extraCallback:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lo/setCheckedIconTint;->ICustomTabsCallback:Z

    const-wide p2, 0x7fffffffffffffffL

    cmp-long p4, v0, p2

    if-nez p4, :cond_0

    .line 8
    invoke-virtual {p1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Tasks index overflow"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    .line 25
    check-cast p1, Lo/setCheckedIconTint;

    .line 26
    iget-boolean v0, p0, Lo/setCheckedIconTint;->ICustomTabsCallback:Z

    iget-boolean v1, p1, Lo/setCheckedIconTint;->ICustomTabsCallback:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    return v3

    :cond_0
    return v2

    .line 28
    :cond_1
    iget-wide v0, p0, Lo/setCheckedIconTint;->onNavigationEvent:J

    iget-wide v4, p1, Lo/setCheckedIconTint;->onNavigationEvent:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_2

    return v3

    :cond_2
    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    return v2

    .line 32
    :cond_3
    iget-object p1, p0, Lo/setCheckedIconTint;->onPostMessage:Lo/setShapeAppearanceModel;

    invoke-virtual {p1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub()Lo/setFabAlignmentMode;

    move-result-object p1

    iget-wide v0, p0, Lo/setCheckedIconTint;->onNavigationEvent:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Two tasks share the same index. index"

    invoke-virtual {p1, v1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected final setException(Ljava/lang/Throwable;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lo/setCheckedIconTint;->onPostMessage:Lo/setShapeAppearanceModel;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    iget-object v1, p0, Lo/setCheckedIconTint;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    instance-of v0, p1, Lo/setIconGravity;

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 23
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
