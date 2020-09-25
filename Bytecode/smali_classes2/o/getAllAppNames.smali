.class final Lo/getAllAppNames;
.super Ljava/lang/Object;
.source ""

# interfaces
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
        "Lo/getGaTrackingId<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field private final onMessageChannelReady:Lo/isDefaultApp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isDefaultApp<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/getProjectId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getProjectId<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/isDefaultApp;Lo/getProjectId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/isDefaultApp<",
            "TTResult;TTContinuationResult;>;",
            "Lo/getProjectId<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getAllAppNames;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lo/getAllAppNames;->onMessageChannelReady:Lo/isDefaultApp;

    .line 4
    iput-object p3, p0, Lo/getAllAppNames;->onNavigationEvent:Lo/getProjectId;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/getAllAppNames;)Lo/isDefaultApp;
    .locals 0

    .line 10
    iget-object p0, p0, Lo/getAllAppNames;->onMessageChannelReady:Lo/isDefaultApp;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/getAllAppNames;)Lo/getProjectId;
    .locals 0

    .line 9
    iget-object p0, p0, Lo/getAllAppNames;->onNavigationEvent:Lo/getProjectId;

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
    iget-object v0, p0, Lo/getAllAppNames;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/access$600;

    invoke-direct {v1, p0, p1}, Lo/access$600;-><init>(Lo/getAllAppNames;Lcom/google/android/gms/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
