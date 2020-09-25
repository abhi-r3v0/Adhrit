.class public final Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/snake/SnakeActivity$setupGame$1",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "onGlobalLayout",
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
.field private synthetic onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# direct methods
.method constructor <init>(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 9

    .line 76
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->gameFrame:I

    invoke-virtual {v0, v1}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "gameFrame"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->gameFrame:I

    invoke-virtual {v0, v2}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->gameFrame:I

    invoke-virtual {v0, v2}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 80
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 81
    iget-object v2, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->gameFrame:I

    invoke-virtual {v2, v3}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->gameFrame:I

    invoke-virtual {v3, v4}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "Resources.getSystem()"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v7, 0x1

    .line 1010
    invoke-static {v7, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 81
    rem-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 82
    iget-object v3, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->gameFrame:I

    invoke-virtual {v3, v4}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v8, Lo/getSwitchMinWidth$onPostMessage;->gameFrame:I

    invoke-virtual {v4, v8}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 2010
    invoke-static {v7, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 82
    rem-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 83
    iget-object v4, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->gameFrame:I

    invoke-virtual {v4, v5}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->gameFrame:I

    invoke-virtual {v5, v6}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 84
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 88
    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 90
    iget-object v1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    new-instance v2, Lo/RecyclerView$LayoutParams;

    iget-object v3, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "applicationContext"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lo/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/graphics/Point;)V

    invoke-static {v1, v2}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onMessageChannelReady(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;Lo/RecyclerView$LayoutParams;)V

    .line 91
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-static {v0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onNavigationEvent(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)Lo/RecyclerView$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/RecyclerView$LayoutParams;->onMessageChannelReady()V

    .line 92
    :cond_1
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->gameFrame:I

    invoke-virtual {v0, v1}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-static {v1}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onNavigationEvent(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)Lo/RecyclerView$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-static {v0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onNavigationEvent(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)Lo/RecyclerView$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    check-cast v1, Lo/RecyclerView$LayoutParams$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/RecyclerView$LayoutParams;->setScoreListener(Lo/RecyclerView$LayoutParams$onMessageChannelReady;)V

    .line 94
    :cond_2
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-static {v0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onNavigationEvent(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)Lo/RecyclerView$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Lo/RecyclerView$LayoutParams;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 95
    :cond_3
    iget-object v0, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-static {v0}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onMessageChannelReady(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 96
    iget-object v1, p0, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry$ICustomTabsCallback;->onNavigationEvent:Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    invoke-static {v1}, Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->onNavigationEvent(Lo/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)Lo/RecyclerView$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    new-array v2, v7, [Lo/addWrite;

    const/4 v3, 0x0

    .line 2043
    new-instance v4, Lo/addWrite;

    const-string v5, "event_id"

    invoke-direct {v4, v5, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const-string v0, "pairs"

    .line 96
    invoke-static {v2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v7}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 96
    invoke-virtual {v1, v0}, Lo/RecyclerView$LayoutParams;->setMutableMap(Ljava/util/HashMap;)V

    :cond_4
    :goto_0
    return-void
.end method
