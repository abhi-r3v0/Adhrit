.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J$\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0004\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "accelerateInterpolator",
        "Landroid/view/animation/AccelerateInterpolator;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "smoothScrollToPosition",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "position",
        "",
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
.field private final onNavigationEvent:Landroid/view/animation/AccelerateInterpolator;

.field private onPostMessage:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;->onPostMessage:Landroid/content/Context;

    .line 16
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;->onNavigationEvent:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;)Landroid/view/animation/AccelerateInterpolator;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;->onNavigationEvent:Landroid/view/animation/AccelerateInterpolator;

    return-object p0
.end method


# virtual methods
.method public final smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 20
    new-instance p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager$extraCallback;

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;->onPostMessage:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/SlowLinearLayoutManager;Landroid/content/Context;)V

    check-cast p1, Landroidx/recyclerview/widget/LinearSmoothScroller;

    .line 52
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 55
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
