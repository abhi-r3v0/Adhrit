.class final Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onMessageChannelReady;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onMessageChannelReady(Ljava/util/List;Lo/setSessionPersistenceKey;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;>;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onMessageChannelReady;->extraCallback:Ljava/util/List;

    invoke-direct {p0, p2}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 1126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_3

    .line 219
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onMessageChannelReady;->extraCallback:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 259
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/StaggeredGridLayoutManager;

    .line 219
    instance-of v3, v2, Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;

    if-eqz v3, :cond_1

    sget-object v3, Lo/chooseSize;->onNavigationEvent:Lo/chooseSize$onMessageChannelReady;

    invoke-static {v2}, Lo/chooseSize$onMessageChannelReady;->extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_2
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 1126
    :cond_3
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lo/setSessionPersistenceKey;

    const-string p1, "completion"

    .line 3000
    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onMessageChannelReady;

    iget-object v0, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onMessageChannelReady;->extraCallback:Ljava/util/List;

    invoke-direct {p1, v0, p2}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onMessageChannelReady;-><init>(Ljava/util/List;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onMessageChannelReady;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onMessageChannelReady;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 1
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onMessageChannelReady;

    iget-object v0, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onMessageChannelReady;->extraCallback:Ljava/util/List;

    invoke-direct {p1, v0, p2}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onMessageChannelReady;-><init>(Ljava/util/List;Lo/setSessionPersistenceKey;)V

    return-object p1
.end method
