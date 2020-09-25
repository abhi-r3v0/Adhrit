.class public final Lo/setVersionNumber;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getModel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getModel<",
        "Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final extraCallback:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/setVersionNumber;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Lo/CarrierFingerPrint;Lorg/json/JSONObject;)Lo/refreshAuth;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    new-instance v0, Lo/fromMediaItemList;

    invoke-direct {v0}, Lo/fromMediaItemList;-><init>()V

    new-instance v4, Lo/fromMediaItemList;

    invoke-direct {v4}, Lo/fromMediaItemList;-><init>()V

    invoke-virtual {p1, p2}, Lo/CarrierFingerPrint;->extraCallback(Lorg/json/JSONObject;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {p1, p2, v2}, Lo/CarrierFingerPrint;->extraCallback(Lorg/json/JSONObject;Ljava/lang/String;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v2

    const-string v3, "custom_assets"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "string"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "name"

    if-eqz v9, :cond_0

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "string_value"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const-string v9, "image"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, p0, Lo/setVersionNumber;->extraCallback:Z

    const-string v10, "image_value"

    invoke-virtual {p1, v7, v10, v9}, Lo/CarrierFingerPrint;->extraCallback(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const-string v7, "Unknown custom asset type: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_1
    invoke-static {v7}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lo/CarrierFingerPrint;->onMessageChannelReady(Lo/PaymentModeListResponseJsonAdapter;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-result-object p1

    new-instance v8, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    const-string v2, "custom_template_id"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lo/fromMediaItemList;

    invoke-direct {v3}, Lo/fromMediaItemList;-><init>()V

    :goto_3
    invoke-virtual {v0}, Lo/fromMediaItemList;->size()I

    move-result p2

    if-ge v5, p2, :cond_4

    invoke-virtual {v0, v5}, Lo/fromMediaItemList;->onMessageChannelReady(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v5}, Lo/fromMediaItemList;->onNavigationEvent(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Future;

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, p2, v6}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lo/setOutsideTouchEnabled;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent()Lo/ClickReference$$Parcelable;

    move-result-object v0

    move-object v6, v0

    goto :goto_4

    :cond_5
    move-object v6, p2

    :goto_4
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    goto :goto_5

    :cond_6
    move-object v7, p2

    :goto_5
    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;-><init>(Ljava/lang/String;Lo/fromMediaItemList;Lo/fromMediaItemList;Lo/setOutsideTouchEnabled;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;)V

    return-object v8
.end method
