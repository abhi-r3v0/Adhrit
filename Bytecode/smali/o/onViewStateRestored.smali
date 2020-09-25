.class public final Lo/onViewStateRestored;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onViewStateRestored$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001#B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u001d\u001a\u00020\u0016H\u0002J\u000e\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 J\u0008\u0010!\u001a\u00020\u0016H\u0002J\u000e\u0010\"\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/ui/widget/EmptyScreenView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "ctaNeu",
        "Lcom/dreamplug/ui/NeuButton;",
        "errorHeader",
        "Landroid/widget/TextView;",
        "errorSubHeader",
        "image",
        "Landroid/widget/ImageView;",
        "isDarkMode",
        "",
        "Ljava/lang/Boolean;",
        "onCtaClick",
        "Lkotlin/Function0;",
        "",
        "getOnCtaClick",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnCtaClick",
        "(Lkotlin/jvm/functions/Function0;)V",
        "parentLayout",
        "Landroid/view/View;",
        "init",
        "setData",
        "data",
        "Lcom/dreamplug/fabrik/helper/ui/widget/EmptyScreenView$EmptyScreenData;",
        "setTextColor",
        "setUiTheme",
        "EmptyScreenData",
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
.field private ICustomTabsCallback:Landroid/view/View;

.field private asBinder:Lo/saveOldPosition;

.field extraCallback:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Landroid/widget/ImageView;

.field private onNavigationEvent:Landroid/widget/TextView;

.field private onPostMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/onViewStateRestored;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/onViewStateRestored;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lo/onViewStateRestored;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const-string p4, "context"

    invoke-static {p1, p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2037
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const p3, 0x7f0e0079

    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2038
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 p2, 0x8

    .line 2039
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0b02e1

    .line 2040
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.errorHeader)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/onViewStateRestored;->onPostMessage:Landroid/widget/TextView;

    const p2, 0x7f0b0621

    .line 2041
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.parentLayout)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/onViewStateRestored;->ICustomTabsCallback:Landroid/view/View;

    const p2, 0x7f0b0450

    .line 2042
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.image)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/onViewStateRestored;->onMessageChannelReady:Landroid/widget/ImageView;

    .line 2043
    sget-object p2, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object p2

    .line 2320
    iget-object p2, p2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object p3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2043
    :goto_0
    check-cast p2, Landroid/view/WindowInsets;

    if-eqz p2, :cond_1

    .line 2044
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p4

    .line 2045
    :cond_1
    iget-object p2, p0, Lo/onViewStateRestored;->ICustomTabsCallback:Landroid/view/View;

    if-nez p2, :cond_2

    const-string p3, "parentLayout"

    invoke-static {p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2046
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p2, p3, v0, v1, p4}, Landroid/view/View;->setPadding(IIII)V

    const p2, 0x7f0b02e3

    .line 2048
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.errorSubHeader)"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/onViewStateRestored;->onNavigationEvent:Landroid/widget/TextView;

    const p2, 0x7f0b05ba

    .line 2049
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view.findViewById(R.id.neoCtaButton)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/saveOldPosition;

    iput-object p1, p0, Lo/onViewStateRestored;->asBinder:Lo/saveOldPosition;

    .line 2050
    invoke-direct {p0}, Lo/onViewStateRestored;->onMessageChannelReady()V

    return-void
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIB)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lo/onViewStateRestored;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final onMessageChannelReady()V
    .locals 3

    .line 54
    iget-object v0, p0, Lo/onViewStateRestored;->onPostMessage:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "errorHeader"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060238

    invoke-static {v1, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v0, p0, Lo/onViewStateRestored;->onNavigationEvent:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v1, "errorSubHeader"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public final setData(Lo/onViewStateRestored$onNavigationEvent;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v1, p0, Lo/onViewStateRestored;->onPostMessage:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const-string v2, "errorHeader"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1018
    :cond_0
    iget-object v2, p1, Lo/onViewStateRestored$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 65
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lo/onViewStateRestored;->onNavigationEvent:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const-string v2, "errorSubHeader"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1019
    :cond_1
    iget-object v2, p1, Lo/onViewStateRestored$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 66
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lo/onViewStateRestored;->asBinder:Lo/saveOldPosition;

    const-string v2, "ctaNeu"

    if-nez v1, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    iget-object v1, p1, Lo/onViewStateRestored$onNavigationEvent;->extraCallback:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 68
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-ne v1, v3, :cond_6

    .line 69
    iget-object v1, p0, Lo/onViewStateRestored;->asBinder:Lo/saveOldPosition;

    if-nez v1, :cond_4

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lo/onViewStateRestored;->asBinder:Lo/saveOldPosition;

    if-nez v0, :cond_5

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2020
    :cond_5
    iget-object v1, p1, Lo/onViewStateRestored$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 70
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_6
    iget-object v0, p0, Lo/onViewStateRestored;->asBinder:Lo/saveOldPosition;

    if-nez v0, :cond_7

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_7
    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/onViewStateRestored$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/onViewStateRestored$ICustomTabsCallback;-><init>(Lo/onViewStateRestored;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 76
    iget-object v0, p0, Lo/onViewStateRestored;->onMessageChannelReady:Landroid/widget/ImageView;

    if-nez v0, :cond_8

    const-string v1, "image"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2022
    :cond_8
    iget p1, p1, Lo/onViewStateRestored$onNavigationEvent;->ICustomTabsCallback:I

    .line 76
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final setOnCtaClick(Lo/getServerTime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lo/onViewStateRestored;->extraCallback:Lo/getServerTime;

    return-void
.end method

.method public final setUiTheme(Z)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lo/onViewStateRestored;->onMessageChannelReady()V

    return-void
.end method
