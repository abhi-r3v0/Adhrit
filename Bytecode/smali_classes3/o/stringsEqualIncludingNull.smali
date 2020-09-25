.class public Lo/stringsEqualIncludingNull;
.super Lo/calculateUsedDiskSpaceInBytes;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/stringsEqualIncludingNull;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lo/CrashlyticsController$21;

    invoke-direct {v0}, Lo/CrashlyticsController$21;-><init>()V

    sput-object v0, Lo/stringsEqualIncludingNull;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/calculateUsedDiskSpaceInBytes;-><init>()V

    .line 1004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Given String is empty or null"

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Lo/stringsEqualIncludingNull;->zza:Ljava/lang/String;

    .line 2004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iput-object p2, p0, Lo/stringsEqualIncludingNull;->zzb:Ljava/lang/String;

    return-void

    .line 2005
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1005
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza(Lo/stringsEqualIncludingNull;Ljava/lang/String;)Lo/getCsatId;
    .locals 11

    if-eqz p0, :cond_0

    .line 8
    new-instance v10, Lo/getCsatId;

    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lo/stringsEqualIncludingNull;->zza:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lo/calculateUsedDiskSpaceInBytes;->getProvider()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 12
    iget-object v5, p0, Lo/stringsEqualIncludingNull;->zzb:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v7, p1

    .line 13
    invoke-direct/range {v0 .. v9}, Lo/getCsatId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 3002
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getProvider()Ljava/lang/String;
    .locals 1

    const-string v0, "twitter.com"

    return-object v0
.end method

.method public getSignInMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "twitter.com"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const p2, -0xb0bb

    .line 4008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 4009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 19
    iget-object v1, p0, Lo/stringsEqualIncludingNull;->zza:Ljava/lang/String;

    const/4 v2, 0x1

    .line 21
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 23
    iget-object v1, p0, Lo/stringsEqualIncludingNull;->zzb:Ljava/lang/String;

    const/4 v2, 0x2

    .line 25
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 5011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v1, p2, v0

    add-int/lit8 v0, v0, -0x4

    .line 5013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public final zza()Lo/calculateUsedDiskSpaceInBytes;
    .locals 3

    .line 15
    new-instance v0, Lo/stringsEqualIncludingNull;

    iget-object v1, p0, Lo/stringsEqualIncludingNull;->zza:Ljava/lang/String;

    iget-object v2, p0, Lo/stringsEqualIncludingNull;->zzb:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lo/stringsEqualIncludingNull;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
