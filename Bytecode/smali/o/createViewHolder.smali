.class public final Lo/createViewHolder;
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
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0016J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/TrophyWinTypesHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "backgroundView",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "kotlin.jvm.PlatformType",
        "cardBackGroundView",
        "Landroid/view/View;",
        "cardContainer",
        "Lcom/dreamplug/widget/RoundedFrameLayout;",
        "sectionType",
        "Lcom/dreamplug/widget/CredTextView;",
        "typeLogo",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "payload",
        "payloads",
        "",
        "",
        "updateSelection",
        "isSelected",
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
.field private final ICustomTabsCallback:Lo/setSpeed;

.field private final extraCallback:Landroid/view/View;

.field private final onMessageChannelReady:Lo/setSpeed;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "parent"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$inflate"

    .line 13010
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13011
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0e01a6

    invoke-virtual {v2, v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v2, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p2

    .line 26
    invoke-direct {v0, v1, v2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 28
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    iput-object v1, v0, Lo/createViewHolder;->ICustomTabsCallback:Lo/setSpeed;

    .line 29
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->sectionType:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    iput-object v1, v0, Lo/createViewHolder;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 30
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->typeLogo:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    iput-object v1, v0, Lo/createViewHolder;->onMessageChannelReady:Lo/setSpeed;

    .line 31
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->cardBackGroundView:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lo/createViewHolder;->extraCallback:Landroid/view/View;

    .line 32
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->cardContainer:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    sget-object v1, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    .line 13019
    invoke-static {}, Lo/clearOldPosition;->onNavigationEvent()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 14000
    sget-object v1, Lo/clearOldPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const v5, 0x10100a1

    const-string v6, "cardBackGroundView"

    const/high16 v7, 0x41a00000    # 20.0f

    const-string v8, "Resources.getSystem()"

    if-nez v1, :cond_2

    .line 37
    iget-object v1, v0, Lo/createViewHolder;->extraCallback:Landroid/view/View;

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v9, v4, [I

    aput v5, v9, v3

    .line 38
    new-instance v3, Lo/isBound;

    .line 14009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 14010
    invoke-static {v4, v7, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfe

    const/16 v19, 0x0

    move-object v10, v3

    .line 38
    invoke-direct/range {v10 .. v19}, Lo/isBound;-><init>(FIZZZZFIB)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v9, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 37
    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 41
    :cond_2
    iget-object v1, v0, Lo/createViewHolder;->extraCallback:Landroid/view/View;

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v9, v4, [I

    aput v5, v9, v3

    .line 42
    new-instance v5, Lo/isRemoved;

    const/4 v15, 0x0

    const-wide v13, 0x3fd3333333333333L    # 0.3

    const v12, 0x1af8f8f8

    .line 15009
    invoke-static {v12, v13, v14, v15}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v11

    .line 16009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 16010
    invoke-static {v4, v7, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xc

    move-object v10, v5

    const v7, 0x1af8f8f8

    move/from16 v12, v16

    move-object/from16 p2, v8

    move-wide v7, v13

    move/from16 v13, v17

    move-object/from16 v14, v18

    move-object v7, v15

    move/from16 v15, v19

    .line 42
    invoke-direct/range {v10 .. v15}, Lo/isRemoved;-><init>(IFFLo/MediaSessionCompat$1$onMessageChannelReady;I)V

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v9, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v5, v4, [I

    const v8, 0x10100a7

    aput v8, v5, v3

    .line 43
    new-instance v8, Lo/isRemoved;

    const-wide v9, 0x3fd3333333333333L    # 0.3

    const v11, 0x1af8f8f8

    .line 17009
    invoke-static {v11, v9, v10, v7}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v10

    .line 18009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v15, p2

    invoke-static {v7, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v9, 0x41a00000    # 20.0f

    .line 18010
    invoke-static {v4, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc

    move-object v9, v8

    .line 43
    invoke-direct/range {v9 .. v14}, Lo/isRemoved;-><init>(IFFLo/MediaSessionCompat$1$onMessageChannelReady;I)V

    check-cast v8, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v3, [I

    .line 44
    new-instance v5, Lo/isBound;

    .line 19009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v8, 0x41a00000    # 20.0f

    .line 19010
    invoke-static {v4, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfe

    const/16 v25, 0x0

    move-object/from16 v16, v5

    .line 44
    invoke-direct/range {v16 .. v25}, Lo/isBound;-><init>(FIZZZZFIB)V

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 41
    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :goto_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/createViewHolder$2;

    invoke-direct {v2, v0}, Lo/createViewHolder$2;-><init>(Lo/createViewHolder;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/createViewHolder;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/createViewHolder;->extraCallback:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/createViewHolder;)V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, v0}, Lo/createViewHolder;->onPostMessage(Z)V

    return-void
.end method

.method private final onPostMessage(Z)V
    .locals 3

    .line 71
    iget-object v0, p0, Lo/createViewHolder;->extraCallback:Landroid/view/View;

    const-string v1, "cardBackGroundView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 72
    iget-object v0, p0, Lo/createViewHolder;->extraCallback:Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 74
    :cond_0
    iget-object v0, p0, Lo/createViewHolder;->onMessageChannelReady:Lo/setSpeed;

    const-string/jumbo v1, "typeLogo"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f400000    # 0.75f

    :goto_0
    invoke-virtual {v0, v2}, Lo/setSpeed;->setAlpha(F)V

    .line 75
    iget-object v0, p0, Lo/createViewHolder;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "sectionType"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 76
    iget-object v0, p0, Lo/createViewHolder;->onPostMessage:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10096
    iget-object v1, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    if-eqz p1, :cond_3

    const p1, 0x7f090001

    goto :goto_2

    :cond_3
    const p1, 0x7f090005

    .line 76
    :goto_2
    invoke-static {v1, p1}, Lo/containsKey;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 14

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    instance-of v0, p1, Lo/setHasStableIds;

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lo/createViewHolder;->ICustomTabsCallback:Lo/setSpeed;

    const-string v1, "backgroundView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object v0, v0, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Lo/setMaxFrame;

    .line 58
    check-cast v0, Lo/getComposition;

    check-cast p1, Lo/setHasStableIds;

    .line 3025
    iget-object v2, p1, Lo/setHasStableIds;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    .line 3029
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v2, :cond_0

    .line 3078
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 4009
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "Resources.getSystem()"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x1

    .line 4010
    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 58
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v2, v1, v3, v1, v4}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 4564
    invoke-virtual {v0, v3, v2}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v6, p0, Lo/createViewHolder;->onMessageChannelReady:Lo/setSpeed;

    const-string/jumbo v0, "typeLogo"

    invoke-static {v6, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5025
    iget-object v0, p1, Lo/setHasStableIds;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    .line 5029
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v0, :cond_1

    .line 5076
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;

    if-eqz v0, :cond_1

    .line 5096
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->onPostMessage:Ljava/lang/String;

    :cond_1
    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3e

    .line 59
    invoke-static/range {v6 .. v13}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 60
    iget-object v0, p0, Lo/createViewHolder;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "sectionType"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6025
    iget-object v1, p1, Lo/setHasStableIds;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    .line 6027
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;->extraCallback:Ljava/lang/String;

    .line 60
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7025
    iget-object v0, p1, Lo/setHasStableIds;->onMessageChannelReady:Ljava/lang/Boolean;

    .line 61
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 62
    invoke-direct {p0, v0}, Lo/createViewHolder;->onPostMessage(Z)V

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    .line 8025
    iget-object v2, p1, Lo/setHasStableIds;->extraCallback:Ljava/lang/Integer;

    .line 8043
    new-instance v4, Lo/addWrite;

    const-string v6, "position"

    invoke-direct {v4, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v3

    .line 9025
    iget-object p1, p1, Lo/setHasStableIds;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;

    .line 9027
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinningTypes;->extraCallback:Ljava/lang/String;

    .line 9043
    new-instance v2, Lo/addWrite;

    const-string v3, "filter_name"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    const-string p1, "pairs"

    .line 63
    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "trophy_room_filter_type_land"

    .line 63
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_1

    .line 2215
    :cond_2
    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method public final onPostMessage(Lo/StaggeredGridLayoutManager;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/StaggeredGridLayoutManager;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    instance-of v0, p1, Lo/setHasStableIds;

    if-eqz v0, :cond_1

    .line 81
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "selectionChanged"

    .line 82
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/createViewHolder;->extraCallback:Landroid/view/View;

    const-string v1, "cardBackGroundView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lo/setHasStableIds;

    .line 11025
    iget-object v2, v1, Lo/setHasStableIds;->onMessageChannelReady:Ljava/lang/Boolean;

    .line 82
    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 12025
    iget-object v0, v1, Lo/setHasStableIds;->onMessageChannelReady:Ljava/lang/Boolean;

    .line 83
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 84
    invoke-direct {p0, v0}, Lo/createViewHolder;->onPostMessage(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
