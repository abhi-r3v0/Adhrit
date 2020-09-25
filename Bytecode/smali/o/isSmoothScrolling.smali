.class public final Lo/isSmoothScrolling;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J&\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u000c2\u0006\u0010\u001e\u001a\u00020\u00122\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0012J$\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\"\u0018\u00010!2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\n0\tJ\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'J\u0016\u0010(\u001a\u00020%2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\tH\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001d\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000eR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006+"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/adapter/paymentV2/NBAPaymentViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "_cashbackCard",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "_nbaList",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "cashbackCard",
        "Landroidx/lifecycle/LiveData;",
        "getCashbackCard",
        "()Landroidx/lifecycle/LiveData;",
        "nbaList",
        "getNbaList",
        "nbaResponse",
        "",
        "getNbaResponse",
        "()Ljava/lang/String;",
        "setNbaResponse",
        "(Ljava/lang/String;)V",
        "nbaService",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "getNbaService",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "nbaService$delegate",
        "Lkotlin/Lazy;",
        "fetch",
        "context",
        "dataContext",
        "getDebugEventAttr",
        "",
        "",
        "cardModelList",
        "removeFrom",
        "",
        "index",
        "",
        "updateList",
        "list",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACardModel;",
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
.field public final ICustomTabsCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/util/List<",
            "Lo/StaggeredGridLayoutManager;",
            ">;>;"
        }
    .end annotation
.end field

.field public final extraCallback:Lo/isSameListener;

.field public final onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    .line 24
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/isSmoothScrolling;->ICustomTabsCallback:Lo/setActive;

    .line 28
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/isSmoothScrolling;->onNavigationEvent:Lo/setActive;

    .line 30
    sget-object p1, Lo/isSmoothScrolling$extraCallback;->extraCallback:Lo/isSmoothScrolling$extraCallback;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 30
    iput-object v0, p0, Lo/isSmoothScrolling;->extraCallback:Lo/isSameListener;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lo/isSmoothScrolling;->ICustomTabsCallback(Ljava/util/List;)V

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/detachAndScrapViewAt;",
            ">;)V"
        }
    .end annotation

    .line 39
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/detachAndScrapViewAt;

    .line 1007
    iget-object v1, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 1023
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onMessageChannelReady:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "PS6"

    .line 1056
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lo/isSmoothScrolling;->onNavigationEvent:Lo/setActive;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/detachAndScrapViewAt;

    .line 2007
    iget-object p1, p1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 40
    invoke-virtual {v1, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lo/isSmoothScrolling;->ICustomTabsCallback:Lo/setActive;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/isSmoothScrolling;Ljava/util/List;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lo/isSmoothScrolling;->ICustomTabsCallback(Ljava/util/List;)V

    return-void
.end method

.method public static onPostMessage(Ljava/util/List;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/StaggeredGridLayoutManager;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "cardModelList"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    check-cast p0, Ljava/lang/Iterable;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "$this$collectionSizeOrDefault"

    invoke-static {p0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2039
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 90
    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 91
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "pairs"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 92
    check-cast v1, Lo/StaggeredGridLayoutManager;

    .line 79
    instance-of v6, v1, Lo/detachAndScrapViewAt;

    if-eqz v6, :cond_1

    new-array v6, v5, [Lo/addWrite;

    .line 80
    check-cast v1, Lo/detachAndScrapViewAt;

    .line 3007
    iget-object v7, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 3021
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    .line 3043
    new-instance v8, Lo/addWrite;

    const-string v9, "identifier"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v4

    .line 4007
    iget-object v1, v1, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 4020
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 4138
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->onPostMessage:Ljava/lang/String;

    .line 5043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v7, "type"

    invoke-direct {v4, v7, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v6, v3

    .line 80
    invoke-static {v6, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    goto :goto_2

    .line 82
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_2
    check-cast v0, Ljava/util/List;

    new-array p0, v5, [Lo/addWrite;

    .line 6043
    new-instance v1, Lo/addWrite;

    const-string v6, "list"

    invoke-direct {v1, v6, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p0, v4

    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7043
    new-instance v1, Lo/addWrite;

    const-string v4, "count"

    invoke-direct {v1, v4, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p0, v3

    .line 84
    invoke-static {p0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    return-object v0
.end method
