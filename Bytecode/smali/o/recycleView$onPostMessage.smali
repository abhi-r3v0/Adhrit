.class final Lo/recycleView$onPostMessage;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycleView;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;)V
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

.field private synthetic extraCallback:Ljava/lang/Object;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/recycleView$onPostMessage;->onPostMessage:Ljava/lang/String;

    iput-object p2, p0, Lo/recycleView$onPostMessage;->extraCallback:Ljava/lang/Object;

    iput-object p3, p0, Lo/recycleView$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    iput-object p4, p0, Lo/recycleView$onPostMessage;->ICustomTabsCallback:Ljava/lang/reflect/Type;

    invoke-direct {p0, p5}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

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

    .line 18
    :try_start_0
    sget-object p1, Lo/invalidateDisplayListInt;->onNavigationEvent:Lo/invalidateDisplayListInt;

    iget-object p1, p0, Lo/recycleView$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-object v0, p0, Lo/recycleView$onPostMessage;->extraCallback:Ljava/lang/Object;

    iget-object v1, p0, Lo/recycleView$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    iget-object v2, p0, Lo/recycleView$onPostMessage;->ICustomTabsCallback:Ljava/lang/reflect/Type;

    const-string v3, "key"

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "serializerType"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2057
    invoke-static {}, Lo/invalidateDisplayListInt;->ICustomTabsCallback()Lo/getPrevName;

    move-result-object v3

    .line 2058
    invoke-virtual {v3}, Lo/getPrevName;->onMessageChannelReady()V

    .line 2059
    invoke-static {v0, v1, v2}, Lo/invalidateDisplayListInt;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 2060
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "Charset.defaultCharset()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    .line 2459
    invoke-virtual {v3, p1, v1, v2}, Lo/getPrevName;->onPostMessage(Ljava/lang/String;J)Lo/getPrevName$onMessageChannelReady;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 2063
    invoke-virtual {p1, v1}, Lo/getPrevName$onMessageChannelReady;->extraCallback(I)Lo/exceptionStacktrace;

    move-result-object v1

    invoke-static {v1}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v1

    .line 2064
    invoke-interface {v1, v0}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    .line 2065
    invoke-interface {v1}, Lo/filtersNodes;->flush()V

    .line 2066
    invoke-interface {v1}, Lo/filtersNodes;->close()V

    .line 2067
    invoke-virtual {p1}, Lo/getPrevName$onMessageChannelReady;->onPostMessage()V

    .line 2069
    :cond_0
    invoke-virtual {v3}, Lo/getPrevName;->flush()V

    .line 2070
    invoke-virtual {v3}, Lo/getPrevName;->close()V

    goto :goto_0

    .line 2060
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 20
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "$this$debugStackTrace"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3005
    sget-object v0, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {}, Lo/replaceAll;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3006
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    :cond_2
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
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/recycleView$onPostMessage;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/recycleView$onPostMessage;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 6
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

    new-instance p1, Lo/recycleView$onPostMessage;

    iget-object v1, p0, Lo/recycleView$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-object v2, p0, Lo/recycleView$onPostMessage;->extraCallback:Ljava/lang/Object;

    iget-object v3, p0, Lo/recycleView$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    iget-object v4, p0, Lo/recycleView$onPostMessage;->ICustomTabsCallback:Ljava/lang/reflect/Type;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/recycleView$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Lo/setSessionPersistenceKey;)V

    return-object p1
.end method
