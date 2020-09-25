.class public final Lo/setAppSearchData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setAppSearchData$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u001fB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0019H\u0002J\u0010\u0010\u001e\u001a\u00020\u001b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \u000e*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/cred/pay/ui/utils/PaymentLoadingUtil;",
        "",
        "rootView",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "spaceAtTop",
        "",
        "loadingVerticalBias",
        "",
        "(Landroidx/constraintlayout/widget/ConstraintLayout;ZF)V",
        "countDownContainer",
        "Landroid/view/View;",
        "countDownTimer",
        "Landroid/os/CountDownTimer;",
        "loaderView",
        "kotlin.jvm.PlatformType",
        "getRootView",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "timer",
        "Lcom/cred/pay/ui/utils/PaymentLoadingUtil$Timer;",
        "tvCounter",
        "Lcom/dreamplug/widget/CredTextView;",
        "tvLoaderText",
        "getFormattedTime",
        "",
        "longTime",
        "",
        "hideLoader",
        "",
        "setTimer",
        "countDownTime",
        "showLoader",
        "Timer",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Landroid/view/View;

.field private asBinder:Landroid/os/CountDownTimer;

.field private final asInterface:Lo/onChildrenLoaded;

.field private extraCallback:Landroid/view/View;

.field onMessageChannelReady:Lo/createFullSpanItemFromEnd;

.field onNavigationEvent:Lo/setAppSearchData$onMessageChannelReady;

.field onPostMessage:Lo/createFullSpanItemFromEnd;

.field private final onTransact:F


# direct methods
.method private constructor <init>(Lo/onChildrenLoaded;ZF)V
    .locals 4

    const-string/jumbo v0, "rootView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setAppSearchData;->asInterface:Lo/onChildrenLoaded;

    iput p3, p0, Lo/setAppSearchData;->onTransact:F

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lo/onItemHoverEnter$onTransact;->payment_poling_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/setAppSearchData;->ICustomTabsCallback:Landroid/view/View;

    .line 31
    iget-object p3, p0, Lo/setAppSearchData;->asInterface:Lo/onChildrenLoaded;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 32
    iget-object p1, p0, Lo/setAppSearchData;->ICustomTabsCallback:Landroid/view/View;

    const-string p3, "loaderView"

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    if-eqz v0, :cond_3

    check-cast v0, Lo/onChildrenLoaded$onPostMessage;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 106
    move-object v2, v0

    check-cast v2, Lo/onChildrenLoaded$onPostMessage;

    const/4 v3, 0x0

    .line 33
    iput v3, v2, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent:I

    .line 34
    iput v3, v2, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 35
    iput v3, v2, Lo/onChildrenLoaded$onPostMessage;->asBinder:I

    .line 36
    iput v3, v2, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    .line 37
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 38
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_1

    .line 41
    iget-object p1, p0, Lo/setAppSearchData;->asInterface:Lo/onChildrenLoaded;

    check-cast p1, Landroid/view/View;

    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->sheetBg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "rootView.sheetBg"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Lo/onChildrenLoaded$onPostMessage;

    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    .line 110
    move-object v0, p2

    check-cast v0, Lo/onChildrenLoaded$onPostMessage;

    .line 42
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/setAppSearchData;->asInterface:Lo/onChildrenLoaded;

    check-cast p1, Landroid/view/View;

    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->loadingContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string/jumbo p2, "rootView.loadingContainer"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Lo/onChildrenLoaded$onPostMessage;

    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    .line 114
    move-object v0, p2

    check-cast v0, Lo/onChildrenLoaded$onPostMessage;

    .line 46
    iget v1, p0, Lo/setAppSearchData;->onTransact:F

    iput v1, v0, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object p1, p0, Lo/setAppSearchData;->asInterface:Lo/onChildrenLoaded;

    check-cast p1, Landroid/view/View;

    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->countDownContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string/jumbo p2, "rootView.countDownContainer"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lo/setAppSearchData;->extraCallback:Landroid/view/View;

    .line 49
    iget-object p1, p0, Lo/setAppSearchData;->asInterface:Lo/onChildrenLoaded;

    check-cast p1, Landroid/view/View;

    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->tvCounter:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p2, "rootView.tvCounter"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/setAppSearchData;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 50
    iget-object p1, p0, Lo/setAppSearchData;->asInterface:Lo/onChildrenLoaded;

    check-cast p1, Landroid/view/View;

    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->tvLoaderText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p2, "rootView.tvLoaderText"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/setAppSearchData;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 51
    iget-object p1, p0, Lo/setAppSearchData;->ICustomTabsCallback:Landroid/view/View;

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this$gone"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    .line 7017
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lo/setAppSearchData;->ICustomTabsCallback:Landroid/view/View;

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lo/setAppSearchData$3;->ICustomTabsCallback:Lo/setAppSearchData$3;

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 113
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lo/onChildrenLoaded;ZFI)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/high16 p3, 0x3f000000    # 0.5f

    .line 20
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/setAppSearchData;-><init>(Lo/onChildrenLoaded;ZF)V

    return-void
.end method

.method private final extraCallback(J)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "$this$visible"

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_3

    .line 72
    iget-object v3, p0, Lo/setAppSearchData;->extraCallback:Landroid/view/View;

    invoke-static {v3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v3, p0, Lo/setAppSearchData;->onPostMessage:Lo/createFullSpanItemFromEnd;

    iget-object v4, p0, Lo/setAppSearchData;->onNavigationEvent:Lo/setAppSearchData$onMessageChannelReady;

    if-eqz v4, :cond_0

    .line 3103
    iget-object v0, v4, Lo/setAppSearchData$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    .line 73
    :cond_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lo/setAppSearchData;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lo/setAppSearchData;->asBinder:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 76
    :cond_1
    new-instance v0, Lo/setAppSearchData$extraCallback;

    const-wide/16 v1, 0x7d0

    add-long/2addr p1, v1

    invoke-direct {v0, p0, p1, p2}, Lo/setAppSearchData$extraCallback;-><init>(Lo/setAppSearchData;J)V

    check-cast v0, Landroid/os/CountDownTimer;

    iput-object v0, p0, Lo/setAppSearchData;->asBinder:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_2
    return-void

    .line 92
    :cond_3
    iget-object p1, p0, Lo/setAppSearchData;->asBinder:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 93
    :cond_4
    iget-object p1, p0, Lo/setAppSearchData;->onNavigationEvent:Lo/setAppSearchData$onMessageChannelReady;

    if-eqz p1, :cond_5

    .line 4103
    iget-object p1, p1, Lo/setAppSearchData$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_7

    .line 94
    iget-object p1, p0, Lo/setAppSearchData;->extraCallback:Landroid/view/View;

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5009
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lo/setAppSearchData;->onPostMessage:Lo/createFullSpanItemFromEnd;

    iget-object p2, p0, Lo/setAppSearchData;->onNavigationEvent:Lo/setAppSearchData$onMessageChannelReady;

    if-eqz p2, :cond_6

    .line 5103
    iget-object v0, p2, Lo/setAppSearchData$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 95
    :cond_6
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Lo/setAppSearchData;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    check-cast p1, Landroid/view/View;

    const-string p2, "$this$gone"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    .line 6017
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 98
    :cond_7
    iget-object p1, p0, Lo/setAppSearchData;->extraCallback:Landroid/view/View;

    const-string p2, "$this$invisible"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    .line 7013
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0xa

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    .line 7066
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7067
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/setAppSearchData$onMessageChannelReady;)V
    .locals 2

    .line 60
    iput-object p1, p0, Lo/setAppSearchData;->onNavigationEvent:Lo/setAppSearchData$onMessageChannelReady;

    .line 1103
    iget-object p1, p1, Lo/setAppSearchData$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lo/setAppSearchData;->extraCallback(J)V

    .line 62
    iget-object p1, p0, Lo/setAppSearchData;->ICustomTabsCallback:Landroid/view/View;

    const-string v0, "loaderView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$visible"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2009
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
