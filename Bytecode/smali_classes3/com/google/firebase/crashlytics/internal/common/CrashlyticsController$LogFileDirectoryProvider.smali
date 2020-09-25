.class final Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$LogFileDirectoryProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/log/LogFileManager$DirectoryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LogFileDirectoryProvider"
.end annotation


# static fields
.field private static final LOG_FILES_DIR:Ljava/lang/String; = "log-files"


# instance fields
.field private final rootFileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/persistence/FileStore;)V
    .locals 0

    .line 1889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1890
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$LogFileDirectoryProvider;->rootFileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    return-void
.end method


# virtual methods
.method public final getLogFileDir()Ljava/io/File;
    .locals 3

    .line 1895
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$LogFileDirectoryProvider;->rootFileStore:Lcom/google/firebase/crashlytics/internal/persistence/FileStore;

    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/persistence/FileStore;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "log-files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1896
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1897
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method
