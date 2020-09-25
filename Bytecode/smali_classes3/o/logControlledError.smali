.class public Lo/logControlledError;
.super Lo/calculateUsedDiskSpaceInBytes;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/logControlledError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lo/CrashlyticsController$3;

    invoke-direct {v0}, Lo/CrashlyticsController$3;-><init>()V

    sput-object v0, Lo/logControlledError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Lo/logControlledError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/calculateUsedDiskSpaceInBytes;-><init>()V

    .line 1004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iput-object p1, p0, Lo/logControlledError;->zza:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create an EmailAuthCredential without a password or emailLink."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iput-object p2, p0, Lo/logControlledError;->zzb:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lo/logControlledError;->zzc:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lo/logControlledError;->zzd:Ljava/lang/String;

    .line 8
    iput-boolean p5, p0, Lo/logControlledError;->zze:Z

    return-void

    .line 1005
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given String is empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza(Ljava/lang/String;)Z
    .locals 2

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 27
    :cond_0
    invoke-static {p0}, Lo/sha256;->parseLink(Ljava/lang/String;)Lo/sha256;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 29
    invoke-virtual {p0}, Lo/sha256;->getOperation()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public getProvider()Ljava/lang/String;
    .locals 1

    const-string v0, "password"

    return-object v0
.end method

.method public getSignInMethod()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/logControlledError;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "password"

    return-object v0

    :cond_0
    const-string v0, "emailLink"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const p2, -0xb0bb

    .line 2008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 35
    iget-object v1, p0, Lo/logControlledError;->zza:Ljava/lang/String;

    const/4 v2, 0x1

    .line 37
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 39
    iget-object v1, p0, Lo/logControlledError;->zzb:Ljava/lang/String;

    const/4 v2, 0x2

    .line 41
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 43
    iget-object v1, p0, Lo/logControlledError;->zzc:Ljava/lang/String;

    const/4 v2, 0x3

    .line 45
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 47
    iget-object v1, p0, Lo/logControlledError;->zzd:Ljava/lang/String;

    const/4 v2, 0x4

    .line 49
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 51
    iget-boolean p2, p0, Lo/logControlledError;->zze:Z

    const/4 v1, 0x5

    .line 2020
    invoke-static {p1, v1, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2021
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v1, p2, v0

    sub-int/2addr v0, v2

    .line 4013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public final zza()Lo/calculateUsedDiskSpaceInBytes;
    .locals 7

    .line 31
    new-instance v6, Lo/logControlledError;

    iget-object v1, p0, Lo/logControlledError;->zza:Ljava/lang/String;

    iget-object v2, p0, Lo/logControlledError;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lo/logControlledError;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lo/logControlledError;->zzd:Ljava/lang/String;

    iget-boolean v5, p0, Lo/logControlledError;->zze:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/logControlledError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public final zza(Lo/isRooted;)Lo/logControlledError;
    .locals 0

    .line 17
    invoke-virtual {p1}, Lo/isRooted;->zze()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/logControlledError;->zzd:Ljava/lang/String;

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lo/logControlledError;->zze:Z

    return-object p0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/logControlledError;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/logControlledError;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/logControlledError;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/logControlledError;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lo/logControlledError;->zze:Z

    return v0
.end method

.method public final zzg()Z
    .locals 1

    .line 24
    iget-object v0, p0, Lo/logControlledError;->zzc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
