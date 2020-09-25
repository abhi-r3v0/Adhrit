.class final Lo/stopInterceptRequestLayout$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "inputList",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$2;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    .line 36
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    const-string v2, "inputList"

    .line 1280
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const/4 v6, 0x0

    if-eqz v4, :cond_10

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lo/scrollStep;

    if-eqz v4, :cond_10

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f

    check-cast v4, Lo/scrollStep;

    .line 2047
    iget-object v4, v4, Lo/scrollStep;->ICustomTabsCallback:Ljava/lang/String;

    const-string/jumbo v7, "slider"

    .line 1280
    invoke-static {v4, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1281
    iget-object v3, v0, Lo/stopInterceptRequestLayout$2;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 3036
    iget-object v3, v3, Lo/stopInterceptRequestLayout;->ICustomTabsService:Lo/isLayoutFrozen;

    .line 1281
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3058
    iput-object v1, v3, Lo/isLayoutFrozen;->warmup:Ljava/util/List;

    .line 3060
    iget-object v1, v3, Lo/isLayoutFrozen;->warmup:Ljava/util/List;

    const-string v2, "inputListData"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/scrollStep;

    .line 4049
    iget-object v1, v1, Lo/scrollStep;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 3060
    iput-object v1, v3, Lo/isLayoutFrozen;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 3061
    iget-object v1, v3, Lo/isLayoutFrozen;->warmup:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    iget-object v4, v3, Lo/isLayoutFrozen;->warmup:Ljava/util/List;

    if-nez v4, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/scrollStep;

    .line 5049
    iget-object v1, v1, Lo/scrollStep;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 3061
    iput-object v1, v3, Lo/isLayoutFrozen;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 3063
    iget-object v1, v3, Lo/isLayoutFrozen;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 5115
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->ICustomTabsCallback:Ljava/lang/Long;

    goto :goto_0

    :cond_3
    move-object v1, v4

    :goto_0
    if-nez v1, :cond_4

    .line 3063
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iput-wide v5, v3, Lo/isLayoutFrozen;->newSession:J

    .line 3064
    iget-object v1, v3, Lo/isLayoutFrozen;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    if-eqz v1, :cond_5

    .line 6115
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->ICustomTabsCallback:Ljava/lang/Long;

    goto :goto_1

    :cond_5
    move-object v1, v4

    :goto_1
    if-nez v1, :cond_6

    .line 3064
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iput-wide v5, v3, Lo/isLayoutFrozen;->ICustomTabsService:J

    .line 3066
    iget-object v1, v3, Lo/isLayoutFrozen;->onNavigationEvent:Landroid/widget/TextView;

    const-string v5, "minText"

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v3, Lo/isLayoutFrozen;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    if-nez v5, :cond_7

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 7113
    :cond_7
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->onPostMessage:Ljava/lang/String;

    .line 3066
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3067
    iget-object v1, v3, Lo/isLayoutFrozen;->extraCallback:Landroid/widget/TextView;

    const-string v5, "maxText"

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v3, Lo/isLayoutFrozen;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    if-nez v5, :cond_8

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 8113
    :cond_8
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->onPostMessage:Ljava/lang/String;

    .line 3067
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3069
    iget-wide v5, v3, Lo/isLayoutFrozen;->ICustomTabsService:J

    iget-wide v7, v3, Lo/isLayoutFrozen;->newSession:J

    sub-long/2addr v5, v7

    iput-wide v5, v3, Lo/isLayoutFrozen;->ICustomTabsCallback$Stub$Proxy:J

    .line 3071
    iget-object v1, v3, Lo/isLayoutFrozen;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    iput-object v1, v3, Lo/isLayoutFrozen;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 3072
    iget-object v1, v3, Lo/isLayoutFrozen;->warmup:Ljava/util/List;

    if-nez v1, :cond_9

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_9
    check-cast v1, Ljava/lang/Iterable;

    .line 3153
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/scrollStep;

    .line 9048
    iget-boolean v5, v2, Lo/scrollStep;->extraCallback:Z

    if-eqz v5, :cond_a

    .line 9049
    iget-object v2, v2, Lo/scrollStep;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 3072
    iput-object v2, v3, Lo/isLayoutFrozen;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    goto :goto_2

    .line 3073
    :cond_b
    iget-object v1, v3, Lo/isLayoutFrozen;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    if-eqz v1, :cond_d

    .line 3074
    iget-object v2, v3, Lo/isLayoutFrozen;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string/jumbo v5, "sliderAmount"

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9117
    iget-object v5, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v5, :cond_c

    .line 10000
    iget-object v4, v5, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 3074
    :cond_c
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3075
    iget-object v2, v3, Lo/isLayoutFrozen;->onMessageChannelReady:Landroid/widget/TextView;

    const-string v4, "currentText"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10113
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->onPostMessage:Ljava/lang/String;

    .line 3075
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3076
    invoke-virtual {v3}, Lo/isLayoutFrozen;->onMessageChannelReady()V

    .line 3078
    :cond_d
    iget-object v1, v3, Lo/isLayoutFrozen;->ICustomTabsCallback$Stub:Landroid/view/View;

    const-string/jumbo v2, "seekBarAnchorView"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_e

    check-cast v1, Lo/onChildrenLoaded$onPostMessage;

    .line 3080
    iget-object v2, v3, Lo/isLayoutFrozen;->onTransact:Lo/findFirstReferenceChildPosition;

    new-instance v4, Lo/isLayoutFrozen$onPostMessage;

    invoke-direct {v4, v3, v1}, Lo/isLayoutFrozen$onPostMessage;-><init>(Lo/isLayoutFrozen;Lo/onChildrenLoaded$onPostMessage;)V

    check-cast v4, Lo/findFirstReferenceChildPosition$onPostMessage;

    invoke-virtual {v2, v4}, Lo/findFirstReferenceChildPosition;->setOnSliderChangeListener(Lo/findFirstReferenceChildPosition$onPostMessage;)V

    return-void

    .line 3078
    :cond_e
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1280
    :cond_f
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lifestyle.redemption.InputTypeListItem"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1283
    :cond_10
    iget-object v2, v0, Lo/stopInterceptRequestLayout$2;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 11593
    iget-object v4, v2, Lo/stopInterceptRequestLayout;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    const/high16 v7, 0x41200000    # 10.0f

    const-string v8, "Resources.getSystem()"

    if-nez v4, :cond_11

    .line 11594
    iget-object v4, v2, Lo/stopInterceptRequestLayout;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    .line 11596
    new-instance v15, Lo/setGapStrategy;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 11597
    new-instance v12, Lo/getGapStrategy;

    invoke-direct {v12, v6, v6, v6, v6}, Lo/getGapStrategy;-><init>(IIII)V

    .line 11598
    new-instance v13, Lo/getGapStrategy;

    .line 12009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 12010
    invoke-static {v5, v7, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    .line 11598
    invoke-direct {v13, v9, v6, v6, v6}, Lo/getGapStrategy;-><init>(IIII)V

    const/4 v14, 0x3

    move-object v9, v15

    .line 11596
    invoke-direct/range {v9 .. v14}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 11595
    invoke-virtual {v4, v15}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 13000
    iget-object v2, v2, Lo/stopInterceptRequestLayout;->getDefaultImpl:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/repositionToWrapContentIfNecessary;

    .line 11601
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1284
    :cond_11
    iget-object v2, v0, Lo/stopInterceptRequestLayout$2;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 14000
    iget-object v2, v2, Lo/stopInterceptRequestLayout;->getDefaultImpl:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/repositionToWrapContentIfNecessary;

    .line 1284
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1285
    new-instance v1, Lo/onCreateView;

    .line 14009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 14010
    invoke-static {v5, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc

    const-string/jumbo v10, "top_anchor_space"

    move-object v9, v1

    .line 1285
    invoke-direct/range {v9 .. v14}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v4, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1286
    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1287
    new-instance v1, Lo/onCreateView;

    .line 15009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v6, 0x41f00000    # 30.0f

    .line 15010
    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xc

    const-string v16, "bottom_shim_padding"

    move-object v15, v1

    move/from16 v17, v3

    .line 1287
    invoke-direct/range {v15 .. v20}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v4, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1284
    check-cast v4, Ljava/util/List;

    const-string/jumbo v1, "value"

    invoke-static {v4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16000
    iget-object v1, v2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 15038
    invoke-virtual {v1, v4}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    return-void
.end method
