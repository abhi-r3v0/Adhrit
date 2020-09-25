.class final Lo/getJsonTransformForVersion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getJsonTransformForVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/AbstractAppSpiCall;

.field private final onMessageChannelReady:Lorg/json/JSONObject;

.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lo/getJsonTransformForVersion$5;

    invoke-direct {v0}, Lo/getJsonTransformForVersion$5;-><init>()V

    sput-object v0, Lo/getJsonTransformForVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getJsonTransformForVersion;->onNavigationEvent:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "MixpanelAPI.DisplayTrigger"

    const-string v2, "Error parsing selector from display_trigger"

    .line 42
    invoke-static {v1, v2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 44
    :goto_0
    iput-object v1, p0, Lo/getJsonTransformForVersion;->onMessageChannelReady:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Lo/AbstractAppSpiCall;

    invoke-direct {v0, v1}, Lo/AbstractAppSpiCall;-><init>(Lorg/json/JSONObject;)V

    .line 48
    :cond_0
    iput-object v0, p0, Lo/getJsonTransformForVersion;->ICustomTabsCallback:Lo/AbstractAppSpiCall;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lo/setStoredBuildInstanceIdentifier;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "event"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getJsonTransformForVersion;->onNavigationEvent:Ljava/lang/String;

    const-string v0, "selector"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lo/getJsonTransformForVersion;->onMessageChannelReady:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 27
    new-instance v0, Lo/AbstractAppSpiCall;

    invoke-direct {v0, p1}, Lo/AbstractAppSpiCall;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iput-object v0, p0, Lo/getJsonTransformForVersion;->ICustomTabsCallback:Lo/AbstractAppSpiCall;

    return-void

    :catch_0
    move-exception p1

    .line 30
    new-instance v0, Lo/setStoredBuildInstanceIdentifier;

    const-string v1, "Event triggered notification JSON was unexpected or bad"

    invoke-direct {v0, v1, p1}, Lo/setStoredBuildInstanceIdentifier;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent(Lo/buildInstanceIdentifierChanged$onPostMessage;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 59
    iget-object v1, p0, Lo/getJsonTransformForVersion;->onNavigationEvent:Ljava/lang/String;

    const-string v2, "$any_event"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1199
    iget-object v1, p1, Lo/buildInstanceIdentifierChanged$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lo/getJsonTransformForVersion;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    :cond_0
    iget-object v1, p0, Lo/getJsonTransformForVersion;->ICustomTabsCallback:Lo/AbstractAppSpiCall;

    if-eqz v1, :cond_1

    .line 1300
    :try_start_0
    iget-object p1, p1, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback;->onMessageChannelReady:Lorg/json/JSONObject;

    .line 1581
    iget-object v1, v1, Lo/AbstractAppSpiCall;->extraCallback:Lorg/json/JSONObject;

    invoke-static {v1, p1}, Lo/AbstractAppSpiCall;->onMessageChannelReady(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lo/AbstractAppSpiCall;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v1, "MixpanelAPI.DisplayTrigger"

    const-string v2, "Error evaluating selector"

    .line 65
    invoke-static {v1, v2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 53
    iget-object p2, p0, Lo/getJsonTransformForVersion;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lo/getJsonTransformForVersion;->onMessageChannelReady:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
