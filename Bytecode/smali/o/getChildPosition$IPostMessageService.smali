.class final Lo/getChildPosition$IPostMessageService;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/postEvents;",
        "Lo/nextTransactionOrder<",
        "Lo/isFromUser;",
        "Lo/setSessionPersistenceKey<",
        "-",
        "Lo/addWrites;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "com/dreamplug/fabrik/ui/lifestyle/win/slotmachine/SlotMachineFragment$setUiState$6$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private extraCallback:Lo/isFromUser;

.field private synthetic onMessageChannelReady:Ljava/util/List;

.field final synthetic onNavigationEvent:Lo/getChildPosition;

.field private onPostMessage:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/List;Lo/setSessionPersistenceKey;Lo/getChildPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getChildPosition$IPostMessageService;->onMessageChannelReady:Ljava/util/List;

    iput-object p3, p0, Lo/getChildPosition$IPostMessageService;->onNavigationEvent:Lo/getChildPosition;

    invoke-direct {p0, p2}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 348
    iget v1, p0, Lo/getChildPosition$IPostMessageService;->ICustomTabsCallback:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    .line 3126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 361
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_2
    iget-object v1, p0, Lo/getChildPosition$IPostMessageService;->onPostMessage:Ljava/lang/Object;

    check-cast v1, Lo/isFromUser;

    .line 2126
    instance-of v3, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 1126
    :cond_4
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_7

    .line 348
    iget-object v1, p0, Lo/getChildPosition$IPostMessageService;->extraCallback:Lo/isFromUser;

    .line 349
    iget-object p1, p0, Lo/getChildPosition$IPostMessageService;->onNavigationEvent:Lo/getChildPosition;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->winnersLayout:I

    invoke-virtual {p1, v4}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string/jumbo v4, "winnersLayout"

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 350
    iget-object p1, p0, Lo/getChildPosition$IPostMessageService;->onNavigationEvent:Lo/getChildPosition;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->winnersLayout:I

    invoke-virtual {p1, v5}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const/4 v4, 0x0

    .line 691
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lo/getChildPosition$IPostMessageService;->onNavigationEvent:Lo/getChildPosition;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->winnersRecyclerView:I

    invoke-virtual {p1, v4}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/findViewHolderForLayoutPosition;

    const-string/jumbo v4, "winnersRecyclerView"

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lo/onChildDetachedFromWindow;

    iget-object v5, p0, Lo/getChildPosition$IPostMessageService;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v4, v5}, Lo/onChildDetachedFromWindow;-><init>(Ljava/util/List;)V

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const-wide/16 v4, 0xfa

    .line 352
    iput-object v1, p0, Lo/getChildPosition$IPostMessageService;->onPostMessage:Ljava/lang/Object;

    iput v3, p0, Lo/getChildPosition$IPostMessageService;->ICustomTabsCallback:I

    invoke-static {v4, v5, p0}, Lo/extraCallback;->onNavigationEvent(JLo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 354
    :cond_5
    :goto_0
    iget-object p1, p0, Lo/getChildPosition$IPostMessageService;->onNavigationEvent:Lo/getChildPosition;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->winnersLayout:I

    invoke-virtual {p1, v3}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v3, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-string/jumbo v3, "winnersLayout.animate().\u2026ator()).setDuration(200L)"

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lo/getChildPosition$IPostMessageService;->onPostMessage:Ljava/lang/Object;

    iput v2, p0, Lo/getChildPosition$IPostMessageService;->ICustomTabsCallback:I

    invoke-static {p1, p0}, Lo/extraCallback;->onPostMessage(Landroid/view/ViewPropertyAnimator;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 358
    :cond_6
    :goto_1
    iget-object p1, p0, Lo/getChildPosition$IPostMessageService;->onNavigationEvent:Lo/getChildPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->winnersRecyclerView:I

    invoke-virtual {p1, v0}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/findViewHolderForLayoutPosition;

    new-instance v0, Lo/getChildPosition$IPostMessageService$1;

    invoke-direct {v0, p0}, Lo/getChildPosition$IPostMessageService$1;-><init>(Lo/getChildPosition$IPostMessageService;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 361
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_7
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/getChildPosition$IPostMessageService;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/getChildPosition$IPostMessageService;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/setSessionPersistenceKey<",
            "*>;)",
            "Lo/setSessionPersistenceKey<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/getChildPosition$IPostMessageService;

    iget-object v1, p0, Lo/getChildPosition$IPostMessageService;->onMessageChannelReady:Ljava/util/List;

    iget-object v2, p0, Lo/getChildPosition$IPostMessageService;->onNavigationEvent:Lo/getChildPosition;

    invoke-direct {v0, v1, p2, v2}, Lo/getChildPosition$IPostMessageService;-><init>(Ljava/util/List;Lo/setSessionPersistenceKey;Lo/getChildPosition;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/getChildPosition$IPostMessageService;->extraCallback:Lo/isFromUser;

    return-object v0
.end method
