.class public final Lo/isNullOrEmpty$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isNullOrEmpty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final zza:Lcom/google/firebase/auth/FirebaseAuth;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/Long;

.field private zzd:Lo/copyStream$extraCallback;

.field private zze:Ljava/util/concurrent/Executor;

.field private zzf:Landroid/app/Activity;

.field private zzg:Lo/copyStream$onMessageChannelReady;

.field private zzh:Lo/closeOrLog;

.field private zzi:Lo/getResourcePackageName;

.field private zzj:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p1, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    return-void

    .line 1002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final build()Lo/isNullOrEmpty;
    .locals 15

    .line 22
    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    const-string v1, "null reference"

    if-eqz v0, :cond_15

    .line 23
    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzc:Ljava/lang/Long;

    if-eqz v0, :cond_14

    .line 24
    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzd:Lo/copyStream$extraCallback;

    if-eqz v0, :cond_13

    .line 25
    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zze:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lo/initializeAllApis;->onNavigationEvent:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zze:Ljava/util/concurrent/Executor;

    .line 27
    :cond_0
    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zze:Ljava/util/concurrent/Executor;

    sget-object v1, Lo/initializeAllApis;->onNavigationEvent:Ljava/util/concurrent/Executor;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzf:Landroid/app/Activity;

    if-nez v0, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot specify both an executor and an activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzc:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_12

    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzc:Ljava/lang/Long;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x78

    cmp-long v4, v0, v2

    if-gtz v4, :cond_12

    .line 33
    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzh:Lo/closeOrLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v3, "A phoneMultiFactorInfo must be set for second factor sign-in."

    const-string v4, "Given String is empty or null"

    if-eqz v0, :cond_8

    .line 35
    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzb:Ljava/lang/String;

    .line 4004
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 36
    iget-boolean v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzj:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 37
    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzi:Lo/getResourcePackageName;

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_4

    .line 5035
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4035
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot require sms validation without setting a multi-factor session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4005
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_8
    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzh:Lo/closeOrLog;

    if-eqz v0, :cond_9

    check-cast v0, Lo/writeTo;

    .line 40
    invoke-virtual {v0}, Lo/writeTo;->zzc()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_d

    .line 42
    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzb:Ljava/lang/String;

    .line 6004
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 43
    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzi:Lo/getResourcePackageName;

    if-nez v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    if-eqz v1, :cond_b

    goto :goto_4

    .line 6035
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid MultiFactorSession - use the getSession method in MultiFactorResolver to get a valid sign-in session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6005
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_d
    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzi:Lo/getResourcePackageName;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_3

    :cond_e
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_11

    .line 45
    iget-object v0, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzb:Ljava/lang/String;

    if-nez v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    if-eqz v1, :cond_10

    .line 46
    :goto_4
    new-instance v0, Lo/isNullOrEmpty;

    iget-object v3, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v4, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzc:Ljava/lang/Long;

    iget-object v5, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzd:Lo/copyStream$extraCallback;

    iget-object v6, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zze:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzb:Ljava/lang/String;

    iget-object v8, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzf:Landroid/app/Activity;

    iget-object v9, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzg:Lo/copyStream$onMessageChannelReady;

    iget-object v10, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzh:Lo/closeOrLog;

    iget-object v11, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzi:Lo/getResourcePackageName;

    const/4 v12, 0x0

    iget-boolean v13, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzj:Z

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lo/isNullOrEmpty;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lo/copyStream$extraCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lo/copyStream$onMessageChannelReady;Lo/closeOrLog;Lo/getResourcePackageName;Ljava/lang/String;ZLo/CrashlyticsController$ReportUploaderFilesProvider;)V

    return-object v0

    .line 8035
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A phone number must not be set for MFA sign-in. A PhoneMultiFactorInfo should be set instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7035
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We only support 0-120 seconds for sms-auto-retrieval timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4002
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3002
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2002
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireSmsValidation(Z)Lo/isNullOrEmpty$onMessageChannelReady;
    .locals 0

    .line 20
    iput-boolean p1, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzj:Z

    return-object p0
.end method

.method public final setActivity(Landroid/app/Activity;)Lo/isNullOrEmpty$onMessageChannelReady;
    .locals 0

    .line 12
    iput-object p1, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzf:Landroid/app/Activity;

    return-object p0
.end method

.method public final setCallbacks(Lo/copyStream$extraCallback;)Lo/isNullOrEmpty$onMessageChannelReady;
    .locals 0

    .line 10
    iput-object p1, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzd:Lo/copyStream$extraCallback;

    return-object p0
.end method

.method public final setExecutor(Ljava/util/concurrent/Executor;)Lo/isNullOrEmpty$onMessageChannelReady;
    .locals 0

    .line 14
    iput-object p1, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zze:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final setForceResendingToken(Lo/copyStream$onMessageChannelReady;)Lo/isNullOrEmpty$onMessageChannelReady;
    .locals 0

    .line 16
    iput-object p1, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzg:Lo/copyStream$onMessageChannelReady;

    return-object p0
.end method

.method public final setMultiFactorHint(Lo/getResourcePackageName;)Lo/isNullOrEmpty$onMessageChannelReady;
    .locals 0

    .line 6
    iput-object p1, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzi:Lo/getResourcePackageName;

    return-object p0
.end method

.method public final setMultiFactorSession(Lo/closeOrLog;)Lo/isNullOrEmpty$onMessageChannelReady;
    .locals 0

    .line 18
    iput-object p1, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzh:Lo/closeOrLog;

    return-object p0
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lo/isNullOrEmpty$onMessageChannelReady;
    .locals 0

    .line 4
    iput-object p1, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final setTimeout(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lo/isNullOrEmpty$onMessageChannelReady;
    .locals 3

    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/isNullOrEmpty$onMessageChannelReady;->zzc:Ljava/lang/Long;

    return-object p0
.end method
