.class final Lo/onBackgroundStateChanged;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/lambda$new$0;


# direct methods
.method constructor <init>(Lo/lambda$new$0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/onBackgroundStateChanged;->extraCallback:Lo/lambda$new$0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/onBackgroundStateChanged;->extraCallback:Lo/lambda$new$0;

    invoke-static {v0}, Lo/lambda$new$0;->onPostMessage(Lo/lambda$new$0;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo/onBackgroundStateChanged;->extraCallback:Lo/lambda$new$0;

    invoke-static {v1}, Lo/lambda$new$0;->onNavigationEvent(Lo/lambda$new$0;)Lo/notifyBackgroundStateChangeListeners;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lo/onBackgroundStateChanged;->extraCallback:Lo/lambda$new$0;

    invoke-static {v1}, Lo/lambda$new$0;->onNavigationEvent(Lo/lambda$new$0;)Lo/notifyBackgroundStateChangeListeners;

    move-result-object v1

    invoke-interface {v1}, Lo/notifyBackgroundStateChangeListeners;->onCanceled()V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
