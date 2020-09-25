.class public Lo/calculateFreeRamInBytes$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/calculateFreeRamInBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Z

.field private zze:Ljava/lang/String;

.field private zzf:Z

.field private zzg:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzf:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/CrashlyticsController$15;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/calculateFreeRamInBytes$onMessageChannelReady;-><init>()V

    return-void
.end method

.method static synthetic zza(Lo/calculateFreeRamInBytes$onMessageChannelReady;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zza:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzb(Lo/calculateFreeRamInBytes$onMessageChannelReady;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzc(Lo/calculateFreeRamInBytes$onMessageChannelReady;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzd(Lo/calculateFreeRamInBytes$onMessageChannelReady;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzd:Z

    return p0
.end method

.method static synthetic zze(Lo/calculateFreeRamInBytes$onMessageChannelReady;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zze:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzf(Lo/calculateFreeRamInBytes$onMessageChannelReady;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzf:Z

    return p0
.end method

.method static synthetic zzg(Lo/calculateFreeRamInBytes$onMessageChannelReady;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzg:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lo/calculateFreeRamInBytes;
    .locals 2

    .line 20
    iget-object v0, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zza:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lo/calculateFreeRamInBytes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/calculateFreeRamInBytes;-><init>(Lo/calculateFreeRamInBytes$onMessageChannelReady;Lo/CrashlyticsController$15;)V

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build ActionCodeSettings with null URL. Call #setUrl(String) before calling build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDynamicLinkDomain()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public getHandleCodeInApp()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzf:Z

    return v0
.end method

.method public getIOSBundleId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroidPackageName(Ljava/lang/String;ZLjava/lang/String;)Lo/calculateFreeRamInBytes$onMessageChannelReady;
    .locals 0

    .line 10
    iput-object p1, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzc:Ljava/lang/String;

    .line 11
    iput-boolean p2, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzd:Z

    .line 12
    iput-object p3, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public setDynamicLinkDomain(Ljava/lang/String;)Lo/calculateFreeRamInBytes$onMessageChannelReady;
    .locals 0

    .line 18
    iput-object p1, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public setHandleCodeInApp(Z)Lo/calculateFreeRamInBytes$onMessageChannelReady;
    .locals 0

    .line 15
    iput-boolean p1, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzf:Z

    return-object p0
.end method

.method public setIOSBundleId(Ljava/lang/String;)Lo/calculateFreeRamInBytes$onMessageChannelReady;
    .locals 0

    .line 8
    iput-object p1, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lo/calculateFreeRamInBytes$onMessageChannelReady;
    .locals 0

    .line 5
    iput-object p1, p0, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zza:Ljava/lang/String;

    return-object p0
.end method
