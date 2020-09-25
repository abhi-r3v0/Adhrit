.class final Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field private ICustomTabsCallback:Lo/isFromUser;

.field private extraCallback:I

.field private synthetic onMessageChannelReady:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

.field private synthetic onNavigationEvent:Ljava/util/List;

.field private onPostMessage:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;Ljava/util/List;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;->onMessageChannelReady:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    iput-object p2, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;->onNavigationEvent:Ljava/util/List;

    invoke-direct {p0, p3}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 213
    iget v1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;->extraCallback:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Lo/repositionToWrapContentIfNecessary;

    .line 2126
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 215
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_2
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_5

    .line 214
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;->onMessageChannelReady:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-static {p1}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onMessageChannelReady(Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Lo/repositionToWrapContentIfNecessary;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;->onNavigationEvent:Ljava/util/List;

    iput-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;->onPostMessage:Ljava/lang/Object;

    iput v2, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;->extraCallback:I

    invoke-static {v1, p0}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onMessageChannelReady(Ljava/util/List;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/util/List;

    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 3038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 215
    :cond_4
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_5
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;

    iget-object v1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;->onMessageChannelReady:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    iget-object v2, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;->onNavigationEvent:Ljava/util/List;

    invoke-direct {v0, v1, v2, p2}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;-><init>(Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;Ljava/util/List;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$getInterfaceDescriptor;->ICustomTabsCallback:Lo/isFromUser;

    return-object v0
.end method
