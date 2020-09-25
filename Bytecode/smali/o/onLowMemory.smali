.class public final Lo/onLowMemory;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onLowMemory$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0012\u001a\u00020\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\u0013H\u0014J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0012\u0010\u0016\u001a\u00020\u00132\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000fH\u0002J\u0008\u0010\u0018\u001a\u00020\u0013H\u0002R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/ui/widget/InsetView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "(Landroid/content/Context;)V",
        "defStyle",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "extraHeight",
        "insetType",
        "insetsObserver",
        "Landroidx/lifecycle/Observer;",
        "Landroid/view/WindowInsets;",
        "isVisible",
        "",
        "onAttachedToWindow",
        "",
        "onDetachedFromWindow",
        "onVisibilityAggregated",
        "updateHeight",
        "it",
        "updateSubscription",
        "Companion",
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
.field private final ICustomTabsCallback:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:I

.field private onMessageChannelReady:Z

.field private onPostMessage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lo/onLowMemory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lo/onLowMemory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    sget-object p3, Lo/getSwitchMinWidth$onMessageChannelReady;->InsetView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 25
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lo/onLowMemory;->extraCallback:I

    .line 26
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lo/onLowMemory;->onPostMessage:I

    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    new-instance p1, Lo/onLowMemory$onMessageChannelReady;

    invoke-direct {p1, p0}, Lo/onLowMemory$onMessageChannelReady;-><init>(Lo/onLowMemory;)V

    check-cast p1, Lo/setPlaybackToRemote;

    iput-object p1, p0, Lo/onLowMemory;->ICustomTabsCallback:Lo/setPlaybackToRemote;

    return-void
.end method

.method private final onNavigationEvent()V
    .locals 2

    .line 49
    iget-boolean v0, p0, Lo/onLowMemory;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/onLowMemory;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object v0

    iget-object v1, p0, Lo/onLowMemory;->ICustomTabsCallback:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    return-void

    .line 52
    :cond_0
    sget-object v0, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object v0

    iget-object v1, p0, Lo/onLowMemory;->ICustomTabsCallback:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    return-void
.end method

.method private final onNavigationEvent(Landroid/view/WindowInsets;)V
    .locals 3

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 62
    iget v1, p0, Lo/onLowMemory;->extraCallback:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    :cond_0
    iget p1, p0, Lo/onLowMemory;->onPostMessage:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    :cond_2
    iget p1, p0, Lo/onLowMemory;->onPostMessage:I

    :goto_0
    add-int/2addr v2, p1

    if-nez v2, :cond_3

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lo/onChildrenLoaded;

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/onLowMemory;Landroid/view/WindowInsets;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lo/onLowMemory;->onNavigationEvent(Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method protected final onAttachedToWindow()V
    .locals 2

    .line 32
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 33
    sget-object v0, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object v0

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    check-cast v0, Landroid/view/WindowInsets;

    invoke-direct {p0, v0}, Lo/onLowMemory;->onNavigationEvent(Landroid/view/WindowInsets;)V

    .line 34
    invoke-direct {p0}, Lo/onLowMemory;->onNavigationEvent()V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/onLowMemory;->onNavigationEvent()V

    .line 39
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 44
    iput-boolean p1, p0, Lo/onLowMemory;->onMessageChannelReady:Z

    .line 45
    invoke-direct {p0}, Lo/onLowMemory;->onNavigationEvent()V

    return-void
.end method
