.class public final Lo/setMeasuredDimensionFromChildren;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/max/OverviewCardViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cta",
        "Lcom/dreamplug/widget/CredTextView;",
        "kotlin.jvm.PlatformType",
        "footerView",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "text1",
        "text2",
        "topView",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field private final ICustomTabsCallback:Lo/setSpeed;

.field private final extraCallback:Lo/onChildrenLoaded;

.field private final onMessageChannelReady:Lo/createFullSpanItemFromEnd;

.field private final onNavigationEvent:Lo/createFullSpanItemFromEnd;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemClickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 16010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0156

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/setMeasuredDimensionFromChildren;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/setMeasuredDimensionFromChildren;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/setMeasuredDimensionFromChildren;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->topView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/setMeasuredDimensionFromChildren;->ICustomTabsCallback:Lo/setSpeed;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->footerView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/setMeasuredDimensionFromChildren;->extraCallback:Lo/onChildrenLoaded;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    instance-of v2, v1, Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;

    if-eqz v2, :cond_d

    .line 30
    check-cast v1, Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;

    .line 1025
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/max/TemplateProperties;

    if-eqz v1, :cond_d

    .line 31
    iget-object v2, v0, Lo/setMeasuredDimensionFromChildren;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v3, "text1"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 1047
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;->asInterface:Lo/getTargetScrollPosition;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 31
    :goto_0
    invoke-static {v2, v3}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 32
    iget-object v2, v0, Lo/setMeasuredDimensionFromChildren;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v3, "text2"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 2049
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;->ICustomTabsCallback$Stub:Lo/getTargetScrollPosition;

    if-eqz v3, :cond_1

    .line 3000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v3, v4

    .line 32
    :goto_1
    invoke-static {v2, v3}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 3037
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/max/Background;

    const/4 v3, 0x2

    const/4 v5, 0x0

    const-string/jumbo v6, "topView"

    const/4 v7, 0x1

    if-eqz v2, :cond_9

    .line 3068
    iget-object v8, v2, Lcom/dreamplug/fabrik/ui/max/Background;->onPostMessage:Lcom/dreamplug/fabrik/ui/max/Asset;

    if-eqz v8, :cond_2

    .line 4058
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/max/Asset;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v8, v4

    :goto_2
    const-string v9, "image"

    .line 3068
    invoke-static {v8, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 35
    iget-object v9, v0, Lo/setMeasuredDimensionFromChildren;->ICustomTabsCallback:Lo/setSpeed;

    invoke-static {v9, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4065
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/max/Background;->onPostMessage:Lcom/dreamplug/fabrik/ui/max/Asset;

    if-eqz v2, :cond_3

    .line 5059
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/max/Asset;->onNavigationEvent:Ljava/lang/String;

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object v10, v4

    :goto_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 35
    sget-object v13, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x36

    invoke-static/range {v9 .. v16}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 36
    iget-object v2, v0, Lo/setMeasuredDimensionFromChildren;->ICustomTabsCallback:Lo/setSpeed;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5116
    iget-object v2, v2, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 5216
    iget-object v2, v2, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v2, :cond_8

    check-cast v2, Lo/setMaxFrame;

    .line 36
    check-cast v2, Lo/getComposition;

    const-string/jumbo v8, "topView.hierarchy"

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->onPostMessage()Lo/setFailureListener$extraCallback;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 7369
    invoke-virtual {v2, v3}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object v2

    .line 7370
    instance-of v9, v2, Lo/fromAssets;

    if-eqz v9, :cond_4

    .line 7371
    check-cast v2, Lo/fromAssets;

    goto :goto_4

    .line 7373
    :cond_4
    sget-object v9, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {v2, v9}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object v2

    .line 8094
    :goto_4
    iget-object v9, v2, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v9, v8, :cond_6

    if-eqz v9, :cond_5

    .line 9053
    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v9, 0x1

    :goto_6
    if-nez v9, :cond_9

    .line 8098
    iput-object v8, v2, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 8099
    iput-object v4, v2, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 8100
    invoke-virtual {v2}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 8101
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_7

    .line 7215
    :cond_7
    throw v4

    .line 6215
    :cond_8
    throw v4

    .line 39
    :cond_9
    :goto_7
    iget-object v2, v0, Lo/setMeasuredDimensionFromChildren;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    const-string v8, "cta"

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 10041
    iget-object v9, v1, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/max/Cta;

    if-eqz v9, :cond_a

    .line 10074
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/max/Cta;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v9, :cond_a

    .line 11000
    iget-object v9, v9, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v9}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    goto :goto_8

    :cond_a
    move-object v9, v4

    .line 39
    :goto_8
    invoke-static {v2, v9}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 40
    iget-object v2, v0, Lo/setMeasuredDimensionFromChildren;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v8, Lo/setMeasuredDimensionFromChildren$onPostMessage;

    invoke-direct {v8, v0}, Lo/setMeasuredDimensionFromChildren$onPostMessage;-><init>(Lo/setMeasuredDimensionFromChildren;)V

    check-cast v8, Lo/onDisconnectSetValue;

    invoke-static {v2, v8}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 11009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "Resources.getSystem()"

    invoke-static {v8, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/high16 v10, 0x41600000    # 14.0f

    .line 11010
    invoke-static {v7, v10, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    aput v8, v2, v5

    .line 12009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 12010
    invoke-static {v7, v10, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    aput v5, v2, v7

    .line 13009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 13010
    invoke-static {v7, v10, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    aput v5, v2, v3

    .line 14009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 14010
    invoke-static {v7, v10, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    const/4 v5, 0x3

    aput v3, v2, v5

    const/4 v3, 0x4

    const/4 v7, 0x0

    aput v7, v2, v3

    const/4 v3, 0x5

    aput v7, v2, v3

    const/4 v3, 0x6

    aput v7, v2, v3

    const/4 v3, 0x7

    aput v7, v2, v3

    .line 44
    iget-object v3, v0, Lo/setMeasuredDimensionFromChildren;->ICustomTabsCallback:Lo/setSpeed;

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14037
    iget-object v6, v1, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/max/Background;

    if-eqz v6, :cond_b

    .line 14066
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/max/Background;->extraCallback:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_9

    :cond_b
    move-object v6, v4

    .line 44
    :goto_9
    invoke-static {v6, v4, v4, v2, v5}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Lo/setSpeed;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object v3, v0, Lo/setMeasuredDimensionFromChildren;->extraCallback:Lo/onChildrenLoaded;

    const-string v6, "footerView"

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15039
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/max/Background;

    if-eqz v1, :cond_c

    .line 15066
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/max/Background;->extraCallback:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_a

    :cond_c
    move-object v1, v4

    .line 45
    :goto_a
    invoke-static {v2}, Lo/isStopped;->extraCallback([F)[F

    move-result-object v2

    invoke-static {v1, v4, v4, v2, v5}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/onChildrenLoaded;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    return-void
.end method
