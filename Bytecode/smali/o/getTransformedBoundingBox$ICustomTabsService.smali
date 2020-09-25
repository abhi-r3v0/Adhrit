.class public final Lo/getTransformedBoundingBox$ICustomTabsService;
.super Lo/getCustomActions$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTransformedBoundingBox;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/onboardAddCard/MCFVerifyCardFragment$onPageChangeCallback$1",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageScrollStateChanged",
        "",
        "state",
        "",
        "onPageScrolled",
        "position",
        "positionOffset",
        "",
        "positionOffsetPixels",
        "onPageSelected",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getTransformedBoundingBox;


# direct methods
.method constructor <init>(Lo/getTransformedBoundingBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    invoke-direct {p0}, Lo/getCustomActions$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)V
    .locals 3

    .line 78
    invoke-super {p0, p1}, Lo/getCustomActions$onNavigationEvent;->onMessageChannelReady(I)V

    .line 79
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    invoke-static {v0}, Lo/getTransformedBoundingBox;->asBinder(Lo/getTransformedBoundingBox;)Lo/getBottomDecorationHeight;

    move-result-object v0

    .line 1022
    iget-object v0, v0, Lo/getBottomDecorationHeight;->extraCallback:Lo/MediaControllerCompatApi24$TransportControls;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 79
    :goto_0
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    const-string v1, "$this$getOrNull"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_1

    const-string v1, "$this$lastIndex"

    .line 2266
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_1

    .line 2266
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 79
    :cond_1
    check-cast v2, Lo/StaggeredGridLayoutManager;

    :cond_2
    if-eqz v2, :cond_4

    .line 80
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    if-eqz v2, :cond_3

    check-cast v2, Lo/getDecoratedRight;

    invoke-static {v0, v2}, Lo/getTransformedBoundingBox;->ICustomTabsCallback(Lo/getTransformedBoundingBox;Lo/getDecoratedRight;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.onboardAddCard.OnboardCardsListItem"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_4
    :goto_1
    iget-object v0, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    invoke-static {v0, p1}, Lo/getTransformedBoundingBox;->onMessageChannelReady(Lo/getTransformedBoundingBox;I)V

    .line 82
    iget-object p1, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 4181
    iget-object v0, p1, Lo/getTransformedBoundingBox;->ICustomTabsCallback:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    .line 82
    invoke-static {p1, v0}, Lo/getTransformedBoundingBox;->onMessageChannelReady(Lo/getTransformedBoundingBox;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "verify_card_scroll_land"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lo/getCustomActions$onNavigationEvent;->onPostMessage(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 112
    iget-object p1, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 13181
    iget-object v0, p1, Lo/getTransformedBoundingBox;->ICustomTabsCallback:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    .line 112
    invoke-static {p1, v0}, Lo/getTransformedBoundingBox;->onMessageChannelReady(Lo/getTransformedBoundingBox;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "verify_card_swipe"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_0
    return-void
.end method

.method public final onPostMessage(IFI)V
    .locals 9

    .line 86
    invoke-super {p0, p1, p2, p3}, Lo/getCustomActions$onNavigationEvent;->onPostMessage(IFI)V

    .line 88
    iget-object p3, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    invoke-static {p3}, Lo/getTransformedBoundingBox;->newSession(Lo/getTransformedBoundingBox;)I

    move-result p3

    if-ne p3, p1, :cond_c

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-lez p3, :cond_c

    .line 90
    iget-object p3, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    invoke-static {p3}, Lo/getTransformedBoundingBox;->warmup(Lo/getTransformedBoundingBox;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, p1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    add-int/lit8 v1, p1, 0x1

    goto :goto_1

    :cond_1
    move v1, p1

    .line 93
    :goto_1
    iget-object v2, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    invoke-static {v2}, Lo/getTransformedBoundingBox;->asBinder(Lo/getTransformedBoundingBox;)Lo/getBottomDecorationHeight;

    move-result-object v2

    .line 5022
    iget-object v2, v2, Lo/getBottomDecorationHeight;->extraCallback:Lo/MediaControllerCompatApi24$TransportControls;

    check-cast v2, Landroidx/lifecycle/LiveData;

    .line 5320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 5321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v4

    .line 93
    :goto_2
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_4

    const-string v3, "$this$getOrNull"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v1, :cond_3

    const-string v3, "$this$lastIndex"

    .line 6266
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7210
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-gt v1, v3, :cond_3

    .line 6266
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v4

    .line 93
    :goto_3
    check-cast v1, Lo/StaggeredGridLayoutManager;

    goto :goto_4

    :cond_4
    move-object v1, v4

    :goto_4
    if-eqz v1, :cond_6

    if-eqz v1, :cond_5

    .line 94
    check-cast v1, Lo/getDecoratedRight;

    .line 8034
    iget-object v1, v1, Lo/getDecoratedRight;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 94
    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer_code()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.onboardAddCard.OnboardCardsListItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    move-object v1, v4

    .line 95
    :goto_5
    iget-object v2, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    if-eqz v1, :cond_7

    invoke-static {v2, v1}, Lo/getTransformedBoundingBox;->onPostMessage(Lo/getTransformedBoundingBox;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 8117
    :cond_7
    iput-object v4, v2, Lo/getTransformedBoundingBox;->onNavigationEvent:Ljava/lang/Integer;

    .line 96
    iget-object v1, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 8181
    iget-object v2, v1, Lo/getTransformedBoundingBox;->ICustomTabsCallback:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    if-nez v2, :cond_8

    .line 96
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_8
    iget-object v2, v2, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer_code:Ljava/lang/String;

    const-string v3, "paymentMode!!.issuer_code"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lo/getTransformedBoundingBox;->onPostMessage(Lo/getTransformedBoundingBox;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 9118
    iput-object v2, v1, Lo/getTransformedBoundingBox;->onPostMessage:Ljava/lang/Integer;

    .line 97
    iget-object v1, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 10118
    iget-object v1, v1, Lo/getTransformedBoundingBox;->onPostMessage:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 97
    iget-object v1, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 11117
    iget-object v1, v1, Lo/getTransformedBoundingBox;->onNavigationEvent:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 98
    iget-object v1, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 11118
    iget-object v1, v1, Lo/getTransformedBoundingBox;->onPostMessage:Ljava/lang/Integer;

    if-nez v1, :cond_9

    .line 98
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 12117
    iget-object v2, v2, Lo/getTransformedBoundingBox;->onNavigationEvent:Ljava/lang/Integer;

    if-nez v2, :cond_a

    .line 98
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz p3, :cond_b

    goto :goto_6

    :cond_b
    const/high16 p3, 0x3f800000    # 1.0f

    sub-float p2, p3, p2

    :goto_6
    invoke-static {v1, v2, p2}, Lo/getString;->ICustomTabsCallback(IIF)I

    move-result p2

    .line 100
    sget-object p3, Lo/isPreLayout;->onPostMessage:Lo/isPreLayout;

    invoke-static {p2}, Lo/isPreLayout;->onMessageChannelReady(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    iget-object p2, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    .line 12313
    iget-object v1, p2, Lo/getTransformedBoundingBox;->onMessageChannelReady:Landroid/view/View;

    if-eqz v1, :cond_c

    .line 13009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "Resources.getSystem()"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p3, 0x41800000    # 16.0f

    .line 13010
    invoke-static {v0, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7c

    .line 101
    invoke-static/range {v1 .. v8}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 105
    :cond_c
    iget-object p2, p0, Lo/getTransformedBoundingBox$ICustomTabsService;->onNavigationEvent:Lo/getTransformedBoundingBox;

    invoke-static {p2, p1}, Lo/getTransformedBoundingBox;->ICustomTabsCallback(Lo/getTransformedBoundingBox;I)V

    return-void
.end method
