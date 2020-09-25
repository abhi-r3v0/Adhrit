.class final Lo/AppsFlyerLibCore$a$4;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AppsFlyerLibCore$a;->createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/AppsFlyerLibCore$a;


# direct methods
.method constructor <init>(Lo/AppsFlyerLibCore$a;Landroid/content/Context;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lo/AppsFlyerLibCore$a$4;->onNavigationEvent:Lo/AppsFlyerLibCore$a;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 246
    iget-object v0, p0, Lo/AppsFlyerLibCore$a$4;->onNavigationEvent:Lo/AppsFlyerLibCore$a;

    invoke-static {v0}, Lo/AppsFlyerLibCore$a;->onMessageChannelReady(Lo/AppsFlyerLibCore$a;)F

    move-result v0

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public final onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 2

    .line 230
    iget-object p2, p0, Lo/AppsFlyerLibCore$a$4;->onNavigationEvent:Lo/AppsFlyerLibCore$a;

    invoke-static {p2}, Lo/AppsFlyerLibCore$a;->onPostMessage(Lo/AppsFlyerLibCore$a;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/AppsFlyerLibCore$a$4;->onNavigationEvent:Lo/AppsFlyerLibCore$a;

    invoke-static {p2}, Lo/AppsFlyerLibCore$a;->onPostMessage(Lo/AppsFlyerLibCore$a;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iget-object p2, p0, Lo/AppsFlyerLibCore$a$4;->onNavigationEvent:Lo/AppsFlyerLibCore$a;

    invoke-static {p2}, Lo/AppsFlyerLibCore$a;->onPostMessage(Lo/AppsFlyerLibCore$a;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 236
    aget p2, p1, p2

    const/4 v0, 0x1

    .line 237
    aget p1, p1, v0

    .line 238
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/AppsFlyerLibCore$a$4;->calculateTimeForDeceleration(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 240
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    :goto_0
    return-void
.end method
