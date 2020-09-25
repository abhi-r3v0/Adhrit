.class public final Lo/submitList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/submitList$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010\u000bJ\u001a\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/link/adapter/CardLinkAdapter;",
        "Lcom/dreamplug/utils/list/CardsAdapter;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "viewModel",
        "Lcom/dreamplug/fabrik/ui/control/link/CardLinkViewModel;",
        "(Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;Lcom/dreamplug/fabrik/ui/control/link/CardLinkViewModel;)V",
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
.field private final onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

.field private final onPostMessage:Lo/getCurrentList;


# direct methods
.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;Lo/getCurrentList;)V
    .locals 1

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewModel"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/submitList;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    iput-object p2, p0, Lo/submitList;->onPostMessage:Lo/getCurrentList;

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

    .line 18
    :pswitch_0
    new-instance p2, Lo/AsyncListUtil;

    invoke-direct {p2, p1}, Lo/AsyncListUtil;-><init>(Landroid/view/ViewGroup;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 17
    :pswitch_1
    new-instance p2, Lo/onCurrentListChanged;

    invoke-direct {p2, p1}, Lo/onCurrentListChanged;-><init>(Landroid/view/ViewGroup;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 20
    :pswitch_2
    new-instance p2, Lo/AsyncListDiffer$ListListener;

    iget-object v0, p0, Lo/submitList;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/submitList;->onPostMessage:Lo/getCurrentList;

    invoke-direct {p2, p1, v0, v1}, Lo/AsyncListDiffer$ListListener;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/getCurrentList;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 19
    :pswitch_3
    new-instance p2, Lo/AsyncListDiffer;

    iget-object v0, p0, Lo/submitList;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    iget-object v1, p0, Lo/submitList;->onPostMessage:Lo/getCurrentList;

    invoke-direct {p2, p1, v0, v1}, Lo/AsyncListDiffer;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/getCurrentList;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x4651
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

    .line 27
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v0, :cond_0

    const/16 p1, 0x4651

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 28
    :cond_0
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;

    if-eqz v0, :cond_1

    const/16 p1, 0x4652

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 29
    :cond_1
    instance-of v0, p1, Lo/onCurrentListChanged$onNavigationEvent;

    if-eqz v0, :cond_2

    const/16 p1, 0x4653

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 30
    :cond_2
    instance-of p1, p1, Lo/AsyncListUtil$onNavigationEvent;

    if-eqz p1, :cond_3

    const/16 p1, 0x4654

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
