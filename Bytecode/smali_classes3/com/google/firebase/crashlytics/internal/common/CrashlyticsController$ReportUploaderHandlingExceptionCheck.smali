.class final Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderHandlingExceptionCheck;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReportUploaderHandlingExceptionCheck"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)V
    .locals 0

    .line 1787
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderHandlingExceptionCheck;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$1;)V
    .locals 0

    .line 1787
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderHandlingExceptionCheck;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)V

    return-void
.end method


# virtual methods
.method public final isHandlingException()Z
    .locals 1

    .line 1791
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$ReportUploaderHandlingExceptionCheck;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->isHandlingException()Z

    move-result v0

    return v0
.end method
