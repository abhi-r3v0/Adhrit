.class public final Lo/interrupt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;
.implements Lo/getHashes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/interrupt$onMessageChannelReady;,
        Lo/interrupt$ICustomTabsCallback;,
        Lo/interrupt$onPostMessage;,
        Lo/interrupt$onNavigationEvent;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/partKey;

.field private ICustomTabsCallback$Stub:[B

.field private ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

.field private ICustomTabsService:I

.field volatile asBinder:Z

.field private final asInterface:Lo/putInternal;

.field extraCallback:I

.field private extraCommand:I

.field private getInterfaceDescriptor:Lo/interrupt$onPostMessage;

.field private mayLaunchUrl:J

.field private newSession:Z

.field onMessageChannelReady:Lo/getExecutorService;

.field onNavigationEvent:Lo/interrupt$onNavigationEvent;

.field onPostMessage:Lo/buildPennant;

.field onRelationshipValidationResult:Z

.field private final onTransact:Lo/restoreAuth;

.field private requestPostMessageChannel:Z

.field private updateVisuals:I

.field private warmup:I


# direct methods
.method public constructor <init>(Lo/interrupt$onNavigationEvent;Lo/partKey;ILo/restoreAuth;Lo/putInternal;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Lo/interrupt$onPostMessage;->onPostMessage:Lo/interrupt$onPostMessage;

    iput-object v0, p0, Lo/interrupt;->getInterfaceDescriptor:Lo/interrupt$onPostMessage;

    const/4 v0, 0x5

    .line 97
    iput v0, p0, Lo/interrupt;->warmup:I

    .line 100
    new-instance v0, Lo/buildPennant;

    invoke-direct {v0}, Lo/buildPennant;-><init>()V

    iput-object v0, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lo/interrupt;->requestPostMessageChannel:Z

    const/4 v1, -0x1

    .line 103
    iput v1, p0, Lo/interrupt;->updateVisuals:I

    .line 106
    iput-boolean v0, p0, Lo/interrupt;->onRelationshipValidationResult:Z

    .line 107
    iput-boolean v0, p0, Lo/interrupt;->asBinder:Z

    .line 123
    check-cast p1, Lo/interrupt$onNavigationEvent;

    iput-object p1, p0, Lo/interrupt;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    if-eqz p2, :cond_2

    .line 124
    check-cast p2, Lo/partKey;

    iput-object p2, p0, Lo/interrupt;->ICustomTabsCallback:Lo/partKey;

    .line 125
    iput p3, p0, Lo/interrupt;->extraCallback:I

    if-eqz p4, :cond_1

    .line 126
    check-cast p4, Lo/restoreAuth;

    iput-object p4, p0, Lo/interrupt;->onTransact:Lo/restoreAuth;

    if-eqz p5, :cond_0

    .line 127
    check-cast p5, Lo/putInternal;

    iput-object p5, p0, Lo/interrupt;->asInterface:Lo/putInternal;

    return-void

    .line 4910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "transportTracer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "statsTraceCtx"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "decompressor"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private extraCallback()V
    .locals 7

    .line 258
    iget-boolean v0, p0, Lo/interrupt;->requestPostMessageChannel:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lo/interrupt;->requestPostMessageChannel:Z

    :goto_0
    const/4 v1, 0x0

    .line 264
    :try_start_0
    iget-boolean v2, p0, Lo/interrupt;->asBinder:Z

    if-nez v2, :cond_8

    iget-wide v2, p0, Lo/interrupt;->mayLaunchUrl:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_8

    invoke-direct {p0}, Lo/interrupt;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 265
    sget-object v2, Lo/interrupt$3;->ICustomTabsCallback:[I

    iget-object v3, p0, Lo/interrupt;->getInterfaceDescriptor:Lo/interrupt$onPostMessage;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v0, :cond_3

    if-ne v2, v3, :cond_2

    .line 19405
    iput v1, p0, Lo/interrupt;->extraCommand:I

    .line 19406
    iget-boolean v2, p0, Lo/interrupt;->newSession:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lo/interrupt;->onNavigationEvent()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_1

    .line 19417
    :cond_1
    iget-object v2, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

    invoke-static {v2}, Lo/canSendWrites;->extraCallback(Lo/onServerInfoUpdate;)Ljava/io/InputStream;

    move-result-object v2

    :goto_1
    const/4 v3, 0x0

    .line 19407
    iput-object v3, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

    .line 19408
    iget-object v3, p0, Lo/interrupt;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    new-instance v4, Lo/interrupt$onMessageChannelReady;

    invoke-direct {v4, v2, v1}, Lo/interrupt$onMessageChannelReady;-><init>(Ljava/io/InputStream;B)V

    invoke-interface {v3, v4}, Lo/interrupt$onNavigationEvent;->onPostMessage(Lo/sendAuthHelper$onMessageChannelReady;)V

    .line 19411
    sget-object v2, Lo/interrupt$onPostMessage;->onPostMessage:Lo/interrupt$onPostMessage;

    iput-object v2, p0, Lo/interrupt;->getInterfaceDescriptor:Lo/interrupt$onPostMessage;

    const/4 v2, 0x5

    .line 19412
    iput v2, p0, Lo/interrupt;->warmup:I

    .line 275
    iget-wide v2, p0, Lo/interrupt;->mayLaunchUrl:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lo/interrupt;->mayLaunchUrl:J

    goto :goto_0

    .line 278
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/interrupt;->getInterfaceDescriptor:Lo/interrupt$onPostMessage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 17373
    :cond_3
    iget-object v2, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

    invoke-virtual {v2}, Lo/buildPennant;->extraCallback()I

    move-result v2

    and-int/lit16 v4, v2, 0xfe

    if-nez v4, :cond_7

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 17379
    :goto_2
    iput-boolean v2, p0, Lo/interrupt;->newSession:Z

    .line 17382
    iget-object v2, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

    .line 18052
    invoke-virtual {v2}, Lo/setLeft;->onPostMessage()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_6

    .line 18026
    invoke-virtual {v2}, Lo/setLeft;->extraCallback()I

    move-result v4

    .line 18027
    invoke-virtual {v2}, Lo/setLeft;->extraCallback()I

    move-result v5

    .line 18028
    invoke-virtual {v2}, Lo/setLeft;->extraCallback()I

    move-result v6

    .line 18029
    invoke-virtual {v2}, Lo/setLeft;->extraCallback()I

    move-result v2

    shl-int/lit8 v4, v4, 0x18

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 17382
    iput v2, p0, Lo/interrupt;->warmup:I

    if-ltz v2, :cond_5

    .line 17383
    iget v4, p0, Lo/interrupt;->extraCallback:I

    if-gt v2, v4, :cond_5

    .line 17390
    iget v2, p0, Lo/interrupt;->updateVisuals:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/interrupt;->updateVisuals:I

    .line 17392
    iget-object v2, p0, Lo/interrupt;->asInterface:Lo/putInternal;

    .line 19120
    iget-object v3, v2, Lo/putInternal;->ICustomTabsCallback$Stub:Lo/listen;

    invoke-interface {v3}, Lo/listen;->onPostMessage()V

    .line 19121
    iget-object v3, v2, Lo/putInternal;->onNavigationEvent:Lo/sendUnauth;

    invoke-interface {v3}, Lo/sendUnauth;->onMessageChannelReady()J

    move-result-wide v3

    iput-wide v3, v2, Lo/putInternal;->asInterface:J

    .line 17394
    sget-object v2, Lo/interrupt$onPostMessage;->onMessageChannelReady:Lo/interrupt$onPostMessage;

    iput-object v2, p0, Lo/interrupt;->getInterfaceDescriptor:Lo/interrupt$onPostMessage;

    goto/16 :goto_0

    .line 17384
    :cond_5
    sget-object v2, Lo/emptyMap;->onRelationshipValidationResult:Lo/emptyMap;

    const-string v4, "gRPC message exceeds maximum size %d: %d"

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lo/interrupt;->extraCallback:I

    .line 17386
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    iget v5, p0, Lo/interrupt;->warmup:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    .line 17385
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 17384
    invoke-virtual {v2, v0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    .line 18524
    new-instance v2, Lio/grpc/StatusRuntimeException;

    invoke-direct {v2, v0}, Lio/grpc/StatusRuntimeException;-><init>(Lo/emptyMap;)V

    .line 17387
    throw v2

    .line 18053
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 17375
    :cond_7
    sget-object v0, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v2, "gRPC frame header malformed: reserved bits not zero"

    invoke-virtual {v0, v2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    .line 17524
    new-instance v2, Lio/grpc/StatusRuntimeException;

    invoke-direct {v2, v0}, Lio/grpc/StatusRuntimeException;-><init>(Lo/emptyMap;)V

    .line 17377
    throw v2

    .line 282
    :cond_8
    iget-boolean v2, p0, Lo/interrupt;->asBinder:Z

    if-eqz v2, :cond_9

    .line 283
    invoke-virtual {p0}, Lo/interrupt;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    iput-boolean v1, p0, Lo/interrupt;->requestPostMessageChannel:Z

    return-void

    .line 295
    :cond_9
    :try_start_1
    iget-boolean v2, p0, Lo/interrupt;->onRelationshipValidationResult:Z

    if-eqz v2, :cond_c

    .line 20245
    iget-object v2, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-eqz v2, :cond_a

    .line 20246
    iget-object v0, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    invoke-virtual {v0}, Lo/getExecutorService;->onNavigationEvent()Z

    move-result v0

    goto :goto_3

    .line 20248
    :cond_a
    iget-object v2, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    .line 21063
    iget v2, v2, Lo/buildPennant;->onPostMessage:I

    if-nez v2, :cond_b

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_c

    .line 296
    invoke-virtual {p0}, Lo/interrupt;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    :cond_c
    iput-boolean v1, p0, Lo/interrupt;->requestPostMessageChannel:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lo/interrupt;->requestPostMessageChannel:Z

    throw v0
.end method

.method private onNavigationEvent()Ljava/io/InputStream;
    .locals 4

    .line 421
    iget-object v0, p0, Lo/interrupt;->ICustomTabsCallback:Lo/partKey;

    sget-object v1, Lo/purgeCache$onNavigationEvent;->onMessageChannelReady:Lo/purgeCache;

    if-eq v0, v1, :cond_0

    .line 429
    :try_start_0
    iget-object v0, p0, Lo/interrupt;->ICustomTabsCallback:Lo/partKey;

    iget-object v1, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

    .line 430
    invoke-static {v1}, Lo/canSendWrites;->extraCallback(Lo/onServerInfoUpdate;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/partKey;->extraCallback(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 431
    new-instance v1, Lo/interrupt$ICustomTabsCallback;

    iget v2, p0, Lo/interrupt;->extraCallback:I

    iget-object v3, p0, Lo/interrupt;->onTransact:Lo/restoreAuth;

    invoke-direct {v1, v0, v2, v3}, Lo/interrupt$ICustomTabsCallback;-><init>(Ljava/io/InputStream;ILo/restoreAuth;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 434
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 422
    :cond_0
    sget-object v0, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v1, "Can\'t decode compressed gRPC message as compression not configured"

    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    .line 50048
    new-instance v1, Lio/grpc/StatusRuntimeException;

    invoke-direct {v1, v0}, Lio/grpc/StatusRuntimeException;-><init>(Lo/emptyMap;)V

    .line 424
    throw v1
.end method

.method private onPostMessage()Z
    .locals 15

    const/4 v0, 0x0

    .line 312
    :try_start_0
    iget-object v1, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

    if-nez v1, :cond_0

    .line 313
    new-instance v1, Lo/buildPennant;

    invoke-direct {v1}, Lo/buildPennant;-><init>()V

    iput-object v1, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 318
    :goto_0
    :try_start_1
    iget v3, p0, Lo/interrupt;->warmup:I

    iget-object v4, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

    .line 22063
    iget v4, v4, Lo/buildPennant;->onPostMessage:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    if-lez v3, :cond_22

    .line 319
    iget-object v5, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1e

    .line 321
    :try_start_2
    iget-object v5, p0, Lo/interrupt;->ICustomTabsCallback$Stub:[B

    if-eqz v5, :cond_1

    iget v5, p0, Lo/interrupt;->ICustomTabsService:I

    iget-object v6, p0, Lo/interrupt;->ICustomTabsCallback$Stub:[B

    array-length v6, v6

    if-ne v5, v6, :cond_2

    :cond_1
    const/high16 v5, 0x200000

    .line 322
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v5, v5, [B

    iput-object v5, p0, Lo/interrupt;->ICustomTabsCallback$Stub:[B

    .line 323
    iput v0, p0, Lo/interrupt;->ICustomTabsService:I

    .line 325
    :cond_2
    iget-object v5, p0, Lo/interrupt;->ICustomTabsCallback$Stub:[B

    array-length v5, v5

    iget v6, p0, Lo/interrupt;->ICustomTabsService:I

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 326
    iget-object v5, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    iget-object v6, p0, Lo/interrupt;->ICustomTabsCallback$Stub:[B

    iget v7, p0, Lo/interrupt;->ICustomTabsService:I

    .line 22261
    iget-boolean v8, v5, Lo/getExecutorService;->onTransact:Z

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    const-string v9, "GzipInflatingBuffer is closed"

    if-eqz v8, :cond_1d

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_2
    const/16 v10, 0xa

    if-eqz v8, :cond_17

    sub-int v11, v3, v9

    if-lez v11, :cond_17

    .line 22267
    sget-object v8, Lo/getExecutorService$4;->extraCallback:[I

    iget-object v12, v5, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v8, v8, v12

    const/4 v12, 0x2

    const/16 v13, 0x8

    packed-switch v8, :pswitch_data_0

    .line 22307
    new-instance v0, Ljava/lang/AssertionError;

    goto/16 :goto_9

    .line 22304
    :pswitch_0
    invoke-virtual {v5}, Lo/getExecutorService;->extraCallback()Z

    move-result v8

    goto :goto_2

    .line 44442
    :pswitch_1
    iget-object v8, v5, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    const-string v10, "inflater is null"

    if-eqz v8, :cond_8

    .line 44443
    iget v8, v5, Lo/getExecutorService;->onMessageChannelReady:I

    iget v10, v5, Lo/getExecutorService;->ICustomTabsCallback$Stub:I

    if-ne v8, v10, :cond_5

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    const-string v10, "inflaterInput has unconsumed bytes"

    if-eqz v8, :cond_7

    .line 44444
    iget-object v8, v5, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    .line 46063
    iget v8, v8, Lo/buildPennant;->onPostMessage:I

    const/16 v10, 0x200

    .line 44444
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-nez v8, :cond_6

    :goto_5
    const/4 v8, 0x0

    goto :goto_2

    .line 44448
    :cond_6
    iput v0, v5, Lo/getExecutorService;->onMessageChannelReady:I

    .line 44449
    iput v8, v5, Lo/getExecutorService;->ICustomTabsCallback$Stub:I

    .line 44450
    iget-object v10, v5, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    iget-object v11, v5, Lo/getExecutorService;->onNavigationEvent:[B

    iget v12, v5, Lo/getExecutorService;->onMessageChannelReady:I

    invoke-virtual {v10, v11, v12, v8}, Lo/buildPennant;->ICustomTabsCallback([BII)V

    .line 44451
    iget-object v10, v5, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    iget-object v11, v5, Lo/getExecutorService;->onNavigationEvent:[B

    iget v12, v5, Lo/getExecutorService;->onMessageChannelReady:I

    invoke-virtual {v10, v11, v12, v8}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 44452
    sget-object v8, Lo/getExecutorService$onMessageChannelReady;->asInterface:Lo/getExecutorService$onMessageChannelReady;

    iput-object v8, v5, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    goto :goto_6

    .line 45511
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44511
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    add-int v8, v7, v9

    .line 22290
    invoke-virtual {v5, v6, v8, v11}, Lo/getExecutorService;->onMessageChannelReady([BII)I

    move-result v8

    add-int/2addr v9, v8

    .line 22291
    iget-object v8, v5, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    sget-object v10, Lo/getExecutorService$onMessageChannelReady;->asBinder:Lo/getExecutorService$onMessageChannelReady;

    if-ne v8, v10, :cond_9

    .line 22293
    invoke-virtual {v5}, Lo/getExecutorService;->extraCallback()Z

    move-result v8

    goto :goto_2

    :cond_9
    :goto_6
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 44397
    :pswitch_3
    iget-object v8, v5, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    if-nez v8, :cond_a

    .line 44398
    new-instance v8, Ljava/util/zip/Inflater;

    invoke-direct {v8, v4}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v8, v5, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    goto :goto_7

    .line 44400
    :cond_a
    iget-object v8, v5, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    invoke-virtual {v8}, Ljava/util/zip/Inflater;->reset()V

    .line 44402
    :goto_7
    iget-object v8, v5, Lo/getExecutorService;->extraCallback:Ljava/util/zip/CRC32;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->reset()V

    .line 44403
    iget v8, v5, Lo/getExecutorService;->ICustomTabsCallback$Stub:I

    iget v10, v5, Lo/getExecutorService;->onMessageChannelReady:I

    sub-int/2addr v8, v10

    if-lez v8, :cond_b

    .line 44405
    iget-object v10, v5, Lo/getExecutorService;->asInterface:Ljava/util/zip/Inflater;

    iget-object v11, v5, Lo/getExecutorService;->onNavigationEvent:[B

    iget v12, v5, Lo/getExecutorService;->onMessageChannelReady:I

    invoke-virtual {v10, v11, v12, v8}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 44406
    sget-object v8, Lo/getExecutorService$onMessageChannelReady;->asInterface:Lo/getExecutorService$onMessageChannelReady;

    iput-object v8, v5, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    goto :goto_6

    .line 44408
    :cond_b
    sget-object v8, Lo/getExecutorService$onMessageChannelReady;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    iput-object v8, v5, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    goto :goto_6

    .line 39381
    :pswitch_4
    iget v8, v5, Lo/getExecutorService;->asBinder:I

    and-int/2addr v8, v12

    if-ne v8, v12, :cond_e

    .line 39385
    iget-object v8, v5, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 40113
    iget-object v10, v8, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 41038
    iget v10, v10, Lo/getExecutorService;->ICustomTabsCallback$Stub:I

    .line 40113
    iget-object v11, v8, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 42038
    iget v11, v11, Lo/getExecutorService;->onMessageChannelReady:I

    sub-int/2addr v10, v11

    .line 40113
    iget-object v8, v8, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 43038
    iget-object v8, v8, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    .line 43063
    iget v8, v8, Lo/buildPennant;->onPostMessage:I

    add-int/2addr v10, v8

    if-ge v10, v12, :cond_c

    goto/16 :goto_5

    .line 39388
    :cond_c
    iget-object v8, v5, Lo/getExecutorService;->extraCallback:Ljava/util/zip/CRC32;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    long-to-int v8, v10

    const v10, 0xffff

    and-int/2addr v8, v10

    .line 39389
    iget-object v10, v5, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 44128
    invoke-virtual {v10}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v11

    invoke-virtual {v10}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v10

    shl-int/2addr v10, v13

    or-int/2addr v10, v11

    if-ne v8, v10, :cond_d

    goto :goto_8

    .line 39390
    :cond_d
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v3, "Corrupt GZIP header"

    invoke-direct {v0, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39392
    :cond_e
    :goto_8
    sget-object v8, Lo/getExecutorService$onMessageChannelReady;->onTransact:Lo/getExecutorService$onMessageChannelReady;

    iput-object v8, v5, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    goto :goto_6

    .line 39369
    :pswitch_5
    iget v8, v5, Lo/getExecutorService;->asBinder:I

    const/16 v10, 0x10

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_f

    .line 39373
    iget-object v8, v5, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    invoke-static {v8}, Lo/getExecutorService$extraCallback;->onNavigationEvent(Lo/getExecutorService$extraCallback;)Z

    move-result v8

    if-nez v8, :cond_f

    goto/16 :goto_5

    .line 39376
    :cond_f
    sget-object v8, Lo/getExecutorService$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getExecutorService$onMessageChannelReady;

    iput-object v8, v5, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    goto/16 :goto_6

    .line 39357
    :pswitch_6
    iget v8, v5, Lo/getExecutorService;->asBinder:I

    and-int/2addr v8, v13

    if-ne v8, v13, :cond_10

    .line 39361
    iget-object v8, v5, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    invoke-static {v8}, Lo/getExecutorService$extraCallback;->onNavigationEvent(Lo/getExecutorService$extraCallback;)Z

    move-result v8

    if-nez v8, :cond_10

    goto/16 :goto_5

    .line 39364
    :cond_10
    sget-object v8, Lo/getExecutorService$onMessageChannelReady;->onMessageChannelReady:Lo/getExecutorService$onMessageChannelReady;

    iput-object v8, v5, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    goto/16 :goto_6

    .line 35348
    :pswitch_7
    iget-object v8, v5, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 36113
    iget-object v10, v8, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 37038
    iget v10, v10, Lo/getExecutorService;->ICustomTabsCallback$Stub:I

    .line 36113
    iget-object v11, v8, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 38038
    iget v11, v11, Lo/getExecutorService;->onMessageChannelReady:I

    sub-int/2addr v10, v11

    .line 36113
    iget-object v8, v8, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 39038
    iget-object v8, v8, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    .line 39063
    iget v8, v8, Lo/buildPennant;->onPostMessage:I

    add-int/2addr v10, v8

    .line 35348
    iget v8, v5, Lo/getExecutorService;->newSession:I

    if-ge v10, v8, :cond_11

    goto/16 :goto_5

    .line 35351
    :cond_11
    iget-object v8, v5, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    iget v10, v5, Lo/getExecutorService;->newSession:I

    invoke-static {v8, v10}, Lo/getExecutorService$extraCallback;->extraCallback(Lo/getExecutorService$extraCallback;I)V

    .line 35352
    sget-object v8, Lo/getExecutorService$onMessageChannelReady;->extraCallback:Lo/getExecutorService$onMessageChannelReady;

    iput-object v8, v5, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    goto/16 :goto_6

    .line 30335
    :pswitch_8
    iget v8, v5, Lo/getExecutorService;->asBinder:I

    const/4 v10, 0x4

    and-int/2addr v8, v10

    if-eq v8, v10, :cond_12

    .line 30336
    sget-object v8, Lo/getExecutorService$onMessageChannelReady;->extraCallback:Lo/getExecutorService$onMessageChannelReady;

    iput-object v8, v5, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    goto/16 :goto_6

    .line 30339
    :cond_12
    iget-object v8, v5, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 31113
    iget-object v10, v8, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 32038
    iget v10, v10, Lo/getExecutorService;->ICustomTabsCallback$Stub:I

    .line 31113
    iget-object v11, v8, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 33038
    iget v11, v11, Lo/getExecutorService;->onMessageChannelReady:I

    sub-int/2addr v10, v11

    .line 31113
    iget-object v8, v8, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 34038
    iget-object v8, v8, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    .line 34063
    iget v8, v8, Lo/buildPennant;->onPostMessage:I

    add-int/2addr v10, v8

    if-ge v10, v12, :cond_13

    goto/16 :goto_5

    .line 30342
    :cond_13
    iget-object v8, v5, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 35128
    invoke-virtual {v8}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v10

    invoke-virtual {v8}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v8

    shl-int/2addr v8, v13

    or-int/2addr v8, v10

    .line 30342
    iput v8, v5, Lo/getExecutorService;->newSession:I

    .line 30343
    sget-object v8, Lo/getExecutorService$onMessageChannelReady;->onNavigationEvent:Lo/getExecutorService$onMessageChannelReady;

    iput-object v8, v5, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    goto/16 :goto_6

    .line 23319
    :pswitch_9
    iget-object v8, v5, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 24113
    iget-object v11, v8, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 25038
    iget v11, v11, Lo/getExecutorService;->ICustomTabsCallback$Stub:I

    .line 24113
    iget-object v12, v8, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 26038
    iget v12, v12, Lo/getExecutorService;->onMessageChannelReady:I

    sub-int/2addr v11, v12

    .line 24113
    iget-object v8, v8, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 27038
    iget-object v8, v8, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    .line 27063
    iget v8, v8, Lo/buildPennant;->onPostMessage:I

    add-int/2addr v11, v8

    if-ge v11, v10, :cond_14

    goto/16 :goto_5

    .line 23322
    :cond_14
    iget-object v8, v5, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 28128
    invoke-virtual {v8}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v10

    invoke-virtual {v8}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v8

    shl-int/2addr v8, v13

    or-int/2addr v8, v10

    const v10, 0x8b1f

    if-ne v8, v10, :cond_16

    .line 23325
    iget-object v8, v5, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 29058
    invoke-virtual {v8}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v8

    if-ne v8, v13, :cond_15

    .line 23328
    iget-object v8, v5, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 30058
    invoke-virtual {v8}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v8

    .line 23328
    iput v8, v5, Lo/getExecutorService;->asBinder:I

    .line 23329
    iget-object v8, v5, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    const/4 v10, 0x6

    invoke-static {v8, v10}, Lo/getExecutorService$extraCallback;->extraCallback(Lo/getExecutorService$extraCallback;I)V

    .line 23330
    sget-object v8, Lo/getExecutorService$onMessageChannelReady;->ICustomTabsCallback:Lo/getExecutorService$onMessageChannelReady;

    iput-object v8, v5, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    goto/16 :goto_6

    .line 23326
    :cond_15
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v3, "Unsupported compression method"

    invoke-direct {v0, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23323
    :cond_16
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v3, "Not in GZIP format"

    invoke-direct {v0, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22307
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v5, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_17
    if-eqz v8, :cond_19

    .line 22311
    iget-object v3, v5, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    sget-object v6, Lo/getExecutorService$onMessageChannelReady;->onPostMessage:Lo/getExecutorService$onMessageChannelReady;

    if-ne v3, v6, :cond_18

    iget-object v3, v5, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 47113
    iget-object v6, v3, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 48038
    iget v6, v6, Lo/getExecutorService;->ICustomTabsCallback$Stub:I

    .line 47113
    iget-object v7, v3, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 49038
    iget v7, v7, Lo/getExecutorService;->onMessageChannelReady:I

    sub-int/2addr v6, v7

    .line 47113
    iget-object v3, v3, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 50038
    iget-object v3, v3, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    .line 50039
    iget v3, v3, Lo/buildPennant;->onPostMessage:I

    add-int/2addr v6, v3

    if-ge v6, v10, :cond_18

    goto :goto_a

    :cond_18
    const/4 v4, 0x0

    .line 22313
    :cond_19
    :goto_a
    iput-boolean v4, v5, Lo/getExecutorService;->ICustomTabsCallback$Stub$Proxy:Z

    .line 327
    iget-object v3, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    .line 50040
    iget v4, v3, Lo/getExecutorService;->getInterfaceDescriptor:I

    .line 50041
    iput v0, v3, Lo/getExecutorService;->getInterfaceDescriptor:I

    add-int/2addr v1, v4

    .line 328
    iget-object v3, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    .line 50043
    iget v4, v3, Lo/getExecutorService;->warmup:I

    .line 50044
    iput v0, v3, Lo/getExecutorService;->warmup:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v2, v4

    if-nez v9, :cond_1c

    if-lez v1, :cond_1b

    .line 353
    iget-object v3, p0, Lo/interrupt;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    invoke-interface {v3, v1}, Lo/interrupt$onNavigationEvent;->b_(I)V

    .line 354
    iget-object v3, p0, Lo/interrupt;->getInterfaceDescriptor:Lo/interrupt$onPostMessage;

    sget-object v4, Lo/interrupt$onPostMessage;->onMessageChannelReady:Lo/interrupt$onPostMessage;

    if-ne v3, v4, :cond_1b

    .line 355
    iget-object v3, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-eqz v3, :cond_1a

    .line 358
    iget v1, p0, Lo/interrupt;->extraCommand:I

    add-int/2addr v1, v2

    iput v1, p0, Lo/interrupt;->extraCommand:I

    goto :goto_b

    .line 361
    :cond_1a
    iget v2, p0, Lo/interrupt;->extraCommand:I

    add-int/2addr v2, v1

    iput v2, p0, Lo/interrupt;->extraCommand:I

    :cond_1b
    :goto_b
    return v0

    .line 333
    :cond_1c
    :try_start_3
    iget-object v3, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

    iget-object v4, p0, Lo/interrupt;->ICustomTabsCallback$Stub:[B

    iget v5, p0, Lo/interrupt;->ICustomTabsService:I

    invoke-static {v4, v5, v9}, Lo/canSendWrites;->onPostMessage([BII)Lo/onServerInfoUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/buildPennant;->onPostMessage(Lo/onServerInfoUpdate;)V

    .line 334
    iget v3, p0, Lo/interrupt;->ICustomTabsService:I

    add-int/2addr v3, v9

    iput v3, p0, Lo/interrupt;->ICustomTabsService:I

    goto/16 :goto_0

    .line 22511
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    .line 338
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    .line 336
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 341
    :cond_1e
    iget-object v4, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    .line 50046
    iget v4, v4, Lo/buildPennant;->onPostMessage:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_21

    if-lez v1, :cond_20

    .line 353
    iget-object v3, p0, Lo/interrupt;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    invoke-interface {v3, v1}, Lo/interrupt$onNavigationEvent;->b_(I)V

    .line 354
    iget-object v3, p0, Lo/interrupt;->getInterfaceDescriptor:Lo/interrupt$onPostMessage;

    sget-object v4, Lo/interrupt$onPostMessage;->onMessageChannelReady:Lo/interrupt$onPostMessage;

    if-ne v3, v4, :cond_20

    .line 355
    iget-object v3, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-eqz v3, :cond_1f

    .line 358
    iget v1, p0, Lo/interrupt;->extraCommand:I

    add-int/2addr v1, v2

    iput v1, p0, Lo/interrupt;->extraCommand:I

    goto :goto_c

    .line 361
    :cond_1f
    iget v2, p0, Lo/interrupt;->extraCommand:I

    add-int/2addr v2, v1

    iput v2, p0, Lo/interrupt;->extraCommand:I

    :cond_20
    :goto_c
    return v0

    .line 345
    :cond_21
    :try_start_5
    iget-object v4, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    .line 50047
    iget v4, v4, Lo/buildPennant;->onPostMessage:I

    .line 345
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 347
    iget-object v4, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

    iget-object v5, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    invoke-virtual {v5, v3}, Lo/buildPennant;->ICustomTabsCallback(I)Lo/buildPennant;

    move-result-object v3

    invoke-virtual {v4, v3}, Lo/buildPennant;->onPostMessage(Lo/onServerInfoUpdate;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_22
    if-lez v1, :cond_24

    .line 353
    iget-object v0, p0, Lo/interrupt;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    invoke-interface {v0, v1}, Lo/interrupt$onNavigationEvent;->b_(I)V

    .line 354
    iget-object v0, p0, Lo/interrupt;->getInterfaceDescriptor:Lo/interrupt$onPostMessage;

    sget-object v3, Lo/interrupt$onPostMessage;->onMessageChannelReady:Lo/interrupt$onPostMessage;

    if-ne v0, v3, :cond_24

    .line 355
    iget-object v0, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-eqz v0, :cond_23

    .line 358
    iget v0, p0, Lo/interrupt;->extraCommand:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/interrupt;->extraCommand:I

    goto :goto_d

    .line 361
    :cond_23
    iget v0, p0, Lo/interrupt;->extraCommand:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/interrupt;->extraCommand:I

    :cond_24
    :goto_d
    return v4

    :catchall_0
    move-exception v0

    move v14, v1

    move-object v1, v0

    move v0, v14

    goto :goto_e

    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :goto_e
    if-lez v0, :cond_26

    .line 353
    iget-object v3, p0, Lo/interrupt;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    invoke-interface {v3, v0}, Lo/interrupt$onNavigationEvent;->b_(I)V

    .line 354
    iget-object v3, p0, Lo/interrupt;->getInterfaceDescriptor:Lo/interrupt$onPostMessage;

    sget-object v4, Lo/interrupt$onPostMessage;->onMessageChannelReady:Lo/interrupt$onPostMessage;

    if-ne v3, v4, :cond_26

    .line 355
    iget-object v3, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-eqz v3, :cond_25

    .line 358
    iget v0, p0, Lo/interrupt;->extraCommand:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/interrupt;->extraCommand:I

    goto :goto_f

    .line 361
    :cond_25
    iget v2, p0, Lo/interrupt;->extraCommand:I

    add-int/2addr v2, v0

    iput v2, p0, Lo/interrupt;->extraCommand:I

    :cond_26
    :goto_f
    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 11236
    iget-object v0, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 11245
    :cond_1
    iget-object v0, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-eqz v0, :cond_2

    .line 11246
    invoke-virtual {v0}, Lo/getExecutorService;->onNavigationEvent()Z

    move-result v1

    goto :goto_1

    .line 11248
    :cond_2
    iget-object v0, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    .line 12063
    iget v0, v0, Lo/buildPennant;->onPostMessage:I

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 191
    invoke-virtual {p0}, Lo/interrupt;->close()V

    return-void

    .line 193
    :cond_4
    iput-boolean v2, p0, Lo/interrupt;->onRelationshipValidationResult:Z

    return-void
.end method

.method public final ICustomTabsCallback(Lo/getExecutorService;)V
    .locals 4

    .line 147
    iget-object v0, p0, Lo/interrupt;->ICustomTabsCallback:Lo/partKey;

    sget-object v1, Lo/purgeCache$onNavigationEvent;->onMessageChannelReady:Lo/purgeCache;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 148
    iget-object v0, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    .line 150
    check-cast p1, Lo/getExecutorService;

    iput-object p1, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    return-void

    .line 7910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t pass a null full stream decompressor"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7511
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "full stream decompressor already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6511
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "per-message decompressor already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 7

    .line 12236
    iget-object v0, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

    if-eqz v0, :cond_2

    .line 13063
    iget v0, v0, Lo/buildPennant;->onPostMessage:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    .line 214
    :try_start_0
    iget-object v4, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-eqz v4, :cond_9

    if-nez v0, :cond_8

    .line 215
    iget-object v0, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    .line 13201
    iget-boolean v4, v0, Lo/getExecutorService;->onTransact:Z

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    const-string v5, "GzipInflatingBuffer is closed"

    if-eqz v4, :cond_7

    .line 13202
    iget-object v4, v0, Lo/getExecutorService;->onPostMessage:Lo/getExecutorService$extraCallback;

    .line 14113
    iget-object v5, v4, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 15038
    iget v5, v5, Lo/getExecutorService;->ICustomTabsCallback$Stub:I

    .line 14113
    iget-object v6, v4, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 16038
    iget v6, v6, Lo/getExecutorService;->onMessageChannelReady:I

    sub-int/2addr v5, v6

    .line 14113
    iget-object v4, v4, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 17038
    iget-object v4, v4, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    .line 17063
    iget v4, v4, Lo/buildPennant;->onPostMessage:I

    add-int/2addr v5, v4

    if-nez v5, :cond_5

    .line 13202
    iget-object v0, v0, Lo/getExecutorService;->onRelationshipValidationResult:Lo/getExecutorService$onMessageChannelReady;

    sget-object v4, Lo/getExecutorService$onMessageChannelReady;->onPostMessage:Lo/getExecutorService$onMessageChannelReady;

    if-eq v0, v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    .line 13511
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_8
    :goto_5
    iget-object v0, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    invoke-virtual {v0}, Lo/getExecutorService;->close()V

    move v0, v1

    .line 218
    :cond_9
    iget-object v1, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    if-eqz v1, :cond_a

    .line 219
    iget-object v1, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    invoke-virtual {v1}, Lo/setLeft;->close()V

    .line 221
    :cond_a
    iget-object v1, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

    if-eqz v1, :cond_b

    .line 222
    iget-object v1, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

    invoke-virtual {v1}, Lo/setLeft;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_b
    iput-object v3, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    .line 226
    iput-object v3, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    .line 227
    iput-object v3, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

    .line 229
    iget-object v1, p0, Lo/interrupt;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    invoke-interface {v1, v0}, Lo/interrupt$onNavigationEvent;->onMessageChannelReady(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 225
    iput-object v3, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    .line 226
    iput-object v3, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    .line 227
    iput-object v3, p0, Lo/interrupt;->ICustomTabsCallback$Stub$Proxy:Lo/buildPennant;

    throw v0
.end method

.method public final onMessageChannelReady(Lo/onServerInfoUpdate;)V
    .locals 3

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 10236
    :try_start_0
    iget-object v2, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    if-nez v2, :cond_0

    iget-object v2, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 9241
    iget-boolean v2, p0, Lo/interrupt;->onRelationshipValidationResult:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_4

    .line 170
    iget-object v2, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-eqz v2, :cond_3

    .line 171
    iget-object v2, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    invoke-virtual {v2, p1}, Lo/getExecutorService;->extraCallback(Lo/onServerInfoUpdate;)V

    goto :goto_3

    .line 173
    :cond_3
    iget-object v2, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    invoke-virtual {v2, p1}, Lo/buildPennant;->onPostMessage(Lo/onServerInfoUpdate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    :goto_3
    :try_start_1
    invoke-direct {p0}, Lo/interrupt;->extraCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_5

    .line 181
    invoke-interface {p1}, Lo/onServerInfoUpdate;->close()V

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v1, :cond_6

    invoke-interface {p1}, Lo/onServerInfoUpdate;->close()V

    :cond_6
    throw v0

    .line 8910
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "data"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(I)V
    .locals 0

    .line 136
    iput p1, p0, Lo/interrupt;->extraCallback:I

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 8236
    iget-object v2, p0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    if-nez v2, :cond_1

    iget-object v2, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 160
    :cond_2
    iget-wide v0, p0, Lo/interrupt;->mayLaunchUrl:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/interrupt;->mayLaunchUrl:J

    .line 161
    invoke-direct {p0}, Lo/interrupt;->extraCallback()V

    return-void

    .line 8142
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "numMessages must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/partKey;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 142
    check-cast p1, Lo/partKey;

    iput-object p1, p0, Lo/interrupt;->ICustomTabsCallback:Lo/partKey;

    return-void

    .line 5910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t pass an empty decompressor"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5511
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already set full stream decompressor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
