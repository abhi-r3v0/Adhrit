.class final Lo/findContainingViewHolder$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findContainingViewHolder;->onMessageChannelReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:I

.field private synthetic onPostMessage:Lo/findContainingViewHolder;


# direct methods
.method constructor <init>(Lo/findContainingViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lo/findContainingViewHolder$ICustomTabsCallback;->onPostMessage:Lo/findContainingViewHolder;

    iput p2, p0, Lo/findContainingViewHolder$ICustomTabsCallback;->onNavigationEvent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 74
    iget-object v0, p0, Lo/findContainingViewHolder$ICustomTabsCallback;->onPostMessage:Lo/findContainingViewHolder;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x30

    .line 75
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lo/findContainingViewHolder$ICustomTabsCallback;->onPostMessage:Lo/findContainingViewHolder;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    .line 76
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v3, 0x7f08014f

    .line 77
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v3, 0x0

    .line 78
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "Resources.getSystem()"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v8, 0x40600000    # 3.5f

    const/4 v9, 0x1

    .line 1010
    invoke-static {v9, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    const/high16 v11, 0x40c00000    # 6.0f

    .line 2010
    invoke-static {v9, v11, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 3010
    invoke-static {v9, v8, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    .line 4009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 4010
    invoke-static {v9, v11, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 80
    invoke-virtual {v1, v6, v10, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 81
    iget v6, p0, Lo/findContainingViewHolder$ICustomTabsCallback;->onNavigationEvent:I

    invoke-static {v4, v6}, Lo/findContainingViewHolder;->onMessageChannelReady(Landroid/widget/LinearLayout$LayoutParams;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v4, Lo/getChildViewHolder;

    iget-object v6, p0, Lo/findContainingViewHolder$ICustomTabsCallback;->onPostMessage:Lo/findContainingViewHolder;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v10, 0x6

    invoke-direct {v4, v6, v8, v10, v3}, Lo/getChildViewHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    .line 85
    new-instance v6, Lo/viewRangeUpdate;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v8, v0}, Lo/viewRangeUpdate;-><init>(Landroid/content/Context;I)V

    check-cast v6, Lo/markKnownViewsInvalid;

    invoke-virtual {v4, v6}, Lo/getChildViewHolder;->setViewAdapter(Lo/markKnownViewsInvalid;)V

    .line 86
    invoke-virtual {v4, v3}, Lo/getChildViewHolder;->setCurrentItem(I)V

    .line 87
    invoke-virtual {v4, v9}, Lo/getChildViewHolder;->setCyclic(Z)V

    .line 88
    new-instance v3, Lo/MediaControllerCompat$TransportControlsApi21;

    invoke-direct {v3}, Lo/MediaControllerCompat$TransportControlsApi21;-><init>()V

    check-cast v3, Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v3}, Lo/getChildViewHolder;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 89
    iget-object v3, p0, Lo/findContainingViewHolder$ICustomTabsCallback;->onPostMessage:Lo/findContainingViewHolder;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 90
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080150

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Lo/getChildViewHolder;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    add-int/lit8 v0, v0, 0x28

    invoke-direct {v2, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    move-object v0, v4

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lo/findContainingViewHolder$ICustomTabsCallback;->onPostMessage:Lo/findContainingViewHolder;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lo/findContainingViewHolder$ICustomTabsCallback;->onPostMessage:Lo/findContainingViewHolder;

    invoke-static {v0}, Lo/findContainingViewHolder;->onNavigationEvent(Lo/findContainingViewHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
