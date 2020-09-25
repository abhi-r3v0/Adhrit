.class final Lo/installDefaultInflateDelegates$updateVisuals;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/installDefaultInflateDelegates;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/cred/pay/repository/models/checkout/PaymentSlider;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/cred/pay/repository/models/checkout/PaymentSlider;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/installDefaultInflateDelegates;


# direct methods
.method constructor <init>(Lo/installDefaultInflateDelegates;)V
    .locals 0

    iput-object p1, p0, Lo/installDefaultInflateDelegates$updateVisuals;->onPostMessage:Lo/installDefaultInflateDelegates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 11

    .line 40
    check-cast p1, Lcom/cred/pay/repository/models/checkout/PaymentSlider;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2072
    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/PaymentSlider;->asInterface:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 3070
    sget-object v1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v1, Ljava/util/List;

    .line 1108
    :cond_1
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string/jumbo v3, "sliderGroup"

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 1109
    iget-object v1, p0, Lo/installDefaultInflateDelegates$updateVisuals;->onPostMessage:Lo/installDefaultInflateDelegates;

    sget v5, Lo/onItemHoverEnter$onNavigationEvent;->sliderGroup:I

    invoke-virtual {v1, v5}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const-string v3, "$this$visible"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1110
    iget-object v1, p0, Lo/installDefaultInflateDelegates$updateVisuals;->onPostMessage:Lo/installDefaultInflateDelegates;

    const-string v3, "it"

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lo/installDefaultInflateDelegates;->onPostMessage(Lo/installDefaultInflateDelegates;Lcom/cred/pay/repository/models/checkout/PaymentSlider;)V

    .line 1111
    iget-object p1, p0, Lo/installDefaultInflateDelegates$updateVisuals;->onPostMessage:Lo/installDefaultInflateDelegates;

    invoke-static {p1}, Lo/installDefaultInflateDelegates;->onPostMessage(Lo/installDefaultInflateDelegates;)V

    goto :goto_1

    .line 1113
    :cond_2
    iget-object p1, p0, Lo/installDefaultInflateDelegates$updateVisuals;->onPostMessage:Lo/installDefaultInflateDelegates;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->sliderDisabledText:I

    invoke-virtual {p1, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "sliderDisabledText"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v1, "$this$gone"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    .line 4017
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1114
    iget-object p1, p0, Lo/installDefaultInflateDelegates$updateVisuals;->onPostMessage:Lo/installDefaultInflateDelegates;

    sget v6, Lo/onItemHoverEnter$onNavigationEvent;->sliderGroup:I

    invoke-virtual {p1, v6}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5017
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1116
    :goto_1
    iget-object p1, p0, Lo/installDefaultInflateDelegates$updateVisuals;->onPostMessage:Lo/installDefaultInflateDelegates;

    const-string v1, "$this$tagScreenShownEvent"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6016
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v1, v3, :cond_5

    .line 6017
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v3}, Lo/getTitle;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 6018
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6059
    const-class v3, Landroid/telephony/SubscriptionManager;

    invoke-static {v1, v3}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 6021
    :goto_3
    invoke-virtual {p1}, Lo/installDefaultInflateDelegates;->ICustomTabsCallback$Stub()Lcom/cred/pay/repository/models/checkout/OfferSlab;

    move-result-object v3

    .line 7000
    iget-object p1, p1, Lo/installDefaultInflateDelegates;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/inflate;

    .line 6022
    invoke-virtual {p1}, Lo/inflate;->onRelationshipValidationResult()Lcom/cred/pay/repository/models/SurchargeDetails;

    move-result-object p1

    const/4 v5, 0x5

    new-array v6, v5, [Lo/addWrite;

    if-eqz v3, :cond_6

    .line 7080
    iget-wide v7, v3, Lcom/cred/pay/repository/models/checkout/OfferSlab;->onNavigationEvent:J

    .line 6025
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_4

    :cond_6
    move-object v7, v0

    .line 8043
    :goto_4
    new-instance v8, Lo/addWrite;

    const-string v9, "recommended_offer"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v4

    if-eqz v3, :cond_7

    .line 8102
    iget-object v3, v3, Lcom/cred/pay/repository/models/checkout/OfferSlab;->ICustomTabsService:Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object v3, v0

    .line 9043
    :goto_5
    new-instance v7, Lo/addWrite;

    const-string v8, "recommended_slab"

    invoke-direct {v7, v8, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v2

    const/4 v3, 0x2

    .line 6027
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 10043
    new-instance v7, Lo/addWrite;

    const-string/jumbo v8, "sim_detected"

    invoke-direct {v7, v8, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v3

    const/4 v1, 0x3

    if-eqz p1, :cond_8

    .line 11035
    iget-object v0, p1, Lcom/cred/pay/repository/models/SurchargeDetails;->onMessageChannelReady:Ljava/lang/String;

    .line 11043
    :cond_8
    new-instance v3, Lo/addWrite;

    const-string/jumbo v7, "surcharge_id"

    invoke-direct {v3, v7, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v6, v1

    const/4 v0, 0x4

    const-wide/16 v7, 0x0

    if-eqz p1, :cond_9

    .line 12031
    iget-object p1, p1, Lcom/cred/pay/repository/models/SurchargeDetails;->onNavigationEvent:Ljava/lang/Double;

    if-eqz p1, :cond_9

    .line 6029
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    goto :goto_6

    :cond_9
    move-wide v9, v7

    :goto_6
    cmpg-double p1, v9, v7

    if-eqz p1, :cond_a

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 12043
    new-instance v1, Lo/addWrite;

    const-string/jumbo v2, "surcharge_applied"

    invoke-direct {v1, v2, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v6, v0

    const-string p1, "pairs"

    .line 6024
    invoke-static {v6, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "checkout_recommendation_screen_load"

    .line 6023
    invoke-static {v0, p1}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
