.class public final Lo/RecyclerView$OnChildAttachStateChangeListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RecyclerView$OnChildAttachStateChangeListener$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0017\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016\u00a2\u0006\u0002\u0010\u0012J\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/track/bankbalance/BankBalanceAdapter;",
        "Lcom/dreamplug/utils/list/CardsAdapter;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "isUiBCase",
        "",
        "trackBankBalanceDaysThreshold",
        "",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;ZJ)V",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "()Z",
        "getTrackBankBalanceDaysThreshold",
        "()J",
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


# instance fields
.field private final extraCallback:J

.field private final onMessageChannelReady:Z

.field private final onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method public synthetic constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 4

    .line 12
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 1000
    sget-object v0, Lo/isInLayout;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:Lo/isDetached;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x51

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "B"

    .line 12
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 13
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v1, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImpl:Lo/isRemoving;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x52

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 13
    invoke-direct {p0, p1, v0, v1, v2}, Lo/RecyclerView$OnChildAttachStateChangeListener;-><init>(Lo/hasGapsToFix$onMessageChannelReady;ZJ)V

    return-void
.end method

.method private constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;ZJ)V
    .locals 1

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/RecyclerView$OnChildAttachStateChangeListener;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    iput-boolean p2, p0, Lo/RecyclerView$OnChildAttachStateChangeListener;->onMessageChannelReady:Z

    iput-wide p3, p0, Lo/RecyclerView$OnChildAttachStateChangeListener;->extraCallback:J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/ViewGroup;I)Lo/createOrientationHelpers;
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 21
    :pswitch_1
    new-instance p2, Lo/RecyclerView$RecycledViewPool;

    iget-object v0, p0, Lo/RecyclerView$OnChildAttachStateChangeListener;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/RecyclerView$RecycledViewPool;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 20
    :pswitch_2
    new-instance p2, Lo/RecyclerView$OnItemTouchListener;

    iget-object v0, p0, Lo/RecyclerView$OnChildAttachStateChangeListener;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/RecyclerView$OnItemTouchListener;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 19
    :pswitch_3
    new-instance p2, Lo/getViewAdapterPosition;

    iget-object v0, p0, Lo/RecyclerView$OnChildAttachStateChangeListener;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getViewAdapterPosition;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 18
    :pswitch_4
    new-instance p2, Lo/onFling;

    iget-object v2, p0, Lo/RecyclerView$OnChildAttachStateChangeListener;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    iget-boolean v3, p0, Lo/RecyclerView$OnChildAttachStateChangeListener;->onMessageChannelReady:Z

    iget-wide v4, p0, Lo/RecyclerView$OnChildAttachStateChangeListener;->extraCallback:J

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/onFling;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;ZJ)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x80e9
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v0, p1, Lo/onFling$ICustomTabsCallback;

    if-eqz v0, :cond_0

    const p1, 0x80e9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 29
    :cond_0
    instance-of v0, p1, Lo/getViewAdapterPosition$extraCallback;

    if-eqz v0, :cond_1

    const p1, 0x80ea

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 30
    :cond_1
    instance-of v0, p1, Lo/RecyclerView$OnItemTouchListener$onMessageChannelReady;

    if-eqz v0, :cond_2

    const p1, 0x80ec

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 31
    :cond_2
    instance-of p1, p1, Lo/RecyclerView$RecycledViewPool$onNavigationEvent;

    if-eqz p1, :cond_3

    const p1, 0x80ed

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
