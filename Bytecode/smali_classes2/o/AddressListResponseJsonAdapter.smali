.class public final Lo/AddressListResponseJsonAdapter;
.super Lo/getTags;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/AddressListResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Z

.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Incentive;

    invoke-direct {v0}, Lo/Incentive;-><init>()V

    sput-object v0, Lo/AddressListResponseJsonAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lo/AddressListResponseJsonAdapter;-><init>(ZLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-boolean p1, p0, Lo/AddressListResponseJsonAdapter;->ICustomTabsCallback:Z

    iput-object p2, p0, Lo/AddressListResponseJsonAdapter;->extraCallback:Ljava/util/List;

    return-void
.end method

.method public static onMessageChannelReady(Lorg/json/JSONObject;)Lo/AddressListResponseJsonAdapter;
    .locals 5

    if-nez p0, :cond_0

    new-instance p0, Lo/AddressListResponseJsonAdapter;

    invoke-direct {p0}, Lo/AddressListResponseJsonAdapter;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "reporting_urls"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Error grabbing url from json."

    invoke-static {v4, v3}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lo/AddressListResponseJsonAdapter;

    const-string v2, "enable_protection"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-direct {v0, p0, v1}, Lo/AddressListResponseJsonAdapter;-><init>(ZLjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    iget-boolean v0, p0, Lo/AddressListResponseJsonAdapter;->ICustomTabsCallback:Z

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lo/AddressListResponseJsonAdapter;->extraCallback:Ljava/util/List;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
