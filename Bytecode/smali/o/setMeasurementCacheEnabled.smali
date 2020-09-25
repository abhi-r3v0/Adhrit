.class public final Lo/setMeasurementCacheEnabled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setMeasurementCacheEnabled$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010\u000bJ\u001a\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0008H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationsAdapter;",
        "Lcom/dreamplug/utils/list/CardsAdapter;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
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


# instance fields
.field private final extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private final onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setMeasurementCacheEnabled;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    .line 12
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object p1, p0, Lo/setMeasurementCacheEnabled;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

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
    new-instance p2, Lo/detachAndScrapAttachedViews;

    iget-object v0, p0, Lo/setMeasurementCacheEnabled;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/setMeasurementCacheEnabled;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {p2, p1, v0, v1}, Lo/detachAndScrapAttachedViews;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 18
    :pswitch_1
    new-instance p2, Lo/stopIgnoringView;

    iget-object v0, p0, Lo/setMeasurementCacheEnabled;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/stopIgnoringView;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 17
    :pswitch_2
    new-instance p2, Lo/scrapOrRecycleView;

    iget-object v0, p0, Lo/setMeasurementCacheEnabled;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/scrapOrRecycleView;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 16
    :pswitch_3
    new-instance p2, Lo/getFocusedChild;

    iget-object v0, p0, Lo/setMeasurementCacheEnabled;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/getFocusedChild;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x8ca1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of v0, p1, Lo/shouldMeasureChild;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v2, p1

    check-cast v2, Lo/shouldMeasureChild;

    .line 1045
    iget-object v2, v2, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    if-eqz v2, :cond_0

    .line 2024
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string/jumbo v3, "template1"

    .line 27
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const p1, 0x8ca1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v0, :cond_3

    .line 28
    move-object v2, p1

    check-cast v2, Lo/shouldMeasureChild;

    .line 2045
    iget-object v2, v2, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    if-eqz v2, :cond_2

    .line 3024
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    const-string/jumbo v3, "template2"

    .line 28
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const p1, 0x8ca2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v0, :cond_5

    .line 29
    move-object v2, p1

    check-cast v2, Lo/shouldMeasureChild;

    .line 3045
    iget-object v2, v2, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    if-eqz v2, :cond_4

    .line 4024
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->onPostMessage:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    const-string/jumbo v3, "template3"

    .line 29
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const p1, 0x8ca3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz v0, :cond_7

    .line 30
    check-cast p1, Lo/shouldMeasureChild;

    .line 4045
    iget-object p1, p1, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    if-eqz p1, :cond_6

    .line 5024
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->onPostMessage:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object p1, v1

    :goto_3
    const-string/jumbo v0, "template4"

    .line 30
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x8ca4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v1
.end method
