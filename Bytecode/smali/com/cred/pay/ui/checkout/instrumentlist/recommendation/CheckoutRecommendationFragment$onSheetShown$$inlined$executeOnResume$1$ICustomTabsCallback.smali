.class final Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->onPostMessage(Lo/toLegacyStreamType;)V
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
        "Lo/addWrite<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u000126\u0010\u0002\u001a2\u0012\u0008\u0012\u00060\u0004j\u0002`\u0005\u0012\u0008\u0012\u00060\u0006j\u0002`\u0007 \u0008*\u0018\u0012\u0008\u0012\u00060\u0004j\u0002`\u0005\u0012\u0008\u0012\u00060\u0006j\u0002`\u0007\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "",
        "Lcom/cred/pay/ui/checkout/ShowLoader;",
        "",
        "Lcom/cred/pay/ui/checkout/Duration;",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "com/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 40
    check-cast p1, Lo/addWrite;

    if-eqz p1, :cond_5

    .line 2027
    iget-object v0, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1205
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "bottomSheetBehavior"

    if-eqz v0, :cond_3

    .line 1206
    iget-object v0, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    iget-object v0, v0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/installDefaultInflateDelegates;

    const/4 v2, 0x0

    .line 2154
    iget-object v0, v0, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 1207
    iget-object v0, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    iget-object v0, v0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/installDefaultInflateDelegates;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->mainContainer:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    sget v1, Lo/onItemHoverEnter$onMessageChannelReady;->bottom_sheet_bg_without_slider_and_topspace:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1208
    new-instance v0, Lo/setAppSearchData$onMessageChannelReady;

    .line 3028
    iget-object v1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1208
    check-cast v1, Ljava/lang/Long;

    .line 1209
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v2, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->payment_processing:I

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    .line 4028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1210
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget p1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->process_taking_more_than_usual:I

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1208
    :goto_0
    invoke-direct {v0, v1, v2, p1}, Lo/setAppSearchData$onMessageChannelReady;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    iget-object p1, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/installDefaultInflateDelegates;

    .line 4073
    iget-object p1, p1, Lo/installDefaultInflateDelegates;->ICustomTabsCallback:Lo/setAppSearchData;

    if-eqz p1, :cond_2

    .line 1211
    invoke-virtual {p1, v0}, Lo/setAppSearchData;->onMessageChannelReady(Lo/setAppSearchData$onMessageChannelReady;)V

    :cond_2
    return-void

    .line 1213
    :cond_3
    iget-object p1, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/installDefaultInflateDelegates;

    const/4 v0, 0x1

    .line 4154
    iget-object p1, p1, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez p1, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 1214
    iget-object p1, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/installDefaultInflateDelegates;

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->mainContainer:I

    invoke-virtual {p1, v0}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    sget v0, Lo/onItemHoverEnter$onMessageChannelReady;->bottom_sheet_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1215
    iget-object p1, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;

    iget-object p1, p1, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/installDefaultInflateDelegates;

    .line 5073
    iget-object p1, p1, Lo/installDefaultInflateDelegates;->ICustomTabsCallback:Lo/setAppSearchData;

    if-eqz p1, :cond_5

    .line 6056
    iget-object p1, p1, Lo/setAppSearchData;->ICustomTabsCallback:Landroid/view/View;

    const-string v0, "loaderView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 7017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
