.class public final Lo/collectAdjacentPrefetchPositions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/collectAdjacentPrefetchPositions$onNavigationEvent;,
        Lo/collectAdjacentPrefetchPositions$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001a\u001bBC\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t\u00a2\u0006\u0002\u0010\rJ\u0017\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016\u00a2\u0006\u0002\u0010\u0014J\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0011H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/cards/LifestyleCardsAdapter;",
        "Lcom/dreamplug/utils/list/CardsAdapter;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "pageLoaded",
        "Lcom/dreamplug/fabrik/ui/lifestyle/cards/LifestyleCardsAdapter$PageLoaded;",
        "exoPlayerPool",
        "Lcom/dreamplug/fabrik/ui/lifestyle/util/ExoPlayerPool;",
        "selectedCardId",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RewardIdentifier;",
        "lifestyleState",
        "Landroidx/lifecycle/Lifecycle$State;",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;Lcom/dreamplug/fabrik/ui/lifestyle/cards/LifestyleCardsAdapter$PageLoaded;Lcom/dreamplug/fabrik/ui/lifestyle/util/ExoPlayerPool;Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/MutableLiveData;)V",
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
        "PageLoaded",
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
.field public static final onPostMessage:Lo/collectAdjacentPrefetchPositions$ICustomTabsCallback;

.field private static final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/onSizeChanged;

.field private final ICustomTabsCallback$Stub:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/removeItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private final onMessageChannelReady:Lo/collectAdjacentPrefetchPositions$onNavigationEvent;

.field private final onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lo/collectAdjacentPrefetchPositions$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/collectAdjacentPrefetchPositions$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/collectAdjacentPrefetchPositions;->onPostMessage:Lo/collectAdjacentPrefetchPositions$ICustomTabsCallback;

    const-string v2, "lr_1"

    const-string v3, "lr_2"

    const-string v4, "lc_1"

    const-string v5, "lr_5"

    const-string v6, "lc_2"

    const-string v7, "lr_6"

    const-string v8, "lr_7"

    const-string v9, "lr_8"

    .line 91
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "elements"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$asList"

    .line 9076
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "ArraysUtilJVM.asList(this)"

    .line 9129
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sput-object v0, Lo/collectAdjacentPrefetchPositions;->onRelationshipValidationResult:Ljava/util/List;

    const-string v0, "lr_3"

    const-string v4, "lr_4"

    .line 92
    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10076
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 10129
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sput-object v0, Lo/collectAdjacentPrefetchPositions;->onTransact:Ljava/util/List;

    const-string v0, "lc_1"

    const-string v4, "lc_2"

    .line 93
    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11076
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12013
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11129
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/onSizeChanged;Lo/setActive;Lo/setActive;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/hasGapsToFix$onMessageChannelReady;",
            "Lo/collectAdjacentPrefetchPositions$onNavigationEvent;",
            "Lo/onSizeChanged;",
            "Lo/setActive<",
            "Lo/removeItemDecoration;",
            ">;",
            "Lo/setActive<",
            "Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pageLoaded"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifestyleState"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/collectAdjacentPrefetchPositions;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    iput-object p2, p0, Lo/collectAdjacentPrefetchPositions;->onMessageChannelReady:Lo/collectAdjacentPrefetchPositions$onNavigationEvent;

    iput-object p3, p0, Lo/collectAdjacentPrefetchPositions;->ICustomTabsCallback:Lo/onSizeChanged;

    iput-object p4, p0, Lo/collectAdjacentPrefetchPositions;->ICustomTabsCallback$Stub:Lo/setActive;

    iput-object p5, p0, Lo/collectAdjacentPrefetchPositions;->asInterface:Lo/setActive;

    .line 25
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object p1, p0, Lo/collectAdjacentPrefetchPositions;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-void
.end method

.method public synthetic constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/setActive;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 21
    invoke-direct/range {v0 .. v5}, Lo/collectAdjacentPrefetchPositions;-><init>(Lo/hasGapsToFix$onMessageChannelReady;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/onSizeChanged;Lo/setActive;Lo/setActive;)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback()Ljava/util/List;
    .locals 1

    .line 17
    sget-object v0, Lo/collectAdjacentPrefetchPositions;->onTransact:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic onNavigationEvent()Ljava/util/List;
    .locals 1

    .line 17
    sget-object v0, Lo/collectAdjacentPrefetchPositions;->onRelationshipValidationResult:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/ViewGroup;I)Lo/createOrientationHelpers;
    .locals 7

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 51
    :pswitch_1
    new-instance p2, Lo/getClipToPadding;

    .line 53
    iget-object v3, p0, Lo/collectAdjacentPrefetchPositions;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    .line 54
    iget-object v4, p0, Lo/collectAdjacentPrefetchPositions;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 55
    iget-object v5, p0, Lo/collectAdjacentPrefetchPositions;->onMessageChannelReady:Lo/collectAdjacentPrefetchPositions$onNavigationEvent;

    .line 56
    iget-object v6, p0, Lo/collectAdjacentPrefetchPositions;->asInterface:Lo/setActive;

    move-object v1, p2

    move-object v2, p1

    .line 51
    invoke-direct/range {v1 .. v6}, Lo/getClipToPadding;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/setActive;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 43
    :pswitch_2
    new-instance p2, Lo/swapAdapter;

    .line 45
    iget-object v2, p0, Lo/collectAdjacentPrefetchPositions;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    .line 46
    iget-object v3, p0, Lo/collectAdjacentPrefetchPositions;->onMessageChannelReady:Lo/collectAdjacentPrefetchPositions$onNavigationEvent;

    .line 47
    iget-object v4, p0, Lo/collectAdjacentPrefetchPositions;->ICustomTabsCallback:Lo/onSizeChanged;

    if-nez v4, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 48
    :cond_0
    iget-object v5, p0, Lo/collectAdjacentPrefetchPositions;->ICustomTabsCallback$Stub:Lo/setActive;

    if-nez v5, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 49
    :cond_1
    iget-object v6, p0, Lo/collectAdjacentPrefetchPositions;->asInterface:Lo/setActive;

    move-object v0, p2

    move-object v1, p1

    .line 43
    invoke-direct/range {v0 .. v6}, Lo/swapAdapter;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/onSizeChanged;Lo/setActive;Lo/setActive;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 58
    :pswitch_3
    new-instance p2, Lo/isReverseLayout;

    iget-object v0, p0, Lo/collectAdjacentPrefetchPositions;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/isReverseLayout;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 32
    :pswitch_4
    new-instance p2, Lo/initAdapterManager;

    iget-object v2, p0, Lo/collectAdjacentPrefetchPositions;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v3, p0, Lo/collectAdjacentPrefetchPositions;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    iget-object v4, p0, Lo/collectAdjacentPrefetchPositions;->onMessageChannelReady:Lo/collectAdjacentPrefetchPositions$onNavigationEvent;

    iget-object v5, p0, Lo/collectAdjacentPrefetchPositions;->asInterface:Lo/setActive;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/initAdapterManager;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/setActive;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 35
    :pswitch_5
    new-instance p2, Lo/removeAndRecycleViews;

    .line 37
    iget-object v2, p0, Lo/collectAdjacentPrefetchPositions;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    .line 38
    iget-object v3, p0, Lo/collectAdjacentPrefetchPositions;->onMessageChannelReady:Lo/collectAdjacentPrefetchPositions$onNavigationEvent;

    .line 39
    iget-object v4, p0, Lo/collectAdjacentPrefetchPositions;->ICustomTabsCallback:Lo/onSizeChanged;

    if-nez v4, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 40
    :cond_2
    iget-object v5, p0, Lo/collectAdjacentPrefetchPositions;->ICustomTabsCallback$Stub:Lo/setActive;

    if-nez v5, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 41
    :cond_3
    iget-object v6, p0, Lo/collectAdjacentPrefetchPositions;->asInterface:Lo/setActive;

    move-object v0, p2

    move-object v1, p1

    .line 35
    invoke-direct/range {v0 .. v6}, Lo/removeAndRecycleViews;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/onSizeChanged;Lo/setActive;Lo/setActive;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 34
    :pswitch_6
    new-instance p2, Lo/hasFixedSize;

    iget-object v0, p0, Lo/collectAdjacentPrefetchPositions;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/hasFixedSize;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 30
    :pswitch_7
    new-instance p2, Lo/initChildrenHelper;

    iget-object v0, p0, Lo/collectAdjacentPrefetchPositions;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/collectAdjacentPrefetchPositions;->onMessageChannelReady:Lo/collectAdjacentPrefetchPositions$onNavigationEvent;

    iget-object v2, p0, Lo/collectAdjacentPrefetchPositions;->asInterface:Lo/setActive;

    invoke-direct {p2, p1, v0, v1, v2}, Lo/initChildrenHelper;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/setActive;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 33
    :pswitch_8
    new-instance p2, Lo/setClipToPadding;

    iget-object v0, p0, Lo/collectAdjacentPrefetchPositions;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/setClipToPadding;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 31
    :pswitch_9
    new-instance p2, Lo/setHasFixedSize;

    iget-object v2, p0, Lo/collectAdjacentPrefetchPositions;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v3, p0, Lo/collectAdjacentPrefetchPositions;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    iget-object v4, p0, Lo/collectAdjacentPrefetchPositions;->onMessageChannelReady:Lo/collectAdjacentPrefetchPositions$onNavigationEvent;

    iget-object v5, p0, Lo/collectAdjacentPrefetchPositions;->asInterface:Lo/setActive;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/setHasFixedSize;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/setActive;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 29
    :pswitch_a
    new-instance p2, Lo/getFullClassName;

    iget-object v0, p0, Lo/collectAdjacentPrefetchPositions;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/collectAdjacentPrefetchPositions;->onMessageChannelReady:Lo/collectAdjacentPrefetchPositions$onNavigationEvent;

    iget-object v2, p0, Lo/collectAdjacentPrefetchPositions;->asInterface:Lo/setActive;

    invoke-direct {p2, p1, v0, v1, v2}, Lo/getFullClassName;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/setActive;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    instance-of v0, p1, Lo/ensureLayoutState;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lo/ensureLayoutState;

    .line 1022
    iget-object v1, v1, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 1031
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    const-string v2, "lr_1"

    .line 65
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x3e9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 66
    move-object v1, p1

    check-cast v1, Lo/ensureLayoutState;

    .line 2022
    iget-object v1, v1, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 2031
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    const-string v2, "lr_2"

    .line 66
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0x3ec

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    .line 67
    move-object v1, p1

    check-cast v1, Lo/ensureLayoutState;

    .line 3022
    iget-object v1, v1, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 3031
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    const-string v2, "lc_1"

    .line 67
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p1, 0x3ea

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "lc_2"

    if-eqz v0, :cond_3

    .line 68
    move-object v2, p1

    check-cast v2, Lo/ensureLayoutState;

    .line 4022
    iget-object v2, v2, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 4031
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    .line 68
    invoke-static {v2, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 p1, 0x3f0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    .line 69
    move-object v2, p1

    check-cast v2, Lo/ensureLayoutState;

    .line 5022
    iget-object v2, v2, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 5031
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    const-string v3, "lr_5"

    .line 69
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 p1, 0x3ef

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz v0, :cond_5

    .line 70
    move-object v2, p1

    check-cast v2, Lo/ensureLayoutState;

    .line 6022
    iget-object v2, v2, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 6031
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    const-string v3, "lr_6"

    .line 70
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 p1, 0x3f2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    const/16 v2, 0x3f3

    if-eqz v0, :cond_6

    .line 71
    move-object v3, p1

    check-cast v3, Lo/ensureLayoutState;

    .line 7022
    iget-object v3, v3, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 7031
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    const-string v4, "lr_7"

    .line 71
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    if-eqz v0, :cond_7

    .line 72
    move-object v0, p1

    check-cast v0, Lo/ensureLayoutState;

    .line 8022
    iget-object v0, v0, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 8031
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    const-string v3, "lr_8"

    .line 72
    invoke-static {v0, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 73
    :cond_7
    instance-of v0, p1, Lo/scrollToPositionWithOffset;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lo/scrollToPositionWithOffset;

    .line 8117
    iget-object v0, v0, Lo/scrollToPositionWithOffset;->onMessageChannelReady:Ljava/lang/String;

    .line 73
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x3f1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 74
    :cond_8
    instance-of v0, p1, Lo/fixLayoutStartGap;

    if-eqz v0, :cond_9

    const/16 p1, 0x3ed

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 75
    :cond_9
    instance-of p1, p1, Lo/computeVerticalScrollExtent;

    if-eqz p1, :cond_a

    const/16 p1, 0x3eb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method
