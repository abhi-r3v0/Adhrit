.class final Lo/setCloseIconEnabled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic onPostMessage:Lo/setChipIconSize;


# direct methods
.method constructor <init>(Lo/setChipIconSize;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setCloseIconEnabled;->onPostMessage:Lo/setChipIconSize;

    iput-object p2, p0, Lo/setCloseIconEnabled;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/setCloseIconEnabled;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo/setCloseIconEnabled;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lo/setCloseIconEnabled;->onPostMessage:Lo/setChipIconSize;

    invoke-virtual {v2}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    iget-object v3, p0, Lo/setCloseIconEnabled;->onPostMessage:Lo/setChipIconSize;

    invoke-virtual {v3}, Lo/pathToString;->onRelationshipValidationResult()Lo/setExpanded;

    move-result-object v3

    invoke-virtual {v3}, Lo/setExpanded;->IPostMessageService$Stub()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->onTransact(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lo/setCloseIconEnabled;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 6
    iget-object v2, p0, Lo/setCloseIconEnabled;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 7
    throw v1

    :catchall_1
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
