.class final Lcom/google/firebase/auth/FirebaseAuth$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/logAnalyticsAppExceptionEvent;
.implements Lo/access$1100;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/FirebaseAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 2024
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    const/16 v1, 0x4273

    if-eq v0, v1, :cond_0

    .line 3024
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    const/16 v1, 0x427d

    if-eq v0, v1, :cond_0

    .line 4024
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    const/16 v1, 0x426d

    if-eq v0, v1, :cond_0

    .line 5024
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    const/16 v0, 0x42c3

    if-ne p1, v0, :cond_1

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    :cond_1
    return-void
.end method

.method public final zza(Lo/getColumnConstraint;Lo/isRooted;)V
    .locals 2

    const-string v0, "null reference"

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Lo/isRooted;->zza(Lo/getColumnConstraint;)V

    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth$extraCallback;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lo/isRooted;Lo/getColumnConstraint;ZZ)V

    return-void

    .line 2002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1002
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
