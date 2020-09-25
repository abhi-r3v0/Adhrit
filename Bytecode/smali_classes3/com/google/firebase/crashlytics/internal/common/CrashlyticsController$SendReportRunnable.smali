.class final Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$SendReportRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SendReportRunnable"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final dataCollectionToken:Z

.field private final report:Lcom/google/firebase/crashlytics/internal/report/model/Report;

.field private final reportUploader:Lcom/google/firebase/crashlytics/internal/report/ReportUploader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/report/model/Report;Lcom/google/firebase/crashlytics/internal/report/ReportUploader;Z)V
    .locals 0

    .line 1819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1820
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$SendReportRunnable;->context:Landroid/content/Context;

    .line 1821
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$SendReportRunnable;->report:Lcom/google/firebase/crashlytics/internal/report/model/Report;

    .line 1822
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$SendReportRunnable;->reportUploader:Lcom/google/firebase/crashlytics/internal/report/ReportUploader;

    .line 1823
    iput-boolean p4, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$SendReportRunnable;->dataCollectionToken:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1828
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$SendReportRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->canTryConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1832
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    const-string v1, "Attempting to send crash report at time of crash..."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 1834
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$SendReportRunnable;->reportUploader:Lcom/google/firebase/crashlytics/internal/report/ReportUploader;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$SendReportRunnable;->report:Lcom/google/firebase/crashlytics/internal/report/model/Report;

    iget-boolean v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$SendReportRunnable;->dataCollectionToken:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->uploadReport(Lcom/google/firebase/crashlytics/internal/report/model/Report;Z)Z

    return-void
.end method
