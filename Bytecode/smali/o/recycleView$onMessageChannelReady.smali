.class final Lo/recycleView$onMessageChannelReady;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycleView;->extraCallback(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lo/setSessionPersistenceKey;)Ljava/lang/Object;
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
        "-TT;>;",
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
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
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
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/recycleView$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/recycleView$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/reflect/Type;

    iput-object p3, p0, Lo/recycleView$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    invoke-direct {p0, p4}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 1126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    .line 35
    :try_start_0
    sget-object v0, Lo/invalidateDisplayListInt;->onNavigationEvent:Lo/invalidateDisplayListInt;

    iget-object v0, p0, Lo/recycleView$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p0, Lo/recycleView$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lo/recycleView$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    const-string v3, "key"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "type"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "serializerType"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2079
    invoke-static {}, Lo/invalidateDisplayListInt;->ICustomTabsCallback()Lo/getPrevName;

    move-result-object v3

    .line 2080
    invoke-virtual {v3}, Lo/getPrevName;->onMessageChannelReady()V

    .line 2082
    invoke-virtual {v3, v0}, Lo/getPrevName;->onMessageChannelReady(Ljava/lang/String;)Lo/getPrevName$extraCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2816
    iget-object v4, v0, Lo/getPrevName$extraCallback;->ICustomTabsCallback:[Lo/toLog;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 2084
    invoke-static {v4}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v4

    .line 2085
    invoke-interface {v4}, Lo/fullLimitUpdateChild;->mayLaunchUrl()[B

    move-result-object v5

    const-string v6, "bytes"

    .line 2086
    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lo/applyOperationToSyncPoints;->onPostMessage:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2087
    invoke-static {v6, v1, v2}, Lo/invalidateDisplayListInt;->extraCallback(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2088
    invoke-interface {v4}, Lo/fullLimitUpdateChild;->close()V

    .line 2089
    invoke-virtual {v0}, Lo/getPrevName$extraCallback;->close()V

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 2091
    :goto_0
    invoke-virtual {v3}, Lo/getPrevName;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 37
    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "$this$debugStackTrace"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3005
    sget-object v1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {}, Lo/replaceAll;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3006
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-object p1

    .line 1126
    :cond_2
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/recycleView$onMessageChannelReady;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/recycleView$onMessageChannelReady;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lo/recycleView$onMessageChannelReady;

    iget-object v0, p0, Lo/recycleView$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p0, Lo/recycleView$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lo/recycleView$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lo/recycleView$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;Lo/setSessionPersistenceKey;)V

    return-object p1
.end method
