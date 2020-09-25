.class public final Lo/access$2100;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isLoggingEnabled;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/access$2100;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lo/CrashlyticsController$$Lambda$1;

.field private zzb:Lo/access$1800;

.field private zzc:Lo/CrashlyticsController$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lo/access$2200;

    invoke-direct {v0}, Lo/access$2200;-><init>()V

    sput-object v0, Lo/access$2100;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lo/CrashlyticsController$$Lambda$1;)V
    .locals 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 7
    move-object v0, p1

    check-cast v0, Lo/CrashlyticsController$$Lambda$1;

    iput-object v0, p0, Lo/access$2100;->zza:Lo/CrashlyticsController$$Lambda$1;

    .line 8
    invoke-virtual {v0}, Lo/CrashlyticsController$$Lambda$1;->zzg()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lo/access$2100;->zzb:Lo/access$1800;

    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/access$2400;

    invoke-virtual {v2}, Lo/access$2400;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    new-instance v2, Lo/access$1800;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/access$2400;

    invoke-virtual {v3}, Lo/access$2400;->getProviderId()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/access$2400;

    invoke-virtual {v4}, Lo/access$2400;->zza()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p1}, Lo/CrashlyticsController$$Lambda$1;->zzh()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lo/access$1800;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lo/access$2100;->zzb:Lo/access$1800;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lo/access$2100;->zzb:Lo/access$1800;

    if-nez v0, :cond_2

    .line 18
    new-instance v0, Lo/access$1800;

    invoke-virtual {p1}, Lo/CrashlyticsController$$Lambda$1;->zzh()Z

    move-result v1

    invoke-direct {v0, v1}, Lo/access$1800;-><init>(Z)V

    iput-object v0, p0, Lo/access$2100;->zzb:Lo/access$1800;

    .line 19
    :cond_2
    invoke-virtual {p1}, Lo/CrashlyticsController$$Lambda$1;->zzi()Lo/CrashlyticsController$4;

    move-result-object p1

    iput-object p1, p0, Lo/access$2100;->zzc:Lo/CrashlyticsController$4;

    return-void

    .line 1002
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lo/CrashlyticsController$$Lambda$1;Lo/access$1800;Lo/CrashlyticsController$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/access$2100;->zza:Lo/CrashlyticsController$$Lambda$1;

    .line 3
    iput-object p2, p0, Lo/access$2100;->zzb:Lo/access$1800;

    .line 4
    iput-object p3, p0, Lo/access$2100;->zzc:Lo/CrashlyticsController$4;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAdditionalUserInfo()Lo/logControlled;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/access$2100;->zzb:Lo/access$1800;

    return-object v0
.end method

.method public final getCredential()Lo/calculateUsedDiskSpaceInBytes;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/access$2100;->zzc:Lo/CrashlyticsController$4;

    return-object v0
.end method

.method public final getUser()Lo/isRooted;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/access$2100;->zza:Lo/CrashlyticsController$$Lambda$1;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const v0, -0xb0bb

    .line 2008
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 2009
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 27
    invoke-virtual {p0}, Lo/access$2100;->getUser()Lo/isRooted;

    move-result-object v2

    const/4 v3, 0x1

    .line 28
    invoke-static {p1, v3, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 30
    invoke-virtual {p0}, Lo/access$2100;->getAdditionalUserInfo()Lo/logControlled;

    move-result-object v2

    const/4 v3, 0x2

    .line 31
    invoke-static {p1, v3, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 33
    iget-object v2, p0, Lo/access$2100;->zzc:Lo/CrashlyticsController$4;

    const/4 v3, 0x3

    .line 35
    invoke-static {p1, v3, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v0, p2, v1

    add-int/lit8 v1, v1, -0x4

    .line 3013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3014
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
