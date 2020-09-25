.class public final Lo/chooseSize;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/chooseSize$onMessageChannelReady;
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
        "Lcom/dreamplug/fabrik/ui/max/MaxListAdapter;",
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
.field public static final onNavigationEvent:Lo/chooseSize$onMessageChannelReady;


# instance fields
.field private final ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

.field private final extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/chooseSize$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/chooseSize$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/chooseSize;->onNavigationEvent:Lo/chooseSize$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 1

    const-string v0, "onItemClickListener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/chooseSize;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    .line 12
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object p1, p0, Lo/chooseSize;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

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

    .line 19
    :pswitch_0
    new-instance p2, Lo/RecyclerView$ItemDecoration;

    iget-object v0, p0, Lo/chooseSize;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/RecyclerView$ItemDecoration;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 18
    :pswitch_1
    new-instance p2, Lo/onAnimationsFinished;

    iget-object v0, p0, Lo/chooseSize;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/chooseSize;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {p2, p1, v0, v1}, Lo/onAnimationsFinished;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 17
    :pswitch_2
    new-instance p2, Lo/setMeasuredDimensionFromChildren;

    iget-object v0, p0, Lo/chooseSize;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/setMeasuredDimensionFromChildren;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 16
    :pswitch_3
    new-instance p2, Lo/RecyclerView$LayoutManager;

    iget-object v0, p0, Lo/chooseSize;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/RecyclerView$LayoutManager;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x9859
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

    .line 24
    invoke-static {p1}, Lo/chooseSize$onMessageChannelReady;->extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
