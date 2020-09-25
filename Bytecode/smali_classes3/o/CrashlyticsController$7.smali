.class public final Lo/CrashlyticsController$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCreateReportSpiCall;


# instance fields
.field private final synthetic zza:Lo/isRooted;

.field private final synthetic zzb:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lo/isRooted;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/CrashlyticsController$7;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lo/CrashlyticsController$7;->zza:Lo/isRooted;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/CrashlyticsController$7;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zze(Lcom/google/firebase/auth/FirebaseAuth;)Lo/isRooted;

    move-result-object v0

    invoke-virtual {v0}, Lo/isRooted;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsController$7;->zza:Lo/isRooted;

    invoke-virtual {v1}, Lo/isRooted;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lo/CrashlyticsController$7;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza()V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1024
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    const/16 v1, 0x4273

    if-eq v0, v1, :cond_0

    .line 2024
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    const/16 v1, 0x427d

    if-eq v0, v1, :cond_0

    .line 3024
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    const/16 v0, 0x426d

    if-ne p1, v0, :cond_1

    .line 8
    :cond_0
    iget-object p1, p0, Lo/CrashlyticsController$7;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    :cond_1
    return-void
.end method
