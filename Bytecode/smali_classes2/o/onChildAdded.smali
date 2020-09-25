.class public final Lo/onChildAdded;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onChildAdded$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/fromException;

.field private extraCallback:Lo/removeEventListener;

.field final onMessageChannelReady:Lo/setValueInternal;

.field private onNavigationEvent:Z

.field private volatile onPostMessage:Z


# direct methods
.method protected constructor <init>(Lo/setValueInternal;Lo/fromException;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1580
    new-instance v0, Lo/setValueInternal;

    invoke-direct {v0, p1}, Lo/setValueInternal;-><init>(Lo/setValueInternal;)V

    .line 1581
    iget-object v1, v0, Lo/setValueInternal;->onTransact:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    .line 1582
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lo/setValueInternal;->onTransact:Ljava/net/ProxySelector;

    .line 1584
    :cond_0
    iget-object v1, v0, Lo/setValueInternal;->asBinder:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    .line 1585
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lo/setValueInternal;->asBinder:Ljava/net/CookieHandler;

    .line 1587
    :cond_1
    iget-object v1, v0, Lo/setValueInternal;->getInterfaceDescriptor:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    .line 1588
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lo/setValueInternal;->getInterfaceDescriptor:Ljavax/net/SocketFactory;

    .line 1590
    :cond_2
    iget-object v1, v0, Lo/setValueInternal;->newSession:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    .line 1591
    invoke-virtual {p1}, Lo/setValueInternal;->onMessageChannelReady()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iput-object p1, v0, Lo/setValueInternal;->newSession:Ljavax/net/ssl/SSLSocketFactory;

    .line 1593
    :cond_3
    iget-object p1, v0, Lo/setValueInternal;->ICustomTabsCallback$Stub$Proxy:Ljavax/net/ssl/HostnameVerifier;

    if-nez p1, :cond_4

    .line 1594
    sget-object p1, Lo/orderByValue;->onNavigationEvent:Lo/orderByValue;

    iput-object p1, v0, Lo/setValueInternal;->ICustomTabsCallback$Stub$Proxy:Ljavax/net/ssl/HostnameVerifier;

    .line 1596
    :cond_4
    iget-object p1, v0, Lo/setValueInternal;->updateVisuals:Lo/onChildChanged;

    if-nez p1, :cond_5

    .line 1597
    sget-object p1, Lo/onChildChanged;->onPostMessage:Lo/onChildChanged;

    iput-object p1, v0, Lo/setValueInternal;->updateVisuals:Lo/onChildChanged;

    .line 1599
    :cond_5
    iget-object p1, v0, Lo/setValueInternal;->postMessage:Lo/onChildMoved;

    if-nez p1, :cond_6

    .line 1600
    sget-object p1, Lo/validateLimit;->ICustomTabsCallback:Lo/onChildMoved;

    iput-object p1, v0, Lo/setValueInternal;->postMessage:Lo/onChildMoved;

    .line 1602
    :cond_6
    iget-object p1, v0, Lo/setValueInternal;->extraCommand:Lo/exists;

    if-nez p1, :cond_7

    .line 1603
    invoke-static {}, Lo/exists;->extraCallback()Lo/exists;

    move-result-object p1

    iput-object p1, v0, Lo/setValueInternal;->extraCommand:Lo/exists;

    .line 1605
    :cond_7
    iget-object p1, v0, Lo/setValueInternal;->extraCallback:Ljava/util/List;

    if-nez p1, :cond_8

    .line 1606
    sget-object p1, Lo/setValueInternal;->ICustomTabsCallback:Ljava/util/List;

    iput-object p1, v0, Lo/setValueInternal;->extraCallback:Ljava/util/List;

    .line 1608
    :cond_8
    iget-object p1, v0, Lo/setValueInternal;->asInterface:Ljava/util/List;

    if-nez p1, :cond_9

    .line 1609
    sget-object p1, Lo/setValueInternal;->onPostMessage:Ljava/util/List;

    iput-object p1, v0, Lo/setValueInternal;->asInterface:Ljava/util/List;

    .line 1611
    :cond_9
    iget-object p1, v0, Lo/setValueInternal;->requestPostMessageChannel:Lo/hasNext;

    if-nez p1, :cond_a

    .line 1612
    sget-object p1, Lo/hasNext;->onNavigationEvent:Lo/hasNext;

    iput-object p1, v0, Lo/setValueInternal;->requestPostMessageChannel:Lo/hasNext;

    .line 49
    :cond_a
    iput-object v0, p0, Lo/onChildAdded;->onMessageChannelReady:Lo/setValueInternal;

    .line 50
    iput-object p2, p0, Lo/onChildAdded;->ICustomTabsCallback:Lo/fromException;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/fromException;Z)Lo/removeValue;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "User-Agent"

    const-string v4, "Accept-Encoding"

    const-string v5, "Connection"

    const-string v6, "Host"

    .line 5086
    iget-object v7, v2, Lo/fromException;->onMessageChannelReady:Lo/setPriorityInternal;

    const-string v8, "Transfer-Encoding"

    const-string v9, "Content-Type"

    const-string v10, "Content-Length"

    const-string v11, "url == null"

    const/4 v12, 0x0

    if-eqz v7, :cond_2

    .line 5094
    new-instance v13, Lo/fromException$onNavigationEvent;

    invoke-direct {v13, v2, v12}, Lo/fromException$onNavigationEvent;-><init>(Lo/fromException;B)V

    .line 257
    invoke-virtual {v7}, Lo/setPriorityInternal;->onMessageChannelReady()Lo/DatabaseException;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5185
    iget-object v7, v13, Lo/fromException$onNavigationEvent;->onNavigationEvent:Lo/getRef$ICustomTabsCallback;

    .line 5275
    invoke-static {v9, v2}, Lo/getRef$ICustomTabsCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 5276
    invoke-virtual {v7, v9}, Lo/getRef$ICustomTabsCallback;->extraCallback(Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    .line 6254
    iget-object v14, v7, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6255
    iget-object v7, v7, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "chunked"

    .line 10185
    iget-object v7, v13, Lo/fromException$onNavigationEvent;->onNavigationEvent:Lo/getRef$ICustomTabsCallback;

    .line 10275
    invoke-static {v8, v2}, Lo/getRef$ICustomTabsCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 10276
    invoke-virtual {v7, v8}, Lo/getRef$ICustomTabsCallback;->extraCallback(Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    .line 11254
    iget-object v14, v7, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11255
    iget-object v7, v7, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12202
    iget-object v2, v13, Lo/fromException$onNavigationEvent;->onNavigationEvent:Lo/getRef$ICustomTabsCallback;

    invoke-virtual {v2, v10}, Lo/getRef$ICustomTabsCallback;->extraCallback(Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    .line 12277
    iget-object v2, v13, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    if-eqz v2, :cond_1

    .line 12278
    new-instance v2, Lo/fromException;

    invoke-direct {v2, v13, v12}, Lo/fromException;-><init>(Lo/fromException$onNavigationEvent;B)V

    goto :goto_0

    .line 12277
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    move-object v15, v2

    .line 275
    new-instance v2, Lo/removeEventListener;

    iget-object v14, v1, Lo/onChildAdded;->onMessageChannelReady:Lo/setValueInternal;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v2

    move/from16 v18, p2

    invoke-direct/range {v13 .. v21}, Lo/removeEventListener;-><init>(Lo/setValueInternal;Lo/fromException;ZZZLo/setLogger$extraCallback$extraCallback;Lo/limitToFirst;Lo/removeValue;)V

    iput-object v2, v1, Lo/onChildAdded;->extraCallback:Lo/removeEventListener;

    const/4 v2, 0x0

    .line 286
    :goto_1
    :try_start_0
    iget-object v14, v1, Lo/onChildAdded;->extraCallback:Lo/removeEventListener;

    .line 13200
    iget-object v15, v14, Lo/removeEventListener;->updateVisuals:Lo/validateQueryEndpoints;
    :try_end_0
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_0 .. :try_end_0} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_0 .. :try_end_0} :catch_33
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_32
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v13, "cacheResponse"

    const-wide/16 v16, -0x1

    const-string v7, "GET"

    const-string v12, "priorResponse.body != null"

    if-nez v15, :cond_3c

    .line 13201
    :try_start_1
    iget-object v15, v14, Lo/removeEventListener;->onNavigationEvent:Lo/addChildEventListener;

    if-nez v15, :cond_3b

    .line 13203
    iget-object v15, v14, Lo/removeEventListener;->asInterface:Lo/fromException;
    :try_end_1
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_1 .. :try_end_1} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_1 .. :try_end_1} :catch_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_26
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v20, v2

    .line 14094
    :try_start_2
    new-instance v2, Lo/fromException$onNavigationEvent;
    :try_end_2
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_2 .. :try_end_2} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_2 .. :try_end_2} :catch_23
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_22
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v21, v9

    const/4 v9, 0x0

    :try_start_3
    invoke-direct {v2, v15, v9}, Lo/fromException$onNavigationEvent;-><init>(Lo/fromException;B)V

    .line 13521
    invoke-virtual {v15, v6}, Lo/fromException;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_3 .. :try_end_3} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_3 .. :try_end_3} :catch_21
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_20
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v9, :cond_3

    .line 15048
    :try_start_4
    iget-object v9, v15, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 13522
    invoke-static {v9}, Lo/createForTests;->ICustomTabsCallback(Lo/fromCode;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;
    :try_end_4
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_4 .. :try_end_4} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    :goto_2
    move-object/from16 v25, v6

    move-object v2, v8

    move-object v8, v10

    move-object/from16 v7, v21

    goto/16 :goto_52

    :catch_1
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    :goto_3
    move-object/from16 v25, v6

    move-object v2, v8

    move-object v8, v10

    move-object/from16 v7, v21

    goto/16 :goto_5b

    .line 13525
    :cond_3
    :goto_4
    :try_start_5
    invoke-virtual {v15, v5}, Lo/fromException;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_5 .. :try_end_5} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_5 .. :try_end_5} :catch_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_20
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v9, :cond_4

    :try_start_6
    const-string v9, "Keep-Alive"

    .line 13526
    invoke-virtual {v2, v5, v9}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;
    :try_end_6
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_6 .. :try_end_6} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 13529
    :cond_4
    :try_start_7
    invoke-virtual {v15, v4}, Lo/fromException;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_7
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_7 .. :try_end_7} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_7 .. :try_end_7} :catch_21
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_20
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v9, :cond_5

    const/4 v9, 0x1

    .line 13530
    :try_start_8
    iput-boolean v9, v14, Lo/removeEventListener;->ICustomTabsCallback$Stub:Z

    const-string v9, "gzip"

    .line 13531
    invoke-virtual {v2, v4, v9}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;
    :try_end_8
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_8 .. :try_end_8} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 13534
    :cond_5
    :try_start_9
    iget-object v9, v14, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 15284
    iget-object v9, v9, Lo/setValueInternal;->asBinder:Ljava/net/CookieHandler;
    :try_end_9
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_9 .. :try_end_9} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_9 .. :try_end_9} :catch_21
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_20
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v9, :cond_7

    move-object/from16 v22, v4

    .line 16277
    :try_start_a
    iget-object v4, v2, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    if-eqz v4, :cond_6

    .line 16278
    new-instance v4, Lo/fromException;
    :try_end_a
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_a .. :try_end_a} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v23, v5

    const/4 v5, 0x0

    :try_start_b
    invoke-direct {v4, v2, v5}, Lo/fromException;-><init>(Lo/fromException$onNavigationEvent;B)V

    .line 17074
    iget-object v4, v4, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    .line 13539
    invoke-static {v4}, Lo/removeEventRegistration;->onNavigationEvent(Lo/getRef;)Ljava/util/Map;

    move-result-object v4

    .line 13541
    invoke-virtual {v15}, Lo/fromException;->ICustomTabsCallback()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v9, v5, v4}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 13544
    invoke-static {v2, v4}, Lo/removeEventRegistration;->ICustomTabsCallback(Lo/fromException$onNavigationEvent;Ljava/util/Map;)V

    goto :goto_7

    :cond_6
    move-object/from16 v23, v5

    .line 16277
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_b .. :try_end_b} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v23, v5

    :goto_5
    move-object/from16 v24, v3

    goto :goto_2

    :catch_5
    move-exception v0

    move-object/from16 v23, v5

    :goto_6
    move-object/from16 v24, v3

    goto :goto_3

    :cond_7
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    .line 13547
    :goto_7
    :try_start_c
    invoke-virtual {v15, v3}, Lo/fromException;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_c
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_c .. :try_end_c} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_c .. :try_end_c} :catch_1f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1e
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v4, :cond_8

    :try_start_d
    const-string v4, "okhttp/2.7.5"

    .line 13548
    invoke-virtual {v2, v3, v4}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;
    :try_end_d
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_d .. :try_end_d} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 18277
    :cond_8
    :try_start_e
    iget-object v4, v2, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    if-eqz v4, :cond_3a

    .line 18278
    new-instance v4, Lo/fromException;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lo/fromException;-><init>(Lo/fromException$onNavigationEvent;B)V

    .line 13205
    sget-object v2, Lo/goOnline;->onPostMessage:Lo/goOnline;

    iget-object v5, v14, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    invoke-virtual {v2, v5}, Lo/goOnline;->onMessageChannelReady(Lo/setValueInternal;)Lo/setHijackHash;

    move-result-object v2
    :try_end_e
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_e .. :try_end_e} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_e .. :try_end_e} :catch_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v2, :cond_9

    .line 13207
    :try_start_f
    invoke-interface {v2, v4}, Lo/setHijackHash;->onMessageChannelReady(Lo/fromException;)Lo/removeValue;

    move-result-object v5
    :try_end_f
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_f .. :try_end_f} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object v15, v8

    goto :goto_8

    :cond_9
    move-object v15, v8

    const/4 v5, 0x0

    .line 13210
    :goto_8
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8
    :try_end_10
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_10 .. :try_end_10} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_10 .. :try_end_10} :catch_1d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1c
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-object/from16 v24, v3

    .line 13211
    :try_start_11
    new-instance v3, Lo/validateQueryEndpoints$ICustomTabsCallback;

    invoke-direct {v3, v8, v9, v4, v5}, Lo/validateQueryEndpoints$ICustomTabsCallback;-><init>(JLo/fromException;Lo/removeValue;)V

    .line 19174
    iget-object v8, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onMessageChannelReady:Lo/removeValue;
    :try_end_11
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_11 .. :try_end_11} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_11 .. :try_end_11} :catch_1b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1a
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-nez v8, :cond_a

    .line 19175
    :try_start_12
    new-instance v8, Lo/validateQueryEndpoints;

    iget-object v9, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onPostMessage:Lo/fromException;
    :try_end_12
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_12 .. :try_end_12} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object/from16 v25, v6

    move-object/from16 v26, v15

    const/4 v6, 0x0

    const/4 v15, 0x0

    :try_start_13
    invoke-direct {v8, v9, v6, v15}, Lo/validateQueryEndpoints;-><init>(Lo/fromException;Lo/removeValue;B)V
    :try_end_13
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_13 .. :try_end_13} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :goto_9
    move-object v15, v2

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v31, v7

    move-object/from16 v35, v10

    move-object/from16 v29, v12

    move-object/from16 v32, v13

    goto/16 :goto_1e

    :catch_6
    move-exception v0

    goto/16 :goto_26

    :catch_7
    move-exception v0

    goto/16 :goto_28

    :catch_8
    move-exception v0

    move-object/from16 v25, v6

    move-object v3, v0

    move-object v8, v10

    move-object v2, v15

    move-object/from16 v7, v21

    :goto_a
    const/4 v6, 0x0

    goto/16 :goto_54

    :catch_9
    move-exception v0

    move-object/from16 v25, v6

    move-object v3, v0

    move-object v8, v10

    move-object v2, v15

    move-object/from16 v7, v21

    :goto_b
    const/4 v6, 0x0

    goto/16 :goto_5d

    :cond_a
    move-object/from16 v25, v6

    move-object/from16 v26, v15

    .line 19179
    :try_start_14
    iget-object v6, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onPostMessage:Lo/fromException;

    .line 20107
    iget-object v6, v6, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 20352
    iget-object v6, v6, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    const-string v8, "https"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_14
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_14 .. :try_end_14} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_14 .. :try_end_14} :catch_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_18
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v6, :cond_b

    .line 19179
    :try_start_15
    iget-object v6, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onMessageChannelReady:Lo/removeValue;

    .line 21109
    iget-object v6, v6, Lo/removeValue;->onPostMessage:Lo/getChildren;

    if-nez v6, :cond_b

    .line 19180
    new-instance v8, Lo/validateQueryEndpoints;

    iget-object v6, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onPostMessage:Lo/fromException;
    :try_end_15
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_15 .. :try_end_15} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    const/4 v9, 0x0

    const/4 v15, 0x0

    :try_start_16
    invoke-direct {v8, v6, v9, v15}, Lo/validateQueryEndpoints;-><init>(Lo/fromException;Lo/removeValue;B)V
    :try_end_16
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_16 .. :try_end_16} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_9

    :catch_a
    move-exception v0

    move-object v3, v0

    move-object v6, v9

    goto/16 :goto_27

    :catch_b
    move-exception v0

    move-object v3, v0

    move-object v6, v9

    goto/16 :goto_29

    :catch_c
    move-exception v0

    move-object v3, v0

    move-object v8, v10

    :goto_c
    move-object/from16 v7, v21

    move-object/from16 v2, v26

    goto :goto_a

    :catch_d
    move-exception v0

    move-object v3, v0

    move-object v8, v10

    :goto_d
    move-object/from16 v7, v21

    move-object/from16 v2, v26

    goto :goto_b

    .line 19186
    :cond_b
    :try_start_17
    iget-object v6, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onMessageChannelReady:Lo/removeValue;

    iget-object v8, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onPostMessage:Lo/fromException;

    invoke-static {v6, v8}, Lo/validateQueryEndpoints;->extraCallback(Lo/removeValue;Lo/fromException;)Z

    move-result v6
    :try_end_17
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_17 .. :try_end_17} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_17 .. :try_end_17} :catch_19
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_18
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-nez v6, :cond_c

    .line 19187
    :try_start_18
    new-instance v8, Lo/validateQueryEndpoints;

    iget-object v6, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onPostMessage:Lo/fromException;
    :try_end_18
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_18 .. :try_end_18} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_18 .. :try_end_18} :catch_d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    const/4 v9, 0x0

    const/4 v15, 0x0

    :try_start_19
    invoke-direct {v8, v6, v9, v15}, Lo/validateQueryEndpoints;-><init>(Lo/fromException;Lo/removeValue;B)V
    :try_end_19
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_19 .. :try_end_19} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_9

    .line 19190
    :cond_c
    :try_start_1a
    iget-object v6, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onPostMessage:Lo/fromException;

    .line 22102
    iget-object v8, v6, Lo/fromException;->onTransact:Lo/onChildRemoved;

    if-eqz v8, :cond_d

    goto :goto_e

    .line 22103
    :cond_d
    iget-object v8, v6, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    invoke-static {v8}, Lo/onChildRemoved;->onNavigationEvent(Lo/getRef;)Lo/onChildRemoved;

    move-result-object v8

    iput-object v8, v6, Lo/fromException;->onTransact:Lo/onChildRemoved;

    .line 23087
    :goto_e
    iget-boolean v6, v8, Lo/onChildRemoved;->onNavigationEvent:Z

    if-nez v6, :cond_29

    .line 19191
    iget-object v6, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onPostMessage:Lo/fromException;

    invoke-static {v6}, Lo/validateQueryEndpoints$ICustomTabsCallback;->extraCallback(Lo/fromException;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto/16 :goto_1d

    .line 23275
    :cond_e
    iget-object v6, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->extraCallback:Ljava/util/Date;
    :try_end_1a
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_1a .. :try_end_1a} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_1a .. :try_end_1a} :catch_19
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_18
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    move-object v15, v10

    if-eqz v6, :cond_f

    :try_start_1b
    iget-wide v9, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onRelationshipValidationResult:J

    iget-object v6, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->extraCallback:Ljava/util/Date;

    .line 23276
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v29

    sub-long v9, v9, v29

    move-object/from16 v29, v12

    move-object v6, v13

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9
    :try_end_1b
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_1b .. :try_end_1b} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_1b .. :try_end_1b} :catch_f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    goto :goto_f

    :catch_e
    move-exception v0

    move-object v3, v0

    move-object v8, v15

    goto :goto_c

    :catch_f
    move-exception v0

    move-object v3, v0

    move-object v8, v15

    goto :goto_d

    :cond_f
    move-object/from16 v29, v12

    move-object v6, v13

    const-wide/16 v9, 0x0

    .line 23278
    :goto_f
    :try_start_1c
    iget v12, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->newSession:I
    :try_end_1c
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_1c .. :try_end_1c} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_1c .. :try_end_1c} :catch_13
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_12
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    const/4 v13, -0x1

    if-eq v12, v13, :cond_10

    :try_start_1d
    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v13, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->newSession:I

    move-object/from16 v32, v6

    move-object/from16 v31, v7

    int-to-long v6, v13

    .line 23279
    invoke-virtual {v12, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9
    :try_end_1d
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_1d .. :try_end_1d} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_1d .. :try_end_1d} :catch_f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_e
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto :goto_10

    :cond_10
    move-object/from16 v32, v6

    move-object/from16 v31, v7

    .line 23281
    :goto_10
    :try_start_1e
    iget-wide v6, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onRelationshipValidationResult:J

    iget-wide v12, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onTransact:J

    sub-long/2addr v6, v12

    .line 23282
    iget-wide v12, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->ICustomTabsCallback:J

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    iget-wide v4, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onRelationshipValidationResult:J

    sub-long/2addr v12, v4

    add-long/2addr v9, v6

    add-long/2addr v9, v12

    .line 24246
    iget-object v4, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onMessageChannelReady:Lo/removeValue;

    .line 25205
    iget-object v5, v4, Lo/removeValue;->newSession:Lo/onChildRemoved;

    if-eqz v5, :cond_11

    goto :goto_11

    .line 25206
    :cond_11
    iget-object v5, v4, Lo/removeValue;->asInterface:Lo/getRef;

    invoke-static {v5}, Lo/onChildRemoved;->onNavigationEvent(Lo/getRef;)Lo/onChildRemoved;

    move-result-object v5

    iput-object v5, v4, Lo/removeValue;->newSession:Lo/onChildRemoved;

    .line 26100
    :goto_11
    iget v4, v5, Lo/onChildRemoved;->onPostMessage:I
    :try_end_1e
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_1e .. :try_end_1e} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_1e .. :try_end_1e} :catch_13
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_12
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    const/4 v6, -0x1

    if-eq v4, v6, :cond_12

    .line 24248
    :try_start_1f
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27100
    iget v5, v5, Lo/onChildRemoved;->onPostMessage:I

    int-to-long v5, v5

    .line 24248
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4
    :try_end_1f
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_1f .. :try_end_1f} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_1f .. :try_end_1f} :catch_f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    :goto_12
    const-wide/16 v12, 0x0

    goto/16 :goto_16

    .line 24249
    :cond_12
    :try_start_20
    iget-object v4, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->asBinder:Ljava/util/Date;
    :try_end_20
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_20 .. :try_end_20} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_20 .. :try_end_20} :catch_13
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_12
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    if-eqz v4, :cond_15

    .line 24250
    :try_start_21
    iget-object v4, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->extraCallback:Ljava/util/Date;

    if-eqz v4, :cond_13

    iget-object v4, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->extraCallback:Ljava/util/Date;

    .line 24251
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_13

    :cond_13
    iget-wide v4, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onRelationshipValidationResult:J

    .line 24253
    :goto_13
    iget-object v6, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->asBinder:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6
    :try_end_21
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_21 .. :try_end_21} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_21 .. :try_end_21} :catch_f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_e
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    sub-long v12, v6, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v12, v4

    if-lez v6, :cond_14

    move-wide v4, v12

    goto :goto_12

    :cond_14
    const-wide/16 v4, 0x0

    goto :goto_12

    .line 24255
    :cond_15
    :try_start_22
    iget-object v4, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->asInterface:Ljava/util/Date;
    :try_end_22
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_22 .. :try_end_22} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_22 .. :try_end_22} :catch_13
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_12
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    if-eqz v4, :cond_18

    :try_start_23
    iget-object v4, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onMessageChannelReady:Lo/removeValue;

    .line 28075
    iget-object v4, v4, Lo/removeValue;->extraCallback:Lo/fromException;

    .line 29048
    iget-object v4, v4, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 29506
    iget-object v5, v4, Lo/fromCode;->onNavigationEvent:Ljava/util/List;

    if-nez v5, :cond_16

    const/4 v4, 0x0

    goto :goto_14

    .line 29507
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 29508
    iget-object v4, v4, Lo/fromCode;->onNavigationEvent:Ljava/util/List;

    invoke-static {v5, v4}, Lo/fromCode;->onNavigationEvent(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 29509
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_14
    if-nez v4, :cond_18

    .line 24261
    iget-object v4, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->extraCallback:Ljava/util/Date;

    if-eqz v4, :cond_17

    iget-object v4, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->extraCallback:Ljava/util/Date;

    .line 24262
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_15

    :cond_17
    iget-wide v4, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onTransact:J

    .line 24264
    :goto_15
    iget-object v6, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->asInterface:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v12, 0x0

    cmp-long v6, v4, v12

    if-lez v6, :cond_19

    const-wide/16 v6, 0xa

    .line 24265
    div-long/2addr v4, v6
    :try_end_23
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_23 .. :try_end_23} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_23 .. :try_end_23} :catch_f
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_e
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    goto :goto_16

    :cond_18
    const-wide/16 v12, 0x0

    :cond_19
    move-wide v4, v12

    .line 30100
    :goto_16
    :try_start_24
    iget v6, v8, Lo/onChildRemoved;->onPostMessage:I
    :try_end_24
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_24 .. :try_end_24} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_24 .. :try_end_24} :catch_13
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_12
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1a

    .line 19199
    :try_start_25
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31100
    iget v7, v8, Lo/onChildRemoved;->onPostMessage:I

    int-to-long v12, v7

    .line 19199
    invoke-virtual {v6, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4
    :try_end_25
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_25 .. :try_end_25} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_25 .. :try_end_25} :catch_f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_e
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 31129
    :cond_1a
    :try_start_26
    iget v6, v8, Lo/onChildRemoved;->asBinder:I
    :try_end_26
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_26 .. :try_end_26} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_26 .. :try_end_26} :catch_13
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_12
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1b

    .line 19204
    :try_start_27
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32129
    iget v7, v8, Lo/onChildRemoved;->asBinder:I

    int-to-long v12, v7

    .line 19204
    invoke-virtual {v6, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12
    :try_end_27
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_27 .. :try_end_27} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_27 .. :try_end_27} :catch_f
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_e
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    goto :goto_17

    :cond_1b
    const-wide/16 v12, 0x0

    .line 19208
    :goto_17
    :try_start_28
    iget-object v6, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onMessageChannelReady:Lo/removeValue;

    .line 32205
    iget-object v7, v6, Lo/removeValue;->newSession:Lo/onChildRemoved;

    if-eqz v7, :cond_1c

    goto :goto_18

    .line 32206
    :cond_1c
    iget-object v7, v6, Lo/removeValue;->asInterface:Lo/getRef;

    invoke-static {v7}, Lo/onChildRemoved;->onNavigationEvent(Lo/getRef;)Lo/onChildRemoved;

    move-result-object v7

    iput-object v7, v6, Lo/removeValue;->newSession:Lo/onChildRemoved;

    .line 33121
    :goto_18
    iget-boolean v6, v7, Lo/onChildRemoved;->asInterface:Z

    if-nez v6, :cond_1d

    .line 33125
    iget v6, v8, Lo/onChildRemoved;->onRelationshipValidationResult:I
    :try_end_28
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_28 .. :try_end_28} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_28 .. :try_end_28} :catch_13
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_12
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    move-object/from16 v35, v15

    const/4 v15, -0x1

    if-eq v6, v15, :cond_1e

    .line 19210
    :try_start_29
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34125
    iget v8, v8, Lo/onChildRemoved;->onRelationshipValidationResult:I

    move-object v15, v2

    int-to-long v1, v8

    .line 19210
    invoke-virtual {v6, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    goto :goto_19

    :cond_1d
    move-object/from16 v35, v15

    :cond_1e
    move-object v15, v2

    const-wide/16 v1, 0x0

    .line 35087
    :goto_19
    iget-boolean v6, v7, Lo/onChildRemoved;->onNavigationEvent:Z

    if-nez v6, :cond_23

    add-long/2addr v12, v9

    add-long/2addr v1, v4

    cmp-long v6, v12, v1

    if-gez v6, :cond_23

    .line 19214
    iget-object v1, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onMessageChannelReady:Lo/removeValue;

    .line 35134
    new-instance v2, Lo/removeValue$onPostMessage;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Lo/removeValue$onPostMessage;-><init>(Lo/removeValue;B)V
    :try_end_29
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_29 .. :try_end_29} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_29 .. :try_end_29} :catch_15
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_14
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    const-string v1, "Warning"

    cmp-long v6, v12, v4

    if-ltz v6, :cond_1f

    :try_start_2a
    const-string v4, "110 HttpURLConnection \"Response is stale\""

    .line 19216
    invoke-virtual {v2, v1, v4}, Lo/removeValue$onPostMessage;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/removeValue$onPostMessage;

    :cond_1f
    const-wide/32 v4, 0x5265c00

    cmp-long v6, v9, v4

    if-lez v6, :cond_22

    .line 35292
    iget-object v4, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onMessageChannelReady:Lo/removeValue;

    .line 36205
    iget-object v5, v4, Lo/removeValue;->newSession:Lo/onChildRemoved;

    if-eqz v5, :cond_20

    goto :goto_1a

    .line 36206
    :cond_20
    iget-object v5, v4, Lo/removeValue;->asInterface:Lo/getRef;

    invoke-static {v5}, Lo/onChildRemoved;->onNavigationEvent(Lo/getRef;)Lo/onChildRemoved;

    move-result-object v5

    iput-object v5, v4, Lo/removeValue;->newSession:Lo/onChildRemoved;

    .line 37100
    :goto_1a
    iget v4, v5, Lo/onChildRemoved;->onPostMessage:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_21

    .line 35292
    iget-object v4, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->asBinder:Ljava/util/Date;

    if-nez v4, :cond_21

    const/4 v4, 0x1

    goto :goto_1b

    :cond_21
    const/4 v4, 0x0

    :goto_1b
    if-eqz v4, :cond_22

    const-string v4, "113 HttpURLConnection \"Heuristic expiration\""

    .line 19220
    invoke-virtual {v2, v1, v4}, Lo/removeValue$onPostMessage;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/removeValue$onPostMessage;

    .line 19222
    :cond_22
    new-instance v8, Lo/validateQueryEndpoints;

    invoke-virtual {v2}, Lo/removeValue$onPostMessage;->extraCallback()Lo/removeValue;

    move-result-object v1
    :try_end_2a
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_2a .. :try_end_2a} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_2a .. :try_end_2a} :catch_15
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_14
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_2b
    invoke-direct {v8, v2, v1, v4}, Lo/validateQueryEndpoints;-><init>(Lo/fromException;Lo/removeValue;B)V
    :try_end_2b
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_2b .. :try_end_2b} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_2b .. :try_end_2b} :catch_11
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_10
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    goto/16 :goto_1e

    :catch_10
    move-exception v0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v6, v2

    goto/16 :goto_32

    :catch_11
    move-exception v0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v6, v2

    goto/16 :goto_35

    .line 19225
    :cond_23
    :try_start_2c
    iget-object v1, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onPostMessage:Lo/fromException;

    .line 38094
    new-instance v2, Lo/fromException$onNavigationEvent;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lo/fromException$onNavigationEvent;-><init>(Lo/fromException;B)V

    .line 19227
    iget-object v1, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz v1, :cond_24

    const-string v1, "If-None-Match"

    .line 19228
    iget-object v4, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    goto :goto_1c

    .line 19229
    :cond_24
    iget-object v1, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->asInterface:Ljava/util/Date;
    :try_end_2c
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_2c .. :try_end_2c} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_2c .. :try_end_2c} :catch_15
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_14
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    const-string v4, "If-Modified-Since"

    if-eqz v1, :cond_25

    .line 19230
    :try_start_2d
    iget-object v1, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    goto :goto_1c

    .line 19231
    :cond_25
    iget-object v1, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->extraCallback:Ljava/util/Date;

    if-eqz v1, :cond_26

    .line 19232
    iget-object v1, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    .line 38277
    :cond_26
    :goto_1c
    iget-object v1, v2, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    if-eqz v1, :cond_28

    .line 38278
    new-instance v1, Lo/fromException;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lo/fromException;-><init>(Lo/fromException$onNavigationEvent;B)V

    .line 19236
    invoke-static {v1}, Lo/validateQueryEndpoints$ICustomTabsCallback;->extraCallback(Lo/fromException;)Z

    move-result v2

    if-eqz v2, :cond_27

    new-instance v8, Lo/validateQueryEndpoints;

    iget-object v2, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onMessageChannelReady:Lo/removeValue;

    invoke-direct {v8, v1, v2, v4}, Lo/validateQueryEndpoints;-><init>(Lo/fromException;Lo/removeValue;B)V

    goto :goto_1e

    :cond_27
    new-instance v8, Lo/validateQueryEndpoints;
    :try_end_2d
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_2d .. :try_end_2d} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_2d .. :try_end_2d} :catch_15
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_14
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_2e
    invoke-direct {v8, v1, v2, v4}, Lo/validateQueryEndpoints;-><init>(Lo/fromException;Lo/removeValue;B)V
    :try_end_2e
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_2e .. :try_end_2e} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_2e .. :try_end_2e} :catch_11
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_10
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    goto :goto_1e

    .line 38277
    :cond_28
    :try_start_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_12
    move-exception v0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v8, v15

    goto/16 :goto_44

    :catch_13
    move-exception v0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v8, v15

    goto/16 :goto_46

    :cond_29
    :goto_1d
    move-object v15, v2

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-object/from16 v31, v7

    move-object/from16 v35, v10

    move-object/from16 v29, v12

    move-object/from16 v32, v13

    .line 19192
    new-instance v8, Lo/validateQueryEndpoints;

    iget-object v1, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onPostMessage:Lo/fromException;
    :try_end_2f
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_2f .. :try_end_2f} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_2f .. :try_end_2f} :catch_15
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_14
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_30
    invoke-direct {v8, v1, v2, v4}, Lo/validateQueryEndpoints;-><init>(Lo/fromException;Lo/removeValue;B)V
    :try_end_30
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_30 .. :try_end_30} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_30 .. :try_end_30} :catch_17
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_16
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    .line 19163
    :goto_1e
    :try_start_31
    iget-object v1, v8, Lo/validateQueryEndpoints;->onMessageChannelReady:Lo/fromException;

    if-eqz v1, :cond_2b

    iget-object v1, v3, Lo/validateQueryEndpoints$ICustomTabsCallback;->onPostMessage:Lo/fromException;

    .line 39102
    iget-object v2, v1, Lo/fromException;->onTransact:Lo/onChildRemoved;

    if-eqz v2, :cond_2a

    goto :goto_1f

    .line 39103
    :cond_2a
    iget-object v2, v1, Lo/fromException;->ICustomTabsCallback:Lo/getRef;

    invoke-static {v2}, Lo/onChildRemoved;->onNavigationEvent(Lo/getRef;)Lo/onChildRemoved;

    move-result-object v2

    iput-object v2, v1, Lo/fromException;->onTransact:Lo/onChildRemoved;

    .line 39140
    :goto_1f
    iget-boolean v1, v2, Lo/onChildRemoved;->onTransact:Z

    if-eqz v1, :cond_2b

    .line 19165
    new-instance v8, Lo/validateQueryEndpoints;
    :try_end_31
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_31 .. :try_end_31} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_31 .. :try_end_31} :catch_15
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_14
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    const/4 v1, 0x0

    const/4 v6, 0x0

    :try_start_32
    invoke-direct {v8, v6, v6, v1}, Lo/validateQueryEndpoints;-><init>(Lo/fromException;Lo/removeValue;B)V

    goto :goto_20

    :cond_2b
    const/4 v6, 0x0

    .line 13211
    :goto_20
    iput-object v8, v14, Lo/removeEventListener;->updateVisuals:Lo/validateQueryEndpoints;

    .line 13212
    iget-object v1, v14, Lo/removeEventListener;->updateVisuals:Lo/validateQueryEndpoints;

    iget-object v1, v1, Lo/validateQueryEndpoints;->onMessageChannelReady:Lo/fromException;

    iput-object v1, v14, Lo/removeEventListener;->asBinder:Lo/fromException;

    .line 13213
    iget-object v1, v14, Lo/removeEventListener;->updateVisuals:Lo/validateQueryEndpoints;

    iget-object v1, v1, Lo/validateQueryEndpoints;->ICustomTabsCallback:Lo/removeValue;

    iput-object v1, v14, Lo/removeEventListener;->warmup:Lo/removeValue;

    if-eqz v15, :cond_2c

    .line 13216
    iget-object v1, v14, Lo/removeEventListener;->updateVisuals:Lo/validateQueryEndpoints;

    move-object v2, v15

    invoke-interface {v2, v1}, Lo/setHijackHash;->ICustomTabsCallback(Lo/validateQueryEndpoints;)V

    :cond_2c
    if-eqz v34, :cond_2d

    .line 13219
    iget-object v1, v14, Lo/removeEventListener;->warmup:Lo/removeValue;

    if-nez v1, :cond_2d

    move-object/from16 v5, v34

    .line 40130
    iget-object v1, v5, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    .line 13220
    invoke-static {v1}, Lo/createForTests;->onMessageChannelReady(Ljava/io/Closeable;)V

    .line 13223
    :cond_2d
    iget-object v1, v14, Lo/removeEventListener;->asBinder:Lo/fromException;

    if-eqz v1, :cond_33

    .line 40280
    iget-object v1, v14, Lo/removeEventListener;->asBinder:Lo/fromException;

    .line 41070
    iget-object v1, v1, Lo/fromException;->extraCallback:Ljava/lang/String;

    move-object/from16 v2, v31

    .line 40280
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const/16 v41, 0x1

    goto :goto_21

    :cond_2e
    const/16 v41, 0x0

    .line 40281
    :goto_21
    iget-object v1, v14, Lo/removeEventListener;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    iget-object v3, v14, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 41197
    iget v3, v3, Lo/setValueInternal;->IPostMessageService$Stub:I

    .line 40281
    iget-object v4, v14, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 41217
    iget v4, v4, Lo/setValueInternal;->ICustomTabsService$Stub$Proxy:I

    .line 40282
    iget-object v5, v14, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 41235
    iget v5, v5, Lo/setValueInternal;->ICustomTabsService$Stub:I

    .line 40282
    iget-object v7, v14, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 41462
    iget-boolean v7, v7, Lo/setValueInternal;->IPostMessageService:Z

    move-object/from16 v36, v1

    move/from16 v37, v3

    move/from16 v38, v4

    move/from16 v39, v5

    move/from16 v40, v7

    .line 40281
    invoke-virtual/range {v36 .. v41}, Lo/setLogger$extraCallback$extraCallback;->onPostMessage(IIIZZ)Lo/addChildEventListener;

    move-result-object v1

    .line 13224
    iput-object v1, v14, Lo/removeEventListener;->onNavigationEvent:Lo/addChildEventListener;

    .line 13225
    iget-object v1, v14, Lo/removeEventListener;->onNavigationEvent:Lo/addChildEventListener;

    invoke-interface {v1, v14}, Lo/addChildEventListener;->onPostMessage(Lo/removeEventListener;)V

    .line 13231
    iget-boolean v1, v14, Lo/removeEventListener;->getInterfaceDescriptor:Z

    if-eqz v1, :cond_32

    iget-object v1, v14, Lo/removeEventListener;->asBinder:Lo/fromException;

    invoke-static {v1}, Lo/removeEventListener;->ICustomTabsCallback(Lo/fromException;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v14, Lo/removeEventListener;->newSession:Lo/exceptionStacktrace;

    if-nez v1, :cond_32

    .line 13232
    invoke-static/range {v33 .. v33}, Lo/removeEventRegistration;->onNavigationEvent(Lo/fromException;)J

    move-result-wide v3

    .line 13233
    iget-boolean v1, v14, Lo/removeEventListener;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_31

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v3, v7

    if-gtz v1, :cond_30

    cmp-long v1, v3, v16

    if-eqz v1, :cond_2f

    .line 13241
    iget-object v1, v14, Lo/removeEventListener;->onNavigationEvent:Lo/addChildEventListener;

    iget-object v5, v14, Lo/removeEventListener;->asBinder:Lo/fromException;

    invoke-interface {v1, v5}, Lo/addChildEventListener;->onMessageChannelReady(Lo/fromException;)V

    .line 13242
    new-instance v1, Lo/limitToFirst;

    long-to-int v4, v3

    invoke-direct {v1, v4}, Lo/limitToFirst;-><init>(I)V

    iput-object v1, v14, Lo/removeEventListener;->newSession:Lo/exceptionStacktrace;

    goto :goto_22

    .line 13247
    :cond_2f
    new-instance v1, Lo/limitToFirst;

    invoke-direct {v1}, Lo/limitToFirst;-><init>()V

    iput-object v1, v14, Lo/removeEventListener;->newSession:Lo/exceptionStacktrace;

    goto :goto_22

    .line 13235
    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13250
    :cond_31
    iget-object v1, v14, Lo/removeEventListener;->onNavigationEvent:Lo/addChildEventListener;

    iget-object v5, v14, Lo/removeEventListener;->asBinder:Lo/fromException;

    invoke-interface {v1, v5}, Lo/addChildEventListener;->onMessageChannelReady(Lo/fromException;)V

    .line 13251
    iget-object v1, v14, Lo/removeEventListener;->onNavigationEvent:Lo/addChildEventListener;

    iget-object v5, v14, Lo/removeEventListener;->asBinder:Lo/fromException;

    invoke-interface {v1, v5, v3, v4}, Lo/addChildEventListener;->onPostMessage(Lo/fromException;J)Lo/exceptionStacktrace;

    move-result-object v1

    iput-object v1, v14, Lo/removeEventListener;->newSession:Lo/exceptionStacktrace;

    :cond_32
    :goto_22
    move-object/from16 v1, p0

    move-object/from16 v4, v29

    move-object/from16 v5, v32

    goto/16 :goto_39

    :cond_33
    move-object/from16 v2, v31

    .line 13256
    iget-object v1, v14, Lo/removeEventListener;->warmup:Lo/removeValue;

    if-eqz v1, :cond_37

    .line 13258
    iget-object v1, v14, Lo/removeEventListener;->warmup:Lo/removeValue;

    .line 42134
    new-instance v3, Lo/removeValue$onPostMessage;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lo/removeValue$onPostMessage;-><init>(Lo/removeValue;B)V

    .line 13258
    iget-object v1, v14, Lo/removeEventListener;->asInterface:Lo/fromException;

    .line 42251
    iput-object v1, v3, Lo/removeValue$onPostMessage;->extraCallback:Lo/fromException;

    .line 13259
    iget-object v1, v14, Lo/removeEventListener;->extraCallback:Lo/removeValue;

    .line 13260
    invoke-static {v1}, Lo/removeEventListener;->ICustomTabsCallback(Lo/removeValue;)Lo/removeValue;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 43036
    iget-object v4, v1, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    if-nez v4, :cond_34

    goto :goto_23

    .line 42341
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object/from16 v4, v29

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_35
    :goto_23
    move-object/from16 v4, v29

    .line 42335
    iput-object v1, v3, Lo/removeValue$onPostMessage;->onRelationshipValidationResult:Lo/removeValue;

    .line 13260
    iget-object v1, v14, Lo/removeEventListener;->warmup:Lo/removeValue;

    .line 13261
    invoke-static {v1}, Lo/removeEventListener;->ICustomTabsCallback(Lo/removeValue;)Lo/removeValue;

    move-result-object v1

    move-object/from16 v5, v32

    if-eqz v1, :cond_36

    .line 43316
    invoke-static {v5, v1}, Lo/removeValue$onPostMessage;->extraCallback(Ljava/lang/String;Lo/removeValue;)V

    .line 43317
    :cond_36
    iput-object v1, v3, Lo/removeValue$onPostMessage;->asInterface:Lo/removeValue;

    .line 13262
    invoke-virtual {v3}, Lo/removeValue$onPostMessage;->extraCallback()Lo/removeValue;

    move-result-object v1

    iput-object v1, v14, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    goto :goto_25

    :cond_37
    move-object/from16 v4, v29

    move-object/from16 v5, v32

    .line 13265
    new-instance v1, Lo/removeValue$onPostMessage;

    invoke-direct {v1}, Lo/removeValue$onPostMessage;-><init>()V

    iget-object v3, v14, Lo/removeEventListener;->asInterface:Lo/fromException;

    .line 44251
    iput-object v3, v1, Lo/removeValue$onPostMessage;->extraCallback:Lo/fromException;

    .line 13266
    iget-object v3, v14, Lo/removeEventListener;->extraCallback:Lo/removeValue;

    .line 13267
    invoke-static {v3}, Lo/removeEventListener;->ICustomTabsCallback(Lo/removeValue;)Lo/removeValue;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 45036
    iget-object v7, v3, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    if-nez v7, :cond_38

    goto :goto_24

    .line 44341
    :cond_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44335
    :cond_39
    :goto_24
    iput-object v3, v1, Lo/removeValue$onPostMessage;->onRelationshipValidationResult:Lo/removeValue;

    .line 13267
    sget-object v3, Lo/toException;->extraCallback:Lo/toException;

    .line 45256
    iput-object v3, v1, Lo/removeValue$onPostMessage;->onNavigationEvent:Lo/toException;

    const/16 v3, 0x1f8

    .line 45261
    iput v3, v1, Lo/removeValue$onPostMessage;->ICustomTabsCallback:I

    const-string v3, "Unsatisfiable Request (only-if-cached)"

    .line 45266
    iput-object v3, v1, Lo/removeValue$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    .line 13270
    sget-object v3, Lo/removeEventListener;->onPostMessage:Lo/updateChildren;

    .line 45305
    iput-object v3, v1, Lo/removeValue$onPostMessage;->ICustomTabsCallback$Stub:Lo/updateChildren;

    .line 13272
    invoke-virtual {v1}, Lo/removeValue$onPostMessage;->extraCallback()Lo/removeValue;

    move-result-object v1

    iput-object v1, v14, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    .line 13275
    :goto_25
    iget-object v1, v14, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    invoke-virtual {v14, v1}, Lo/removeEventListener;->extraCallback(Lo/removeValue;)Lo/removeValue;

    move-result-object v1

    iput-object v1, v14, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    goto/16 :goto_38

    :catch_14
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_30

    :catch_15
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_33

    :catch_16
    move-exception v0

    move-object v6, v2

    goto/16 :goto_30

    :catch_17
    move-exception v0

    move-object v6, v2

    goto/16 :goto_33

    :catch_18
    move-exception v0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    :goto_26
    move-object v3, v0

    :goto_27
    move-object v8, v10

    goto/16 :goto_44

    :catch_19
    move-exception v0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    :goto_28
    move-object v3, v0

    :goto_29
    move-object v8, v10

    goto/16 :goto_46

    :catch_1a
    move-exception v0

    goto :goto_2a

    :catch_1b
    move-exception v0

    goto :goto_2b

    :catch_1c
    move-exception v0

    move-object/from16 v24, v3

    :goto_2a
    move-object/from16 v25, v6

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v8, v10

    move-object v2, v15

    goto :goto_2d

    :catch_1d
    move-exception v0

    move-object/from16 v24, v3

    :goto_2b
    move-object/from16 v25, v6

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v8, v10

    move-object v2, v15

    goto :goto_2f

    :cond_3a
    move-object/from16 v24, v3

    move-object/from16 v25, v6

    move-object/from16 v26, v8

    move-object/from16 v35, v10

    const/4 v6, 0x0

    .line 18277
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1e
    move-exception v0

    move-object/from16 v24, v3

    goto :goto_2c

    :catch_1f
    move-exception v0

    move-object/from16 v24, v3

    goto :goto_2e

    :catch_20
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    :goto_2c
    move-object/from16 v25, v6

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v2, v8

    move-object v8, v10

    :goto_2d
    move-object/from16 v7, v21

    goto/16 :goto_54

    :catch_21
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    :goto_2e
    move-object/from16 v25, v6

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v2, v8

    move-object v8, v10

    :goto_2f
    move-object/from16 v7, v21

    goto/16 :goto_5d

    :catch_22
    move-exception v0

    goto :goto_36

    :catch_23
    move-exception v0

    goto :goto_37

    :cond_3b
    move/from16 v20, v2

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v8

    move-object/from16 v21, v9

    move-object/from16 v35, v10

    const/4 v6, 0x0

    .line 13201
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_32
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_32 .. :try_end_32} :catch_28
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_32 .. :try_end_32} :catch_25
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_24
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    :catch_24
    move-exception v0

    :goto_30
    move-object/from16 v1, p0

    :goto_31
    move-object v3, v0

    :goto_32
    move-object/from16 v7, v21

    move-object/from16 v2, v26

    move-object/from16 v8, v35

    goto/16 :goto_54

    :catch_25
    move-exception v0

    :goto_33
    move-object/from16 v1, p0

    :goto_34
    move-object v3, v0

    :goto_35
    move-object/from16 v7, v21

    move-object/from16 v2, v26

    move-object/from16 v8, v35

    goto/16 :goto_5d

    :catchall_0
    move-exception v0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object v2, v0

    goto/16 :goto_65

    :catch_26
    move-exception v0

    move/from16 v20, v2

    :goto_36
    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v2, v8

    move-object v7, v9

    move-object v8, v10

    goto/16 :goto_54

    :catch_27
    move-exception v0

    move/from16 v20, v2

    :goto_37
    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v2, v8

    move-object v7, v9

    move-object v8, v10

    goto/16 :goto_5d

    :catch_28
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_64

    :cond_3c
    move/from16 v20, v2

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object v2, v7

    move-object/from16 v26, v8

    move-object/from16 v21, v9

    move-object/from16 v35, v10

    move-object v4, v12

    move-object v5, v13

    const/4 v6, 0x0

    :goto_38
    move-object/from16 v1, p0

    .line 287
    :goto_39
    :try_start_33
    iget-object v3, v1, Lo/onChildAdded;->extraCallback:Lo/removeEventListener;

    .line 45559
    iget-object v7, v3, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;
    :try_end_33
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_33 .. :try_end_33} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_33 .. :try_end_33} :catch_31
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_30
    .catchall {:try_start_33 .. :try_end_33} :catchall_1

    if-nez v7, :cond_54

    .line 45562
    :try_start_34
    iget-object v7, v3, Lo/removeEventListener;->asBinder:Lo/fromException;
    :try_end_34
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_34 .. :try_end_34} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_34 .. :try_end_34} :catch_2f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_2e
    .catchall {:try_start_34 .. :try_end_34} :catchall_1

    if-nez v7, :cond_3e

    :try_start_35
    iget-object v7, v3, Lo/removeEventListener;->warmup:Lo/removeValue;

    if-eqz v7, :cond_3d

    goto :goto_3a

    .line 45563
    :cond_3d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "call sendRequest() first!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_35
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_35 .. :try_end_35} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_35 .. :try_end_35} :catch_2a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_29
    .catchall {:try_start_35 .. :try_end_35} :catchall_1

    :catch_29
    move-exception v0

    goto :goto_31

    :catch_2a
    move-exception v0

    goto :goto_34

    .line 45565
    :cond_3e
    :goto_3a
    :try_start_36
    iget-object v7, v3, Lo/removeEventListener;->asBinder:Lo/fromException;

    if-eqz v7, :cond_54

    .line 45571
    iget-boolean v7, v3, Lo/removeEventListener;->ICustomTabsCallback$Stub$Proxy:Z
    :try_end_36
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_36 .. :try_end_36} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_36 .. :try_end_36} :catch_2f
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_2e
    .catchall {:try_start_36 .. :try_end_36} :catchall_1

    if-eqz v7, :cond_3f

    .line 45572
    :try_start_37
    iget-object v7, v3, Lo/removeEventListener;->onNavigationEvent:Lo/addChildEventListener;

    iget-object v8, v3, Lo/removeEventListener;->asBinder:Lo/fromException;

    invoke-interface {v7, v8}, Lo/addChildEventListener;->onMessageChannelReady(Lo/fromException;)V
    :try_end_37
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_37 .. :try_end_37} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_37 .. :try_end_37} :catch_2a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_29
    .catchall {:try_start_37 .. :try_end_37} :catchall_1

    move-object/from16 v8, v35

    goto/16 :goto_3d

    .line 45575
    :cond_3f
    :try_start_38
    iget-boolean v7, v3, Lo/removeEventListener;->getInterfaceDescriptor:Z
    :try_end_38
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_38 .. :try_end_38} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_38 .. :try_end_38} :catch_2f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_2e
    .catchall {:try_start_38 .. :try_end_38} :catchall_1

    if-nez v7, :cond_40

    .line 45576
    :try_start_39
    new-instance v7, Lo/removeEventListener$extraCallback;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8}, Lo/removeEventListener$extraCallback;-><init>(Lo/removeEventListener;I)V

    iget-object v8, v3, Lo/removeEventListener;->asBinder:Lo/fromException;

    invoke-virtual {v7, v8}, Lo/removeEventListener$extraCallback;->onPostMessage(Lo/fromException;)Lo/removeValue;

    move-result-object v7
    :try_end_39
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_39 .. :try_end_39} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_39 .. :try_end_39} :catch_2a
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_29
    .catchall {:try_start_39 .. :try_end_39} :catchall_1

    move-object/from16 v8, v35

    goto :goto_3e

    .line 45585
    :cond_40
    :try_start_3a
    iget-wide v7, v3, Lo/removeEventListener;->onTransact:J

    cmp-long v9, v7, v16

    if-nez v9, :cond_43

    .line 45586
    iget-object v7, v3, Lo/removeEventListener;->asBinder:Lo/fromException;

    invoke-static {v7}, Lo/removeEventRegistration;->onNavigationEvent(Lo/fromException;)J

    move-result-wide v7

    cmp-long v9, v7, v16

    if-nez v9, :cond_42

    iget-object v7, v3, Lo/removeEventListener;->newSession:Lo/exceptionStacktrace;

    instance-of v7, v7, Lo/limitToFirst;

    if-eqz v7, :cond_42

    .line 45588
    iget-object v7, v3, Lo/removeEventListener;->newSession:Lo/exceptionStacktrace;

    check-cast v7, Lo/limitToFirst;

    .line 46071
    iget-object v7, v7, Lo/limitToFirst;->onMessageChannelReady:Lo/updatePriority;

    .line 47067
    iget-wide v7, v7, Lo/updatePriority;->ICustomTabsCallback:J

    .line 45589
    iget-object v9, v3, Lo/removeEventListener;->asBinder:Lo/fromException;

    .line 47094
    new-instance v10, Lo/fromException$onNavigationEvent;

    const/4 v12, 0x0

    invoke-direct {v10, v9, v12}, Lo/fromException$onNavigationEvent;-><init>(Lo/fromException;B)V

    .line 45590
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7
    :try_end_3a
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_3a .. :try_end_3a} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_3a .. :try_end_3a} :catch_2f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_2e
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1

    move-object/from16 v8, v35

    :try_start_3b
    invoke-virtual {v10, v8, v7}, Lo/fromException$onNavigationEvent;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    move-result-object v7

    .line 47277
    iget-object v9, v7, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    if-eqz v9, :cond_41

    .line 47278
    new-instance v9, Lo/fromException;

    const/4 v10, 0x0

    invoke-direct {v9, v7, v10}, Lo/fromException;-><init>(Lo/fromException$onNavigationEvent;B)V

    .line 45591
    iput-object v9, v3, Lo/removeEventListener;->asBinder:Lo/fromException;

    goto :goto_3b

    .line 47277
    :cond_41
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_42
    move-object/from16 v8, v35

    .line 45593
    :goto_3b
    iget-object v7, v3, Lo/removeEventListener;->onNavigationEvent:Lo/addChildEventListener;

    iget-object v9, v3, Lo/removeEventListener;->asBinder:Lo/fromException;

    invoke-interface {v7, v9}, Lo/addChildEventListener;->onMessageChannelReady(Lo/fromException;)V

    goto :goto_3c

    :cond_43
    move-object/from16 v8, v35

    .line 45597
    :goto_3c
    iget-object v7, v3, Lo/removeEventListener;->newSession:Lo/exceptionStacktrace;

    if-eqz v7, :cond_44

    .line 45602
    iget-object v7, v3, Lo/removeEventListener;->newSession:Lo/exceptionStacktrace;

    invoke-interface {v7}, Lo/exceptionStacktrace;->close()V

    .line 45604
    iget-object v7, v3, Lo/removeEventListener;->newSession:Lo/exceptionStacktrace;

    instance-of v7, v7, Lo/limitToFirst;

    if-eqz v7, :cond_44

    .line 45605
    iget-object v7, v3, Lo/removeEventListener;->onNavigationEvent:Lo/addChildEventListener;

    iget-object v9, v3, Lo/removeEventListener;->newSession:Lo/exceptionStacktrace;

    check-cast v9, Lo/limitToFirst;

    invoke-interface {v7, v9}, Lo/addChildEventListener;->onMessageChannelReady(Lo/limitToFirst;)V

    .line 45609
    :cond_44
    :goto_3d
    invoke-virtual {v3}, Lo/removeEventListener;->extraCallback()Lo/removeValue;

    move-result-object v7

    .line 48126
    :goto_3e
    iget-object v9, v7, Lo/removeValue;->asInterface:Lo/getRef;

    .line 48876
    iget-object v10, v3, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 49284
    iget-object v10, v10, Lo/setValueInternal;->asBinder:Ljava/net/CookieHandler;

    if-eqz v10, :cond_45

    .line 48878
    iget-object v12, v3, Lo/removeEventListener;->asInterface:Lo/fromException;

    invoke-virtual {v12}, Lo/fromException;->ICustomTabsCallback()Ljava/net/URI;

    move-result-object v12

    invoke-static {v9}, Lo/removeEventRegistration;->onNavigationEvent(Lo/getRef;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v10, v12, v9}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 45615
    :cond_45
    iget-object v9, v3, Lo/removeEventListener;->warmup:Lo/removeValue;
    :try_end_3b
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_3b .. :try_end_3b} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_3b .. :try_end_3b} :catch_2d
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_2c
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1

    const-string v10, "networkResponse"

    if-eqz v9, :cond_4b

    .line 45616
    :try_start_3c
    iget-object v9, v3, Lo/removeEventListener;->warmup:Lo/removeValue;

    invoke-static {v9, v7}, Lo/removeEventListener;->onMessageChannelReady(Lo/removeValue;Lo/removeValue;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 45617
    iget-object v9, v3, Lo/removeEventListener;->warmup:Lo/removeValue;

    .line 50134
    new-instance v12, Lo/removeValue$onPostMessage;

    const/4 v13, 0x0

    invoke-direct {v12, v9, v13}, Lo/removeValue$onPostMessage;-><init>(Lo/removeValue;B)V

    .line 45617
    iget-object v9, v3, Lo/removeEventListener;->asInterface:Lo/fromException;

    .line 50135
    iput-object v9, v12, Lo/removeValue$onPostMessage;->extraCallback:Lo/fromException;

    .line 45618
    iget-object v9, v3, Lo/removeEventListener;->extraCallback:Lo/removeValue;

    .line 45619
    invoke-static {v9}, Lo/removeEventListener;->ICustomTabsCallback(Lo/removeValue;)Lo/removeValue;

    move-result-object v9

    if-eqz v9, :cond_47

    .line 50144
    iget-object v13, v9, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    if-nez v13, :cond_46

    goto :goto_3f

    .line 50141
    :cond_46
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50138
    :cond_47
    :goto_3f
    iput-object v9, v12, Lo/removeValue$onPostMessage;->onRelationshipValidationResult:Lo/removeValue;

    .line 45619
    iget-object v4, v3, Lo/removeEventListener;->warmup:Lo/removeValue;

    .line 50145
    iget-object v4, v4, Lo/removeValue;->asInterface:Lo/getRef;

    .line 50146
    iget-object v9, v7, Lo/removeValue;->asInterface:Lo/getRef;

    .line 45620
    invoke-static {v4, v9}, Lo/removeEventListener;->extraCallback(Lo/getRef;Lo/getRef;)Lo/getRef;

    move-result-object v4

    .line 50149
    new-instance v9, Lo/getRef$ICustomTabsCallback;

    invoke-direct {v9}, Lo/getRef$ICustomTabsCallback;-><init>()V

    .line 50152
    iget-object v13, v9, Lo/getRef$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    .line 50150
    iget-object v4, v4, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    invoke-static {v13, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 50147
    iput-object v9, v12, Lo/removeValue$onPostMessage;->asBinder:Lo/getRef$ICustomTabsCallback;

    .line 45620
    iget-object v4, v3, Lo/removeEventListener;->warmup:Lo/removeValue;

    .line 45621
    invoke-static {v4}, Lo/removeEventListener;->ICustomTabsCallback(Lo/removeValue;)Lo/removeValue;

    move-result-object v4

    if-eqz v4, :cond_48

    .line 50153
    invoke-static {v5, v4}, Lo/removeValue$onPostMessage;->extraCallback(Ljava/lang/String;Lo/removeValue;)V

    .line 50154
    :cond_48
    iput-object v4, v12, Lo/removeValue$onPostMessage;->asInterface:Lo/removeValue;

    .line 45622
    invoke-static {v7}, Lo/removeEventListener;->ICustomTabsCallback(Lo/removeValue;)Lo/removeValue;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 50156
    invoke-static {v10, v4}, Lo/removeValue$onPostMessage;->extraCallback(Ljava/lang/String;Lo/removeValue;)V

    .line 50157
    :cond_49
    iput-object v4, v12, Lo/removeValue$onPostMessage;->onTransact:Lo/removeValue;

    .line 45623
    invoke-virtual {v12}, Lo/removeValue$onPostMessage;->extraCallback()Lo/removeValue;

    move-result-object v4

    iput-object v4, v3, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    .line 50159
    iget-object v4, v7, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    .line 45624
    invoke-virtual {v4}, Lo/updateChildren;->close()V

    .line 50160
    iget-object v4, v3, Lo/removeEventListener;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 50162
    invoke-virtual {v4, v7, v5, v7}, Lo/setLogger$extraCallback$extraCallback;->extraCallback(ZZZ)V

    .line 45629
    sget-object v4, Lo/goOnline;->onPostMessage:Lo/goOnline;

    iget-object v5, v3, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    invoke-virtual {v4, v5}, Lo/goOnline;->onMessageChannelReady(Lo/setValueInternal;)Lo/setHijackHash;

    move-result-object v4

    .line 45630
    invoke-interface {v4}, Lo/setHijackHash;->ICustomTabsCallback()V

    .line 45631
    iget-object v5, v3, Lo/removeEventListener;->warmup:Lo/removeValue;

    iget-object v7, v3, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    invoke-static {v7}, Lo/removeEventListener;->ICustomTabsCallback(Lo/removeValue;)Lo/removeValue;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Lo/setHijackHash;->onNavigationEvent(Lo/removeValue;Lo/removeValue;)V

    .line 45632
    iget-object v4, v3, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    invoke-virtual {v3, v4}, Lo/removeEventListener;->extraCallback(Lo/removeValue;)Lo/removeValue;

    move-result-object v4

    iput-object v4, v3, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    goto/16 :goto_47

    .line 45635
    :cond_4a
    iget-object v9, v3, Lo/removeEventListener;->warmup:Lo/removeValue;

    .line 50164
    iget-object v9, v9, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    .line 45635
    invoke-static {v9}, Lo/createForTests;->onMessageChannelReady(Ljava/io/Closeable;)V

    .line 50165
    :cond_4b
    new-instance v9, Lo/removeValue$onPostMessage;

    const/4 v12, 0x0

    invoke-direct {v9, v7, v12}, Lo/removeValue$onPostMessage;-><init>(Lo/removeValue;B)V

    .line 45639
    iget-object v12, v3, Lo/removeEventListener;->asInterface:Lo/fromException;

    .line 50166
    iput-object v12, v9, Lo/removeValue$onPostMessage;->extraCallback:Lo/fromException;

    .line 45640
    iget-object v12, v3, Lo/removeEventListener;->extraCallback:Lo/removeValue;

    .line 45641
    invoke-static {v12}, Lo/removeEventListener;->ICustomTabsCallback(Lo/removeValue;)Lo/removeValue;

    move-result-object v12

    if-eqz v12, :cond_4d

    .line 50175
    iget-object v13, v12, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    if-nez v13, :cond_4c

    goto :goto_40

    .line 50172
    :cond_4c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50169
    :cond_4d
    :goto_40
    iput-object v12, v9, Lo/removeValue$onPostMessage;->onRelationshipValidationResult:Lo/removeValue;

    .line 45641
    iget-object v4, v3, Lo/removeEventListener;->warmup:Lo/removeValue;

    .line 45642
    invoke-static {v4}, Lo/removeEventListener;->ICustomTabsCallback(Lo/removeValue;)Lo/removeValue;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 50176
    invoke-static {v5, v4}, Lo/removeValue$onPostMessage;->extraCallback(Ljava/lang/String;Lo/removeValue;)V

    .line 50177
    :cond_4e
    iput-object v4, v9, Lo/removeValue$onPostMessage;->asInterface:Lo/removeValue;

    .line 45643
    invoke-static {v7}, Lo/removeEventListener;->ICustomTabsCallback(Lo/removeValue;)Lo/removeValue;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 50179
    invoke-static {v10, v4}, Lo/removeValue$onPostMessage;->extraCallback(Ljava/lang/String;Lo/removeValue;)V

    .line 50180
    :cond_4f
    iput-object v4, v9, Lo/removeValue$onPostMessage;->onTransact:Lo/removeValue;

    .line 45644
    invoke-virtual {v9}, Lo/removeValue$onPostMessage;->extraCallback()Lo/removeValue;

    move-result-object v4

    iput-object v4, v3, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    .line 45646
    iget-object v4, v3, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    invoke-static {v4}, Lo/removeEventListener;->onNavigationEvent(Lo/removeValue;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 50182
    sget-object v4, Lo/goOnline;->onPostMessage:Lo/goOnline;

    iget-object v5, v3, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    invoke-virtual {v4, v5}, Lo/goOnline;->onMessageChannelReady(Lo/setValueInternal;)Lo/setHijackHash;

    move-result-object v4

    if-eqz v4, :cond_51

    .line 50186
    iget-object v5, v3, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    iget-object v7, v3, Lo/removeEventListener;->asBinder:Lo/fromException;

    invoke-static {v5, v7}, Lo/validateQueryEndpoints;->extraCallback(Lo/removeValue;Lo/fromException;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 50187
    iget-object v5, v3, Lo/removeEventListener;->asBinder:Lo/fromException;

    .line 50200
    iget-object v5, v5, Lo/fromException;->extraCallback:Ljava/lang/String;

    .line 50187
    invoke-static {v5}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v5
    :try_end_3c
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_3c .. :try_end_3c} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_3c .. :try_end_3c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_2c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1

    if-eqz v5, :cond_51

    .line 50189
    :try_start_3d
    iget-object v5, v3, Lo/removeEventListener;->asBinder:Lo/fromException;

    invoke-interface {v4, v5}, Lo/setHijackHash;->ICustomTabsCallback(Lo/fromException;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_2b
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_3d .. :try_end_3d} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_3d .. :try_end_3d} :catch_2d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1

    goto :goto_41

    .line 50198
    :cond_50
    :try_start_3e
    iget-object v5, v3, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    invoke-static {v5}, Lo/removeEventListener;->ICustomTabsCallback(Lo/removeValue;)Lo/removeValue;

    move-result-object v5

    invoke-interface {v4, v5}, Lo/setHijackHash;->onMessageChannelReady(Lo/removeValue;)Lo/addValueEventListener;

    move-result-object v4

    iput-object v4, v3, Lo/removeEventListener;->postMessage:Lo/addValueEventListener;

    .line 45648
    :catch_2b
    :cond_51
    :goto_41
    iget-object v4, v3, Lo/removeEventListener;->postMessage:Lo/addValueEventListener;

    iget-object v5, v3, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    if-nez v4, :cond_52

    goto :goto_42

    .line 50202
    :cond_52
    invoke-interface {v4}, Lo/addValueEventListener;->onMessageChannelReady()Lo/exceptionStacktrace;

    move-result-object v7

    if-nez v7, :cond_53

    goto :goto_42

    .line 50253
    :cond_53
    iget-object v9, v5, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    .line 50205
    invoke-virtual {v9}, Lo/updateChildren;->ICustomTabsCallback()Lo/fullLimitUpdateChild;

    move-result-object v9

    .line 50206
    invoke-static {v7}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v7

    .line 50208
    new-instance v10, Lo/removeEventListener$5;

    invoke-direct {v10, v9, v4, v7}, Lo/removeEventListener$5;-><init>(Lo/fullLimitUpdateChild;Lo/addValueEventListener;Lo/filtersNodes;)V

    .line 50254
    new-instance v4, Lo/removeValue$onPostMessage;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Lo/removeValue$onPostMessage;-><init>(Lo/removeValue;B)V

    .line 50250
    new-instance v7, Lo/keepSynced;

    .line 50255
    iget-object v5, v5, Lo/removeValue;->asInterface:Lo/getRef;

    .line 50251
    invoke-static {v10}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v9

    invoke-direct {v7, v5, v9}, Lo/keepSynced;-><init>(Lo/getRef;Lo/fullLimitUpdateChild;)V

    .line 50256
    iput-object v7, v4, Lo/removeValue$onPostMessage;->ICustomTabsCallback$Stub:Lo/updateChildren;

    .line 50252
    invoke-virtual {v4}, Lo/removeValue$onPostMessage;->extraCallback()Lo/removeValue;

    move-result-object v5

    .line 45648
    :goto_42
    invoke-virtual {v3, v5}, Lo/removeEventListener;->extraCallback(Lo/removeValue;)Lo/removeValue;

    move-result-object v4

    iput-object v4, v3, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;
    :try_end_3e
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_3e .. :try_end_3e} :catch_34
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_3e .. :try_end_3e} :catch_2d
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_2c
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1

    goto :goto_47

    :catch_2c
    move-exception v0

    goto :goto_43

    :catch_2d
    move-exception v0

    goto :goto_45

    :catch_2e
    move-exception v0

    move-object/from16 v8, v35

    :goto_43
    move-object v3, v0

    :goto_44
    move-object/from16 v7, v21

    move-object/from16 v2, v26

    goto/16 :goto_54

    :catch_2f
    move-exception v0

    move-object/from16 v8, v35

    :goto_45
    move-object v3, v0

    :goto_46
    move-object/from16 v7, v21

    move-object/from16 v2, v26

    goto/16 :goto_5d

    :cond_54
    move-object/from16 v8, v35

    .line 321
    :cond_55
    :goto_47
    iget-object v3, v1, Lo/onChildAdded;->extraCallback:Lo/removeEventListener;

    .line 50359
    iget-object v4, v3, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    if-eqz v4, :cond_6b

    .line 50360
    iget-object v3, v3, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    .line 322
    iget-object v4, v1, Lo/onChildAdded;->extraCallback:Lo/removeEventListener;

    .line 50361
    iget-object v5, v4, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    if-eqz v5, :cond_6a

    .line 50362
    iget-object v5, v4, Lo/removeEventListener;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    invoke-virtual {v5}, Lo/setLogger$extraCallback$extraCallback;->extraCallback()Lo/orderByChild;

    move-result-object v5

    if-eqz v5, :cond_56

    .line 50364
    invoke-interface {v5}, Lo/hasChild;->ICustomTabsCallback()Lo/onDisconnect;

    move-result-object v5

    goto :goto_48

    :cond_56
    move-object v5, v6

    :goto_48
    if-eqz v5, :cond_57

    .line 50431
    iget-object v5, v5, Lo/onDisconnect;->ICustomTabsCallback:Ljava/net/Proxy;

    goto :goto_49

    .line 50367
    :cond_57
    iget-object v5, v4, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 50432
    iget-object v5, v5, Lo/setValueInternal;->onNavigationEvent:Ljava/net/Proxy;

    .line 50369
    :goto_49
    iget-object v7, v4, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    .line 50433
    iget v7, v7, Lo/removeValue;->ICustomTabsCallback:I

    .line 50371
    iget-object v9, v4, Lo/removeEventListener;->asInterface:Lo/fromException;

    .line 50434
    iget-object v9, v9, Lo/fromException;->extraCallback:Ljava/lang/String;

    const/16 v10, 0x133

    if-eq v7, v10, :cond_5c

    const/16 v10, 0x134

    if-eq v7, v10, :cond_5c

    const/16 v10, 0x191

    if-eq v7, v10, :cond_5b

    const/16 v10, 0x197

    if-eq v7, v10, :cond_59

    packed-switch v7, :pswitch_data_0

    :cond_58
    move-object/from16 v7, v21

    move-object/from16 v2, v26

    goto/16 :goto_4f

    .line 50374
    :cond_59
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v7, :cond_5a

    goto :goto_4a

    .line 50375
    :cond_5a
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50379
    :cond_5b
    :goto_4a
    iget-object v2, v4, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 50435
    iget-object v2, v2, Lo/setValueInternal;->postMessage:Lo/onChildMoved;

    .line 50379
    iget-object v4, v4, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    invoke-static {v2, v4, v5}, Lo/removeEventRegistration;->ICustomTabsCallback(Lo/onChildMoved;Lo/removeValue;Ljava/net/Proxy;)Lo/fromException;

    move-result-object v2

    move-object v4, v2

    move-object/from16 v7, v21

    move-object/from16 v2, v26

    goto/16 :goto_50

    .line 50385
    :cond_5c
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    const-string v5, "HEAD"

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 50394
    :cond_5d
    :pswitch_0
    iget-object v5, v4, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 50436
    iget-boolean v5, v5, Lo/setValueInternal;->validateRelationship:Z

    if-eqz v5, :cond_58

    .line 50396
    iget-object v5, v4, Lo/removeEventListener;->ICustomTabsService:Lo/removeValue;

    .line 50438
    iget-object v5, v5, Lo/removeValue;->asInterface:Lo/getRef;

    .line 50440
    iget-object v5, v5, Lo/getRef;->onNavigationEvent:[Ljava/lang/String;

    const-string v7, "Location"

    invoke-static {v5, v7}, Lo/getRef;->onMessageChannelReady([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5e

    goto :goto_4b

    :cond_5e
    move-object v5, v6

    :goto_4b
    if-eqz v5, :cond_58

    .line 50398
    iget-object v7, v4, Lo/removeEventListener;->asInterface:Lo/fromException;

    .line 50441
    iget-object v7, v7, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 50442
    new-instance v10, Lo/fromCode$ICustomTabsCallback;

    invoke-direct {v10}, Lo/fromCode$ICustomTabsCallback;-><init>()V

    .line 50443
    invoke-virtual {v10, v7, v5}, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback(Lo/fromCode;Ljava/lang/String;)Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    move-result-object v5

    .line 50444
    sget-object v7, Lo/fromCode$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/fromCode$ICustomTabsCallback$onNavigationEvent;

    if-ne v5, v7, :cond_5f

    invoke-virtual {v10}, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback()Lo/fromCode;

    move-result-object v5

    goto :goto_4c

    :cond_5f
    move-object v5, v6

    :goto_4c
    if-eqz v5, :cond_58

    .line 50445
    iget-object v7, v5, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    .line 50404
    iget-object v10, v4, Lo/removeEventListener;->asInterface:Lo/fromException;

    .line 50446
    iget-object v10, v10, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 50447
    iget-object v10, v10, Lo/fromCode;->ICustomTabsCallback:Ljava/lang/String;

    .line 50404
    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_60

    .line 50405
    iget-object v7, v4, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 50448
    iget-boolean v7, v7, Lo/setValueInternal;->mayLaunchUrl:Z

    if-eqz v7, :cond_58

    .line 50408
    :cond_60
    iget-object v7, v4, Lo/removeEventListener;->asInterface:Lo/fromException;

    .line 50449
    new-instance v10, Lo/fromException$onNavigationEvent;

    const/4 v12, 0x0

    invoke-direct {v10, v7, v12}, Lo/fromException$onNavigationEvent;-><init>(Lo/fromException;B)V

    .line 50409
    invoke-static {v9}, Lo/extraCallback;->asBinder(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_62

    const-string v7, "PROPFIND"

    .line 50450
    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v12, 0x1

    xor-int/2addr v7, v12

    if-eqz v7, :cond_61

    .line 50411
    invoke-virtual {v10, v2}, Lo/fromException$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    goto :goto_4d

    .line 50413
    :cond_61
    invoke-virtual {v10, v9}, Lo/fromException$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    :goto_4d
    move-object/from16 v2, v26

    .line 50415
    invoke-virtual {v10, v2}, Lo/fromException$onNavigationEvent;->extraCallback(Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    .line 50416
    invoke-virtual {v10, v8}, Lo/fromException$onNavigationEvent;->extraCallback(Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    move-object/from16 v7, v21

    .line 50417
    invoke-virtual {v10, v7}, Lo/fromException$onNavigationEvent;->extraCallback(Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    goto :goto_4e

    :cond_62
    move-object/from16 v7, v21

    move-object/from16 v2, v26

    .line 50423
    :goto_4e
    invoke-virtual {v4, v5}, Lo/removeEventListener;->onMessageChannelReady(Lo/fromCode;)Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "Authorization"

    .line 50424
    invoke-virtual {v10, v4}, Lo/fromException$onNavigationEvent;->extraCallback(Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    :cond_63
    if-eqz v5, :cond_65

    .line 50452
    iput-object v5, v10, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    .line 50454
    iget-object v4, v10, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    if-eqz v4, :cond_64

    .line 50455
    new-instance v4, Lo/fromException;

    const/4 v5, 0x0

    invoke-direct {v4, v10, v5}, Lo/fromException;-><init>(Lo/fromException$onNavigationEvent;B)V

    goto :goto_50

    .line 50454
    :cond_64
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50451
    :cond_65
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_4f
    move-object v4, v6

    :goto_50
    if-nez v4, :cond_67

    if-nez p2, :cond_66

    .line 326
    iget-object v2, v1, Lo/onChildAdded;->extraCallback:Lo/removeEventListener;

    .line 50456
    iget-object v2, v2, Lo/removeEventListener;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 50458
    invoke-virtual {v2, v5, v4, v5}, Lo/setLogger$extraCallback$extraCallback;->extraCallback(ZZZ)V

    :cond_66
    return-object v3

    .line 331
    :cond_67
    iget-object v5, v1, Lo/onChildAdded;->extraCallback:Lo/removeEventListener;

    invoke-virtual {v5}, Lo/removeEventListener;->ICustomTabsCallback()Lo/setLogger$extraCallback$extraCallback;

    move-result-object v5

    add-int/lit8 v9, v20, 0x1

    const/16 v10, 0x14

    if-gt v9, v10, :cond_69

    .line 338
    iget-object v10, v1, Lo/onChildAdded;->extraCallback:Lo/removeEventListener;

    .line 50462
    iget-object v12, v4, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 338
    invoke-virtual {v10, v12}, Lo/removeEventListener;->onMessageChannelReady(Lo/fromCode;)Z

    move-result v10

    if-nez v10, :cond_68

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 50463
    invoke-virtual {v5, v12, v10, v12}, Lo/setLogger$extraCallback$extraCallback;->extraCallback(ZZZ)V

    move-object/from16 v33, v6

    goto :goto_51

    :cond_68
    move-object/from16 v33, v5

    .line 344
    :goto_51
    new-instance v5, Lo/removeEventListener;

    iget-object v6, v1, Lo/onChildAdded;->onMessageChannelReady:Lo/setValueInternal;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v4

    move/from16 v32, p2

    move-object/from16 v35, v3

    invoke-direct/range {v27 .. v35}, Lo/removeEventListener;-><init>(Lo/setValueInternal;Lo/fromException;ZZZLo/setLogger$extraCallback$extraCallback;Lo/limitToFirst;Lo/removeValue;)V

    iput-object v5, v1, Lo/onChildAdded;->extraCallback:Lo/removeEventListener;

    move-object v10, v8

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v3, v24

    move-object/from16 v6, v25

    const/4 v12, 0x0

    move-object v8, v2

    move v2, v9

    move-object v9, v7

    goto/16 :goto_1

    :cond_69
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 50460
    invoke-virtual {v5, v4, v3, v4}, Lo/setLogger$extraCallback$extraCallback;->extraCallback(ZZZ)V

    .line 335
    new-instance v2, Ljava/net/ProtocolException;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Too many follow-up requests: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50361
    :cond_6a
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 50359
    :cond_6b
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :catch_30
    move-exception v0

    move-object/from16 v7, v21

    move-object/from16 v2, v26

    move-object/from16 v8, v35

    goto :goto_53

    :catch_31
    move-exception v0

    move-object/from16 v7, v21

    move-object/from16 v2, v26

    move-object/from16 v8, v35

    goto/16 :goto_5c

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v9, 0x1

    goto/16 :goto_65

    :catch_32
    move-exception v0

    move/from16 v20, v2

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object v2, v8

    move-object v7, v9

    move-object v8, v10

    :goto_52
    const/4 v6, 0x0

    :goto_53
    move-object v3, v0

    .line 304
    :goto_54
    :try_start_3f
    iget-object v4, v1, Lo/onChildAdded;->extraCallback:Lo/removeEventListener;

    .line 50315
    iget-object v5, v4, Lo/removeEventListener;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    .line 50327
    iget-object v9, v5, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    if-eqz v9, :cond_6d

    .line 50328
    iget-object v9, v5, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    iget v9, v9, Lo/orderByChild;->ICustomTabsCallback:I

    .line 50329
    invoke-virtual {v5, v3}, Lo/setLogger$extraCallback$extraCallback;->onMessageChannelReady(Ljava/io/IOException;)V

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6d

    :cond_6c
    :goto_55
    const/4 v9, 0x0

    goto :goto_58

    .line 50339
    :cond_6d
    iget-object v9, v5, Lo/setLogger$extraCallback$extraCallback;->onNavigationEvent:Lo/equalTo;

    if-eqz v9, :cond_6e

    iget-object v5, v5, Lo/setLogger$extraCallback$extraCallback;->onNavigationEvent:Lo/equalTo;

    invoke-virtual {v5}, Lo/equalTo;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 50346
    :cond_6e
    instance-of v5, v3, Ljava/net/ProtocolException;

    if-eqz v5, :cond_6f

    :goto_56
    const/4 v9, 0x0

    goto :goto_57

    .line 50351
    :cond_6f
    instance-of v5, v3, Ljava/io/InterruptedIOException;

    if-eqz v5, :cond_70

    goto :goto_56

    :cond_70
    const/4 v9, 0x1

    :goto_57
    if-nez v9, :cond_71

    goto :goto_55

    :cond_71
    const/4 v9, 0x1

    :goto_58
    if-nez v9, :cond_72

    :goto_59
    move-object v13, v6

    goto :goto_5a

    .line 50319
    :cond_72
    iget-object v5, v4, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 50356
    iget-boolean v5, v5, Lo/setValueInternal;->IPostMessageService:Z

    if-nez v5, :cond_73

    goto :goto_59

    .line 50323
    :cond_73
    invoke-virtual {v4}, Lo/removeEventListener;->ICustomTabsCallback()Lo/setLogger$extraCallback$extraCallback;

    move-result-object v32

    .line 50326
    new-instance v13, Lo/removeEventListener;

    iget-object v5, v4, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    iget-object v6, v4, Lo/removeEventListener;->asInterface:Lo/fromException;

    iget-boolean v9, v4, Lo/removeEventListener;->onRelationshipValidationResult:Z

    iget-boolean v10, v4, Lo/removeEventListener;->getInterfaceDescriptor:Z

    iget-boolean v12, v4, Lo/removeEventListener;->ICustomTabsCallback$Stub$Proxy:Z

    const/16 v33, 0x0

    iget-object v4, v4, Lo/removeEventListener;->extraCallback:Lo/removeValue;

    move-object/from16 v26, v13

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v12

    move-object/from16 v34, v4

    invoke-direct/range {v26 .. v34}, Lo/removeEventListener;-><init>(Lo/setValueInternal;Lo/fromException;ZZZLo/setLogger$extraCallback$extraCallback;Lo/limitToFirst;Lo/removeValue;)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1

    :goto_5a
    if-eqz v13, :cond_74

    .line 307
    :try_start_40
    iput-object v13, v1, Lo/onChildAdded;->extraCallback:Lo/removeEventListener;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_2

    goto/16 :goto_63

    :catchall_2
    move-exception v0

    move-object v2, v0

    const/4 v9, 0x0

    goto/16 :goto_65

    .line 312
    :cond_74
    :try_start_41
    throw v3

    :catch_33
    move-exception v0

    move/from16 v20, v2

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object v2, v8

    move-object v7, v9

    move-object v8, v10

    :goto_5b
    const/4 v6, 0x0

    :goto_5c
    move-object v3, v0

    .line 294
    :goto_5d
    iget-object v4, v1, Lo/onChildAdded;->extraCallback:Lo/removeEventListener;

    .line 50258
    iget-object v5, v4, Lo/removeEventListener;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    .line 50270
    iget-object v9, v5, Lo/setLogger$extraCallback$extraCallback;->onPostMessage:Lo/orderByChild;

    if-eqz v9, :cond_75

    .line 50280
    iget-object v9, v3, Lcom/squareup/okhttp/internal/http/RouteException;->extraCallback:Ljava/io/IOException;

    .line 50271
    invoke-virtual {v5, v9}, Lo/setLogger$extraCallback$extraCallback;->onMessageChannelReady(Ljava/io/IOException;)V

    .line 50274
    :cond_75
    iget-object v9, v5, Lo/setLogger$extraCallback$extraCallback;->onNavigationEvent:Lo/equalTo;

    if-eqz v9, :cond_76

    iget-object v5, v5, Lo/setLogger$extraCallback$extraCallback;->onNavigationEvent:Lo/equalTo;

    invoke-virtual {v5}, Lo/equalTo;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 50312
    :cond_76
    iget-object v5, v3, Lcom/squareup/okhttp/internal/http/RouteException;->extraCallback:Ljava/io/IOException;

    .line 50284
    instance-of v9, v5, Ljava/net/ProtocolException;

    if-eqz v9, :cond_77

    :goto_5e
    const/4 v9, 0x0

    goto :goto_5f

    .line 50290
    :cond_77
    instance-of v9, v5, Ljava/io/InterruptedIOException;

    if-eqz v9, :cond_78

    .line 50291
    instance-of v9, v5, Ljava/net/SocketTimeoutException;

    goto :goto_5f

    .line 50296
    :cond_78
    instance-of v9, v5, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v9, :cond_79

    .line 50299
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    instance-of v9, v9, Ljava/security/cert/CertificateException;

    if-eqz v9, :cond_79

    goto :goto_5e

    .line 50303
    :cond_79
    instance-of v5, v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v5, :cond_7a

    goto :goto_5e

    :cond_7a
    const/4 v9, 0x1

    :goto_5f
    if-nez v9, :cond_7c

    :cond_7b
    const/4 v9, 0x0

    goto :goto_60

    :cond_7c
    const/4 v9, 0x1

    :goto_60
    if-nez v9, :cond_7d

    :goto_61
    move-object v13, v6

    goto :goto_62

    .line 50262
    :cond_7d
    iget-object v5, v4, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 50313
    iget-boolean v5, v5, Lo/setValueInternal;->IPostMessageService:Z

    if-nez v5, :cond_7e

    goto :goto_61

    .line 50266
    :cond_7e
    invoke-virtual {v4}, Lo/removeEventListener;->ICustomTabsCallback()Lo/setLogger$extraCallback$extraCallback;

    move-result-object v32

    .line 50269
    new-instance v13, Lo/removeEventListener;

    iget-object v5, v4, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    iget-object v6, v4, Lo/removeEventListener;->asInterface:Lo/fromException;

    iget-boolean v9, v4, Lo/removeEventListener;->onRelationshipValidationResult:Z

    iget-boolean v10, v4, Lo/removeEventListener;->getInterfaceDescriptor:Z

    iget-boolean v12, v4, Lo/removeEventListener;->ICustomTabsCallback$Stub$Proxy:Z

    iget-object v14, v4, Lo/removeEventListener;->newSession:Lo/exceptionStacktrace;

    move-object/from16 v33, v14

    check-cast v33, Lo/limitToFirst;

    iget-object v4, v4, Lo/removeEventListener;->extraCallback:Lo/removeValue;

    move-object/from16 v26, v13

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v12

    move-object/from16 v34, v4

    invoke-direct/range {v26 .. v34}, Lo/removeEventListener;-><init>(Lo/setValueInternal;Lo/fromException;ZZZLo/setLogger$extraCallback$extraCallback;Lo/limitToFirst;Lo/removeValue;)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_1

    :goto_62
    if-eqz v13, :cond_7f

    .line 297
    :try_start_42
    iput-object v13, v1, Lo/onChildAdded;->extraCallback:Lo/removeEventListener;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_2

    :goto_63
    move-object v9, v7

    move-object v10, v8

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v3, v24

    move-object/from16 v6, v25

    const/4 v12, 0x0

    move-object v8, v2

    move/from16 v2, v20

    goto/16 :goto_1

    .line 50314
    :cond_7f
    :try_start_43
    iget-object v2, v3, Lcom/squareup/okhttp/internal/http/RouteException;->extraCallback:Ljava/io/IOException;

    .line 301
    throw v2

    :catch_34
    move-exception v0

    :goto_64
    move-object v2, v0

    .line 291
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/RequestException;->onNavigationEvent()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_1

    :goto_65
    if-eqz v9, :cond_80

    .line 316
    iget-object v3, v1, Lo/onChildAdded;->extraCallback:Lo/removeEventListener;

    invoke-virtual {v3}, Lo/removeEventListener;->ICustomTabsCallback()Lo/setLogger$extraCallback$extraCallback;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 50357
    invoke-virtual {v3, v5, v4, v5}, Lo/setLogger$extraCallback$extraCallback;->extraCallback(ZZZ)V

    .line 318
    :cond_80
    throw v2

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final extraCallback()Lo/removeValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lo/onChildAdded;->onNavigationEvent:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lo/onChildAdded;->onNavigationEvent:Z

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    iget-object v0, p0, Lo/onChildAdded;->onMessageChannelReady:Lo/setValueInternal;

    .line 2480
    iget-object v0, v0, Lo/setValueInternal;->onMessageChannelReady:Lo/onClosed;

    .line 79
    invoke-virtual {v0, p0}, Lo/onClosed;->ICustomTabsCallback(Lo/onChildAdded;)V

    .line 3204
    new-instance v0, Lo/onChildAdded$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lo/onChildAdded$onMessageChannelReady;-><init>(Lo/onChildAdded;IZ)V

    .line 3205
    iget-object v1, p0, Lo/onChildAdded;->ICustomTabsCallback:Lo/fromException;

    invoke-interface {v0, v1}, Lo/fromStatus$extraCallback;->onPostMessage(Lo/fromException;)Lo/removeValue;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lo/onChildAdded;->onMessageChannelReady:Lo/setValueInternal;

    .line 3480
    iget-object v1, v1, Lo/setValueInternal;->onMessageChannelReady:Lo/onClosed;

    .line 84
    invoke-virtual {v1, p0}, Lo/onClosed;->onMessageChannelReady(Lo/onChildAdded;)V

    return-object v0

    .line 81
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lo/onChildAdded;->onMessageChannelReady:Lo/setValueInternal;

    .line 4480
    iget-object v1, v1, Lo/setValueInternal;->onMessageChannelReady:Lo/onClosed;

    .line 84
    invoke-virtual {v1, p0}, Lo/onClosed;->onMessageChannelReady(Lo/onChildAdded;)V

    throw v0

    .line 75
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 77
    monitor-exit p0

    throw v0
.end method
