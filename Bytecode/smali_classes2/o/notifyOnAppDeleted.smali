.class final Lo/notifyOnAppDeleted;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/notifyBackgroundStateChangeListeners;
.implements Lo/getGaTrackingId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/notifyBackgroundStateChangeListeners;",
        "Lo/getGaTrackingId<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/getProjectId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getProjectId<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/isDefaultApp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isDefaultApp<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/isDefaultApp;Lo/getProjectId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/isDefaultApp<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;",
            "Lo/getProjectId<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/notifyOnAppDeleted;->onPostMessage:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lo/notifyOnAppDeleted;->onMessageChannelReady:Lo/isDefaultApp;

    .line 4
    iput-object p3, p0, Lo/notifyOnAppDeleted;->extraCallback:Lo/getProjectId;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/notifyOnAppDeleted;)Lo/getProjectId;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/notifyOnAppDeleted;->extraCallback:Lo/getProjectId;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/notifyOnAppDeleted;)Lo/isDefaultApp;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/notifyOnAppDeleted;->onMessageChannelReady:Lo/isDefaultApp;

    return-object p0
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final onCanceled()V
    .locals 1

    .line 12
    iget-object v0, p0, Lo/notifyOnAppDeleted;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0}, Lo/getProjectId;->ICustomTabsCallback$Stub()Z

    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lo/notifyOnAppDeleted;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onMessageChannelReady(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lo/notifyOnAppDeleted;->onPostMessage:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/access$500;

    invoke-direct {v1, p0, p1}, Lo/access$500;-><init>(Lo/notifyOnAppDeleted;Lcom/google/android/gms/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lo/notifyOnAppDeleted;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method
