.class public final Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field public final extraCallback:I

.field public final onMessageChannelReady:Landroid/view/ViewGroup;

.field public final onNavigationEvent:Landroid/content/Context;

.field public final onPostMessage:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lo/CampaignBenefitJsonAdapter;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;->onPostMessage:Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->extraCommand()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Landroid/view/ViewGroup;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;->extraCallback:I

    iget-object v0, p0, Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Landroid/view/ViewGroup;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Z)V

    return-void

    :cond_0
    new-instance p1, Lo/CampaignBenefitJsonAdapter;

    const-string v0, "Could not get the parent of the WebView for an overlay."

    invoke-direct {p1, v0}, Lo/CampaignBenefitJsonAdapter;-><init>(Ljava/lang/String;)V

    throw p1
.end method
