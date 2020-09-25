.class Lcom/google/firebase/crashlytics/ndk/SessionFilesProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;


# instance fields
.field private final sessionFiles:Lcom/google/firebase/crashlytics/ndk/SessionFiles;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/ndk/SessionFiles;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/SessionFilesProvider;->sessionFiles:Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    return-void
.end method


# virtual methods
.method public getAppFile()Ljava/io/File;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFilesProvider;->sessionFiles:Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->app:Ljava/io/File;

    return-object v0
.end method

.method public getBinaryImagesFile()Ljava/io/File;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFilesProvider;->sessionFiles:Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->binaryImages:Ljava/io/File;

    return-object v0
.end method

.method public getDeviceFile()Ljava/io/File;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFilesProvider;->sessionFiles:Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->device:Ljava/io/File;

    return-object v0
.end method

.method public getMetadataFile()Ljava/io/File;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFilesProvider;->sessionFiles:Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->metadata:Ljava/io/File;

    return-object v0
.end method

.method public getMinidumpFile()Ljava/io/File;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFilesProvider;->sessionFiles:Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->minidump:Ljava/io/File;

    return-object v0
.end method

.method public getOsFile()Ljava/io/File;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFilesProvider;->sessionFiles:Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->os:Ljava/io/File;

    return-object v0
.end method

.method public getSessionFile()Ljava/io/File;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/SessionFilesProvider;->sessionFiles:Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/SessionFiles;->session:Ljava/io/File;

    return-object v0
.end method
