.class final Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderFilesProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/report/ReportUploader$ReportFilesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReportUploaderFilesProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)V
    .locals 0

    .line 1795
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderFilesProvider;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$1;)V
    .locals 0

    .line 1795
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderFilesProvider;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)V

    return-void
.end method


# virtual methods
.method public final getCompleteSessionFiles()[Ljava/io/File;
    .locals 1

    .line 1798
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderFilesProvider;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->listCompleteSessionFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getNativeReportFiles()[Ljava/io/File;
    .locals 1

    .line 1803
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderFilesProvider;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->listNativeSessionFileDirectories()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
