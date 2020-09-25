.class public final Lo/writeNonFatalEventsTo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/writeSessionPartsToSessionFile;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/writeSessionPartsToSessionFile<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lo/writeSessionOS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/writeSessionOS<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation
.end field

.field private final zzb:Lo/removeBackgroundStateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/removeBackgroundStateChangeListener<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/writeSessionOS;Lo/removeBackgroundStateChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeSessionOS<",
            "TResultT;TCallbackT;>;",
            "Lo/removeBackgroundStateChangeListener<",
            "TResultT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/writeNonFatalEventsTo;->zza:Lo/writeSessionOS;

    .line 3
    iput-object p2, p0, Lo/writeNonFatalEventsTo;->zzb:Lo/removeBackgroundStateChangeListener;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;",
            "Lcom/google/android/gms/common/api/Status;",
            ")V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lo/writeNonFatalEventsTo;->zzb:Lo/removeBackgroundStateChangeListener;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    .line 7
    iget-object p1, p0, Lo/writeNonFatalEventsTo;->zza:Lo/writeSessionOS;

    iget-object p1, p1, Lo/writeSessionOS;->zzt:Lo/setCustomResponseTimeMessage;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lo/writeNonFatalEventsTo;->zzb:Lo/removeBackgroundStateChangeListener;

    iget-object p2, p0, Lo/writeNonFatalEventsTo;->zza:Lo/writeSessionOS;

    iget-object p2, p2, Lo/writeSessionOS;->zzd:Lcom/google/firebase/FirebaseApp;

    .line 9
    invoke-static {p2}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p2

    iget-object v0, p0, Lo/writeNonFatalEventsTo;->zza:Lo/writeSessionOS;

    iget-object v0, v0, Lo/writeSessionOS;->zzt:Lo/setCustomResponseTimeMessage;

    .line 11
    iget-object v1, p0, Lo/writeNonFatalEventsTo;->zza:Lo/writeSessionOS;

    invoke-virtual {v1}, Lo/writeSessionOS;->zza()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reauthenticateWithCredential"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/writeNonFatalEventsTo;->zza:Lo/writeSessionOS;

    .line 12
    invoke-virtual {v1}, Lo/writeSessionOS;->zza()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reauthenticateWithCredentialWithData"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    iget-object v1, p0, Lo/writeNonFatalEventsTo;->zza:Lo/writeSessionOS;

    iget-object v1, v1, Lo/writeSessionOS;->zze:Lo/isRooted;

    .line 15
    :goto_1
    invoke-static {p2, v0, v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/firebase/auth/FirebaseAuth;Lo/setCustomResponseTimeMessage;Lo/isRooted;)Lcom/google/firebase/auth/FirebaseAuthMultiFactorException;

    move-result-object p2

    .line 2011
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, p2}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    .line 17
    :cond_2
    iget-object p1, p0, Lo/writeNonFatalEventsTo;->zza:Lo/writeSessionOS;

    iget-object p1, p1, Lo/writeSessionOS;->zzq:Lo/calculateUsedDiskSpaceInBytes;

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Lo/writeNonFatalEventsTo;->zzb:Lo/removeBackgroundStateChangeListener;

    iget-object v0, p0, Lo/writeNonFatalEventsTo;->zza:Lo/writeSessionOS;

    iget-object v0, v0, Lo/writeSessionOS;->zzq:Lo/calculateUsedDiskSpaceInBytes;

    iget-object v1, p0, Lo/writeNonFatalEventsTo;->zza:Lo/writeSessionOS;

    iget-object v1, v1, Lo/writeSessionOS;->zzr:Ljava/lang/String;

    iget-object v2, p0, Lo/writeNonFatalEventsTo;->zza:Lo/writeSessionOS;

    iget-object v2, v2, Lo/writeSessionOS;->zzs:Ljava/lang/String;

    .line 19
    invoke-static {p2, v0, v1, v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;Lo/calculateUsedDiskSpaceInBytes;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    .line 3011
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, p2}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    .line 21
    :cond_3
    iget-object p1, p0, Lo/writeNonFatalEventsTo;->zzb:Lo/removeBackgroundStateChangeListener;

    invoke-static {p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    .line 4011
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, p2}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void

    .line 5008
    :cond_4
    iget-object p2, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p2, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-void

    .line 1011
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "completion source cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
