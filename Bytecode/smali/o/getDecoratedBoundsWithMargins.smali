.class public final Lo/getDecoratedBoundsWithMargins;
.super Lo/onChildrenLoaded;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDecoratedBoundsWithMargins$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001(B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J6\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001c\u001a\u00020\n2\u001c\u0008\u0002\u0010\u001d\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u001eJ\u0006\u0010 \u001a\u00020\u001aJ\u0006\u0010!\u001a\u00020\u001aJ\u0014\u0010\"\u001a\u00020\u001a2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$J \u0010&\u001a\u00020\u001a2\u0018\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\u001a0\u001eR\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR$\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0010R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelLayout;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "canReverse",
        "",
        "getCanReverse",
        "()Z",
        "value",
        "minNumberRotation",
        "getMinNumberRotation",
        "()I",
        "setMinNumberRotation",
        "(I)V",
        "numberOfPie",
        "getNumberOfPie",
        "revealView",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/RevealView;",
        "spinTheWheelView",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView;",
        "animateToPosition",
        "",
        "endPosition",
        "animate",
        "listener",
        "Lkotlin/Function2;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$State;",
        "doReverse",
        "playWinningSound",
        "setSlabList",
        "list",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelLayout$Slab;",
        "setSpinListener",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/widget/SpinTheWheelView$TouchState;",
        "Slab",
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
.field public final ICustomTabsCallback:Lo/offsetChildrenVertical;

.field public final onNavigationEvent:Lo/dispatchOnScrolled;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/getDecoratedBoundsWithMargins;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/getDecoratedBoundsWithMargins;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lo/onChildrenLoaded;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance p1, Lo/dispatchOnScrolled;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo p3, "this.context"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p1, p2, v0, v2, v1}, Lo/dispatchOnScrolled;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    iput-object p1, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    .line 18
    new-instance p1, Lo/offsetChildrenVertical;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, v0, v2, v1}, Lo/offsetChildrenVertical;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    iput-object p1, p0, Lo/getDecoratedBoundsWithMargins;->ICustomTabsCallback:Lo/offsetChildrenVertical;

    .line 33
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 34
    iget-object p1, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 35
    iget-object p1, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Lo/dispatchOnScrolled;->setLayerType(ILandroid/graphics/Paint;)V

    .line 36
    iget-object p1, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    iget-object p1, p0, Lo/getDecoratedBoundsWithMargins;->ICustomTabsCallback:Lo/offsetChildrenVertical;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    iget-object p1, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    iget-object p2, p0, Lo/getDecoratedBoundsWithMargins;->ICustomTabsCallback:Lo/offsetChildrenVertical;

    invoke-virtual {p1, p2}, Lo/dispatchOnScrolled;->setRevealView(Lo/offsetChildrenVertical;)V

    .line 41
    new-instance p1, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p1}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 42
    move-object p2, p0

    check-cast p2, Lo/onChildrenLoaded;

    invoke-virtual {p1, p2}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    .line 44
    iget-object p3, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    .line 43
    invoke-virtual {p1, p3, v2, v1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 50
    iget-object p3, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v0, 0x7

    .line 49
    invoke-virtual {p1, p3, v0, v1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 56
    iget-object p3, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v3, 0x4

    .line 55
    invoke-virtual {p1, p3, v3, v1, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 62
    iget-object p3, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v4, 0x3

    .line 61
    invoke-virtual {p1, p3, v4, v1, v4}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 67
    iget-object p3, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    .line 2518
    invoke-virtual {p1, p3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object p3

    const-string v1, "1:1"

    iput-object v1, p3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->validateRelationship:Ljava/lang/String;

    .line 70
    iget-object p3, p0, Lo/getDecoratedBoundsWithMargins;->ICustomTabsCallback:Lo/offsetChildrenVertical;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    .line 72
    iget-object v1, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 69
    invoke-virtual {p1, p3, v2, v1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 76
    iget-object p3, p0, Lo/getDecoratedBoundsWithMargins;->ICustomTabsCallback:Lo/offsetChildrenVertical;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    .line 78
    iget-object v1, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 75
    invoke-virtual {p1, p3, v0, v1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 82
    iget-object p3, p0, Lo/getDecoratedBoundsWithMargins;->ICustomTabsCallback:Lo/offsetChildrenVertical;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    .line 84
    iget-object v0, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 81
    invoke-virtual {p1, p3, v3, v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 88
    iget-object p3, p0, Lo/getDecoratedBoundsWithMargins;->ICustomTabsCallback:Lo/offsetChildrenVertical;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    .line 90
    iget-object v0, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 87
    invoke-virtual {p1, p3, v4, v0, v4}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 94
    invoke-virtual {p1, p2}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    return-void
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lo/getDecoratedBoundsWithMargins;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic onMessageChannelReady(Lo/getDecoratedBoundsWithMargins;ILo/nextTransactionOrder;)V
    .locals 1

    .line 2104
    iget-object p0, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lo/dispatchOnScrolled;->onNavigationEvent(IZLo/nextTransactionOrder;)V

    return-void
.end method


# virtual methods
.method public final setMinNumberRotation(I)V
    .locals 1

    .line 22
    iget-object v0, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    invoke-virtual {v0, p1}, Lo/dispatchOnScrolled;->setMinNumberRotation(I)V

    return-void
.end method

.method public final setSlabList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getDecoratedBoundsWithMargins$onNavigationEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    check-cast p1, Ljava/util/Collection;

    const-string v1, "$this$toMutableList"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/List;

    .line 109
    invoke-virtual {v0, v1}, Lo/dispatchOnScrolled;->setPieList(Ljava/util/List;)V

    return-void
.end method

.method public final setSpinListener(Lo/nextTransactionOrder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/nextTransactionOrder<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lo/dispatchOnScrolled$extraCallback;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lo/getDecoratedBoundsWithMargins;->onNavigationEvent:Lo/dispatchOnScrolled;

    invoke-virtual {v0, p1}, Lo/dispatchOnScrolled;->setSpinListener(Lo/nextTransactionOrder;)V

    return-void
.end method
