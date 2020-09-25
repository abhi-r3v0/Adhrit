.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;->then(Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

.field final synthetic val$send:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;Ljava/lang/Boolean;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->val$send:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$1300(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/report/ReportManager;->findReports()Ljava/util/List;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->val$send:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 550
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Reports are being deleted."

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->listAppExceptionMarkerFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$1400([Ljava/io/File;)V

    .line 552
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$1300(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/report/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/report/ReportManager;->deleteReports(Ljava/util/List;)V

    .line 553
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$500(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->removeAllReports()V

    .line 554
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->unsentReportsHandled:Lo/removeBackgroundStateChangeListener;

    .line 1010
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Object;)Z

    .line 2001
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 2002
    invoke-virtual {v0, v1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-object v0

    .line 558
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Reports are being sent."

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->val$send:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 565
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

    iget-object v2, v2, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$900(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->grantDataCollectionPermission(Z)V

    .line 567
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

    iget-object v2, v2, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$1000(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 569
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->this$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;

    iget-object v3, v3, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8;->val$appSettingsDataTask:Lcom/google/android/gms/tasks/Task;

    new-instance v4, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1$1;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;Ljava/util/List;ZLjava/util/concurrent/Executor;)V

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent(Ljava/util/concurrent/Executor;Lo/getPersistenceKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 544
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$8$1;->call()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
