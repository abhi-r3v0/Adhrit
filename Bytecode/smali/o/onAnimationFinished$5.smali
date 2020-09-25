.class final Lo/onAnimationFinished$5;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onAnimationFinished;-><init>()V
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

.field final synthetic onNavigationEvent:Lo/onAnimationFinished;


# direct methods
.method constructor <init>(Lo/onAnimationFinished;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/onAnimationFinished$5;->onNavigationEvent:Lo/onAnimationFinished;

    invoke-direct {p0, p2}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 36
    iget v0, p0, Lo/onAnimationFinished$5;->extraCallback:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    .line 2126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_2
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_3

    .line 37
    iget-object p1, p0, Lo/onAnimationFinished$5;->onNavigationEvent:Lo/onAnimationFinished;

    new-instance v0, Lo/onAnimationFinished$5$1;

    invoke-direct {v0, p0}, Lo/onAnimationFinished$5$1;-><init>(Lo/onAnimationFinished$5;)V

    check-cast v0, Lo/onDisconnectSetValue;

    iput v1, p0, Lo/onAnimationFinished$5;->extraCallback:I

    .line 2054
    sget-object v1, Lo/recycleView;->onMessageChannelReady:Lo/recycleView;

    iget-object p1, p1, Lo/onAnimationFinished;->onMessageChannelReady:Ljava/lang/String;

    const-class v1, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;

    check-cast v1, Ljava/lang/reflect/Type;

    sget-object v2, Lo/getScrapViewAt;->onMessageChannelReady:Ljava/lang/String;

    new-instance v3, Lo/onAnimationFinished$onMessageChannelReady;

    invoke-direct {v3, v0}, Lo/onAnimationFinished$onMessageChannelReady;-><init>(Lo/onDisconnectSetValue;)V

    check-cast v3, Lo/onDisconnectSetValue;

    invoke-static {p1, v1, v2, v3}, Lo/recycleView;->onPostMessage(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lo/onDisconnectSetValue;)V

    .line 2060
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 40
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_3
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Lo/setSessionPersistenceKey;

    const-string v0, "completion"

    .line 3000
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/onAnimationFinished$5;

    iget-object v1, p0, Lo/onAnimationFinished$5;->onNavigationEvent:Lo/onAnimationFinished;

    invoke-direct {v0, v1, p2}, Lo/onAnimationFinished$5;-><init>(Lo/onAnimationFinished;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/onAnimationFinished$5;->ICustomTabsCallback:Lo/isFromUser;

    check-cast v0, Lo/onAnimationFinished$5;

    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {v0, p1}, Lo/onAnimationFinished$5;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lo/onAnimationFinished$5;

    iget-object v1, p0, Lo/onAnimationFinished$5;->onNavigationEvent:Lo/onAnimationFinished;

    invoke-direct {v0, v1, p2}, Lo/onAnimationFinished$5;-><init>(Lo/onAnimationFinished;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/onAnimationFinished$5;->ICustomTabsCallback:Lo/isFromUser;

    return-object v0
.end method
