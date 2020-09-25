.class public Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;
.super Ljava/io/FileOutputStream;
.source ""


# static fields
.field public static final IN_PROGRESS_SESSION_FILE_EXTENSION:Ljava/lang/String; = ".cls_temp"

.field public static final SESSION_FILE_EXTENSION:Ljava/lang/String; = ".cls"

.field public static final TEMP_FILENAME_FILTER:Ljava/io/FilenameFilter;


# instance fields
.field private closed:Z

.field private complete:Ljava/io/File;

.field private inProgress:Ljava/io/File;

.field private final root:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream$1;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream$1;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->TEMP_FILENAME_FILTER:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".cls_temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->closed:Z

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->root:Ljava/lang/String;

    .line 49
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->root:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->inProgress:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 54
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 55
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 57
    :try_start_1
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->closed:Z

    .line 58
    invoke-super {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 59
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 61
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".cls"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->inProgress:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->inProgress:Ljava/io/File;

    .line 65
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->complete:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v1, ""

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 70
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->inProgress:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, " (source does not exist)"

    goto :goto_0

    :cond_2
    const-string v1, " (target already exists)"

    .line 73
    :cond_3
    :goto_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not rename temp file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->inProgress:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeInProgressStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->closed:Z

    .line 90
    invoke-super {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 91
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public getCompleteFile()Ljava/io/File;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->complete:Ljava/io/File;

    return-object v0
.end method

.method public getInProgressFile()Ljava/io/File;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/proto/ClsFileOutputStream;->inProgress:Ljava/io/File;

    return-object v0
.end method
