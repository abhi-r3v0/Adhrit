.class final Lo/setHideMotionSpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic onNavigationEvent:Lo/setChipIconSize;


# direct methods
.method constructor <init>(Lo/setChipIconSize;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setHideMotionSpec;->onNavigationEvent:Lo/setChipIconSize;

    iput-object p2, p0, Lo/setHideMotionSpec;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lo/setHideMotionSpec;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo/setHideMotionSpec;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lo/setHideMotionSpec;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v2}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    iget-object v3, p0, Lo/setHideMotionSpec;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v3}, Lo/pathToString;->onRelationshipValidationResult()Lo/setExpanded;

    move-result-object v3

    invoke-virtual {v3}, Lo/setExpanded;->IPostMessageService$Stub()Ljava/lang/String;

    move-result-object v3

    .line 4
    sget-object v4, Lo/zziq;->write:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3, v4}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;)I

    move-result v2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v1, p0, Lo/setHideMotionSpec;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lo/setHideMotionSpec;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 9
    throw v1

    :catchall_1
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
