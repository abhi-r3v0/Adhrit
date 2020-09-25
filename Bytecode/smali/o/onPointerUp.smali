.class public final Lo/onPointerUp;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J$\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u0013H\u0002J\u0010\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/holder/StoreBannerViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "background",
        "Lcom/dreamplug/widget/RoundedFrameLayout;",
        "kotlin.jvm.PlatformType",
        "headerView",
        "Landroid/widget/TextView;",
        "imageView",
        "Lcom/dreamplug/ui/CredDraweeView;",
        "pit",
        "Lcom/dreamplug/ui/neu/PitView;",
        "shimmer",
        "Lcom/facebook/shimmer/ShimmerFrameLayout;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "handleAsset",
        "asset",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;",
        "contentDescription",
        "",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "startShimmer",
        "stopShimmerAndSetBackground",
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
.field private final ICustomTabsCallback:Lo/isScrap;

.field private final extraCallback:Lo/getNextSpan;

.field private final onMessageChannelReady:Landroid/widget/TextView;

.field private final onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

.field private final onPostMessage:Lo/getSharedPreferences;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 14010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0194

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->shimmer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getSharedPreferences;

    iput-object p1, p0, Lo/onPointerUp;->onPostMessage:Lo/getSharedPreferences;

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getNextSpan;

    iput-object p1, p0, Lo/onPointerUp;->extraCallback:Lo/getNextSpan;

    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->pit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/isScrap;

    iput-object p1, p0, Lo/onPointerUp;->ICustomTabsCallback:Lo/isScrap;

    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->imageView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/flagRemovedAndOffsetPosition;

    iput-object p1, p0, Lo/onPointerUp;->onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

    .line 34
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->headerView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/onPointerUp;->onMessageChannelReady:Landroid/widget/TextView;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/onPointerUp;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 14125
    iget-object v0, p0, Lo/onPointerUp;->onPostMessage:Lo/getSharedPreferences;

    .line 15095
    iget-object v0, v0, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    .line 16068
    iget-object v1, v0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 16075
    iget-object v1, v0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 16069
    iget-object v0, v0, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14126
    :cond_1
    iget-object v0, p0, Lo/onPointerUp;->onPostMessage:Lo/getSharedPreferences;

    const-string/jumbo v1, "shimmer"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$gone"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 17017
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14127
    iget-object p0, p0, Lo/onPointerUp;->extraCallback:Lo/getNextSpan;

    const-string v0, "background"

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo/getNextSpan;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    instance-of v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    if-eqz v2, :cond_b

    .line 38
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;

    .line 1037
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;

    .line 1057
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;->onNavigationEvent:Ljava/lang/String;

    const-string v3, "headerView"

    const-string v4, "$this$visible"

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 40
    iget-object v6, v0, Lo/onPointerUp;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-static {v6, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    invoke-static {v6, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2009
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v6, v0, Lo/onPointerUp;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-static {v6, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v2, v0, Lo/onPointerUp;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    const-string v3, "$this$gone"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 2017
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    :goto_0
    iget-object v2, v0, Lo/onPointerUp;->ICustomTabsCallback:Lo/isScrap;

    const-string v3, "pit"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    .line 131
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_a

    check-cast v3, Lo/onChildrenLoaded$onPostMessage;

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    .line 132
    move-object v6, v3

    check-cast v6, Lo/onChildrenLoaded$onPostMessage;

    .line 2037
    iget-object v7, v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;

    .line 2055
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Background;

    if-eqz v7, :cond_1

    .line 2077
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Background;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;

    if-eqz v7, :cond_1

    .line 2101
    iget v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;->onPostMessage:F

    goto :goto_1

    :cond_1
    const/high16 v7, 0x3fc00000    # 1.5f

    .line 47
    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    .line 133
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3037
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;

    .line 3055
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Background;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 3079
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Background;->onNavigationEvent:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_2

    :cond_2
    move-object v2, v3

    .line 4009
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "Resources.getSystem()"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x1

    .line 4010
    invoke-static {v8, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    .line 49
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v2, v3, v6, v3, v7}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4119
    iget-object v6, v0, Lo/onPointerUp;->extraCallback:Lo/getNextSpan;

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4120
    iget-object v6, v0, Lo/onPointerUp;->onPostMessage:Lo/getSharedPreferences;

    const-string/jumbo v7, "shimmer"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    invoke-static {v6, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5009
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4121
    iget-object v6, v0, Lo/onPointerUp;->onPostMessage:Lo/getSharedPreferences;

    .line 5090
    iget-object v6, v6, Lo/getSharedPreferences;->onNavigationEvent:Lo/і;

    .line 6061
    iget-object v7, v6, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_4

    .line 6075
    iget-object v7, v6, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_3

    iget-object v7, v6, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_4

    .line 6061
    invoke-virtual {v6}, Lo/і;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 6062
    iget-object v6, v6, Lo/і;->onMessageChannelReady:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 7037
    :cond_4
    iget-object v6, v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;

    .line 7055
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Background;

    if-eqz v6, :cond_9

    .line 7077
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Background;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;

    if-eqz v6, :cond_9

    .line 8037
    iget-object v7, v1, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;

    .line 8070
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/TemplateProperties;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreAccessibility;

    if-eqz v7, :cond_5

    .line 8114
    iget-object v3, v7, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreAccessibility;->onPostMessage:Ljava/lang/String;

    .line 10095
    :cond_5
    iget-object v7, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 9066
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    const v10, 0x18fc4

    const-string v11, "imageView"

    if-eq v9, v10, :cond_7

    const v10, 0x5faa95b

    if-eq v9, v10, :cond_6

    const v10, 0x6b0147b

    if-ne v9, v10, :cond_8

    const-string/jumbo v9, "video"

    .line 9088
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 9089
    iget-object v7, v0, Lo/onPointerUp;->onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

    invoke-static {v7, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    invoke-static {v7, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12009
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 9090
    iget-object v4, v0, Lo/onPointerUp;->onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

    invoke-static {v4, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v4

    check-cast v12, Lo/setSpeed;

    .line 12093
    iget-object v13, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;->onNavigationEvent:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 9090
    new-instance v4, Lo/onPointerUp$ICustomTabsCallback;

    invoke-direct {v4, v0, v2}, Lo/onPointerUp$ICustomTabsCallback;-><init>(Lo/onPointerUp;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v18, v4

    check-cast v18, Lo/onDisconnectSetValue;

    const/16 v19, 0x1e

    invoke-static/range {v12 .. v19}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 9098
    iget-object v2, v0, Lo/onPointerUp;->onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    const-string v9, "image"

    .line 9067
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_7
    const-string v9, "gif"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 9069
    :goto_4
    iget-object v7, v0, Lo/onPointerUp;->onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

    invoke-static {v7, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    invoke-static {v7, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11009
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 9070
    iget-object v4, v0, Lo/onPointerUp;->onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

    invoke-static {v4, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v4

    check-cast v12, Lo/setSpeed;

    .line 11097
    iget-object v13, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;->extraCallback:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 9070
    new-instance v4, Lo/onPointerUp$onNavigationEvent;

    invoke-direct {v4, v0, v2}, Lo/onPointerUp$onNavigationEvent;-><init>(Lo/onPointerUp;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v18, v4

    check-cast v18, Lo/onDisconnectSetValue;

    const/16 v19, 0x1e

    invoke-static/range {v12 .. v19}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 9078
    iget-object v2, v0, Lo/onPointerUp;->onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 9113
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unknown asset type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12095
    iget-object v3, v6, Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/Asset;->ICustomTabsCallback:Ljava/lang/String;

    .line 9113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 55
    :cond_9
    :goto_5
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lo/onPointerUp$extraCallback;

    invoke-direct {v3, v0}, Lo/onPointerUp$extraCallback;-><init>(Lo/onPointerUp;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {v2, v3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 59
    invoke-static {v1}, Lo/extraCallback;->extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/store/landing/StoreItem;)Ljava/util/Map;

    move-result-object v1

    new-array v2, v8, [Lo/addWrite;

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 13043
    new-instance v4, Lo/addWrite;

    const-string v6, "position"

    invoke-direct {v4, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v5

    const-string v3, "pairs"

    .line 59
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v8}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v2, "$this$plus"

    .line 59
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map"

    invoke-static {v3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13659
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    check-cast v2, Ljava/util/Map;

    .line 59
    invoke-static {v2}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "discover_card_land"

    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_6

    .line 131
    :cond_a
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_6
    return-void
.end method
