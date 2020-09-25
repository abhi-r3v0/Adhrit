.class public final Lo/isNullOrEmpty;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isNullOrEmpty$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/firebase/auth/FirebaseAuth;

.field private zzb:Ljava/lang/Long;

.field private zzc:Lo/copyStream$extraCallback;

.field private zzd:Ljava/util/concurrent/Executor;

.field private zze:Ljava/lang/String;

.field private zzf:Landroid/app/Activity;

.field private zzg:Lo/copyStream$onMessageChannelReady;

.field private zzh:Lo/closeOrLog;

.field private zzi:Lo/getResourcePackageName;

.field private zzj:Ljava/lang/String;

.field private zzk:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lo/copyStream$extraCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lo/copyStream$onMessageChannelReady;Lo/closeOrLog;Lo/getResourcePackageName;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/isNullOrEmpty;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    .line 3
    iput-object p5, p0, Lo/isNullOrEmpty;->zze:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lo/isNullOrEmpty;->zzb:Ljava/lang/Long;

    .line 5
    iput-object p3, p0, Lo/isNullOrEmpty;->zzc:Lo/copyStream$extraCallback;

    .line 6
    iput-object p6, p0, Lo/isNullOrEmpty;->zzf:Landroid/app/Activity;

    .line 7
    iput-object p4, p0, Lo/isNullOrEmpty;->zzd:Ljava/util/concurrent/Executor;

    .line 8
    iput-object p7, p0, Lo/isNullOrEmpty;->zzg:Lo/copyStream$onMessageChannelReady;

    .line 9
    iput-object p8, p0, Lo/isNullOrEmpty;->zzh:Lo/closeOrLog;

    .line 10
    iput-object p9, p0, Lo/isNullOrEmpty;->zzi:Lo/getResourcePackageName;

    .line 11
    iput-object p10, p0, Lo/isNullOrEmpty;->zzj:Ljava/lang/String;

    .line 12
    iput-boolean p11, p0, Lo/isNullOrEmpty;->zzk:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lo/copyStream$extraCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lo/copyStream$onMessageChannelReady;Lo/closeOrLog;Lo/getResourcePackageName;Ljava/lang/String;ZLo/CrashlyticsController$ReportUploaderFilesProvider;)V
    .locals 12

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v11, p11

    .line 28
    invoke-direct/range {v0 .. v11}, Lo/isNullOrEmpty;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lo/copyStream$extraCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lo/copyStream$onMessageChannelReady;Lo/closeOrLog;Lo/getResourcePackageName;Ljava/lang/String;Z)V

    return-void
.end method

.method public static newBuilder()Lo/isNullOrEmpty$onMessageChannelReady;
    .locals 2

    .line 26
    new-instance v0, Lo/isNullOrEmpty$onMessageChannelReady;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/isNullOrEmpty$onMessageChannelReady;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/auth/FirebaseAuth;)Lo/isNullOrEmpty$onMessageChannelReady;
    .locals 1

    .line 27
    new-instance v0, Lo/isNullOrEmpty$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/isNullOrEmpty$onMessageChannelReady;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/isNullOrEmpty;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/isNullOrEmpty;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Long;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/isNullOrEmpty;->zzb:Ljava/lang/Long;

    return-object v0
.end method

.method public final zzd()Lo/copyStream$extraCallback;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/isNullOrEmpty;->zzc:Lo/copyStream$extraCallback;

    return-object v0
.end method

.method public final zze()Ljava/util/concurrent/Executor;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/isNullOrEmpty;->zzd:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzf()Lo/copyStream$onMessageChannelReady;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/isNullOrEmpty;->zzg:Lo/copyStream$onMessageChannelReady;

    return-object v0
.end method

.method public final zzg()Lo/closeOrLog;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/isNullOrEmpty;->zzh:Lo/closeOrLog;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/isNullOrEmpty;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lo/isNullOrEmpty;->zzk:Z

    return v0
.end method

.method public final zzj()Landroid/app/Activity;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/isNullOrEmpty;->zzf:Landroid/app/Activity;

    return-object v0
.end method

.method public final zzk()Lo/getResourcePackageName;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/isNullOrEmpty;->zzi:Lo/getResourcePackageName;

    return-object v0
.end method

.method public final zzl()Z
    .locals 1

    .line 25
    iget-object v0, p0, Lo/isNullOrEmpty;->zzh:Lo/closeOrLog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
