.class public Lo/getAppIconHashOrNull;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getAppIconHashOrNull;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Z

.field private zzd:Z

.field private zze:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lo/CrashlyticsController$2;

    invoke-direct {v0}, Lo/CrashlyticsController$2;-><init>()V

    sput-object v0, Lo/getAppIconHashOrNull;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getAppIconHashOrNull;->zza:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/getAppIconHashOrNull;->zzb:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lo/getAppIconHashOrNull;->zzc:Z

    .line 5
    iput-boolean p4, p0, Lo/getAppIconHashOrNull;->zzd:Z

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/getAppIconHashOrNull;->zze:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/getAppIconHashOrNull;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/getAppIconHashOrNull;->zze:Landroid/net/Uri;

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

    .line 16
    invoke-virtual {p0}, Lo/getAppIconHashOrNull;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 17
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 19
    iget-object v1, p0, Lo/getAppIconHashOrNull;->zzb:Ljava/lang/String;

    const/4 v2, 0x3

    .line 21
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 23
    iget-boolean p2, p0, Lo/getAppIconHashOrNull;->zzc:Z

    const/4 v1, 0x4

    .line 2020
    invoke-static {p1, v1, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2021
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget-boolean p2, p0, Lo/getAppIconHashOrNull;->zzd:Z

    const/4 v2, 0x5

    .line 3020
    invoke-static {p1, v2, v1}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3021
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v2, p2, v0

    sub-int/2addr v0, v1

    .line 5013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5014
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/getAppIconHashOrNull;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lo/getAppIconHashOrNull;->zzc:Z

    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lo/getAppIconHashOrNull;->zzd:Z

    return v0
.end method
