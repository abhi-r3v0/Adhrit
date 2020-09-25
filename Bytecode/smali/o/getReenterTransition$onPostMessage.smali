.class public final Lo/getReenterTransition$onPostMessage;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getReenterTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/postEvents;",
        "Lo/nextTransactionOrder<",
        "Lo/isFromUser;",
        "Lo/setSessionPersistenceKey<",
        "-",
        "Lo/addWrite<",
        "+",
        "Ljava/util/List<",
        "Lo/StaggeredGridLayoutManager;",
        ">;+",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;>;",
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
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00020\u0001*\u00020\u0005H\u008a@\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field private synthetic extraCallback:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/getReenterTransition$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-direct {p0, p2}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 1126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_0

    .line 35
    iget-object p1, p0, Lo/getReenterTransition$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-static {p1}, Lo/extraCallback;->onNavigationEvent(Ljava/util/List;)Lo/addWrite;

    move-result-object p1

    return-object p1

    .line 1126
    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lo/setSessionPersistenceKey;

    const-string p1, "completion"

    .line 2000
    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lo/getReenterTransition$onPostMessage;

    iget-object v0, p0, Lo/getReenterTransition$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-direct {p1, v0, p2}, Lo/getReenterTransition$onPostMessage;-><init>(Ljava/util/List;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/getReenterTransition$onPostMessage;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/getReenterTransition$onPostMessage;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lo/getReenterTransition$onPostMessage;

    iget-object v0, p0, Lo/getReenterTransition$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-direct {p1, v0, p2}, Lo/getReenterTransition$onPostMessage;-><init>(Ljava/util/List;Lo/setSessionPersistenceKey;)V

    return-object p1
.end method
