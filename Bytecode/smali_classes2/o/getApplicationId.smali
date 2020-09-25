.class final Lo/getApplicationId;
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
.field private final ICustomTabsCallback:Lo/getProjectId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getProjectId<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/util/concurrent/Executor;

.field private final onPostMessage:Lo/getPersistenceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPersistenceKey<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/getPersistenceKey;Lo/getProjectId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/getPersistenceKey<",
            "TTResult;TTContinuationResult;>;",
            "Lo/getProjectId<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getApplicationId;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lo/getApplicationId;->onPostMessage:Lo/getPersistenceKey;

    .line 4
    iput-object p3, p0, Lo/getApplicationId;->ICustomTabsCallback:Lo/getProjectId;

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/getApplicationId;)Lo/getPersistenceKey;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/getApplicationId;->onPostMessage:Lo/getPersistenceKey;

    return-object p0
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final onCanceled()V
    .locals 1

    .line 13
    iget-object v0, p0, Lo/getApplicationId;->ICustomTabsCallback:Lo/getProjectId;

    invoke-virtual {v0}, Lo/getProjectId;->ICustomTabsCallback$Stub()Z

    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lo/getApplicationId;->ICustomTabsCallback:Lo/getProjectId;

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
    iget-object v0, p0, Lo/getApplicationId;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/getDatabaseUrl;

    invoke-direct {v1, p0, p1}, Lo/getDatabaseUrl;-><init>(Lo/getApplicationId;Lcom/google/android/gms/tasks/Task;)V

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

    .line 9
    iget-object v0, p0, Lo/getApplicationId;->ICustomTabsCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method
