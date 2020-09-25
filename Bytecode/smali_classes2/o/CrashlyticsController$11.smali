.class public final Lo/CrashlyticsController$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getBooleanResourceValue;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/CrashlyticsController$11;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:J

.field private zzb:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lo/CrashlyticsController$10;

    invoke-direct {v0}, Lo/CrashlyticsController$10;-><init>()V

    sput-object v0, Lo/CrashlyticsController$11;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lo/CrashlyticsController$11;->zza:J

    .line 3
    iput-wide p3, p0, Lo/CrashlyticsController$11;->zzb:J

    return-void
.end method

.method public static zza(Lorg/json/JSONObject;)Lo/CrashlyticsController$11;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "lastSignInTimestamp"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "creationTimestamp"

    .line 16
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 17
    new-instance p0, Lo/CrashlyticsController$11;

    invoke-direct {p0, v1, v2, v3, v4}, Lo/CrashlyticsController$11;-><init>(JJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCreationTimestamp()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lo/CrashlyticsController$11;->zzb:J

    return-wide v0
.end method

.method public final getLastSignInTimestamp()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lo/CrashlyticsController$11;->zza:J

    return-wide v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const p2, -0xb0bb

    .line 2008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 23
    invoke-virtual {p0}, Lo/CrashlyticsController$11;->getLastSignInTimestamp()J

    move-result-wide v0

    const/16 v2, 0x8

    const/4 v3, 0x1

    .line 2049
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2050
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 26
    invoke-virtual {p0}, Lo/CrashlyticsController$11;->getCreationTimestamp()J

    move-result-wide v0

    const/4 v3, 0x2

    .line 3049
    invoke-static {p1, v3, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3050
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p2

    add-int/lit8 p2, p2, -0x4

    .line 5013
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5015
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public final zza()Lorg/json/JSONObject;
    .locals 4

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "lastSignInTimestamp"

    .line 8
    iget-wide v2, p0, Lo/CrashlyticsController$11;->zza:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "creationTimestamp"

    .line 9
    iget-wide v2, p0, Lo/CrashlyticsController$11;->zzb:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
