.class public Lo/CrashlyticsController$4;
.super Lo/getStringsFileValue;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/CrashlyticsController$4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lo/getCsatId;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lo/CrashlyticsController$22;

    invoke-direct {v0}, Lo/CrashlyticsController$22;-><init>()V

    sput-object v0, Lo/CrashlyticsController$4;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/getCsatId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getStringsFileValue;-><init>()V

    .line 2
    iput-object p1, p0, Lo/CrashlyticsController$4;->zza:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/CrashlyticsController$4;->zzb:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lo/CrashlyticsController$4;->zzc:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lo/CrashlyticsController$4;->zzd:Lo/getCsatId;

    .line 6
    iput-object p5, p0, Lo/CrashlyticsController$4;->zze:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lo/CrashlyticsController$4;->zzf:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lo/CrashlyticsController$4;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/CrashlyticsController$4;
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, p1, p2, v0, v0}, Lo/CrashlyticsController$4;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/CrashlyticsController$4;

    move-result-object p0

    return-object p0
.end method

.method static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/CrashlyticsController$4;
    .locals 9

    .line 2007
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify an idToken or an accessToken."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_1
    :goto_0
    new-instance v8, Lo/CrashlyticsController$4;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lo/CrashlyticsController$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/getCsatId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 2008
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify a non-empty providerId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/CrashlyticsController$4;
    .locals 9

    .line 1007
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify an idToken or an accessToken."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_1
    :goto_0
    new-instance v8, Lo/CrashlyticsController$4;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lo/CrashlyticsController$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/getCsatId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 1008
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify a non-empty providerId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Lo/getCsatId;)Lo/CrashlyticsController$4;
    .locals 9

    if-eqz p0, :cond_0

    .line 16
    new-instance v8, Lo/CrashlyticsController$4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lo/CrashlyticsController$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/getCsatId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 1011
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Must specify a non-null webSignInCredential"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Lo/CrashlyticsController$4;Ljava/lang/String;)Lo/getCsatId;
    .locals 11

    if-eqz p0, :cond_1

    .line 28
    iget-object v0, p0, Lo/CrashlyticsController$4;->zzd:Lo/getCsatId;

    if-eqz v0, :cond_0

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lo/getCsatId;

    .line 34
    invoke-virtual {p0}, Lo/getStringsFileValue;->getIdToken()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p0}, Lo/getStringsFileValue;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {p0}, Lo/calculateUsedDiskSpaceInBytes;->getProvider()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 37
    invoke-virtual {p0}, Lo/getStringsFileValue;->getSecret()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 38
    iget-object v9, p0, Lo/CrashlyticsController$4;->zze:Ljava/lang/String;

    .line 40
    iget-object v10, p0, Lo/CrashlyticsController$4;->zzg:Ljava/lang/String;

    move-object v1, v0

    move-object v8, p1

    .line 41
    invoke-direct/range {v1 .. v10}, Lo/getCsatId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3002
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/CrashlyticsController$4;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/CrashlyticsController$4;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/CrashlyticsController$4;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/CrashlyticsController$4;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public getSignInMethod()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/CrashlyticsController$4;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const v0, -0xb0bb

    .line 4008
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 4009
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 47
    invoke-virtual {p0}, Lo/calculateUsedDiskSpaceInBytes;->getProvider()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 48
    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 50
    invoke-virtual {p0}, Lo/getStringsFileValue;->getIdToken()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 51
    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 53
    invoke-virtual {p0}, Lo/getStringsFileValue;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 54
    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 56
    iget-object v2, p0, Lo/CrashlyticsController$4;->zzd:Lo/getCsatId;

    const/4 v3, 0x4

    .line 58
    invoke-static {p1, v3, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 60
    iget-object p2, p0, Lo/CrashlyticsController$4;->zze:Ljava/lang/String;

    const/4 v2, 0x5

    .line 62
    invoke-static {p1, v2, p2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 64
    invoke-virtual {p0}, Lo/getStringsFileValue;->getSecret()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x6

    .line 65
    invoke-static {p1, v2, p2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 67
    iget-object p2, p0, Lo/CrashlyticsController$4;->zzg:Ljava/lang/String;

    const/4 v2, 0x7

    .line 69
    invoke-static {p1, v2, p2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 5011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v0, p2, v1

    sub-int/2addr v1, v3

    .line 5013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5014
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public final zza()Lo/calculateUsedDiskSpaceInBytes;
    .locals 9

    .line 43
    new-instance v8, Lo/CrashlyticsController$4;

    iget-object v1, p0, Lo/CrashlyticsController$4;->zza:Ljava/lang/String;

    iget-object v2, p0, Lo/CrashlyticsController$4;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lo/CrashlyticsController$4;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lo/CrashlyticsController$4;->zzd:Lo/getCsatId;

    iget-object v5, p0, Lo/CrashlyticsController$4;->zze:Ljava/lang/String;

    iget-object v6, p0, Lo/CrashlyticsController$4;->zzf:Ljava/lang/String;

    iget-object v7, p0, Lo/CrashlyticsController$4;->zzg:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/CrashlyticsController$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/getCsatId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method
