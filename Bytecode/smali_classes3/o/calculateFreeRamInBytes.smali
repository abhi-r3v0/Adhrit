.class public Lo/calculateFreeRamInBytes;
.super Lo/getTags;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/calculateFreeRamInBytes$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/calculateFreeRamInBytes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Z

.field private final zzf:Ljava/lang/String;

.field private final zzg:Z

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lo/CrashlyticsController$20;

    invoke-direct {v0}, Lo/CrashlyticsController$20;-><init>()V

    sput-object v0, Lo/calculateFreeRamInBytes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/calculateFreeRamInBytes;->zza:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/calculateFreeRamInBytes;->zzb:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lo/calculateFreeRamInBytes;->zzc:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lo/calculateFreeRamInBytes;->zzd:Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Lo/calculateFreeRamInBytes;->zze:Z

    .line 7
    iput-object p6, p0, Lo/calculateFreeRamInBytes;->zzf:Ljava/lang/String;

    .line 8
    iput-boolean p7, p0, Lo/calculateFreeRamInBytes;->zzg:Z

    .line 9
    iput-object p8, p0, Lo/calculateFreeRamInBytes;->zzh:Ljava/lang/String;

    .line 10
    iput p9, p0, Lo/calculateFreeRamInBytes;->zzi:I

    .line 11
    iput-object p10, p0, Lo/calculateFreeRamInBytes;->zzj:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lo/calculateFreeRamInBytes$onMessageChannelReady;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 14
    invoke-static {p1}, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zza(Lo/calculateFreeRamInBytes$onMessageChannelReady;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/calculateFreeRamInBytes;->zza:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzb(Lo/calculateFreeRamInBytes$onMessageChannelReady;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/calculateFreeRamInBytes;->zzb:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lo/calculateFreeRamInBytes;->zzc:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzc(Lo/calculateFreeRamInBytes$onMessageChannelReady;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/calculateFreeRamInBytes;->zzd:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzd(Lo/calculateFreeRamInBytes$onMessageChannelReady;)Z

    move-result v0

    iput-boolean v0, p0, Lo/calculateFreeRamInBytes;->zze:Z

    .line 21
    invoke-static {p1}, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zze(Lo/calculateFreeRamInBytes$onMessageChannelReady;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/calculateFreeRamInBytes;->zzf:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzf(Lo/calculateFreeRamInBytes$onMessageChannelReady;)Z

    move-result v0

    iput-boolean v0, p0, Lo/calculateFreeRamInBytes;->zzg:Z

    .line 23
    invoke-static {p1}, Lo/calculateFreeRamInBytes$onMessageChannelReady;->zzg(Lo/calculateFreeRamInBytes$onMessageChannelReady;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/calculateFreeRamInBytes;->zzj:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lo/calculateFreeRamInBytes$onMessageChannelReady;Lo/CrashlyticsController$15;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lo/calculateFreeRamInBytes;-><init>(Lo/calculateFreeRamInBytes$onMessageChannelReady;)V

    return-void
.end method

.method public static newBuilder()Lo/calculateFreeRamInBytes$onMessageChannelReady;
    .locals 2

    .line 40
    new-instance v0, Lo/calculateFreeRamInBytes$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/calculateFreeRamInBytes$onMessageChannelReady;-><init>(Lo/CrashlyticsController$15;)V

    return-object v0
.end method

.method public static zza()Lo/calculateFreeRamInBytes;
    .locals 3

    .line 25
    new-instance v0, Lo/calculateFreeRamInBytes;

    new-instance v1, Lo/calculateFreeRamInBytes$onMessageChannelReady;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/calculateFreeRamInBytes$onMessageChannelReady;-><init>(Lo/CrashlyticsController$15;)V

    invoke-direct {v0, v1}, Lo/calculateFreeRamInBytes;-><init>(Lo/calculateFreeRamInBytes$onMessageChannelReady;)V

    return-object v0
.end method


# virtual methods
.method public canHandleCodeInApp()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lo/calculateFreeRamInBytes;->zzg:Z

    return v0
.end method

.method public getAndroidInstallApp()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lo/calculateFreeRamInBytes;->zze:Z

    return v0
.end method

.method public getAndroidMinimumVersion()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/calculateFreeRamInBytes;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidPackageName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/calculateFreeRamInBytes;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getIOSBundle()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/calculateFreeRamInBytes;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/calculateFreeRamInBytes;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const p2, -0xb0bb

    .line 2008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 44
    invoke-virtual {p0}, Lo/calculateFreeRamInBytes;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 45
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 47
    invoke-virtual {p0}, Lo/calculateFreeRamInBytes;->getIOSBundle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 48
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 50
    iget-object v1, p0, Lo/calculateFreeRamInBytes;->zzc:Ljava/lang/String;

    const/4 v2, 0x3

    .line 52
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 54
    invoke-virtual {p0}, Lo/calculateFreeRamInBytes;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 55
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 57
    invoke-virtual {p0}, Lo/calculateFreeRamInBytes;->getAndroidInstallApp()Z

    move-result v1

    const/4 v3, 0x5

    .line 2020
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2021
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x6

    .line 60
    invoke-virtual {p0}, Lo/calculateFreeRamInBytes;->getAndroidMinimumVersion()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {p1, v1, v3, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 63
    invoke-virtual {p0}, Lo/calculateFreeRamInBytes;->canHandleCodeInApp()Z

    move-result v1

    const/4 v3, 0x7

    .line 3020
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3021
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x8

    .line 66
    iget-object v3, p0, Lo/calculateFreeRamInBytes;->zzh:Ljava/lang/String;

    .line 68
    invoke-static {p1, v1, v3, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 70
    iget v1, p0, Lo/calculateFreeRamInBytes;->zzi:I

    const/16 v3, 0x9

    .line 3039
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3040
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0xa

    .line 73
    iget-object v3, p0, Lo/calculateFreeRamInBytes;->zzj:Ljava/lang/String;

    .line 75
    invoke-static {p1, v1, v3, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 5011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v1, p2, v0

    sub-int/2addr v0, v2

    .line 5013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lo/calculateFreeRamInBytes;->zzh:Ljava/lang/String;

    return-void
.end method

.method public final zza(Lo/getReadUpto;)V
    .locals 0

    .line 36
    invoke-virtual {p1}, Lo/getReadUpto;->onPostMessage()I

    move-result p1

    iput p1, p0, Lo/calculateFreeRamInBytes;->zzi:I

    return-void
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/calculateFreeRamInBytes;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/calculateFreeRamInBytes;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()I
    .locals 1

    .line 38
    iget v0, p0, Lo/calculateFreeRamInBytes;->zzi:I

    return v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/calculateFreeRamInBytes;->zzj:Ljava/lang/String;

    return-object v0
.end method
