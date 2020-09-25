.class final Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getStateAfterAnimating;
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
.field private synthetic extraCallback:Lo/getStateAfterAnimating;

.field private onMessageChannelReady:Lo/isFromUser;

.field private onPostMessage:I


# direct methods
.method constructor <init>(Lo/getStateAfterAnimating;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;->extraCallback:Lo/getStateAfterAnimating;

    invoke-direct {p0, p2}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 159
    iget v1, p0, Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;->onPostMessage:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    .line 3126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 161
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_2
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_4

    .line 160
    iget-object p1, p0, Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;->extraCallback:Lo/getStateAfterAnimating;

    .line 2000
    iget-object p1, p1, Lo/getStateAfterAnimating;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setStateAfterAnimating;

    .line 2096
    iget-object p1, p1, Lo/setStateAfterAnimating;->INotificationSideChannel$Stub:Lo/getThreadInitializer;

    .line 160
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput v2, p0, Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;->onPostMessage:I

    invoke-interface {p1, v1, p0}, Lo/getThreadInitializer;->extraCallback(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 161
    :cond_3
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_4
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Lo/setSessionPersistenceKey;

    const-string v0, "completion"

    .line 4000
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;

    iget-object v1, p0, Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;->extraCallback:Lo/getStateAfterAnimating;

    invoke-direct {v0, v1, p2}, Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;-><init>(Lo/getStateAfterAnimating;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Lo/isFromUser;

    check-cast v0, Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;

    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {v0, p1}, Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 2
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

    new-instance v0, Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;

    iget-object v1, p0, Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;->extraCallback:Lo/getStateAfterAnimating;

    invoke-direct {v0, v1, p2}, Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;-><init>(Lo/getStateAfterAnimating;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/getStateAfterAnimating$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Lo/isFromUser;

    return-object v0
.end method
