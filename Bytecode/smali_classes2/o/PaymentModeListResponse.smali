.class public final Lo/PaymentModeListResponse;
.super Landroid/widget/ViewSwitcher;


# instance fields
.field private extraCallback:Z

.field private final onMessageChannelReady:Lo/getTxn_time;

.field private final onPostMessage:Lo/getTemplateIdentifierName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Lo/getTemplateIdentifierName;

    invoke-direct {v0, p1}, Lo/getTemplateIdentifierName;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/PaymentModeListResponse;->onPostMessage:Lo/getTemplateIdentifierName;

    invoke-virtual {v0, p2}, Lo/getTemplateIdentifierName;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object p2, p0, Lo/PaymentModeListResponse;->onPostMessage:Lo/getTemplateIdentifierName;

    invoke-virtual {p2, p3}, Lo/getTemplateIdentifierName;->onNavigationEvent(Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lo/PaymentModeListResponse;->extraCallback:Z

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    new-instance p2, Lo/getTxn_time;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1, p0, p4, p5}, Lo/getTxn_time;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lo/PaymentModeListResponse;->onMessageChannelReady:Lo/getTxn_time;

    goto :goto_0

    :cond_0
    new-instance p1, Lo/getTxn_time;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, p4, p5}, Lo/getTxn_time;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p1, p0, Lo/PaymentModeListResponse;->onMessageChannelReady:Lo/getTxn_time;

    :goto_0
    iget-object p1, p0, Lo/PaymentModeListResponse;->onMessageChannelReady:Lo/getTxn_time;

    invoke-virtual {p1}, Lo/getTxn_time;->ICustomTabsCallback()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getTemplateIdentifierName;
    .locals 1

    iget-object v0, p0, Lo/PaymentModeListResponse;->onPostMessage:Lo/getTemplateIdentifierName;

    return-object v0
.end method

.method public final extraCallback()V
    .locals 1

    const-string v0, "Enable debug gesture detector on adFrame."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/PaymentModeListResponse;->extraCallback:Z

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onAttachedToWindow()V

    iget-object v0, p0, Lo/PaymentModeListResponse;->onMessageChannelReady:Lo/getTxn_time;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getTxn_time;->onPostMessage()V

    :cond_0
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onDetachedFromWindow()V

    iget-object v0, p0, Lo/PaymentModeListResponse;->onMessageChannelReady:Lo/getTxn_time;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getTxn_time;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lo/PaymentModeListResponse;->extraCallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PaymentModeListResponse;->onPostMessage:Lo/getTemplateIdentifierName;

    invoke-virtual {v0, p1}, Lo/getTemplateIdentifierName;->onNavigationEvent(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady()V
    .locals 1

    const-string v0, "Disable debug gesture detector on adFrame."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/PaymentModeListResponse;->extraCallback:Z

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    const-string v0, "Disable position monitoring on adFrame."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/PaymentModeListResponse;->onMessageChannelReady:Lo/getTxn_time;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getTxn_time;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public final removeAllViews()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lo/PaymentModeListResponse;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lo/PaymentModeListResponse;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v4, :cond_0

    check-cast v3, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->destroy()V

    goto :goto_1

    :cond_2
    return-void
.end method
