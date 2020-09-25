.class final Lo/writeToCosFromFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isHandlingException;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lo/synthesizeSessionFile;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lo/writeToCosFromFile;->zza:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(Lo/copyStream$extraCallback;[Ljava/lang/Object;)V
    .locals 0

    .line 2
    iget-object p2, p0, Lo/writeToCosFromFile;->zza:Lcom/google/android/gms/common/api/Status;

    .line 3
    invoke-static {p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Lo/copyStream$extraCallback;->onVerificationFailed(Lcom/google/firebase/FirebaseException;)V

    return-void
.end method
