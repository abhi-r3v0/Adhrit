.class public final Lo/RewardCityModel;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/Count;

.field private final onNavigationEvent:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/FeatureResponseModel;Lo/Count;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lo/RewardCityModel;->ICustomTabsCallback:Lo/Count;

    invoke-virtual {p0, p0}, Lo/RewardCityModel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Landroid/widget/ImageButton;

    invoke-direct {p3, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lo/RewardCityModel;->onNavigationEvent:Landroid/widget/ImageButton;

    const v0, 0x1080017

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p3, p0, Lo/RewardCityModel;->onNavigationEvent:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object p3, p0, Lo/RewardCityModel;->onNavigationEvent:Landroid/widget/ImageButton;

    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lo/RewardCityModel;->onNavigationEvent:Landroid/widget/ImageButton;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget v1, p2, Lo/FeatureResponseModel;->onMessageChannelReady:I

    invoke-static {p1, v1}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {p1, v0}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget v2, p2, Lo/FeatureResponseModel;->extraCallback:I

    invoke-static {p1, v2}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget v3, p2, Lo/FeatureResponseModel;->onPostMessage:I

    invoke-static {p1, v3}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object p3, p0, Lo/RewardCityModel;->onNavigationEvent:Landroid/widget/ImageButton;

    const-string v0, "Interstitial close button"

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget p3, p2, Lo/FeatureResponseModel;->onNavigationEvent:I

    invoke-static {p1, p3}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    iget-object p3, p0, Lo/RewardCityModel;->onNavigationEvent:Landroid/widget/ImageButton;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget v1, p2, Lo/FeatureResponseModel;->onNavigationEvent:I

    iget v2, p2, Lo/FeatureResponseModel;->onMessageChannelReady:I

    add-int/2addr v1, v2

    iget v2, p2, Lo/FeatureResponseModel;->extraCallback:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget v2, p2, Lo/FeatureResponseModel;->onNavigationEvent:I

    iget p2, p2, Lo/FeatureResponseModel;->onPostMessage:I

    add-int/2addr v2, p2

    invoke-static {p1, v2}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0x11

    invoke-direct {v0, v1, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p3, v0}, Lo/RewardCityModel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lo/RewardCityModel;->ICustomTabsCallback:Lo/Count;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/Count;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/RewardCityModel;->onNavigationEvent:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lo/RewardCityModel;->onNavigationEvent:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    goto :goto_0
.end method
