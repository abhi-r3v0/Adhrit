.class Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;


# instance fields
.field private final rootPath:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->rootPath:Ljava/io/File;

    return-void
.end method

.method private static prepareDirectory(Ljava/io/File;)Ljava/io/File;
    .locals 1

    if-eqz p0, :cond_1

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static recursiveDelete(Ljava/io/File;)V
    .locals 4

    .line 56
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 58
    invoke-static {v3}, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->recursiveDelete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method


# virtual methods
.method public deleteSessionFilesDirectory(Ljava/lang/String;)V
    .locals 2

    .line 42
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->rootPath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->recursiveDelete(Ljava/io/File;)V

    return-void
.end method

.method public getSessionFileDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 37
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->rootPath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->prepareDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public hasSessionFileDirectory(Ljava/lang/String;)Z
    .locals 2

    .line 31
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->rootPath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method
