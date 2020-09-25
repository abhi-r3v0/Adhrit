.class public final Lo/writeTo;
.super Lo/closeOrLog;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/writeTo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getResourcePackageName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lo/CrashlyticsController$16;

    invoke-direct {v0}, Lo/CrashlyticsController$16;-><init>()V

    sput-object v0, Lo/writeTo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/closeOrLog;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/getResourcePackageName;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lo/closeOrLog;-><init>()V

    .line 3
    iput-object p1, p0, Lo/writeTo;->zza:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lo/writeTo;->zzb:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lo/writeTo;->zzc:Ljava/util/List;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Lo/writeTo;
    .locals 1

    .line 1004
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lo/writeTo;

    invoke-direct {v0}, Lo/writeTo;-><init>()V

    .line 9
    iput-object p0, v0, Lo/writeTo;->zza:Ljava/lang/String;

    return-object v0

    .line 1005
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Ljava/util/List;Ljava/lang/String;)Lo/writeTo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/createCipher;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lo/writeTo;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 2004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    new-instance v0, Lo/writeTo;

    invoke-direct {v0}, Lo/writeTo;-><init>()V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lo/writeTo;->zzc:Ljava/util/List;

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/createCipher;

    .line 18
    instance-of v2, v1, Lo/getResourcePackageName;

    if-eqz v2, :cond_0

    .line 19
    iget-object v2, v0, Lo/writeTo;->zzc:Ljava/util/List;

    check-cast v1, Lo/getResourcePackageName;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_1
    iput-object p1, v0, Lo/writeTo;->zzb:Ljava/lang/String;

    return-object v0

    .line 2005
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given String is empty or null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2002
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const p2, -0xb0bb

    .line 3008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 3009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 33
    iget-object v1, p0, Lo/writeTo;->zza:Ljava/lang/String;

    const/4 v2, 0x1

    .line 35
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 37
    iget-object v1, p0, Lo/writeTo;->zzb:Ljava/lang/String;

    const/4 v2, 0x2

    .line 39
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 41
    iget-object v1, p0, Lo/writeTo;->zzc:Ljava/util/List;

    const/4 v2, 0x3

    .line 43
    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 4011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v1, p2, v0

    add-int/lit8 v0, v0, -0x4

    .line 4013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/writeTo;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/writeTo;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lo/writeTo;->zza:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
