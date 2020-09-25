.class public Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final RETRY_COUNT:I = 0x5


# instance fields
.field private asyncQueue:Lo/CrashlyticsReport$Type;

.field private backoff:Lo/subList;

.field private remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

.field private retriesLeft:I

.field private taskSource:Lo/removeBackgroundStateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/removeBackgroundStateChangeListener<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private updateFunction:Lo/listIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/listIterator<",
            "Lo/getClsId;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/listIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReport$Type;",
            "Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;",
            "Lo/listIterator<",
            "Lo/getClsId;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    iput-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->taskSource:Lo/removeBackgroundStateChangeListener;

    .line 44
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 45
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    .line 46
    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->updateFunction:Lo/listIterator;

    const/4 p2, 0x5

    .line 47
    iput p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->retriesLeft:I

    .line 49
    new-instance p2, Lo/subList;

    sget-object p3, Lo/CrashlyticsReport$Type$extraCallback;->RETRY_TRANSACTION:Lo/CrashlyticsReport$Type$extraCallback;

    invoke-direct {p2, p1, p3}, Lo/subList;-><init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;)V

    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->backoff:Lo/subList;

    return-void
.end method

.method private handleTransactionError(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 87
    iget v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->retriesLeft:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->isRetryableTransactionError(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->retriesLeft:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->retriesLeft:I

    .line 89
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->runWithBackoff()V

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->taskSource:Lo/removeBackgroundStateChangeListener;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object p1

    .line 2011
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void
.end method

.method private static isRetryableTransactionError(Ljava/lang/Exception;)Z
    .locals 3

    .line 96
    instance-of v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 99
    check-cast p0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;->getCode()Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    move-result-object v0

    .line 100
    sget-object v2, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->ABORTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->FAILED_PRECONDITION:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    if-eq v0, v2, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;->getCode()Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    move-result-object p0

    invoke-static {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->isPermanentError(Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static synthetic lambda$runWithBackoff$0(Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 75
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->taskSource:Lo/removeBackgroundStateChangeListener;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    .line 3008
    iget-object p0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-void

    .line 78
    :cond_0
    invoke-direct {p0, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->handleTransactionError(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic lambda$runWithBackoff$1(Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;Lo/getClsId;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 67
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0, p2}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->handleTransactionError(Lcom/google/android/gms/tasks/Task;)V

    return-void

    .line 71
    :cond_0
    invoke-virtual {p1}, Lo/getClsId;->commit()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 73
    invoke-virtual {v0}, Lo/CrashlyticsReport$Type;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p0, p2}, Lo/setPivotY;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object p0

    .line 72
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static synthetic lambda$runWithBackoff$2(Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->remoteStore:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->createTransaction()Lo/getClsId;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->updateFunction:Lo/listIterator;

    .line 63
    invoke-interface {v1, v0}, Lo/listIterator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->asyncQueue:Lo/CrashlyticsReport$Type;

    .line 65
    invoke-virtual {v2}, Lo/CrashlyticsReport$Type;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {p0, v0}, Lo/getPivotY;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;Lo/getClsId;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object p0

    .line 64
    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private runWithBackoff()V
    .locals 2

    .line 59
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->backoff:Lo/subList;

    invoke-static {p0}, Lcom/facebook/common/file/FileUtils;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/subList;->backoffAndRun(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->runWithBackoff()V

    .line 55
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->taskSource:Lo/removeBackgroundStateChangeListener;

    .line 1014
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object v0
.end method
