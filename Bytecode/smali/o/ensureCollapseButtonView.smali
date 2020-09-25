.class public final Lo/ensureCollapseButtonView;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ensureCollapseButtonView$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/payments/checkout/paymentstatus/list/CheckoutSuccessItemViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cta",
        "Lcom/dreamplug/widget/CredTextView;",
        "kotlin.jvm.PlatformType",
        "image",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "paymentStatusContainer",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "tvText1",
        "tvText2",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "SuccessItem",
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
.field private final ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

.field private final extraCallback:Lo/createFullSpanItemFromEnd;

.field private final onMessageChannelReady:Lo/onChildrenLoaded;

.field private final onNavigationEvent:Lo/createFullSpanItemFromEnd;

.field private final onPostMessage:Lo/setSpeed;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 16010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0119

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/ensureCollapseButtonView;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/ensureCollapseButtonView;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/ensureCollapseButtonView;->extraCallback:Lo/createFullSpanItemFromEnd;

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/ensureCollapseButtonView;->onPostMessage:Lo/setSpeed;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->paymentStatusContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/ensureCollapseButtonView;->onMessageChannelReady:Lo/onChildrenLoaded;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 12

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p1, Lo/ensureCollapseButtonView$ICustomTabsCallback;

    if-eqz v0, :cond_d

    .line 32
    iget-object v0, p0, Lo/ensureCollapseButtonView;->onMessageChannelReady:Lo/onChildrenLoaded;

    check-cast p1, Lo/ensureCollapseButtonView$ICustomTabsCallback;

    .line 1054
    iget-object v1, p1, Lo/ensureCollapseButtonView$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/OrderStatusView;

    .line 2049
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->onPostMessage:Lcom/cred/pay/repository/models/checkout/Status;

    const-string v2, "itemView"

    if-eqz v1, :cond_0

    .line 2078
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/Status;->onMessageChannelReady:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f060025

    invoke-static {v1, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v1

    .line 32
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 34
    iget-object v0, p0, Lo/ensureCollapseButtonView;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "tvText1"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3054
    iget-object v1, p1, Lo/ensureCollapseButtonView$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/OrderStatusView;

    .line 4051
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->onMessageChannelReady:Lo/getTargetScrollPosition;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 5000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v1, v3

    .line 34
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lo/ensureCollapseButtonView;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "tvText2"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5054
    iget-object v1, p1, Lo/ensureCollapseButtonView$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/OrderStatusView;

    .line 6053
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_2

    .line 7000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object v1, v3

    .line 35
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v4, p0, Lo/ensureCollapseButtonView;->onPostMessage:Lo/setSpeed;

    const-string v0, "image"

    invoke-static {v4, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7054
    iget-object v1, p1, Lo/ensureCollapseButtonView$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/OrderStatusView;

    .line 8049
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->onPostMessage:Lcom/cred/pay/repository/models/checkout/Status;

    if-eqz v1, :cond_3

    .line 8080
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/Status;->onPostMessage:Ljava/lang/String;

    move-object v5, v1

    goto :goto_3

    :cond_3
    move-object v5, v3

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 36
    sget-object v8, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x36

    invoke-static/range {v4 .. v11}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 37
    iget-object v1, p0, Lo/ensureCollapseButtonView;->onPostMessage:Lo/setSpeed;

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8116
    iget-object v0, v1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 8216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v0, :cond_c

    check-cast v0, Lo/setMaxFrame;

    .line 37
    check-cast v0, Lo/getComposition;

    const-string v1, "image.hierarchy"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onMessageChannelReady()Lo/setFailureListener$extraCallback;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v4, 0x2

    .line 10369
    invoke-virtual {v0, v4}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v0

    .line 10370
    instance-of v4, v0, Lo/fromAssets;

    if-eqz v4, :cond_4

    .line 10371
    check-cast v0, Lo/fromAssets;

    goto :goto_4

    .line 10373
    :cond_4
    sget-object v4, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v0, v4}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v0

    .line 11094
    :goto_4
    iget-object v4, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    const/4 v5, 0x0

    if-eq v4, v1, :cond_6

    if-eqz v4, :cond_5

    .line 12053
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v4, 0x1

    :goto_6
    if-nez v4, :cond_7

    .line 11098
    iput-object v1, v0, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 11099
    iput-object v3, v0, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 11100
    invoke-virtual {v0}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 11101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12054
    :cond_7
    iget-object v0, p1, Lo/ensureCollapseButtonView$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/OrderStatusView;

    .line 12061
    iget-object v0, v0, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->asInterface:Lcom/cred/pay/repository/models/checkout/PaymentCta;

    const-string v1, "cta"

    if-eqz v0, :cond_a

    .line 39
    iget-object v0, p0, Lo/ensureCollapseButtonView;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v4, "$this$visible"

    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13009
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lo/ensureCollapseButtonView;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13054
    iget-object v4, p1, Lo/ensureCollapseButtonView$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/OrderStatusView;

    .line 13061
    iget-object v4, v4, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->asInterface:Lcom/cred/pay/repository/models/checkout/PaymentCta;

    if-eqz v4, :cond_8

    .line 13089
    iget-object v4, v4, Lcom/cred/pay/repository/models/checkout/PaymentCta;->onPostMessage:Lo/getTargetScrollPosition;

    if-eqz v4, :cond_8

    .line 14000
    iget-object v3, v4, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 40
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lo/ensureCollapseButtonView;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "drawable"

    .line 42
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    .line 14054
    iget-object p1, p1, Lo/ensureCollapseButtonView$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/OrderStatusView;

    .line 14061
    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->asInterface:Lcom/cred/pay/repository/models/checkout/PaymentCta;

    if-eqz p1, :cond_9

    .line 14094
    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/PaymentCta;->ICustomTabsCallback:Ljava/lang/Integer;

    if-eqz p1, :cond_9

    .line 42
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_7

    .line 43
    :cond_9
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f060027

    invoke-static {p1, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    :goto_7
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 42
    invoke-direct {v3, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 44
    iget-object p1, p0, Lo/ensureCollapseButtonView;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v2, Lo/ensureCollapseButtonView$onMessageChannelReady;

    invoke-direct {v2, p0}, Lo/ensureCollapseButtonView$onMessageChannelReady;-><init>(Lo/ensureCollapseButtonView;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {p1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 47
    iget-object p1, p0, Lo/ensureCollapseButtonView;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/createFullSpanItemFromEnd;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 49
    :cond_a
    iget-object p1, p0, Lo/ensureCollapseButtonView;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 15017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 10215
    :cond_b
    throw v3

    .line 9215
    :cond_c
    throw v3

    :cond_d
    :goto_8
    return-void
.end method
