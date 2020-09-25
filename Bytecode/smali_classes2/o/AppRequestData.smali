.class public abstract Lo/AppRequestData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AppRequestData$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final asInterface:Ljava/util/regex/Pattern;


# instance fields
.field public final ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:Lorg/json/JSONObject;

.field private ICustomTabsService:I

.field final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getJsonTransformForVersion;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:I

.field final onMessageChannelReady:Ljava/lang/String;

.field onNavigationEvent:I

.field public final onPostMessage:Ljava/lang/String;

.field public onRelationshipValidationResult:Landroid/graphics/Bitmap;

.field private onTransact:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\.[^./]+$)"

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/AppRequestData;->asInterface:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lo/AppRequestData;->onTransact:Lorg/json/JSONObject;

    .line 39
    iput-object v0, p0, Lo/AppRequestData;->ICustomTabsCallback$Stub:Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lo/AppRequestData;->onNavigationEvent:I

    .line 41
    iput v1, p0, Lo/AppRequestData;->ICustomTabsService:I

    .line 42
    iput v1, p0, Lo/AppRequestData;->ICustomTabsCallback:I

    .line 43
    iput-object v0, p0, Lo/AppRequestData;->onPostMessage:Ljava/lang/String;

    .line 44
    iput v1, p0, Lo/AppRequestData;->extraCallback:I

    .line 45
    iput-object v0, p0, Lo/AppRequestData;->onMessageChannelReady:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lo/AppRequestData;->asBinder:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 53
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-object v0, v2

    :catch_1
    const-string v2, "MixpanelAPI.InAppNotif"

    const-string v3, "Error reading JSON when creating InAppNotification from Parcel"

    .line 56
    invoke-static {v2, v3}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 58
    :goto_0
    iput-object v2, p0, Lo/AppRequestData;->onTransact:Lorg/json/JSONObject;

    .line 59
    iput-object v1, p0, Lo/AppRequestData;->ICustomTabsCallback$Stub:Lorg/json/JSONObject;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/AppRequestData;->onNavigationEvent:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/AppRequestData;->ICustomTabsService:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/AppRequestData;->ICustomTabsCallback:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/AppRequestData;->onPostMessage:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/AppRequestData;->extraCallback:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/AppRequestData;->onMessageChannelReady:Ljava/lang/String;

    .line 67
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lo/AppRequestData;->onRelationshipValidationResult:Landroid/graphics/Bitmap;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/AppRequestData;->asBinder:Ljava/util/List;

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lo/setStoredBuildInstanceIdentifier;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/AppRequestData;->asBinder:Ljava/util/List;

    .line 76
    :try_start_0
    iput-object p1, p0, Lo/AppRequestData;->onTransact:Lorg/json/JSONObject;

    const-string v0, "extras"

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lo/AppRequestData;->ICustomTabsCallback$Stub:Lorg/json/JSONObject;

    const-string v0, "id"

    .line 78
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/AppRequestData;->onNavigationEvent:I

    const-string v0, "message_id"

    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/AppRequestData;->ICustomTabsService:I

    const-string v0, "bg_color"

    .line 80
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/AppRequestData;->ICustomTabsCallback:I

    const-string v0, "body"

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

    .line 81
    :goto_0
    iput-object v0, p0, Lo/AppRequestData;->onPostMessage:Ljava/lang/String;

    const-string v0, "body_color"

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/AppRequestData;->extraCallback:I

    const-string v0, "image_url"

    .line 83
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/AppRequestData;->onMessageChannelReady:Ljava/lang/String;

    .line 84
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x1f4

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lo/AppRequestData;->onRelationshipValidationResult:Landroid/graphics/Bitmap;

    const-string v0, "display_triggers"

    .line 85
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 87
    iget-object v1, p0, Lo/AppRequestData;->asBinder:Ljava/util/List;

    new-instance v2, Lo/getJsonTransformForVersion;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/getJsonTransformForVersion;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 90
    new-instance v0, Lo/setStoredBuildInstanceIdentifier;

    const-string v1, "Notification JSON was unexpected or bad"

    invoke-direct {v0, v1, p1}, Lo/setStoredBuildInstanceIdentifier;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 199
    sget-object v0, Lo/AppRequestData;->asInterface:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected final ICustomTabsCallback()Lorg/json/JSONObject;
    .locals 1

    .line 208
    iget-object v0, p0, Lo/AppRequestData;->ICustomTabsCallback$Stub:Lorg/json/JSONObject;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract extraCallback()Lo/AppRequestData$onMessageChannelReady;
.end method

.method final onPostMessage()Lorg/json/JSONObject;
    .locals 4

    .line 124
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "campaign_id"

    .line 1138
    iget v2, p0, Lo/AppRequestData;->onNavigationEvent:I

    .line 126
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "message_id"

    .line 1142
    iget v2, p0, Lo/AppRequestData;->ICustomTabsService:I

    .line 127
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "message_type"

    const-string v2, "inapp"

    .line 128
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "message_subtype"

    .line 129
    invoke-virtual {p0}, Lo/AppRequestData;->extraCallback()Lo/AppRequestData$onMessageChannelReady;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MixpanelAPI.InAppNotif"

    const-string v3, "Impossible JSON Exception"

    .line 131
    invoke-static {v2, v3, v1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lo/AppRequestData;->onTransact:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 218
    iget-object v0, p0, Lo/AppRequestData;->onTransact:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lo/AppRequestData;->ICustomTabsCallback$Stub:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget v0, p0, Lo/AppRequestData;->onNavigationEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Lo/AppRequestData;->ICustomTabsService:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Lo/AppRequestData;->ICustomTabsCallback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object v0, p0, Lo/AppRequestData;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget v0, p0, Lo/AppRequestData;->extraCallback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v0, p0, Lo/AppRequestData;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lo/AppRequestData;->onRelationshipValidationResult:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 227
    iget-object p2, p0, Lo/AppRequestData;->asBinder:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
