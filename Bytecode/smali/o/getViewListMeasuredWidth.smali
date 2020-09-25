.class public final Lo/getViewListMeasuredWidth;
.super Lo/createAbtInstance;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/payments/fulfilment/PaymentProcessingDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "amount",
        "",
        "paymentItem",
        "Lcom/dreamplug/androidapp/payments/model/PaymentItem;",
        "(Landroidx/fragment/app/Fragment;DLcom/dreamplug/androidapp/payments/model/PaymentItem;)V",
        "getFragment",
        "()Landroidx/fragment/app/Fragment;",
        "processingSubText",
        "Landroid/widget/TextView;",
        "cancel",
        "",
        "dismiss",
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
.field final ICustomTabsCallback:Landroidx/fragment/app/Fragment;

.field private final extraCallback:Landroid/widget/TextView;

.field private final onMessageChannelReady:D

.field private final onPostMessage:Lcom/dreamplug/androidapp/payments/model/PaymentItem;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;DLcom/dreamplug/androidapp/payments/model/PaymentItem;)V
    .locals 9

    const-string v0, "paymentItem"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-direct {p0, v1}, Lo/createAbtInstance;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/getViewListMeasuredWidth;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    iput-wide p2, p0, Lo/getViewListMeasuredWidth;->onMessageChannelReady:D

    iput-object p4, p0, Lo/getViewListMeasuredWidth;->onPostMessage:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e02fd

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b068b

    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById<TextVi\u2026id.processingPaymentText)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    .line 59
    new-instance p3, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "context"

    invoke-static {p4, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    const-string p4, "processing payment\n"

    .line 22
    invoke-virtual {p3, p4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    const-string p4, "of "

    .line 23
    invoke-virtual {p3, p4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 24
    iget-wide v1, p0, Lo/getViewListMeasuredWidth;->onMessageChannelReady:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Ljava/lang/Number;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xfc

    invoke-static/range {v1 .. v8}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object p4

    const-string/jumbo v1, "span"

    invoke-static {p4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2059
    iget-object v2, p3, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2156
    iget-object p3, p3, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast p3, Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0b068a

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.processingPaymentSubText)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/getViewListMeasuredWidth;->extraCallback:Landroid/widget/TextView;

    .line 68
    new-instance p3, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    const-string p4, "for "

    .line 28
    invoke-virtual {p3, p4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 29
    iget-object p4, p0, Lo/getViewListMeasuredWidth;->onPostMessage:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    invoke-virtual {p4}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object p4

    iget-object p4, p4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer:Ljava/lang/String;

    const-string v0, "paymentItem.paymentMode.issuer"

    invoke-static {p4, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {p3, p4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-static {p4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3059
    iget-object v0, p3, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p4, " ending with "

    .line 30
    invoke-virtual {p3, p4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 31
    iget-object p4, p0, Lo/getViewListMeasuredWidth;->onPostMessage:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    invoke-virtual {p4}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object p4

    iget-object p4, p4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->account_number:Ljava/lang/String;

    const-string v0, "cardNumber"

    .line 32
    invoke-static {p4, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    if-eqz p4, :cond_3

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p4, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 3156
    iget-object p3, p3, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast p3, Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void

    .line 32
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getViewListMeasuredWidth;)V
    .locals 0

    .line 16
    invoke-super {p0}, Lo/createAbtInstance;->dismiss()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 38
    invoke-super {p0}, Lo/createAbtInstance;->cancel()V

    .line 39
    sget-object v0, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 1000
    sget-object v0, Lo/setSplitTrack;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 39
    new-instance v1, Lo/getThumbTintList;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final dismiss()V
    .locals 6

    .line 43
    iget-object v0, p0, Lo/getViewListMeasuredWidth;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_3

    check-cast v0, Lo/toLegacyStreamType;

    invoke-interface {v0}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "((fragment) as LifecycleOwner).lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 49
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 50
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 2016
    invoke-super {p0}, Lo/createAbtInstance;->dismiss()V

    .line 52
    iput-boolean v5, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_2

    .line 54
    new-instance v2, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentProcessingDialog$dismiss$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentProcessingDialog$dismiss$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getViewListMeasuredWidth;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 55
    iget-object v1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 57
    :cond_2
    :goto_0
    new-instance v1, Lo/getViewListMeasuredWidth$onMessageChannelReady;

    invoke-direct {v1, v3, v0}, Lo/getViewListMeasuredWidth$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void

    .line 43
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
