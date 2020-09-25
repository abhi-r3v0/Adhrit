.class public final Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private final onPostMessage:Lo/OfferDetailJsonAdapter;


# direct methods
.method public constructor <init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 1

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    new-instance v0, Lo/OfferDetailJsonAdapter;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->extraCommand()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0, p0}, Lo/OfferDetailJsonAdapter;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    iput-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/OfferDetailJsonAdapter;

    iget-object p1, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final AudioAttributesCompatParcelizer()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->AudioAttributesCompatParcelizer()Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/openAmexWebView;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/openAmexWebView;)V

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    return-void
.end method

.method public final ICustomTabsCallback(ZI)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1, p2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback(ZI)V

    return-void
.end method

.method public final ICustomTabsCallback(ZILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1, p2, p3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback(ZILjava/lang/String;)V

    return-void
.end method

.method public final ICustomTabsCallback(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsService()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsService$Stub$Proxy()Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub$Proxy()Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final INotificationSideChannel()Z
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel()Z

    move-result v0

    return v0
.end method

.method public final INotificationSideChannel$Default()Z
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel$Default()Z

    move-result v0

    return v0
.end method

.method public final INotificationSideChannel$Stub()Z
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel$Stub()Z

    move-result v0

    return v0
.end method

.method public final INotificationSideChannel$Stub$Proxy()Z
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    return v0
.end method

.method public final IPostMessageService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final IPostMessageService$Stub()Lo/SizeFilter;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    return-object v0
.end method

.method public final IPostMessageService$Stub$Proxy()Z
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub$Proxy()Z

    move-result v0

    return v0
.end method

.method public final IconCompatParcelizer()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->setBackgroundColor(I)V

    iget-object v1, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1, v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->setBackgroundColor(I)V

    return-void
.end method

.method public final RemoteActionCompatParcelizer()V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->RemoteActionCompatParcelizer()V

    return-void
.end method

.method public final asInterface()Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->asInterface()Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    move-result-object v0

    return-object v0
.end method

.method public final cancel()Lo/GameCta;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->cancel()Lo/GameCta;

    move-result-object v0

    return-object v0
.end method

.method public final cancelAll()I
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->cancelAll()I

    move-result v0

    return v0
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->destroy()V

    return-void
.end method

.method public final disconnect()V
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asBinder()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v2, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->s7:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Test Ad"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x31

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public final extraCallback()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->extraCallback()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1, p2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final extraCallback(Lo/LifestyleResponseCard;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->extraCallback(Lo/LifestyleResponseCard;)V

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->extraCallback(Z)V

    return-void
.end method

.method public final extraCommand()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->extraCommand()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultImpl()Z
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getDefaultImpl()Z

    move-result v0

    return v0
.end method

.method public final getInterfaceDescriptor()I
    .locals 1

    invoke-virtual {p0}, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1, p2, p3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final mayLaunchUrl()V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->mayLaunchUrl()V

    return-void
.end method

.method public final newSession()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final onMessageChannelReady()Lo/OfferDetailJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/OfferDetailJsonAdapter;

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady(Landroid/content/Context;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1, p2, p3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Lo/component21;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/component21<",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1, p2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Lo/component21;)V

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    return-void
.end method

.method public final onNavigationEvent()Lo/ClickReference$$Parcelable;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent()Lo/ClickReference$$Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(I)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(I)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1, p2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1, p2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/ClickReference$$Parcelable;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Lo/ClickReference$$Parcelable;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/SizeFilterJsonAdapter;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Lo/SizeFilterJsonAdapter;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/StatementResponse_WaiverJsonAdapter;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Lo/StatementResponse_WaiverJsonAdapter;)V

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Z)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/OfferDetailJsonAdapter;

    invoke-virtual {v0}, Lo/OfferDetailJsonAdapter;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPause()V

    return-void
.end method

.method public final onPostMessage()Lo/StatementPeriod;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage()Lo/StatementPeriod;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1, p2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1, p2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    return-void
.end method

.method public final onPostMessage(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;)V

    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Z)V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onRelationshipValidationResult()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onResume()V

    return-void
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onTransact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final postMessage()V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->postMessage()V

    return-void
.end method

.method public final read()Lo/openAmexWebView;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->read()Lo/openAmexWebView;

    move-result-object v0

    return-object v0
.end method

.method public final requestPostMessageChannel()V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->requestPostMessageChannel()V

    return-void
.end method

.method public final setDefaultImpl()V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:Lo/OfferDetailJsonAdapter;

    invoke-virtual {v0}, Lo/OfferDetailJsonAdapter;->onPostMessage()V

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->setDefaultImpl()V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->setRequestedOrientation(I)V

    return-void
.end method

.method public final setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public final stopLoading()V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->stopLoading()V

    return-void
.end method

.method public final updateVisuals()Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->updateVisuals()Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final validateRelationship()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->validateRelationship()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public final warmup()I
    .locals 1

    invoke-virtual {p0}, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final write()V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->write()V

    return-void
.end method

.method public final x_()V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->x_()V

    return-void
.end method
