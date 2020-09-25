.class public final Lo/animateRemove;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkForGaps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/animateRemove$extraCallback;
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
        "Lcom/dreamplug/fabrik/ui/currency/CredCurrencyAdapter;",
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
.field private final ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/animateRemove;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

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

    .line 23
    :pswitch_0
    new-instance p2, Lo/onLoadInBackground;

    iget-object v0, p0, Lo/animateRemove;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/onLoadInBackground;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 21
    :pswitch_1
    new-instance p2, Lo/registerListener;

    iget-object v0, p0, Lo/animateRemove;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/registerListener;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 20
    :pswitch_2
    new-instance p2, Lo/deliverCancellation;

    iget-object v0, p0, Lo/animateRemove;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/deliverCancellation;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 19
    :pswitch_3
    new-instance p2, Lo/loadInBackground;

    iget-object v0, p0, Lo/animateRemove;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/loadInBackground;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 22
    :pswitch_4
    new-instance p2, Lcom/dreamplug/fabrik/ui/control/CommonStatementNoHistoryItemHolder;

    iget-object v0, p0, Lo/animateRemove;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lcom/dreamplug/fabrik/ui/control/CommonStatementNoHistoryItemHolder;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 18
    :pswitch_5
    new-instance p2, Lo/waitForLoader;

    iget-object v0, p0, Lo/animateRemove;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/waitForLoader;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 17
    :pswitch_6
    new-instance p2, Lo/isLoadInBackgroundCanceled;

    iget-object v0, p0, Lo/animateRemove;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/isLoadInBackgroundCanceled;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 16
    :pswitch_7
    new-instance p2, Lo/isReset;

    iget-object v0, p0, Lo/animateRemove;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/isReset;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 15
    :pswitch_8
    new-instance p2, Lo/dispatchOnCancelled;

    iget-object v0, p0, Lo/animateRemove;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/dispatchOnCancelled;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    .line 14
    :pswitch_9
    new-instance p2, Lo/onForceLoad;

    iget-object v0, p0, Lo/animateRemove;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    invoke-direct {p2, p1, v0}, Lo/onForceLoad;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V

    check-cast p2, Lo/createOrientationHelpers;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x2af9
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

    .line 30
    instance-of v0, p1, Lo/onForceLoad$onPostMessage;

    if-eqz v0, :cond_0

    const/16 p1, 0x2af9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    instance-of v0, p1, Lo/dispatchOnCancelled$extraCallback;

    if-eqz v0, :cond_1

    const/16 p1, 0x2afa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 32
    :cond_1
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;

    if-eqz v0, :cond_2

    const/16 p1, 0x2afb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 33
    :cond_2
    instance-of v0, p1, Lo/isLoadInBackgroundCanceled$onPostMessage;

    if-eqz v0, :cond_3

    const/16 p1, 0x2afc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 34
    :cond_3
    instance-of v0, p1, Lo/waitForLoader$onPostMessage;

    if-eqz v0, :cond_4

    const/16 p1, 0x2afd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 35
    :cond_4
    instance-of v0, p1, Lo/loadInBackground$extraCallback;

    if-eqz v0, :cond_5

    const/16 p1, 0x2aff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 36
    :cond_5
    instance-of v0, p1, Lo/deliverCancellation$onNavigationEvent;

    if-eqz v0, :cond_6

    const/16 p1, 0x2b00

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 37
    :cond_6
    instance-of v0, p1, Lo/registerListener$onPostMessage;

    if-eqz v0, :cond_7

    const/16 p1, 0x2b01

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 38
    :cond_7
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/CommonStatementNoHistoryItemHolder$TransactionItem;

    if-eqz v0, :cond_8

    const/16 p1, 0x2afe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 39
    :cond_8
    instance-of p1, p1, Lo/onLoadInBackground$onPostMessage;

    if-eqz p1, :cond_9

    const/16 p1, 0x2b02

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method
