.class public final Lo/getFeaturesData;
.super Lo/AppRequestData;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getFeaturesData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final ICustomTabsCallback$Stub:I

.field final asInterface:I

.field final onTransact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lo/getFeaturesData$1;

    invoke-direct {v0}, Lo/getFeaturesData$1;-><init>()V

    sput-object v0, Lo/getFeaturesData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lo/AppRequestData;-><init>(Landroid/os/Parcel;)V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getFeaturesData;->onTransact:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/getFeaturesData;->asInterface:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lo/getFeaturesData;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lo/setStoredBuildInstanceIdentifier;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lo/AppRequestData;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "cta_url"

    .line 1021
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1022
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    iput-object v0, p0, Lo/getFeaturesData;->onTransact:Ljava/lang/String;

    const-string v0, "image_tint_color"

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/getFeaturesData;->asInterface:I

    const-string v0, "border_color"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo/getFeaturesData;->ICustomTabsCallback$Stub:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 38
    new-instance v0, Lo/setStoredBuildInstanceIdentifier;

    const-string v1, "Notification JSON was unexpected or bad"

    invoke-direct {v0, v1, p1}, Lo/setStoredBuildInstanceIdentifier;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final extraCallback()Lo/AppRequestData$onMessageChannelReady;
    .locals 1

    .line 64
    sget-object v0, Lo/AppRequestData$onMessageChannelReady;->onPostMessage:Lo/AppRequestData$onMessageChannelReady;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Lo/AppRequestData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 57
    iget-object p2, p0, Lo/getFeaturesData;->onTransact:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget p2, p0, Lo/getFeaturesData;->asInterface:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget p2, p0, Lo/getFeaturesData;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
