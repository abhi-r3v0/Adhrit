.class public final Lo/CrashlyticsController$8$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/logAnalyticsAppExceptionEvent;
.implements Lo/access$1100;


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/CrashlyticsController$8$1;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1024
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    const/16 v0, 0x4273

    if-eq p1, v0, :cond_0

    const/16 v0, 0x427d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x426d

    if-ne p1, v0, :cond_1

    .line 6
    :cond_0
    iget-object p1, p0, Lo/CrashlyticsController$8$1;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    :cond_1
    return-void
.end method

.method public final zza(Lo/getColumnConstraint;Lo/isRooted;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/CrashlyticsController$8$1;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lo/isRooted;Lo/getColumnConstraint;ZZ)V

    return-void
.end method
