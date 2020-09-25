.class public final Lo/setSpanCount;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setSpanCount$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0017\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a2\u0006\u0002\u0010\rJ\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/StashListAdapter;",
        "Lcom/dreamplug/utils/list/CardsAdapter;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "getOnItemClickListener",
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
.field public static final ICustomTabsCallback:Lo/setSpanCount$onNavigationEvent;


# instance fields
.field private final extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private final onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/setSpanCount$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setSpanCount$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/setSpanCount;->ICustomTabsCallback:Lo/setSpanCount$onNavigationEvent;

    return-void
.end method

.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 1

    const-string v0, "onItemClickListener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    .line 15
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object p1, p0, Lo/setSpanCount;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/ViewGroup;I)Lo/createOrientationHelpers;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 44
    :pswitch_0
    new-instance p2, Lo/getSwipeThreshold;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getSwipeThreshold;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 43
    :pswitch_1
    new-instance p2, Lo/isLongPressDragEnabled;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/isLongPressDragEnabled;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 41
    :pswitch_2
    new-instance p2, Lo/makeFlag;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/makeFlag;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 40
    :pswitch_3
    new-instance p2, Lo/getSwipeThreshold;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getSwipeThreshold;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 38
    :pswitch_4
    new-instance p2, Lo/convertToRelativeDirection;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/convertToRelativeDirection;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 36
    :pswitch_5
    new-instance p2, Lo/hasDragFlag;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    .line 37
    iget-object v1, p0, Lo/setSpanCount;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 36
    invoke-direct {p2, p1, v0, v1}, Lo/hasDragFlag;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 34
    :pswitch_6
    new-instance p2, Lo/onMove;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/onMove;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 32
    :pswitch_7
    new-instance p2, Lo/isItemViewSwipeEnabled;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    .line 33
    iget-object v1, p0, Lo/setSpanCount;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 32
    invoke-direct {p2, p1, v0, v1}, Lo/isItemViewSwipeEnabled;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 31
    :pswitch_8
    new-instance p2, Lo/getSwipeThreshold;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getSwipeThreshold;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 29
    :pswitch_9
    new-instance p2, Lo/getBoundingBoxMargin;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getBoundingBoxMargin;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 27
    :pswitch_a
    new-instance p2, Lo/canDropOver;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    .line 28
    iget-object v1, p0, Lo/setSpanCount;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 27
    invoke-direct {p2, p1, v0, v1}, Lo/canDropOver;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 24
    :pswitch_b
    new-instance p2, Lo/hasSwipeFlag;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/hasSwipeFlag;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 22
    :pswitch_c
    new-instance p2, Lo/convertToAbsoluteDirection;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/convertToAbsoluteDirection;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 21
    :pswitch_d
    new-instance p2, Lo/getAbsoluteMovementFlags;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getAbsoluteMovementFlags;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 19
    :pswitch_e
    new-instance p2, Lo/getMoveThreshold;

    iget-object v0, p0, Lo/setSpanCount;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getMoveThreshold;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Lo/setSpanCount$onNavigationEvent;->onNavigationEvent(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
