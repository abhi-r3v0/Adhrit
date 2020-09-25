.class final Lo/getScrapCount$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getScrapCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/NodeFromJSON;",
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lretrofit2/Retrofit;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/getScrapCount$asInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getScrapCount$asInterface;

    invoke-direct {v0}, Lo/getScrapCount$asInterface;-><init>()V

    sput-object v0, Lo/getScrapCount$asInterface;->onPostMessage:Lo/getScrapCount$asInterface;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 8

    .line 1058
    new-instance v0, Lo/NodeFromJSON$extraCallback;

    invoke-direct {v0}, Lo/NodeFromJSON$extraCallback;-><init>()V

    .line 1059
    new-instance v1, Lo/recycleAndClearCachedViews;

    invoke-direct {v1}, Lo/recycleAndClearCachedViews;-><init>()V

    check-cast v1, Lo/getQueryDefinition$ICustomTabsCallback;

    .line 1530
    iget-object v2, v0, Lo/NodeFromJSON$extraCallback;->extraCallback:Ljava/util/List;

    const-string v3, "factory == null"

    invoke-static {v1, v3}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    new-instance v1, Lo/getScrapViewAt;

    sget-object v2, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    .line 2000
    sget-object v2, Lo/getScrapCount;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/writeStringNoTag;

    if-eqz v2, :cond_6

    .line 2052
    new-instance v4, Lo/decodeStringStreaming;

    invoke-direct {v4, v2}, Lo/decodeStringStreaming;-><init>(Lo/writeStringNoTag;)V

    const-string v2, "GsonConverterFactory.create(gson)"

    .line 1060
    invoke-static {v4, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    .line 3000
    sget-object v2, Lo/getScrapCount;->extraCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sessionFile;

    if-eqz v2, :cond_5

    .line 3055
    new-instance v5, Lo/getBuffer;

    invoke-direct {v5, v2}, Lo/getBuffer;-><init>(Lo/sessionFile;)V

    const-string v2, "MoshiConverterFactory.create(moshi)"

    .line 1060
    invoke-static {v5, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v4, v5}, Lo/getScrapViewAt;-><init>(Lo/decodeStringStreaming;Lo/getBuffer;)V

    check-cast v1, Lo/ensureIndexed$onPostMessage;

    .line 3521
    iget-object v2, v0, Lo/NodeFromJSON$extraCallback;->ICustomTabsCallback:Ljava/util/List;

    invoke-static {v1, v3}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    sget-object v1, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    invoke-static {}, Lo/getScrapCount;->onTransact()Ljava/lang/String;

    move-result-object v1

    const-string v2, "baseUrl == null"

    .line 4451
    invoke-static {v1, v2}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4452
    invoke-static {v1}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;)Lo/isFullyInitialized;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 4510
    invoke-static {v4, v2}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4594
    iget-object v1, v4, Lo/isFullyInitialized;->onMessageChannelReady:Ljava/util/List;

    .line 4512
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4515
    iput-object v4, v0, Lo/NodeFromJSON$extraCallback;->onNavigationEvent:Lo/isFullyInitialized;

    .line 1062
    sget-object v1, Lo/RecyclerView$SmoothScroller;->onMessageChannelReady:Lo/RecyclerView$SmoothScroller;

    check-cast v1, Ljava/util/concurrent/Executor;

    const-string v2, "executor == null"

    .line 5542
    invoke-static {v1, v2}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lo/NodeFromJSON$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/Executor;

    .line 1063
    sget-object v1, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    .line 6000
    sget-object v1, Lo/getScrapCount;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/propertyName;

    const-string v2, "client == null"

    .line 6432
    invoke-static {v1, v2}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/convertInteger$ICustomTabsCallback;

    .line 6441
    invoke-static {v1, v3}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/convertInteger$ICustomTabsCallback;

    iput-object v1, v0, Lo/NodeFromJSON$extraCallback;->onPostMessage:Lo/convertInteger$ICustomTabsCallback;

    .line 6562
    iget-object v1, v0, Lo/NodeFromJSON$extraCallback;->onNavigationEvent:Lo/isFullyInitialized;

    if-eqz v1, :cond_2

    .line 6566
    iget-object v1, v0, Lo/NodeFromJSON$extraCallback;->onPostMessage:Lo/convertInteger$ICustomTabsCallback;

    if-nez v1, :cond_0

    .line 6568
    new-instance v1, Lo/propertyName;

    invoke-direct {v1}, Lo/propertyName;-><init>()V

    :cond_0
    move-object v3, v1

    .line 6571
    iget-object v1, v0, Lo/NodeFromJSON$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    .line 6573
    iget-object v1, v0, Lo/NodeFromJSON$extraCallback;->onMessageChannelReady:Lo/getPredecessorChildName;

    invoke-virtual {v1}, Lo/getPredecessorChildName;->onMessageChannelReady()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 6577
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    iget-object v2, v0, Lo/NodeFromJSON$extraCallback;->extraCallback:Ljava/util/List;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6578
    iget-object v2, v0, Lo/NodeFromJSON$extraCallback;->onMessageChannelReady:Lo/getPredecessorChildName;

    invoke-virtual {v2, v1}, Lo/getPredecessorChildName;->onMessageChannelReady(Ljava/util/concurrent/Executor;)Lo/getQueryDefinition$ICustomTabsCallback;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6581
    new-instance v5, Ljava/util/ArrayList;

    iget-object v1, v0, Lo/NodeFromJSON$extraCallback;->ICustomTabsCallback:Ljava/util/List;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6583
    new-instance v1, Lo/NodeFromJSON;

    iget-object v4, v0, Lo/NodeFromJSON$extraCallback;->onNavigationEvent:Lo/isFullyInitialized;

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lo/NodeFromJSON;-><init>(Lo/convertInteger$ICustomTabsCallback;Lo/isFullyInitialized;Ljava/util/List;Ljava/util/List;Z)V

    return-object v1

    .line 6563
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base URL required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4513
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "baseUrl must end in /: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4454
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Illegal URL: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3054
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "moshi == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2051
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "gson == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
