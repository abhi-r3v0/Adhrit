.class final Lo/getCompoundHash$ICustomTabsService$Stub;
.super Lo/reverseIteratorFrom$onRelationshipValidationResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:Z

.field private final onMessageChannelReady:Lo/saveTrackedQueryKeys;

.field private final onNavigationEvent:I

.field private final onPostMessage:Lo/getRight;


# direct methods
.method constructor <init>(ZIILo/getRight;Lo/saveTrackedQueryKeys;)V
    .locals 0

    .line 1919
    invoke-direct {p0}, Lo/reverseIteratorFrom$onRelationshipValidationResult;-><init>()V

    .line 1920
    iput-boolean p1, p0, Lo/getCompoundHash$ICustomTabsService$Stub;->extraCallback:Z

    .line 1921
    iput p2, p0, Lo/getCompoundHash$ICustomTabsService$Stub;->ICustomTabsCallback:I

    .line 1922
    iput p3, p0, Lo/getCompoundHash$ICustomTabsService$Stub;->onNavigationEvent:I

    if-eqz p4, :cond_1

    .line 1924
    check-cast p4, Lo/getRight;

    iput-object p4, p0, Lo/getCompoundHash$ICustomTabsService$Stub;->onPostMessage:Lo/getRight;

    if-eqz p5, :cond_0

    .line 1925
    check-cast p5, Lo/saveTrackedQueryKeys;

    iput-object p5, p0, Lo/getCompoundHash$ICustomTabsService$Stub;->onMessageChannelReady:Lo/saveTrackedQueryKeys;

    return-void

    .line 3910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "channelLogger"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "autoLoadBalancerFactory"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onPostMessage(Ljava/util/Map;)Lo/reverseIteratorFrom$onPostMessage;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lo/reverseIteratorFrom$onPostMessage;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1932
    :try_start_0
    iget-object v2, v1, Lo/getCompoundHash$ICustomTabsService$Stub;->onPostMessage:Lo/getRight;

    iget-object v3, v1, Lo/getCompoundHash$ICustomTabsService$Stub;->onMessageChannelReady:Lo/saveTrackedQueryKeys;

    .line 1933
    invoke-virtual {v2, v0, v3}, Lo/getRight;->extraCallback(Ljava/util/Map;Lo/saveTrackedQueryKeys;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 4898
    :cond_0
    iget-object v4, v2, Lo/reverseIteratorFrom$onPostMessage;->onMessageChannelReady:Lo/emptyMap;

    if-eqz v4, :cond_1

    .line 5898
    iget-object v0, v2, Lo/reverseIteratorFrom$onPostMessage;->onMessageChannelReady:Lo/emptyMap;

    .line 1937
    invoke-static {v0}, Lo/reverseIteratorFrom$onPostMessage;->ICustomTabsCallback(Lo/emptyMap;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object v0

    return-object v0

    .line 6890
    :cond_1
    iget-object v2, v2, Lo/reverseIteratorFrom$onPostMessage;->extraCallback:Ljava/lang/Object;

    .line 1941
    :goto_0
    iget-boolean v4, v1, Lo/getCompoundHash$ICustomTabsService$Stub;->extraCallback:Z

    iget v5, v1, Lo/getCompoundHash$ICustomTabsService$Stub;->ICustomTabsCallback:I

    iget v6, v1, Lo/getCompoundHash$ICustomTabsService$Stub;->onNavigationEvent:I

    const/4 v7, 0x1

    if-eqz v4, :cond_8

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    const-string v9, "retryThrottling"

    .line 8096
    invoke-static {v0, v9}, Lo/unlisten;->onNavigationEvent(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    const-string v3, "maxTokens"

    .line 8102
    invoke-static {v9, v3}, Lo/unlisten;->onMessageChannelReady(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v10, "tokenRatio"

    .line 8103
    invoke-static {v9, v10}, Lo/unlisten;->onMessageChannelReady(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v11, v3, v10

    if-lez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    const-string v12, "maxToken should be greater than zero"

    if-eqz v11, :cond_7

    cmpl-float v10, v9, v10

    if-lez v10, :cond_5

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    const-string v11, "tokenRatio should be greater than zero"

    if-eqz v10, :cond_6

    .line 8106
    new-instance v10, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    invoke-direct {v10, v3, v9}, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;-><init>(FF)V

    move-object v3, v10

    goto :goto_3

    .line 9511
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8511
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7081
    :cond_8
    :goto_3
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 7082
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "methodConfig"

    .line 10246
    invoke-static {v0, v11}, Lo/unlisten;->extraCallback(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    .line 7091
    new-instance v0, Lo/onDisconnectCancel;

    invoke-direct {v0, v9, v10, v3, v2}, Lo/onDisconnectCancel;-><init>(Ljava/util/Map;Ljava/util/Map;Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 7095
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 7096
    new-instance v12, Lo/onDisconnectCancel$extraCallback;

    invoke-direct {v12, v11, v4, v5, v6}, Lo/onDisconnectCancel$extraCallback;-><init>(Ljava/util/Map;ZII)V

    const-string v13, "name"

    .line 11215
    invoke-static {v11, v13}, Lo/unlisten;->extraCallback(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 7103
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    const/4 v14, 0x1

    goto :goto_4

    :cond_b
    const/4 v14, 0x0

    :goto_4
    const-string v15, "no names in method config %s"

    if-eqz v14, :cond_13

    .line 7104
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    const-string v14, "service"

    .line 12194
    invoke-static {v13, v14}, Lo/unlisten;->onTransact(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 13069
    invoke-static {v14}, Lo/performUpdateApp;->extraCallback(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c

    const/4 v15, 0x1

    goto :goto_6

    :cond_c
    const/4 v15, 0x0

    :goto_6
    const-string v8, "missing service name"

    if-eqz v15, :cond_12

    const-string v8, "method"

    .line 13199
    invoke-static {v13, v8}, Lo/unlisten;->onTransact(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 14069
    invoke-static {v8}, Lo/performUpdateApp;->extraCallback(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 7111
    invoke-interface {v10, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const/4 v8, 0x1

    goto :goto_7

    :cond_d
    const/4 v8, 0x0

    :goto_7
    const-string v13, "Duplicate service %s"

    if-eqz v8, :cond_e

    .line 7112
    invoke-interface {v10, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 14217
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    invoke-static {v13, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7115
    :cond_f
    invoke-static {v14, v8}, Lo/reverseIterator;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7117
    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    const/4 v13, 0x1

    goto :goto_8

    :cond_10
    const/4 v13, 0x0

    :goto_8
    const-string v14, "Duplicate method name %s"

    if-eqz v13, :cond_11

    .line 7120
    invoke-interface {v9, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 15217
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    invoke-static {v14, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13142
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11217
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    invoke-static {v15, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7125
    :cond_14
    new-instance v0, Lo/onDisconnectCancel;

    invoke-direct {v0, v9, v10, v3, v2}, Lo/onDisconnectCancel;-><init>(Ljava/util/Map;Ljava/util/Map;Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;Ljava/lang/Object;)V

    .line 1941
    :goto_9
    invoke-static {v0}, Lo/reverseIteratorFrom$onPostMessage;->onPostMessage(Ljava/lang/Object;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1949
    sget-object v2, Lo/emptyMap;->ICustomTabsCallback:Lo/emptyMap;

    const-string v3, "failed to parse service config"

    .line 1950
    invoke-virtual {v2, v3}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object v0

    .line 1949
    invoke-static {v0}, Lo/reverseIteratorFrom$onPostMessage;->ICustomTabsCallback(Lo/emptyMap;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object v0

    return-object v0
.end method
