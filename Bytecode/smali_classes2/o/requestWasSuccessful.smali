.class public final Lo/requestWasSuccessful;
.super Lo/AppRequestData;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/requestWasSuccessful;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback$Stub:I

.field public final ICustomTabsService:Z

.field public final asInterface:Ljava/lang/String;

.field public final getInterfaceDescriptor:I

.field public final onTransact:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/defaultSessionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lo/requestWasSuccessful$2;

    invoke-direct {v0}, Lo/requestWasSuccessful$2;-><init>()V

    sput-object v0, Lo/requestWasSuccessful;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lo/AppRequestData;-><init>(Landroid/os/Parcel;)V

    .line 30
    sget-object v0, Lo/defaultSessionData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lo/requestWasSuccessful;->onTransact:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/requestWasSuccessful;->ICustomTabsCallback$Stub:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/requestWasSuccessful;->asInterface:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/requestWasSuccessful;->getInterfaceDescriptor:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/requestWasSuccessful;->ICustomTabsService:Z

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lo/setStoredBuildInstanceIdentifier;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lo/AppRequestData;-><init>(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "buttons"

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/requestWasSuccessful;->onTransact:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 43
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 44
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 45
    iget-object v3, p0, Lo/requestWasSuccessful;->onTransact:Ljava/util/ArrayList;

    new-instance v4, Lo/defaultSessionData;

    invoke-direct {v4, v2}, Lo/defaultSessionData;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "close_color"

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/requestWasSuccessful;->ICustomTabsCallback$Stub:I

    const-string v0, "title"

    .line 1021
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1022
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_1
    iput-object v0, p0, Lo/requestWasSuccessful;->asInterface:Ljava/lang/String;

    const-string v0, "title_color"

    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo/requestWasSuccessful;->getInterfaceDescriptor:I

    .line 50
    invoke-virtual {p0}, Lo/requestWasSuccessful;->ICustomTabsCallback()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "image_fade"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lo/requestWasSuccessful;->ICustomTabsService:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 52
    new-instance v0, Lo/setStoredBuildInstanceIdentifier;

    const-string v1, "Notification JSON was unexpected or bad"

    invoke-direct {v0, v1, p1}, Lo/setStoredBuildInstanceIdentifier;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final extraCallback()Lo/AppRequestData$onMessageChannelReady;
    .locals 1

    .line 96
    sget-object v0, Lo/AppRequestData$onMessageChannelReady;->onMessageChannelReady:Lo/AppRequestData$onMessageChannelReady;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2}, Lo/AppRequestData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    iget-object p2, p0, Lo/requestWasSuccessful;->onTransact:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 88
    iget p2, p0, Lo/requestWasSuccessful;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object p2, p0, Lo/requestWasSuccessful;->asInterface:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget p2, p0, Lo/requestWasSuccessful;->getInterfaceDescriptor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-boolean p2, p0, Lo/requestWasSuccessful;->ICustomTabsService:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
