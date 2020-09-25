.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->cleanInvalidTempFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$15;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$15;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$InvalidPartFileFilter;

    invoke-direct {v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$InvalidPartFileFilter;-><init>()V

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$2400(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->doCleanInvalidTempFiles([Ljava/io/File;)V

    return-void
.end method
