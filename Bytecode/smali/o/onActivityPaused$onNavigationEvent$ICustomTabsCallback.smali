.class final Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityPaused$onNavigationEvent;->onNavigationEvent(Ljava/util/ArrayList;)V
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
.field private synthetic onMessageChannelReady:Ljava/util/ArrayList;

.field private synthetic onPostMessage:Lo/onActivityPaused$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/onActivityPaused$onNavigationEvent;Ljava/util/ArrayList;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/onActivityPaused$onNavigationEvent;

    iput-object p2, p0, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-direct {p0, p3}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 1126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_1

    .line 47
    iget-object p1, p0, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/onActivityPaused$onNavigationEvent;

    iget-object p1, p1, Lo/onActivityPaused$onNavigationEvent;->onMessageChannelReady:Lo/onActivityPaused;

    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v0, Lo/isInLayout;->MediaBrowserCompat$CustomActionResultReceiver:Lo/isAdded;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x50

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 124
    new-instance v1, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v1}, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback$ICustomTabsCallback;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    :goto_0
    invoke-static {v0}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lo/onActivityPaused;->extraCallback(Lo/onActivityPaused;Ljava/util/ArrayList;)V

    .line 48
    iget-object p1, p0, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/onActivityPaused$onNavigationEvent;

    iget-object p1, p1, Lo/onActivityPaused$onNavigationEvent;->onMessageChannelReady:Lo/onActivityPaused;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lo/onActivityPaused;->extraCallback(Ljava/lang/String;)V

    .line 49
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_1
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;

    iget-object v0, p0, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/onActivityPaused$onNavigationEvent;

    iget-object v1, p0, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1, p2}, Lo/onActivityPaused$onNavigationEvent$ICustomTabsCallback;-><init>(Lo/onActivityPaused$onNavigationEvent;Ljava/util/ArrayList;Lo/setSessionPersistenceKey;)V

    return-object p1
.end method
