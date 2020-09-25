.class public final Lo/dispatchNestedPreScroll;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dispatchNestedPreScroll$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0017\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a2\u0006\u0002\u0010\rJ\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\nH\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/trophyroom/TrophyRoomAdapter;",
        "Lcom/dreamplug/utils/list/CardsAdapter;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "recycledViewPool",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        "getItemViewType",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "(Lcom/dreamplug/utils/list/ListItem;)Ljava/lang/Integer;",
        "onCreateViewHolder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/dispatchNestedPreScroll$onPostMessage;

.field private static final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private final onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lo/dispatchNestedPreScroll$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dispatchNestedPreScroll$onPostMessage;-><init>(B)V

    sput-object v0, Lo/dispatchNestedPreScroll;->extraCallback:Lo/dispatchNestedPreScroll$onPostMessage;

    const-string/jumbo v0, "result_awaited_card"

    const-string/jumbo v1, "result_announced_card"

    const-string/jumbo v2, "textual_winning_card"

    const-string v3, "cashback_winning_card"

    const-string/jumbo v4, "win_type_loader"

    .line 64
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "elements"

    .line 63
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$asList"

    .line 6076
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "ArraysUtilJVM.asList(this)"

    .line 6129
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sput-object v0, Lo/dispatchNestedPreScroll;->onMessageChannelReady:Ljava/util/List;

    const-string/jumbo v0, "trophy_room_social_proof_card"

    const-string/jumbo v4, "trophy_room_intro_card"

    .line 66
    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7076
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7129
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sput-object v0, Lo/dispatchNestedPreScroll;->onPostMessage:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/dispatchNestedPreScroll;-><init>(B)V

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, p1}, Lo/dispatchNestedPreScroll;-><init>(Lo/hasGapsToFix$onMessageChannelReady;)V

    return-void
.end method

.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/dispatchNestedPreScroll;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    .line 15
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object p1, p0, Lo/dispatchNestedPreScroll;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback()Ljava/util/List;
    .locals 1

    .line 13
    sget-object v0, Lo/dispatchNestedPreScroll;->onPostMessage:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic onMessageChannelReady()Ljava/util/List;
    .locals 1

    .line 13
    sget-object v0, Lo/dispatchNestedPreScroll;->onMessageChannelReady:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/ViewGroup;I)Lo/createOrientationHelpers;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 28
    :pswitch_0
    new-instance p2, Lo/getChildDrawingOrder;

    invoke-direct {p2, p1}, Lo/getChildDrawingOrder;-><init>(Landroid/view/ViewGroup;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 27
    :pswitch_1
    new-instance p2, Lo/onCreateViewHolder;

    invoke-direct {p2, p1}, Lo/onCreateViewHolder;-><init>(Landroid/view/ViewGroup;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 26
    :pswitch_2
    new-instance p2, Lo/dispatchNestedScroll;

    iget-object v0, p0, Lo/dispatchNestedPreScroll;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/dispatchNestedScroll;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 25
    :pswitch_3
    new-instance p2, Lo/getItemId;

    iget-object v0, p0, Lo/dispatchNestedPreScroll;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getItemId;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 24
    :pswitch_4
    new-instance p2, Lo/onViewRecycled;

    iget-object v0, p0, Lo/dispatchNestedPreScroll;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/onViewRecycled;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 23
    :pswitch_5
    new-instance p2, Lo/createViewHolder;

    iget-object v0, p0, Lo/dispatchNestedPreScroll;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/createViewHolder;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 21
    :pswitch_6
    new-instance p2, Lo/hasNestedScrollingParent;

    iget-object v0, p0, Lo/dispatchNestedPreScroll;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/hasNestedScrollingParent;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 22
    :pswitch_7
    new-instance p2, Lo/dispatchNestedFling;

    iget-object v0, p0, Lo/dispatchNestedPreScroll;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/dispatchNestedFling;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 20
    :pswitch_8
    new-instance p2, Lo/bindViewHolder;

    iget-object v0, p0, Lo/dispatchNestedPreScroll;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    iget-object v1, p0, Lo/dispatchNestedPreScroll;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0, v1}, Lo/bindViewHolder;-><init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 19
    :pswitch_9
    new-instance p2, Lo/getItemViewType;

    iget-object v0, p0, Lo/dispatchNestedPreScroll;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getItemViewType;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x7d01
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    instance-of v0, p1, Lo/dispatchNestedPreFling;

    if-eqz v0, :cond_0

    const/16 p1, 0x7d01

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    instance-of v0, p1, Lo/isNestedScrollingEnabled;

    const/16 v1, 0x7d02

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 37
    :cond_1
    instance-of v0, p1, Lo/onBindViewHolder;

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 38
    :cond_2
    instance-of v0, p1, Lo/initFastScroller;

    if-eqz v0, :cond_3

    move-object v1, p1

    check-cast v1, Lo/initFastScroller;

    .line 1012
    iget-object v1, v1, Lo/initFastScroller;->extraCallback:Ljava/lang/String;

    const-string/jumbo v2, "result_awaited_card"

    .line 38
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p1, 0x7d04

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    .line 39
    move-object v0, p1

    check-cast v0, Lo/initFastScroller;

    .line 2012
    iget-object v0, v0, Lo/initFastScroller;->extraCallback:Ljava/lang/String;

    const-string/jumbo v1, "result_announced_card"

    .line 39
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x7d03

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 40
    :cond_4
    instance-of v0, p1, Lo/setHasStableIds;

    if-eqz v0, :cond_5

    const/16 p1, 0x7d05

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 41
    :cond_5
    instance-of v0, p1, Lo/RecyclerView$Adapter;

    const/16 v1, 0x7d06

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    move-object v3, p1

    check-cast v3, Lo/RecyclerView$Adapter;

    .line 2014
    iget-object v3, v3, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 2051
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    if-eqz v3, :cond_6

    .line 2057
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_6
    move-object v3, v2

    :goto_0
    const-string/jumbo v4, "textual_winning_card"

    .line 41
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    if-eqz v0, :cond_9

    .line 42
    move-object v3, p1

    check-cast v3, Lo/RecyclerView$Adapter;

    .line 3014
    iget-object v3, v3, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 3051
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    if-eqz v3, :cond_8

    .line 3057
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_8
    move-object v3, v2

    :goto_1
    const-string/jumbo v4, "win_type_loader"

    .line 42
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz v0, :cond_b

    .line 43
    move-object v0, p1

    check-cast v0, Lo/RecyclerView$Adapter;

    .line 4014
    iget-object v0, v0, Lo/RecyclerView$Adapter;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;

    .line 4051
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TrophySectionCards;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    if-eqz v0, :cond_a

    .line 4057
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->onPostMessage:Ljava/lang/String;

    goto :goto_2

    :cond_a
    move-object v0, v2

    :goto_2
    const-string v1, "cashback_winning_card"

    .line 43
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0x7d07

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 44
    :cond_b
    instance-of v0, p1, Lo/getAdapterPositionFor;

    if-eqz v0, :cond_c

    const/16 p1, 0x7d08

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 45
    :cond_c
    instance-of v0, p1, Lo/access$300;

    if-eqz v0, :cond_d

    move-object v1, p1

    check-cast v1, Lo/access$300;

    .line 5010
    iget-object v1, v1, Lo/access$300;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    .line 5057
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->onPostMessage:Ljava/lang/String;

    const-string/jumbo v3, "trophy_room_social_proof_card"

    .line 45
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 p1, 0x7d09

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_d
    if-eqz v0, :cond_e

    .line 46
    check-cast p1, Lo/access$300;

    .line 6010
    iget-object p1, p1, Lo/access$300;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;

    .line 6057
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinTypeTemplateProperties;->onPostMessage:Ljava/lang/String;

    const-string/jumbo v0, "trophy_room_intro_card"

    .line 46
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p1, 0x7d0a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_e
    return-object v2
.end method
