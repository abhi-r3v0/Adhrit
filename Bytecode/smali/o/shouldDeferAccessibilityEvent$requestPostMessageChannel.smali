.class public final Lo/shouldDeferAccessibilityEvent$requestPostMessageChannel;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldDeferAccessibilityEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsFragment$setRecyclerViewScrollListener$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrolled",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "dx",
        "",
        "dy",
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
.field private synthetic onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;


# direct methods
.method constructor <init>(Lo/shouldDeferAccessibilityEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lo/shouldDeferAccessibilityEvent$requestPostMessageChannel;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 418
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 419
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    .line 420
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    if-le p1, p2, :cond_0

    .line 422
    iget-object p1, p0, Lo/shouldDeferAccessibilityEvent$requestPostMessageChannel;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {p1}, Lo/shouldDeferAccessibilityEvent;->ICustomTabsCallback$Stub(Lo/shouldDeferAccessibilityEvent;)Lo/saveFocusInfo;

    move-result-object p1

    iget-object p2, p0, Lo/shouldDeferAccessibilityEvent$requestPostMessageChannel;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {p2}, Lo/shouldDeferAccessibilityEvent;->onRelationshipValidationResult(Lo/shouldDeferAccessibilityEvent;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lo/shouldDeferAccessibilityEvent$requestPostMessageChannel;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {p3}, Lo/shouldDeferAccessibilityEvent;->asBinder(Lo/shouldDeferAccessibilityEvent;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/saveFocusInfo;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 418
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
