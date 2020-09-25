.class public final Lo/getLimit;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/annotatedName;


# instance fields
.field public volatile ICustomTabsCallback:Z

.field public volatile extraCallback:Lo/getIndexEndValue;

.field public onNavigationEvent:Ljava/lang/Object;

.field private final onPostMessage:Lo/propertyName;


# direct methods
.method public constructor <init>(Lo/propertyName;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lo/getLimit;->onPostMessage:Lo/propertyName;

    return-void
.end method

.method private extraCallback(Lo/isFullyInitialized;)Lo/deserializeToType;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 32397
    iget-object v2, v1, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, v0, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 33354
    iget-object v3, v2, Lo/propertyName;->getInterfaceDescriptor:Ljavax/net/ssl/SSLSocketFactory;

    .line 205
    iget-object v2, v0, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 33358
    iget-object v2, v2, Lo/propertyName;->requestPostMessageChannel:Ljavax/net/ssl/HostnameVerifier;

    .line 206
    iget-object v4, v0, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 33362
    iget-object v4, v4, Lo/propertyName;->postMessage:Lo/expectMap;

    move-object v11, v2

    move-object v10, v3

    move-object v12, v4

    goto :goto_0

    :cond_0
    move-object v10, v3

    move-object v11, v10

    move-object v12, v11

    .line 209
    :goto_0
    new-instance v2, Lo/deserializeToType;

    .line 33486
    iget-object v6, v1, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 33502
    iget v7, v1, Lo/isFullyInitialized;->onPostMessage:I

    .line 209
    iget-object v1, v0, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 34346
    iget-object v8, v1, Lo/propertyName;->ICustomTabsService$Stub:Lo/shouldIncludeGetter;

    .line 209
    iget-object v1, v0, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 34350
    iget-object v9, v1, Lo/propertyName;->warmup:Ljavax/net/SocketFactory;

    .line 209
    iget-object v1, v0, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 34370
    iget-object v13, v1, Lo/propertyName;->extraCommand:Lo/deserializeToEnum;

    .line 210
    iget-object v1, v0, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 35326
    iget-object v14, v1, Lo/propertyName;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 211
    iget-object v1, v0, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 35394
    iget-object v15, v1, Lo/propertyName;->onMessageChannelReady:Ljava/util/List;

    .line 211
    iget-object v1, v0, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 35398
    iget-object v1, v1, Lo/propertyName;->onTransact:Ljava/util/List;

    .line 211
    iget-object v3, v0, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 36330
    iget-object v3, v3, Lo/propertyName;->asBinder:Ljava/net/ProxySelector;

    move-object v5, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    .line 211
    invoke-direct/range {v5 .. v17}, Lo/deserializeToType;-><init>(Ljava/lang/String;ILo/shouldIncludeGetter;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lo/expectMap;Lo/deserializeToEnum;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v2
.end method

.method private static onMessageChannelReady(Lo/childAddedChange;I)I
    .locals 1

    .line 38131
    iget-object p0, p0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 39063
    iget-object p0, p0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v0, "Retry-After"

    invoke-static {p0, v0}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return p1

    :cond_1
    const-string p1, "\\d+"

    .line 403
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 404
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_2
    const p0, 0x7fffffff

    return p0
.end method

.method private static onMessageChannelReady(Ljava/io/IOException;Z)Z
    .locals 3

    .line 247
    instance-of v0, p0, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 253
    :cond_0
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 254
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v1

    .line 259
    :cond_2
    instance-of p1, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p1, :cond_3

    .line 262
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/security/cert/CertificateException;

    if-eqz p1, :cond_3

    return v1

    .line 266
    :cond_3
    instance-of p0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private static onNavigationEvent(Lo/childAddedChange;Lo/isFullyInitialized;)Z
    .locals 2

    .line 39086
    iget-object p0, p0, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 40049
    iget-object p0, p0, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 40486
    iget-object v0, p0, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 41486
    iget-object v1, p1, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41502
    iget v0, p0, Lo/isFullyInitialized;->onPostMessage:I

    .line 42502
    iget v1, p1, Lo/isFullyInitialized;->onPostMessage:I

    if-ne v0, v1, :cond_0

    .line 43393
    iget-object p0, p0, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    .line 44393
    iget-object p1, p1, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    .line 418
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onPostMessage(Ljava/io/IOException;Lo/getIndexEndValue;ZLo/isCompleteForChild;)Z
    .locals 2

    .line 222
    invoke-virtual {p2, p1}, Lo/getIndexEndValue;->extraCallback(Ljava/io/IOException;)V

    .line 225
    iget-object v0, p0, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 36386
    iget-boolean v0, v0, Lo/propertyName;->IPostMessageService:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_3

    .line 38069
    iget-object p4, p4, Lo/isCompleteForChild;->onMessageChannelReady:Lo/isCompleteForPath;

    .line 37241
    instance-of p4, p4, Lo/toJSON;

    if-nez p4, :cond_2

    instance-of p4, p1, Ljava/io/FileNotFoundException;

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p4, 0x1

    :goto_1
    if-eqz p4, :cond_3

    return v1

    .line 231
    :cond_3
    invoke-static {p1, p3}, Lo/getLimit;->onMessageChannelReady(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    .line 234
    :cond_4
    invoke-virtual {p2}, Lo/getIndexEndValue;->asInterface()Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method


# virtual methods
.method public final extraCallback(Lo/annotatedName$onNavigationEvent;)Lo/childAddedChange;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "PROPFIND"

    .line 107
    invoke-interface/range {p1 .. p1}, Lo/annotatedName$onNavigationEvent;->onNavigationEvent()Lo/isCompleteForChild;

    move-result-object v0

    .line 108
    move-object/from16 v3, p1

    check-cast v3, Lo/isViewFromLeft;

    .line 1109
    iget-object v10, v3, Lo/isViewFromLeft;->onMessageChannelReady:Lo/convertInteger;

    .line 1113
    iget-object v11, v3, Lo/isViewFromLeft;->onTransact:Lo/resolveType;

    .line 112
    new-instance v12, Lo/getIndexEndValue;

    iget-object v4, v1, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 1374
    iget-object v5, v4, Lo/propertyName;->validateRelationship:Lo/deserialize;

    .line 2049
    iget-object v4, v0, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 113
    invoke-direct {v1, v4}, Lo/getLimit;->extraCallback(Lo/isFullyInitialized;)Lo/deserializeToType;

    move-result-object v6

    iget-object v9, v1, Lo/getLimit;->onNavigationEvent:Ljava/lang/Object;

    move-object v4, v12

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v4 .. v9}, Lo/getIndexEndValue;-><init>(Lo/deserialize;Lo/deserializeToType;Lo/convertInteger;Lo/resolveType;Ljava/lang/Object;)V

    .line 114
    iput-object v12, v1, Lo/getLimit;->extraCallback:Lo/getIndexEndValue;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v4, v0

    move-object v5, v14

    const/4 v6, 0x0

    .line 119
    :goto_0
    iget-boolean v0, v1, Lo/getLimit;->ICustomTabsCallback:Z

    if-nez v0, :cond_1d

    const/4 v7, 0x1

    .line 127
    :try_start_0
    invoke-virtual {v3, v4, v12, v14, v14}, Lo/isViewFromLeft;->onPostMessage(Lo/isCompleteForChild;Lo/getIndexEndValue;Lo/getIndexStartName;Lo/raiseEvents;)Lo/childAddedChange;

    move-result-object v0
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 4181
    new-instance v4, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v4, v0}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    .line 5181
    new-instance v0, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v0, v5}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    .line 5391
    iput-object v14, v0, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    .line 155
    invoke-virtual {v0}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v0

    .line 5426
    iget-object v5, v0, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    if-nez v5, :cond_0

    .line 5421
    iput-object v0, v4, Lo/childAddedChange$ICustomTabsCallback;->onRelationshipValidationResult:Lo/childAddedChange;

    .line 156
    invoke-virtual {v4}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v0

    goto :goto_1

    .line 5427
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "priorResponse.body != null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6340
    :cond_1
    :goto_1
    :try_start_1
    iget-object v4, v12, Lo/getIndexEndValue;->onMessageChannelReady:Lo/changeWithPrevName;

    if-eqz v0, :cond_19

    .line 8098
    iget v5, v0, Lo/childAddedChange;->onNavigationEvent:I

    .line 9086
    iget-object v8, v0, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 10053
    iget-object v8, v8, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v9, 0x133

    const-string v15, "HEAD"

    const-string v14, "GET"

    if-eq v5, v9, :cond_8

    const/16 v9, 0x134

    if-eq v5, v9, :cond_8

    const/16 v9, 0x197

    if-eq v5, v9, :cond_6

    const/16 v4, 0x198

    if-eq v5, v4, :cond_4

    const/16 v4, 0x1f7

    if-eq v5, v4, :cond_2

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_8

    .line 26224
    :cond_2
    :try_start_2
    iget-object v5, v0, Lo/childAddedChange;->onTransact:Lo/childAddedChange;

    if-eqz v5, :cond_3

    .line 27224
    iget-object v5, v0, Lo/childAddedChange;->onTransact:Lo/childAddedChange;

    .line 28098
    iget v5, v5, Lo/childAddedChange;->onNavigationEvent:I

    if-eq v5, v4, :cond_13

    :cond_3
    const v4, 0x7fffffff

    .line 7382
    invoke-static {v0, v4}, Lo/getLimit;->onMessageChannelReady(Lo/childAddedChange;I)I

    move-result v4

    if-nez v4, :cond_13

    .line 29086
    iget-object v4, v0, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    :goto_2
    move-object v14, v4

    goto/16 :goto_9

    .line 7354
    :cond_4
    iget-object v5, v1, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 21386
    iget-boolean v5, v5, Lo/propertyName;->IPostMessageService:Z

    if-eqz v5, :cond_13

    .line 22086
    iget-object v5, v0, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 23069
    iget-object v5, v5, Lo/isCompleteForChild;->onMessageChannelReady:Lo/isCompleteForPath;

    .line 7359
    instance-of v5, v5, Lo/toJSON;

    if-nez v5, :cond_13

    .line 23224
    iget-object v5, v0, Lo/childAddedChange;->onTransact:Lo/childAddedChange;

    if-eqz v5, :cond_5

    .line 24224
    iget-object v5, v0, Lo/childAddedChange;->onTransact:Lo/childAddedChange;

    .line 25098
    iget v5, v5, Lo/childAddedChange;->onNavigationEvent:I

    if-eq v5, v4, :cond_13

    .line 7369
    :cond_5
    invoke-static {v0, v13}, Lo/getLimit;->onMessageChannelReady(Lo/childAddedChange;I)I

    move-result v4

    if-gtz v4, :cond_13

    .line 26086
    iget-object v4, v0, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    goto :goto_2

    .line 10068
    :cond_6
    iget-object v4, v4, Lo/changeWithPrevName;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 7290
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_7

    goto/16 :goto_8

    .line 7291
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    const-string v2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7302
    :cond_8
    invoke-virtual {v8, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v8, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 7311
    :cond_9
    :pswitch_0
    iget-object v4, v1, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 11382
    iget-boolean v4, v4, Lo/propertyName;->IPostMessageService$Stub:Z

    if-eqz v4, :cond_13

    const-string v4, "Location"

    .line 12131
    iget-object v5, v0, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 13063
    iget-object v5, v5, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v5, v4}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_13

    .line 13086
    iget-object v5, v0, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 14049
    iget-object v5, v5, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 14867
    invoke-virtual {v5, v4}, Lo/isFullyInitialized;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 14868
    invoke-virtual {v4}, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback()Lo/isFullyInitialized;

    move-result-object v4

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_13

    .line 15393
    iget-object v5, v4, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    .line 16086
    iget-object v9, v0, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 17049
    iget-object v9, v9, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 17393
    iget-object v9, v9, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    .line 7321
    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 7322
    iget-object v5, v1, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 18378
    iget-boolean v5, v5, Lo/propertyName;->ICustomTabsService$Stub$Proxy:Z

    if-eqz v5, :cond_13

    .line 19086
    :cond_c
    iget-object v5, v0, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 19093
    new-instance v9, Lo/isCompleteForChild$ICustomTabsCallback;

    invoke-direct {v9, v5}, Lo/isCompleteForChild$ICustomTabsCallback;-><init>(Lo/isCompleteForChild;)V

    .line 20036
    invoke-virtual {v8, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v8, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const/4 v5, 0x1

    goto :goto_5

    :cond_d
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_10

    .line 20040
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 20045
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    xor-int/2addr v7, v15

    if-eqz v7, :cond_e

    const/4 v7, 0x0

    .line 7329
    invoke-virtual {v9, v14, v7}, Lo/isCompleteForChild$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Lo/isCompleteForPath;)Lo/isCompleteForChild$ICustomTabsCallback;

    goto :goto_7

    :cond_e
    if-eqz v5, :cond_f

    .line 20086
    iget-object v7, v0, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 21069
    iget-object v7, v7, Lo/isCompleteForChild;->onMessageChannelReady:Lo/isCompleteForPath;

    goto :goto_6

    :cond_f
    const/4 v7, 0x0

    .line 7332
    :goto_6
    invoke-virtual {v9, v8, v7}, Lo/isCompleteForChild$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Lo/isCompleteForPath;)Lo/isCompleteForChild$ICustomTabsCallback;

    :goto_7
    if-nez v5, :cond_10

    const-string v5, "Transfer-Encoding"

    .line 7335
    invoke-virtual {v9, v5}, Lo/isCompleteForChild$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;

    const-string v5, "Content-Length"

    .line 7336
    invoke-virtual {v9, v5}, Lo/isCompleteForChild$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;

    const-string v5, "Content-Type"

    .line 7337
    invoke-virtual {v9, v5}, Lo/isCompleteForChild$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;

    .line 7344
    :cond_10
    invoke-static {v0, v4}, Lo/getLimit;->onNavigationEvent(Lo/childAddedChange;Lo/isFullyInitialized;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "Authorization"

    .line 7345
    invoke-virtual {v9, v5}, Lo/isCompleteForChild$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;

    .line 21145
    :cond_11
    iput-object v4, v9, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    .line 21292
    iget-object v4, v9, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    if-eqz v4, :cond_12

    .line 21293
    new-instance v4, Lo/isCompleteForChild;

    invoke-direct {v4, v9}, Lo/isCompleteForChild;-><init>(Lo/isCompleteForChild$ICustomTabsCallback;)V

    goto/16 :goto_2

    .line 21292
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "url == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_13
    :goto_8
    const/4 v14, 0x0

    :goto_9
    if-nez v14, :cond_14

    .line 168
    invoke-virtual {v12}, Lo/getIndexEndValue;->extraCallback()V

    return-object v0

    .line 29177
    :cond_14
    iget-object v4, v0, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 172
    invoke-static {v4}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    add-int/lit8 v15, v6, 0x1

    const/16 v4, 0x14

    if-gt v15, v4, :cond_18

    .line 30069
    iget-object v4, v14, Lo/isCompleteForChild;->onMessageChannelReady:Lo/isCompleteForPath;

    .line 179
    instance-of v4, v4, Lo/toJSON;

    if-nez v4, :cond_17

    .line 31049
    iget-object v4, v14, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 184
    invoke-static {v0, v4}, Lo/getLimit;->onNavigationEvent(Lo/childAddedChange;Lo/isFullyInitialized;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 185
    invoke-virtual {v12}, Lo/getIndexEndValue;->extraCallback()V

    .line 186
    new-instance v12, Lo/getIndexEndValue;

    iget-object v4, v1, Lo/getLimit;->onPostMessage:Lo/propertyName;

    .line 31374
    iget-object v5, v4, Lo/propertyName;->validateRelationship:Lo/deserialize;

    .line 32049
    iget-object v4, v14, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 187
    invoke-direct {v1, v4}, Lo/getLimit;->extraCallback(Lo/isFullyInitialized;)Lo/deserializeToType;

    move-result-object v6

    iget-object v9, v1, Lo/getLimit;->onNavigationEvent:Ljava/lang/Object;

    move-object v4, v12

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v4 .. v9}, Lo/getIndexEndValue;-><init>(Lo/deserialize;Lo/deserializeToType;Lo/convertInteger;Lo/resolveType;Ljava/lang/Object;)V

    .line 188
    iput-object v12, v1, Lo/getLimit;->extraCallback:Lo/getIndexEndValue;

    goto :goto_a

    .line 189
    :cond_15
    invoke-virtual {v12}, Lo/getIndexEndValue;->onMessageChannelReady()Lo/getIndexStartName;

    move-result-object v4

    if-nez v4, :cond_16

    :goto_a
    move-object v5, v0

    move-object v4, v14

    move v6, v15

    goto :goto_c

    .line 190
    :cond_16
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Closing the body of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_17
    invoke-virtual {v12}, Lo/getIndexEndValue;->extraCallback()V

    .line 181
    new-instance v2, Ljava/net/HttpRetryException;

    .line 30098
    iget v0, v0, Lo/childAddedChange;->onNavigationEvent:I

    const-string v3, "Cannot retry streamed HTTP body"

    .line 181
    invoke-direct {v2, v3, v0}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 175
    :cond_18
    invoke-virtual {v12}, Lo/getIndexEndValue;->extraCallback()V

    .line 176
    new-instance v0, Ljava/net/ProtocolException;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Too many follow-up requests: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7283
    :cond_19
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v12}, Lo/getIndexEndValue;->extraCallback()V

    .line 164
    throw v0

    :catchall_0
    move-exception v0

    move-object v2, v14

    goto :goto_d

    :catch_1
    move-exception v0

    move-object v8, v0

    .line 138
    :try_start_4
    nop

    instance-of v0, v8, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v0, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v7, 0x0

    .line 139
    :goto_b
    invoke-direct {v1, v8, v12, v7, v4}, Lo/getLimit;->onPostMessage(Ljava/io/IOException;Lo/getIndexEndValue;ZLo/isCompleteForChild;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_c

    :cond_1b
    throw v8

    :catch_2
    move-exception v0

    move-object v7, v0

    .line 3041
    iget-object v0, v7, Lokhttp3/internal/connection/RouteException;->onNavigationEvent:Ljava/io/IOException;

    .line 131
    invoke-direct {v1, v0, v12, v13, v4}, Lo/getLimit;->onPostMessage(Ljava/io/IOException;Lo/getIndexEndValue;ZLo/isCompleteForChild;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :goto_c
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4037
    :cond_1c
    iget-object v0, v7, Lokhttp3/internal/connection/RouteException;->extraCallback:Ljava/io/IOException;

    .line 132
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    .line 145
    :goto_d
    invoke-virtual {v12, v2}, Lo/getIndexEndValue;->extraCallback(Ljava/io/IOException;)V

    .line 146
    invoke-virtual {v12}, Lo/getIndexEndValue;->extraCallback()V

    throw v0

    .line 120
    :cond_1d
    invoke-virtual {v12}, Lo/getIndexEndValue;->extraCallback()V

    .line 121
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
