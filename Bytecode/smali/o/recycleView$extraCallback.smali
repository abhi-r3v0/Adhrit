.class final Lo/recycleView$extraCallback;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycleView;->onPostMessage(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lo/onDisconnectSetValue;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
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
.field private synthetic ICustomTabsCallback:Ljava/lang/reflect/Type;

.field private synthetic ICustomTabsCallback$Stub:Lo/onDisconnectSetValue;

.field private extraCallback:I

.field private onMessageChannelReady:Lo/isFromUser;

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lo/onDisconnectSetValue;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/recycleView$extraCallback;->onNavigationEvent:Ljava/lang/String;

    iput-object p2, p0, Lo/recycleView$extraCallback;->ICustomTabsCallback:Ljava/lang/reflect/Type;

    iput-object p3, p0, Lo/recycleView$extraCallback;->onPostMessage:Ljava/lang/String;

    iput-object p4, p0, Lo/recycleView$extraCallback;->ICustomTabsCallback$Stub:Lo/onDisconnectSetValue;

    invoke-direct {p0, p5}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 26
    iget v1, p0, Lo/recycleView$extraCallback;->extraCallback:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    .line 2126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_2
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_4

    .line 27
    sget-object p1, Lo/recycleView;->onMessageChannelReady:Lo/recycleView;

    iget-object p1, p0, Lo/recycleView$extraCallback;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p0, Lo/recycleView$extraCallback;->ICustomTabsCallback:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lo/recycleView$extraCallback;->onPostMessage:Ljava/lang/String;

    iput v2, p0, Lo/recycleView$extraCallback;->extraCallback:I

    invoke-static {p1, v1, v3, p0}, Lo/recycleView;->extraCallback(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 28
    :cond_3
    :goto_0
    iget-object v0, p0, Lo/recycleView$extraCallback;->ICustomTabsCallback$Stub:Lo/onDisconnectSetValue;

    invoke-interface {v0, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_4
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/recycleView$extraCallback;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/recycleView$extraCallback;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 7
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

    new-instance v0, Lo/recycleView$extraCallback;

    iget-object v2, p0, Lo/recycleView$extraCallback;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p0, Lo/recycleView$extraCallback;->ICustomTabsCallback:Ljava/lang/reflect/Type;

    iget-object v4, p0, Lo/recycleView$extraCallback;->onPostMessage:Ljava/lang/String;

    iget-object v5, p0, Lo/recycleView$extraCallback;->ICustomTabsCallback$Stub:Lo/onDisconnectSetValue;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lo/recycleView$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lo/onDisconnectSetValue;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/recycleView$extraCallback;->onMessageChannelReady:Lo/isFromUser;

    return-object v0
.end method
