.class public final Lo/access$800;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static zza:J = 0x36ee80L

.field private static final zzb:Lo/setResponseTimeExpectationsFetchInterval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setResponseTimeExpectationsFetchInterval<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lo/access$800;


# instance fields
.field private zzd:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation
.end field

.field private zze:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "firebaseAppName"

    const-string v1, "firebaseUserUid"

    const-string v2, "operation"

    const-string v3, "tenantId"

    const-string v4, "verifyAssertionRequest"

    const-string v5, "statusCode"

    const-string v6, "statusMessage"

    const-string v7, "timestamp"

    .line 106
    invoke-static/range {v0 .. v7}, Lo/setResponseTimeExpectationsFetchInterval;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lo/setResponseTimeExpectationsFetchInterval;

    move-result-object v0

    sput-object v0, Lo/access$800;->zzb:Lo/setResponseTimeExpectationsFetchInterval;

    .line 107
    new-instance v0, Lo/access$800;

    invoke-direct {v0}, Lo/access$800;-><init>()V

    sput-object v0, Lo/access$800;->zzc:Lo/access$800;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lo/access$800;->zze:J

    return-void
.end method

.method public static zza()Lo/access$800;
    .locals 1

    .line 4
    sget-object v0, Lo/access$800;->zzc:Lo/access$800;

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const-string v0, "com.google.firebase.auth.internal.ProcessDeathHelper"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 7024
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    const-string v1, "statusCode"

    .line 33
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8019
    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    const-string v0, "statusMessage"

    .line 34
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9001
    sget-object p1, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady$extraCallback;

    .line 35
    invoke-interface {p1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    const-string p1, "timestamp"

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 2

    const-string v0, "null reference"

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "com.google.firebase.auth.internal.ProcessDeathHelper"

    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "firebaseAppName"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 2002
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1002
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;Lo/isRooted;)V
    .locals 2

    const-string v0, "null reference"

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const-string v1, "com.google.firebase.auth.internal.ProcessDeathHelper"

    .line 16
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 17
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "firebaseAppName"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    invoke-virtual {p2}, Lo/isRooted;->getUid()Ljava/lang/String;

    move-result-object p1

    const-string p2, "firebaseUserUid"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 5002
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4002
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3002
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Landroid/content/Context;Lo/getCsatId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "com.google.firebase.auth.internal.ProcessDeathHelper"

    .line 22
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 6002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6003
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6004
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 6005
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 6016
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "verifyAssertionRequest"

    .line 25
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "operation"

    .line 26
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "tenantId"

    .line 27
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7001
    sget-object p1, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady$extraCallback;

    .line 28
    invoke-interface {p1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide p1

    const-string p3, "timestamp"

    invoke-interface {p0, p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static zza(Landroid/content/SharedPreferences;)V
    .locals 4

    .line 98
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 99
    sget-object v0, Lo/access$800;->zzb:Lo/setResponseTimeExpectationsFetchInterval;

    check-cast v0, Lo/setResponseTimeExpectationsFetchInterval;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Lo/setResponseTimeExpectationsFetchInterval;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 100
    invoke-interface {p0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 102
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "com.google.firebase.auth.internal.ProcessDeathHelper"

    .line 94
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lo/access$800;->zza(Landroid/content/SharedPreferences;)V

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lo/access$800;->zzd:Lcom/google/android/gms/tasks/Task;

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Lo/access$800;->zze:J

    return-void

    .line 14002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 11

    if-eqz p1, :cond_e

    .line 39
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.google.firebase.auth.internal.ProcessDeathHelper"

    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, ""

    const-string v3, "firebaseAppName"

    .line 42
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb()Lcom/google/firebase/FirebaseApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string v3, "verifyAssertionRequest"

    .line 45
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v5, 0x0

    const-string v7, "timestamp"

    if-eqz v4, :cond_c

    .line 47
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/getCsatId;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v8, 0x0

    if-nez v3, :cond_1

    move-object v3, v8

    goto :goto_0

    :cond_1
    const/16 v9, 0xa

    .line 11007
    invoke-static {v3, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 10029
    :goto_0
    invoke-static {v3, v4}, Lo/CategoryResult;->ICustomTabsCallback([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v3

    .line 48
    check-cast v3, Lo/getCsatId;

    const-string v4, "operation"

    .line 49
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "tenantId"

    .line 50
    invoke-interface {v0, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "firebaseUserUid"

    .line 51
    invoke-interface {v0, v10, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-interface {v0, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lo/access$800;->zze:J

    if-eqz v9, :cond_2

    .line 54
    invoke-virtual {p1, v9}, Lcom/google/firebase/auth/FirebaseAuth;->setTenantId(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3, v9}, Lo/getCsatId;->extraCallback(Ljava/lang/String;)Lo/getCsatId;

    :cond_2
    const/4 v5, -0x1

    .line 56
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v7, -0x6de69c8e

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v6, v7, :cond_5

    const v7, -0x11179c9c

    if-eq v6, v7, :cond_4

    const v7, 0x6731f73d

    if-eq v6, v7, :cond_3

    goto :goto_1

    :cond_3
    const-string v6, "com.google.firebase.auth.internal.SIGN_IN"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_4
    const-string v1, "com.google.firebase.auth.internal.LINK"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const-string v1, "com.google.firebase.auth.internal.REAUTHENTICATE"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_b

    if-eq v1, v10, :cond_9

    if-eq v1, v9, :cond_7

    .line 75
    iput-object v8, p0, Lo/access$800;->zzd:Lcom/google/android/gms/tasks/Task;

    goto :goto_3

    .line 68
    :cond_7
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lo/isRooted;

    move-result-object v1

    invoke-virtual {v1}, Lo/isRooted;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 70
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lo/isRooted;

    move-result-object v1

    .line 71
    invoke-static {v3}, Lo/CrashlyticsController$4;->zza(Lo/getCsatId;)Lo/CrashlyticsController$4;

    move-result-object v2

    .line 72
    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Lo/isRooted;Lo/calculateUsedDiskSpaceInBytes;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lo/access$800;->zzd:Lcom/google/android/gms/tasks/Task;

    goto :goto_3

    .line 73
    :cond_8
    iput-object v8, p0, Lo/access$800;->zzd:Lcom/google/android/gms/tasks/Task;

    goto :goto_3

    .line 61
    :cond_9
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lo/isRooted;

    move-result-object v1

    invoke-virtual {v1}, Lo/isRooted;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 63
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lo/isRooted;

    move-result-object v1

    .line 64
    invoke-static {v3}, Lo/CrashlyticsController$4;->zza(Lo/getCsatId;)Lo/CrashlyticsController$4;

    move-result-object v2

    .line 65
    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lo/isRooted;Lo/calculateUsedDiskSpaceInBytes;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lo/access$800;->zzd:Lcom/google/android/gms/tasks/Task;

    goto :goto_3

    .line 66
    :cond_a
    iput-object v8, p0, Lo/access$800;->zzd:Lcom/google/android/gms/tasks/Task;

    goto :goto_3

    .line 58
    :cond_b
    invoke-static {v3}, Lo/CrashlyticsController$4;->zza(Lo/getCsatId;)Lo/CrashlyticsController$4;

    move-result-object v1

    .line 59
    invoke-virtual {p1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lo/calculateUsedDiskSpaceInBytes;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lo/access$800;->zzd:Lcom/google/android/gms/tasks/Task;

    .line 76
    :goto_3
    invoke-static {v0}, Lo/access$800;->zza(Landroid/content/SharedPreferences;)V

    return-void

    :cond_c
    const-string p1, "statusCode"

    .line 78
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x42a6

    .line 80
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "statusMessage"

    .line 81
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 83
    invoke-interface {v0, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lo/access$800;->zze:J

    .line 84
    invoke-static {v0}, Lo/access$800;->zza(Landroid/content/SharedPreferences;)V

    .line 86
    invoke-static {v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onNavigationEvent;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 12004
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    .line 12005
    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    .line 86
    iput-object v0, p0, Lo/access$800;->zzd:Lcom/google/android/gms/tasks/Task;

    :cond_d
    return-void

    .line 10002
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation

    .line 13001
    sget-object v0, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady$extraCallback;

    .line 89
    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    iget-wide v2, p0, Lo/access$800;->zze:J

    sub-long/2addr v0, v2

    .line 90
    sget-wide v2, Lo/access$800;->zza:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 91
    iget-object v0, p0, Lo/access$800;->zzd:Lcom/google/android/gms/tasks/Task;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
