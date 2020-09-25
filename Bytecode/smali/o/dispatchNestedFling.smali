.class public final Lo/dispatchNestedFling;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0015H\u0002R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/TrophyResultsAnouncedHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "backgroundView",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "kotlin.jvm.PlatformType",
        "cardImage",
        "merchantLogo",
        "merchantName",
        "Lcom/dreamplug/widget/CredTextView;",
        "title",
        "winningTypeLogo",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "updateMode",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/SectionCardsItem;",
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

.field private final extraCallback:Lo/setSpeed;

.field private final onMessageChannelReady:Lo/createFullSpanItemFromEnd;

.field private final onNavigationEvent:Lo/setSpeed;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;

.field private final onTransact:Lo/setSpeed;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 20010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01af

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 25
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/dispatchNestedFling;->extraCallback:Lo/setSpeed;

    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->merchantLogo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/dispatchNestedFling;->onNavigationEvent:Lo/setSpeed;

    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->merchantName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/dispatchNestedFling;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/dispatchNestedFling;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->winningTypeLogo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/dispatchNestedFling;->ICustomTabsCallback:Lo/setSpeed;

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/dispatchNestedFling;->onTransact:Lo/setSpeed;

    .line 33
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lo/dispatchNestedFling$1;

    invoke-direct {p2, p0}, Lo/dispatchNestedFling$1;-><init>(Lo/dispatchNestedFling;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "item"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    instance-of v2, v1, Lo/initFastScroller;

    if-eqz v2, :cond_c

    .line 41
    iget-object v2, v0, Lo/dispatchNestedFling;->onTransact:Lo/setSpeed;

    const-string v3, "cardImage"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    check-cast v1, Lo/initFastScroller;

    .line 1012
    iget-object v4, v1, Lo/initFastScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    .line 83
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2012
    iget-object v2, v1, Lo/initFastScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    const-string v4, "Resources.getSystem()"

    if-eqz v2, :cond_b

    .line 3012
    iget-object v2, v1, Lo/initFastScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 3051
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    .line 45
    iget-object v3, v0, Lo/dispatchNestedFling;->extraCallback:Lo/setSpeed;

    const-string v7, "backgroundView"

    invoke-static {v3, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3116
    iget-object v3, v3, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 3216
    iget-object v3, v3, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v7, 0x0

    if-eqz v3, :cond_a

    check-cast v3, Lo/setMaxFrame;

    .line 45
    check-cast v3, Lo/getComposition;

    if-eqz v2, :cond_2

    .line 5066
    iget-object v8, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v8, :cond_2

    .line 5078
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onMessageChannelReady:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_2

    :cond_2
    move-object v8, v7

    .line 6009
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v9, 0x41800000    # 16.0f

    .line 6010
    invoke-static {v5, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 45
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v9, 0x5

    invoke-static {v8, v7, v4, v7, v9}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 6564
    invoke-virtual {v3, v6, v4}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_3

    .line 7062
    iget-object v9, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->onNavigationEvent:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 47
    iget-object v8, v0, Lo/dispatchNestedFling;->onNavigationEvent:Lo/setSpeed;

    const-string v3, "merchantLogo"

    invoke-static {v8, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    invoke-static/range {v8 .. v15}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    :cond_3
    if-eqz v2, :cond_4

    .line 7068
    iget-object v3, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->asBinder:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 50
    iget-object v4, v0, Lo/dispatchNestedFling;->ICustomTabsCallback:Lo/setSpeed;

    const-string/jumbo v8, "winningTypeLogo"

    invoke-static {v4, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3e

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    invoke-static/range {v16 .. v23}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 53
    :cond_4
    iget-object v3, v0, Lo/dispatchNestedFling;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    const-string v4, "merchantName"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 8058
    iget-object v4, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v4, :cond_5

    .line 9000
    iget-object v4, v4, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_5
    move-object v4, v7

    .line 53
    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v3, v0, Lo/dispatchNestedFling;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v4, "title"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_6

    .line 9059
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_6

    .line 10000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    .line 54
    :cond_6
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11012
    iget-object v2, v1, Lo/initFastScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    const-string v3, "dark"

    if-eqz v2, :cond_7

    .line 11051
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    if-eqz v2, :cond_7

    .line 11066
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->asInterface:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v2, :cond_7

    .line 11080
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->onPostMessage:Ljava/lang/String;

    if-nez v2, :cond_8

    :cond_7
    move-object v2, v3

    .line 10074
    :cond_8
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 10075
    iget-object v2, v0, Lo/dispatchNestedFling;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 11096
    iget-object v3, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    const v4, 0x7f060220

    .line 10075
    invoke-static {v3, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10076
    iget-object v2, v0, Lo/dispatchNestedFling;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 12096
    iget-object v3, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 10076
    invoke-static {v3, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 10078
    :cond_9
    iget-object v2, v0, Lo/dispatchNestedFling;->onMessageChannelReady:Lo/createFullSpanItemFromEnd;

    .line 13096
    iget-object v3, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    const v4, 0x7f0600c6

    .line 10078
    invoke-static {v3, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10079
    iget-object v2, v0, Lo/dispatchNestedFling;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 14096
    iget-object v3, v0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    .line 10079
    invoke-static {v3, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    const/4 v2, 0x3

    new-array v3, v2, [Lo/addWrite;

    .line 15012
    iget-object v4, v1, Lo/initFastScroller;->onPostMessage:Ljava/lang/String;

    .line 15043
    new-instance v7, Lo/addWrite;

    const-string/jumbo v8, "section_id"

    invoke-direct {v7, v8, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v6

    .line 16012
    iget-object v4, v1, Lo/initFastScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 16046
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->ICustomTabsCallback:Ljava/lang/String;

    .line 17043
    new-instance v6, Lo/addWrite;

    const-string v7, "game_id"

    invoke-direct {v6, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v5

    const/4 v4, 0x2

    .line 18012
    iget-object v1, v1, Lo/initFastScroller;->onNavigationEvent:Ljava/lang/Integer;

    .line 18043
    new-instance v5, Lo/addWrite;

    const-string v6, "position"

    invoke-direct {v5, v6, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    const-string v1, "pairs"

    .line 57
    invoke-static {v3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v2, "trophy_room_result_section_card_land"

    .line 57
    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    .line 4215
    :cond_a
    throw v7

    .line 63
    :cond_b
    iget-object v1, v0, Lo/dispatchNestedFling;->onTransact:Lo/setSpeed;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "cardImage.layoutParams"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v4, 0x43200000    # 160.0f

    .line 19010
    invoke-static {v5, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 64
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    iget-object v2, v0, Lo/dispatchNestedFling;->onTransact:Lo/setSpeed;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v1, v0, Lo/dispatchNestedFling;->onTransact:Lo/setSpeed;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0803e0

    invoke-static {v2, v3}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/setSpeed;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    return-void
.end method
