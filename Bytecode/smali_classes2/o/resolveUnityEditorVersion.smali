.class public abstract Lo/resolveUnityEditorVersion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/getMappingFileId;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static zza:Lo/getFarmBackgroundImage;


# instance fields
.field private zzb:Lo/getAppIconResourceId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getAppIconResourceId<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lo/getFarmBackgroundImage;

    const-string v1, "FirebaseAuth: "

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiChannelGoogleApi"

    invoke-direct {v0, v2, v1}, Lo/getFarmBackgroundImage;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/resolveUnityEditorVersion;->zza:Lo/getFarmBackgroundImage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza(Ljava/lang/String;)Lo/setPaymentDueDateWeaklyTyped;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/setPaymentDueDateWeaklyTyped<",
            "TT;>;"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lo/resolveUnityEditorVersion;->zzc()Lo/getAppIconResourceId;

    move-result-object v0

    .line 22
    iget-object v1, v0, Lo/getAppIconResourceId;->zzc:Lo/CommonUtils$1;

    invoke-interface {v1, p1}, Lo/CommonUtils$1;->zza(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    sget-object p1, Lo/resolveUnityEditorVersion;->zza:Lo/getFarmBackgroundImage;

    iget-object v1, v0, Lo/getAppIconResourceId;->zzb:Lo/setPaymentDueDateWeaklyTyped;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "getGoogleApiForMethod() returned Fallback: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1040
    iget-object v2, p1, Lo/getFarmBackgroundImage;->onPostMessage:Ljava/lang/String;

    .line 1054
    iget-object p1, p1, Lo/getFarmBackgroundImage;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1040
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object p1, v0, Lo/getAppIconResourceId;->zzb:Lo/setPaymentDueDateWeaklyTyped;

    return-object p1

    .line 25
    :cond_0
    sget-object p1, Lo/resolveUnityEditorVersion;->zza:Lo/getFarmBackgroundImage;

    iget-object v1, v0, Lo/getAppIconResourceId;->zza:Lo/setPaymentDueDateWeaklyTyped;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "getGoogleApiForMethod() returned Gms: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2040
    iget-object v2, p1, Lo/getFarmBackgroundImage;->onPostMessage:Ljava/lang/String;

    .line 2054
    iget-object p1, p1, Lo/getFarmBackgroundImage;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2040
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, v0, Lo/getAppIconResourceId;->zza:Lo/setPaymentDueDateWeaklyTyped;

    return-object p1
.end method

.method private static zzb()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x445b

    const-string v2, "Unable to connect to GoogleApi instance - Google Play Services may be unavailable"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 19
    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object v0

    .line 1004
    new-instance v1, Lo/getProjectId;

    invoke-direct {v1}, Lo/getProjectId;-><init>()V

    .line 1005
    invoke-virtual {v1, v0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-object v1
.end method

.method private final zzc()Lo/getAppIconResourceId;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getAppIconResourceId<",
            "TT;>;"
        }
    .end annotation

    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lo/resolveUnityEditorVersion;->zzb:Lo/getAppIconResourceId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 29
    :try_start_1
    invoke-virtual {p0}, Lo/resolveUnityEditorVersion;->zza()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAppIconResourceId;

    iput-object v0, p0, Lo/resolveUnityEditorVersion;->zzb:Lo/getAppIconResourceId;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 32
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "There was an error while initializing the connection to Google Play Services: "

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_1
    :goto_1
    iget-object v0, p0, Lo/resolveUnityEditorVersion;->zzb:Lo/getAppIconResourceId;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 35
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final zza(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            "A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            ">(",
            "Lo/openKeyboard<",
            "TA;TResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lo/openKeyboard;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/resolveUnityEditorVersion;->zza(Ljava/lang/String;)Lo/setPaymentDueDateWeaklyTyped;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lo/resolveUnityEditorVersion;->zzb()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lo/setPaymentDueDateWeaklyTyped;->getApiOptions()Lo/setCustomAmount$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/getMappingFileId;

    .line 6
    iget-boolean v1, v1, Lo/getMappingFileId;->zza:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {p1}, Lo/openKeyboard;->zzd()Lo/openKeyboard;

    .line 9
    :cond_1
    invoke-interface {p1}, Lo/openKeyboard;->zzb()Lo/isFabrikEnabled;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setPaymentDueDateWeaklyTyped;->doRead(Lo/isFabrikEnabled;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method abstract zza()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lo/getAppIconResourceId<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public final zzb(Lo/openKeyboard;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            "A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            ">(",
            "Lo/openKeyboard<",
            "TA;TResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TResultT;>;"
        }
    .end annotation

    .line 10
    invoke-interface {p1}, Lo/openKeyboard;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/resolveUnityEditorVersion;->zza(Ljava/lang/String;)Lo/setPaymentDueDateWeaklyTyped;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12
    invoke-static {}, Lo/resolveUnityEditorVersion;->zzb()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {v0}, Lo/setPaymentDueDateWeaklyTyped;->getApiOptions()Lo/setCustomAmount$onPostMessage;

    move-result-object v1

    check-cast v1, Lo/getMappingFileId;

    .line 14
    iget-boolean v1, v1, Lo/getMappingFileId;->zza:Z

    if-eqz v1, :cond_1

    .line 16
    invoke-interface {p1}, Lo/openKeyboard;->zzd()Lo/openKeyboard;

    .line 17
    :cond_1
    invoke-interface {p1}, Lo/openKeyboard;->zzb()Lo/isFabrikEnabled;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setPaymentDueDateWeaklyTyped;->doWrite(Lo/isFabrikEnabled;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
