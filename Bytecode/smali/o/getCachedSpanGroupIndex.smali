.class public final Lo/getCachedSpanGroupIndex;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCachedSpanGroupIndex$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a2\u0006\u0002\u0010\tJ\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/adapter/LoanManagementAdapter;",
        "Lcom/dreamplug/utils/list/CardsAdapter;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
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
.field private final onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getCachedSpanGroupIndex;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/ViewGroup;I)Lo/createOrientationHelpers;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 27
    :pswitch_0
    new-instance p2, Lo/getSwipeThreshold;

    iget-object v0, p0, Lo/getCachedSpanGroupIndex;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getSwipeThreshold;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 26
    :pswitch_1
    new-instance p2, Lo/startLoading;

    iget-object v0, p0, Lo/getCachedSpanGroupIndex;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/startLoading;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 25
    :pswitch_2
    new-instance p2, Lo/getSwipeVelocityThreshold;

    iget-object v0, p0, Lo/getCachedSpanGroupIndex;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getSwipeVelocityThreshold;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 24
    :pswitch_3
    new-instance p2, Lo/onSwiped;

    iget-object v0, p0, Lo/getCachedSpanGroupIndex;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/onSwiped;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 23
    :pswitch_4
    new-instance p2, Lo/chooseDropTarget;

    iget-object v0, p0, Lo/getCachedSpanGroupIndex;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/chooseDropTarget;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x7919
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    instance-of v0, p1, Lo/ensureAnchorIsInCorrectSpan$onMessageChannelReady;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lo/ensureAnchorIsInCorrectSpan$onMessageChannelReady;

    .line 1091
    iget-object v1, v1, Lo/ensureAnchorIsInCorrectSpan$onMessageChannelReady;->onPostMessage:Lo/StaggeredGridLayoutManager;

    .line 34
    instance-of v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    if-eqz v1, :cond_0

    const/16 p1, 0x7919

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 35
    move-object v1, p1

    check-cast v1, Lo/ensureAnchorIsInCorrectSpan$onMessageChannelReady;

    .line 2091
    iget-object v1, v1, Lo/ensureAnchorIsInCorrectSpan$onMessageChannelReady;->onPostMessage:Lo/StaggeredGridLayoutManager;

    .line 35
    instance-of v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    if-eqz v1, :cond_1

    const/16 p1, 0x791a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    .line 36
    move-object v0, p1

    check-cast v0, Lo/ensureAnchorIsInCorrectSpan$onMessageChannelReady;

    .line 3091
    iget-object v0, v0, Lo/ensureAnchorIsInCorrectSpan$onMessageChannelReady;->onPostMessage:Lo/StaggeredGridLayoutManager;

    .line 36
    instance-of v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    if-eqz v0, :cond_2

    const/16 p1, 0x791b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 37
    :cond_2
    instance-of v0, p1, Lo/startLoading$onNavigationEvent;

    if-eqz v0, :cond_3

    const/16 p1, 0x791c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 38
    :cond_3
    instance-of p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/StashLandingItem;

    if-eqz p1, :cond_4

    const/16 p1, 0x791d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method
