.class public final Lo/CrashlyticsController$12;
.super Lo/hexify;
.source ""


# instance fields
.field private final zza:Lo/CrashlyticsController$$Lambda$1;


# direct methods
.method public constructor <init>(Lo/CrashlyticsController$$Lambda$1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/hexify;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lo/CrashlyticsController$12;->zza:Lo/CrashlyticsController$$Lambda$1;

    return-void

    .line 1002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final enroll(Lo/getDeviceState;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getDeviceState;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 10
    iget-object v0, p0, Lo/CrashlyticsController$12;->zza:Lo/CrashlyticsController$$Lambda$1;

    .line 12
    invoke-virtual {v0}, Lo/isRooted;->zzc()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lo/isRooted;Lo/getDeviceState;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 2002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getEnrolledFactors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/createCipher;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lo/CrashlyticsController$12;->zza:Lo/CrashlyticsController$$Lambda$1;

    invoke-virtual {v0}, Lo/CrashlyticsController$$Lambda$1;->zzj()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSession()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/closeOrLog;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lo/CrashlyticsController$12;->zza:Lo/CrashlyticsController$$Lambda$1;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lo/isRooted;->getIdToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lo/CrashlyticsController$14;

    invoke-direct {v1, p0}, Lo/CrashlyticsController$14;-><init>(Lo/CrashlyticsController$12;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback(Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final unenroll(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 3004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lo/CrashlyticsController$12;->zza:Lo/CrashlyticsController$$Lambda$1;

    .line 21
    invoke-virtual {v0}, Lo/isRooted;->zzc()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzd(Lo/isRooted;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 3005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final unenroll(Lo/createCipher;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/createCipher;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Lo/createCipher;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/hexify;->unenroll(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 3002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
