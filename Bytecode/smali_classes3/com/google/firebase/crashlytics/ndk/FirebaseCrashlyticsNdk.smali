.class Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;


# static fields
.field private static final FILES_PATH:Ljava/lang/String; = ".com.google.firebase.crashlytics-ndk"


# instance fields
.field private final controller:Lcom/google/firebase/crashlytics/ndk/NativeComponentController;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/ndk/NativeComponentController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->controller:Lcom/google/firebase/crashlytics/ndk/NativeComponentController;

    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;
    .locals 4

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".com.google.firebase.crashlytics-ndk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/google/firebase/crashlytics/ndk/BreakpadController;

    new-instance v2, Lcom/google/firebase/crashlytics/ndk/JniNativeApi;

    invoke-direct {v2}, Lcom/google/firebase/crashlytics/ndk/JniNativeApi;-><init>()V

    new-instance v3, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;

    invoke-direct {v3, v0}, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;-><init>(Ljava/io/File;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/google/firebase/crashlytics/ndk/BreakpadController;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/ndk/NativeApi;Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;)V

    .line 35
    new-instance p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;

    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;-><init>(Lcom/google/firebase/crashlytics/ndk/NativeComponentController;)V

    return-object p0
.end method


# virtual methods
.method public finalizeSession(Ljava/lang/String;)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->controller:Lcom/google/firebase/crashlytics/ndk/NativeComponentController;

    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/ndk/NativeComponentController;->finalizeSession(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getSessionFileProvider(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;
    .locals 2

    .line 67
    new-instance v0, Lcom/google/firebase/crashlytics/ndk/SessionFilesProvider;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->controller:Lcom/google/firebase/crashlytics/ndk/NativeComponentController;

    invoke-interface {v1, p1}, Lcom/google/firebase/crashlytics/ndk/NativeComponentController;->getFilesForSession(Ljava/lang/String;)Lcom/google/firebase/crashlytics/ndk/SessionFiles;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/crashlytics/ndk/SessionFilesProvider;-><init>(Lcom/google/firebase/crashlytics/ndk/SessionFiles;)V

    return-object v0
.end method

.method public hasCrashDataForSession(Ljava/lang/String;)Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->controller:Lcom/google/firebase/crashlytics/ndk/NativeComponentController;

    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/ndk/NativeComponentController;->hasCrashDataForSession(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public openSession(Ljava/lang/String;)Z
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->controller:Lcom/google/firebase/crashlytics/ndk/NativeComponentController;

    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/ndk/NativeComponentController;->initialize(Ljava/lang/String;)Z

    move-result p1

    .line 52
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Crashlytics NDK initialization "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v2, "successful"

    goto :goto_0

    :cond_0
    const-string v2, "FAILED"

    .line 53
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->i(Ljava/lang/String;)V

    return p1
.end method

.method public writeBeginSession(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->controller:Lcom/google/firebase/crashlytics/ndk/NativeComponentController;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/ndk/NativeComponentController;->writeBeginSession(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public writeSessionApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 85
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->controller:Lcom/google/firebase/crashlytics/ndk/NativeComponentController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/firebase/crashlytics/ndk/NativeComponentController;->writeSessionApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public writeSessionDevice(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    .line 116
    iget-object v1, v0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->controller:Lcom/google/firebase/crashlytics/ndk/NativeComponentController;

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-interface/range {v1 .. v13}, Lcom/google/firebase/crashlytics/ndk/NativeComponentController;->writeSessionDevice(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeSessionOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->controller:Lcom/google/firebase/crashlytics/ndk/NativeComponentController;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/ndk/NativeComponentController;->writeSessionOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
