.class public final Lo/BankOfferRewardResponse;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lo/BankOfferDetailsResponse;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/CardLinkingDataResponse;

.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

.field private ICustomTabsService:J

.field private asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

.field private asInterface:Z

.field private final extraCallback:Landroid/widget/FrameLayout;

.field private getInterfaceDescriptor:Landroid/graphics/Bitmap;

.field private newSession:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/CardLinkSuccessResponseJsonAdapter;

.field private final onNavigationEvent:Lo/setCanReverse;

.field private final onPostMessage:J

.field private onRelationshipValidationResult:Z

.field private onTransact:Z

.field private requestPostMessageChannel:Z

.field private warmup:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/CardLinkSuccessResponseJsonAdapter;IZLo/setCanReverse;Lo/getLinkingData;)V
    .locals 10

    move-object v0, p0

    move-object v8, p1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v3, p2

    iput-object v3, v0, Lo/BankOfferRewardResponse;->onMessageChannelReady:Lo/CardLinkSuccessResponseJsonAdapter;

    move-object v6, p5

    iput-object v6, v0, Lo/BankOfferRewardResponse;->onNavigationEvent:Lo/setCanReverse;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lo/BankOfferRewardResponse;->extraCallback:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lo/BankOfferRewardResponse;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p2}, Lo/CardLinkSuccessResponseJsonAdapter;->onPostMessage()Lo/StatementPeriod;

    move-result-object v1

    invoke-static {v1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/Object;)V

    invoke-interface {p2}, Lo/CardLinkSuccessResponseJsonAdapter;->onPostMessage()Lo/StatementPeriod;

    move-result-object v1

    iget-object v1, v1, Lo/StatementPeriod;->extraCallback:Lo/BankOfferRewardResponseJsonAdapter;

    move-object v2, p1

    move v4, p3

    move v5, p4

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lo/BankOfferRewardResponseJsonAdapter;->onPostMessage(Landroid/content/Context;Lo/CardLinkSuccessResponseJsonAdapter;IZLo/setCanReverse;Lo/getLinkingData;)Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    move-result-object v1

    iput-object v1, v0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lo/BankOfferRewardResponse;->extraCallback:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v9, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lo/WinningTypes;->ICustomTabsService$Stub$Proxy:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lo/BankOfferRewardResponse;->ICustomTabsService()V

    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lo/BankOfferRewardResponse;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

    sget-object v1, Lo/WinningTypes;->cancelAll:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lo/BankOfferRewardResponse;->onPostMessage:J

    sget-object v1, Lo/WinningTypes;->IPostMessageService$Stub:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lo/BankOfferRewardResponse;->asInterface:Z

    iget-object v2, v0, Lo/BankOfferRewardResponse;->onNavigationEvent:Lo/setCanReverse;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :goto_0
    const-string v3, "spinner_used"

    invoke-virtual {v2, v3, v1}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lo/CardLinkingDataResponse;

    invoke-direct {v1, p0}, Lo/CardLinkingDataResponse;-><init>(Lo/BankOfferRewardResponse;)V

    iput-object v1, v0, Lo/BankOfferRewardResponse;->ICustomTabsCallback:Lo/CardLinkingDataResponse;

    iget-object v1, v0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage(Lo/BankOfferDetailsResponse;)V

    :cond_3
    iget-object v1, v0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-nez v1, :cond_4

    const-string v1, "AdVideoUnderlay Error"

    const-string v2, "Allocating player failed."

    invoke-virtual {p0, v1, v2}, Lo/BankOfferRewardResponse;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private final varargs ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v4, p2, v2

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lo/BankOfferRewardResponse;->onMessageChannelReady:Lo/CardLinkSuccessResponseJsonAdapter;

    const-string p2, "onVideoEvent"

    invoke-interface {p1, p2, v0}, Lo/CardLinkSuccessResponseJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/BankOfferRewardResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/BankOfferRewardResponse;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static extraCallback(Lo/CardLinkSuccessResponseJsonAdapter;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onVideoEvent"

    invoke-interface {p0, p1, v0}, Lo/CardLinkSuccessResponseJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final mayLaunchUrl()V
    .locals 2

    iget-object v0, p0, Lo/BankOfferRewardResponse;->onMessageChannelReady:Lo/CardLinkSuccessResponseJsonAdapter;

    invoke-interface {v0}, Lo/CardLinkSuccessResponseJsonAdapter;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/BankOfferRewardResponse;->onRelationshipValidationResult:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/BankOfferRewardResponse;->onMessageChannelReady:Lo/CardLinkSuccessResponseJsonAdapter;

    invoke-interface {v0}, Lo/CardLinkSuccessResponseJsonAdapter;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback$Stub:Z

    :cond_1
    return-void
.end method

.method public static onNavigationEvent(Lo/CardLinkSuccessResponseJsonAdapter;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "no_video_view"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lo/CardLinkSuccessResponseJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static onPostMessage(Lo/CardLinkSuccessResponseJsonAdapter;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CardLinkSuccessResponseJsonAdapter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mimeTypes"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onVideoEvent"

    invoke-interface {p0, p1, v0}, Lo/CardLinkSuccessResponseJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final postMessage()Z
    .locals 1

    iget-object v0, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ended"

    invoke-direct {p0, v1, v0}, Lo/BankOfferRewardResponse;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lo/BankOfferRewardResponse;->mayLaunchUrl()V

    return-void
.end method

.method public final ICustomTabsCallback(II)V
    .locals 3

    iget-boolean v0, p0, Lo/BankOfferRewardResponse;->asInterface:Z

    if-eqz v0, :cond_1

    sget-object v0, Lo/WinningTypes;->notify:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr p1, v0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget-object v1, Lo/WinningTypes;->notify:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr p2, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lo/BankOfferRewardResponse;->getInterfaceDescriptor:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lo/BankOfferRewardResponse;->getInterfaceDescriptor:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lo/BankOfferRewardResponse;->getInterfaceDescriptor:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/BankOfferRewardResponse;->requestPostMessageChannel:Z

    :cond_1
    return-void
.end method

.method public final ICustomTabsCallback(IIII)V
    .locals 1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lo/BankOfferRewardResponse;->extraCallback:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lo/BankOfferRewardResponse;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 1

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent()V

    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy()V
    .locals 3

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Lo/CardLinkingReason$$Parcelable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/CardLinkingReason$$Parcelable;->onPostMessage(Z)V

    invoke-virtual {v0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->asBinder()V

    return-void
.end method

.method public final ICustomTabsService()V
    .locals 5

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "AdMob - "

    iget-object v2, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    invoke-virtual {v2}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lo/BankOfferRewardResponse;->extraCallback:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lo/BankOfferRewardResponse;->extraCallback:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public final asBinder()V
    .locals 4

    iget-boolean v0, p0, Lo/BankOfferRewardResponse;->requestPostMessageChannel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BankOfferRewardResponse;->getInterfaceDescriptor:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/BankOfferRewardResponse;->postMessage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/BankOfferRewardResponse;->getInterfaceDescriptor:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lo/BankOfferRewardResponse;->extraCallback:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lo/BankOfferRewardResponse;->extraCallback:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback:Lo/CardLinkingDataResponse;

    invoke-virtual {v0}, Lo/CardLinkingDataResponse;->ICustomTabsCallback()V

    iget-wide v0, p0, Lo/BankOfferRewardResponse;->ICustomTabsService:J

    iput-wide v0, p0, Lo/BankOfferRewardResponse;->warmup:J

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/OfferCategory;

    invoke-direct {v1, p0}, Lo/OfferCategory;-><init>(Lo/BankOfferRewardResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final asInterface()V
    .locals 5

    iget-boolean v0, p0, Lo/BankOfferRewardResponse;->onTransact:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/BankOfferRewardResponse;->postMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BankOfferRewardResponse;->extraCallback:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lo/BankOfferRewardResponse;->getInterfaceDescriptor:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    iget-object v2, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    iget-object v3, p0, Lo/BankOfferRewardResponse;->getInterfaceDescriptor:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lo/BankOfferRewardResponse;->requestPostMessageChannel:Z

    :cond_1
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v2

    invoke-interface {v2}, Lo/component15;->onPostMessage()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Spinner frame grab took "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    :cond_2
    iget-wide v0, p0, Lo/BankOfferRewardResponse;->onPostMessage:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    const-string v0, "Spinner frame grab crossed jank threshold! Suspending spinner."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/BankOfferRewardResponse;->asInterface:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lo/BankOfferRewardResponse;->getInterfaceDescriptor:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lo/BankOfferRewardResponse;->onNavigationEvent:Lo/setCanReverse;

    if-eqz v0, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spinner_jank"

    invoke-virtual {v0, v2, v1}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final extraCallback()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "pause"

    invoke-direct {p0, v2, v1}, Lo/BankOfferRewardResponse;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lo/BankOfferRewardResponse;->mayLaunchUrl()V

    iput-boolean v0, p0, Lo/BankOfferRewardResponse;->onTransact:Z

    return-void
.end method

.method public final extraCallback(I)V
    .locals 1

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onMessageChannelReady(I)V

    return-void
.end method

.method public final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback:Lo/CardLinkingDataResponse;

    invoke-virtual {v0}, Lo/CardLinkingDataResponse;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    sget-object v1, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lo/BankOfferDetailsResponseJsonAdapter;->ICustomTabsCallback(Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getInterfaceDescriptor()V
    .locals 1

    iget-object v0, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback:Lo/CardLinkingDataResponse;

    invoke-virtual {v0}, Lo/CardLinkingDataResponse;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->ICustomTabsCallback()V

    :cond_0
    invoke-direct {p0}, Lo/BankOfferRewardResponse;->mayLaunchUrl()V

    return-void
.end method

.method final newSession()V
    .locals 6

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lo/BankOfferRewardResponse;->ICustomTabsService:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "time"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "timeupdate"

    invoke-direct {p0, v2, v3}, Lo/BankOfferRewardResponse;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)V

    iput-wide v0, p0, Lo/BankOfferRewardResponse;->ICustomTabsService:J

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 6

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v1, p0, Lo/BankOfferRewardResponse;->warmup:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->extraCallback()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    invoke-virtual {v1}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->asInterface()I

    move-result v1

    iget-object v2, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    invoke-virtual {v2}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onTransact()I

    move-result v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "duration"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v4, "videoWidth"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "videoHeight"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "canplaythrough"

    invoke-direct {p0, v0, v3}, Lo/BankOfferRewardResponse;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    iget-object v0, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback:Lo/CardLinkingDataResponse;

    invoke-virtual {v0}, Lo/CardLinkingDataResponse;->onPostMessage()V

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/OfferCategoryJsonAdapter;

    invoke-direct {v1, p0}, Lo/OfferCategoryJsonAdapter;-><init>(Lo/BankOfferRewardResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onNavigationEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final onPostMessage()V
    .locals 3

    iget-object v0, p0, Lo/BankOfferRewardResponse;->onMessageChannelReady:Lo/CardLinkSuccessResponseJsonAdapter;

    invoke-interface {v0}, Lo/CardLinkSuccessResponseJsonAdapter;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/BankOfferRewardResponse;->onMessageChannelReady:Lo/CardLinkSuccessResponseJsonAdapter;

    invoke-interface {v0}, Lo/CardLinkSuccessResponseJsonAdapter;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/BankOfferRewardResponse;->onRelationshipValidationResult:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/BankOfferRewardResponse;->onMessageChannelReady:Lo/CardLinkSuccessResponseJsonAdapter;

    invoke-interface {v0}, Lo/CardLinkSuccessResponseJsonAdapter;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iput-boolean v1, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback$Stub:Z

    :cond_1
    iput-boolean v1, p0, Lo/BankOfferRewardResponse;->onTransact:Z

    return-void
.end method

.method public final onPostMessage(FF)V
    .locals 1

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->extraCallback(FF)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/BankOfferRewardResponse;->newSession:Ljava/lang/String;

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "what"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "extra"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "error"

    invoke-direct {p0, p1, v0}, Lo/BankOfferRewardResponse;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onMessageChannelReady()V

    return-void
.end method

.method public final onTransact()V
    .locals 2

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/BankOfferRewardResponse;->newSession:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/BankOfferRewardResponse;->newSession:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->setVideoPath(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "no_src"

    invoke-direct {p0, v1, v0}, Lo/BankOfferRewardResponse;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback:Lo/CardLinkingDataResponse;

    invoke-virtual {p1}, Lo/CardLinkingDataResponse;->onPostMessage()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/BankOfferRewardResponse;->ICustomTabsCallback:Lo/CardLinkingDataResponse;

    invoke-virtual {p1}, Lo/CardLinkingDataResponse;->ICustomTabsCallback()V

    iget-wide v0, p0, Lo/BankOfferRewardResponse;->ICustomTabsService:J

    iput-wide v0, p0, Lo/BankOfferRewardResponse;->warmup:J

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/InstrumentBottomSheet$realDismiss$$inlined$executeOnResume$1;

    invoke-direct {v1, p0, p1}, Lo/InstrumentBottomSheet$realDismiss$$inlined$executeOnResume$1;-><init>(Lo/BankOfferRewardResponse;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setVolume(F)V
    .locals 2

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Lo/CardLinkingReason$$Parcelable;

    invoke-virtual {v1, p1}, Lo/CardLinkingReason$$Parcelable;->extraCallback(F)V

    invoke-virtual {v0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->asBinder()V

    return-void
.end method

.method public final warmup()V
    .locals 3

    iget-object v0, p0, Lo/BankOfferRewardResponse;->asBinder:Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage:Lo/CardLinkingReason$$Parcelable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lo/CardLinkingReason$$Parcelable;->onPostMessage(Z)V

    invoke-virtual {v0}, Lo/BankOfferDetailsFragment$realDismiss$$inlined$executeOnResume$1;->asBinder()V

    return-void
.end method
