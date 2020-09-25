.class public final Lo/getHeightMode;
.super Lo/getPaddingRight;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J-\u0010\u001a\u001a\u00020\u00172\u0014\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002\u00a2\u0006\u0002\u0010!J!\u0010\"\u001a\u00020\u00172\u0008\u0010#\u001a\u0004\u0018\u00010 2\u0008\u0010$\u001a\u0004\u0018\u00010 H\u0002\u00a2\u0006\u0002\u0010%R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \r*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \r*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHolderHome3;",
        "Lcom/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "animationListener",
        "Lcom/dreamplug/fabrik/ui/nba/NBAFragment$OnAnimationListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;Lcom/dreamplug/fabrik/ui/nba/NBAFragment$OnAnimationListener;)V",
        "getAnimationListener",
        "()Lcom/dreamplug/fabrik/ui/nba/NBAFragment$OnAnimationListener;",
        "cta1",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "kotlin.jvm.PlatformType",
        "itemRoot",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "marginView",
        "Landroid/view/View;",
        "getOnItemClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "subTitle",
        "title",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "setBody",
        "body",
        "",
        "",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "limit",
        "",
        "(Ljava/util/Map;Ljava/lang/Float;)V",
        "setVerticalContentLimit",
        "verticalLimit",
        "aspectRatio",
        "(Ljava/lang/Float;Ljava/lang/Float;)V",
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
.field private final ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatTextView;

.field private final extraCallback:Landroid/view/View;

.field private final onMessageChannelReady:Landroidx/appcompat/widget/AppCompatTextView;

.field private final onPostMessage:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/dispatchAttachedToWindow$ICustomTabsCallback;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationListener"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 15010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e015b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, v0, p2, p3}, Lo/getPaddingRight;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;Lo/dispatchAttachedToWindow$ICustomTabsCallback;)V

    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->cta1:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lo/getHeightMode;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->itemRoot:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->subTitle:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lo/getHeightMode;->onPostMessage:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lo/getHeightMode;->ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->marginView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/getHeightMode;->extraCallback:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    instance-of v2, v1, Lo/detachAndScrapViewAt;

    if-eqz v2, :cond_f

    .line 46
    invoke-super/range {p0 .. p1}, Lo/getPaddingRight;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V

    .line 47
    move-object v2, v1

    check-cast v2, Lo/detachAndScrapViewAt;

    .line 1007
    iget-object v3, v2, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 1024
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 1033
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onNavigationEvent:Ljava/util/Map;

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    const/4 v6, 0x0

    if-eqz v3, :cond_7

    .line 2007
    iget-object v7, v2, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 2024
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 2032
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v7, :cond_0

    .line 2109
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onRelationshipValidationResult:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    move-object v7, v6

    .line 3070
    :goto_0
    iget-object v8, v0, Lo/getHeightMode;->ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v9, "title"

    invoke-static {v8, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/TextView;

    const-string/jumbo v10, "text_1"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/getTargetScrollPosition;

    if-eqz v10, :cond_1

    .line 4000
    iget-object v10, v10, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v10}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v10, v6

    .line 3070
    :goto_1
    invoke-static {v8, v10}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 3071
    iget-object v8, v0, Lo/getHeightMode;->onPostMessage:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v10, "subTitle"

    invoke-static {v8, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/TextView;

    const-string/jumbo v11, "text_2"

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getTargetScrollPosition;

    if-eqz v3, :cond_2

    .line 5000
    iget-object v3, v3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object v3, v6

    .line 3071
    :goto_2
    invoke-static {v8, v3}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 3072
    iget-object v3, v0, Lo/getHeightMode;->ICustomTabsCallback:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    .line 3084
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_6

    check-cast v8, Lo/onChildrenLoaded$onPostMessage;

    check-cast v8, Landroid/view/ViewGroup$LayoutParams;

    .line 3085
    move-object v9, v8

    check-cast v9, Lo/onChildrenLoaded$onPostMessage;

    if-eqz v7, :cond_3

    .line 3073
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v11

    goto :goto_3

    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_3
    iput v11, v9, Lo/onChildrenLoaded$onPostMessage;->RemoteActionCompatParcelizer:F

    .line 3086
    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3075
    iget-object v3, v0, Lo/getHeightMode;->onPostMessage:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    .line 3088
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_5

    check-cast v8, Lo/onChildrenLoaded$onPostMessage;

    check-cast v8, Landroid/view/ViewGroup$LayoutParams;

    .line 3089
    move-object v9, v8

    check-cast v9, Lo/onChildrenLoaded$onPostMessage;

    if-eqz v7, :cond_4

    .line 3076
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    goto :goto_4

    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_4
    iput v7, v9, Lo/onChildrenLoaded$onPostMessage;->RemoteActionCompatParcelizer:F

    .line 3090
    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 3088
    :cond_5
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3084
    :cond_6
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5007
    :cond_7
    :goto_5
    iget-object v3, v2, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 5024
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 5035
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/Footer;

    const/4 v7, 0x1

    const-string v8, "Resources.getSystem()"

    const-string v9, "cta1"

    if-eqz v3, :cond_9

    .line 5116
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/Footer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz v3, :cond_9

    .line 51
    iget-object v10, v0, Lo/getHeightMode;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v10, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/view/View;

    const-string v11, "$this$visible"

    invoke-static {v10, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 6009
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v10, v0, Lo/getHeightMode;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v10, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getTitle()Lo/getTargetScrollPosition;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 7000
    iget-object v11, v11, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v11}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    goto :goto_6

    :cond_8
    move-object v11, v6

    .line 52
    :goto_6
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v10, v0, Lo/getHeightMode;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v10, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v10

    check-cast v11, Landroid/view/View;

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getBackgroundColor()Ljava/lang/String;

    move-result-object v12

    .line 7021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v10, 0x41c00000    # 24.0f

    .line 7022
    invoke-static {v7, v10, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x7c

    .line 53
    invoke-static/range {v11 .. v18}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    .line 54
    iget-object v3, v0, Lo/getHeightMode;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    new-instance v9, Lo/getHeightMode$onPostMessage;

    invoke-direct {v9, v0, v1}, Lo/getHeightMode$onPostMessage;-><init>(Lo/getHeightMode;Lo/StaggeredGridLayoutManager;)V

    check-cast v9, Lo/onDisconnectSetValue;

    invoke-static {v3, v9}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    goto :goto_7

    .line 55
    :cond_9
    move-object v1, v0

    check-cast v1, Lo/getHeightMode;

    .line 56
    iget-object v1, v1, Lo/getHeightMode;->onMessageChannelReady:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const-string v3, "$this$gone"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 8017
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9007
    :goto_7
    iget-object v1, v2, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 9024
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 9032
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v1, :cond_a

    .line 9110
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->ICustomTabsCallback$Stub:Ljava/lang/Float;

    goto :goto_8

    :cond_a
    move-object v1, v6

    .line 10007
    :goto_8
    iget-object v2, v2, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 10024
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 10032
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v2, :cond_b

    .line 10106
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Asset;

    if-eqz v2, :cond_b

    .line 10180
    iget-object v6, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Asset;->extraCallback:Ljava/lang/Float;

    .line 11063
    :cond_b
    sget-object v2, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    .line 13000
    sget-object v2, Lo/sortAndDedup;->extraCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sortAndDedup$ICustomTabsCallback;

    .line 13043
    iget v2, v2, Lo/sortAndDedup$ICustomTabsCallback;->ICustomTabsCallback:I

    int-to-float v2, v2

    .line 14021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v8, 0x41900000    # 18.0f

    .line 14022
    invoke-static {v7, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    sub-float/2addr v2, v3

    if-eqz v6, :cond_c

    .line 11063
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v3

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    :goto_9
    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 11064
    iget-object v3, v0, Lo/getHeightMode;->extraCallback:Landroid/view/View;

    const-string v6, "marginView"

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11080
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_e

    check-cast v6, Lo/onChildrenLoaded$onPostMessage;

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    .line 11081
    move-object v5, v6

    check-cast v5, Lo/onChildrenLoaded$onPostMessage;

    if-eqz v1, :cond_d

    .line 11065
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_a

    :cond_d
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_a
    sub-float/2addr v4, v1

    int-to-float v1, v2

    mul-float v4, v4, v1

    float-to-int v1, v4

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11082
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 11080
    :cond_e
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_b
    return-void
.end method
