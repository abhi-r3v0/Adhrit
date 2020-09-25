.class abstract Lo/getOutOfStore$onPostMessage;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getOutOfStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAdditionalData<",
        "Lo/getCardBackgroundColor;",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/setPreinstallAttribution;

.field private asInterface:Z

.field final synthetic extraCallback:Lo/getOutOfStore;

.field final onMessageChannelReady:Lo/AFDeepLinkManager;

.field final onPostMessage:Lo/startTracking;

.field private final onTransact:Lo/unregisterConversionListener;


# direct methods
.method public constructor <init>(Lo/getOutOfStore;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;",
            "Lo/setPreinstallAttribution;",
            "ZI)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lo/getOutOfStore$onPostMessage;->extraCallback:Lo/getOutOfStore;

    .line 163
    invoke-direct {p0, p2}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    .line 164
    iput-object p3, p0, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 165
    invoke-interface {p3}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object p2

    iput-object p2, p0, Lo/getOutOfStore$onPostMessage;->onTransact:Lo/unregisterConversionListener;

    .line 166
    invoke-interface {p3}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object p2

    .line 1185
    iget-object p2, p2, Lo/getHostPrefix;->onTransact:Lo/AFDeepLinkManager;

    .line 166
    iput-object p2, p0, Lo/getOutOfStore$onPostMessage;->onMessageChannelReady:Lo/AFDeepLinkManager;

    const/4 p2, 0x0

    .line 167
    iput-boolean p2, p0, Lo/getOutOfStore$onPostMessage;->asInterface:Z

    .line 168
    new-instance p2, Lo/getOutOfStore$onPostMessage$2;

    invoke-direct {p2, p0, p3, p5}, Lo/getOutOfStore$onPostMessage$2;-><init>(Lo/getOutOfStore$onPostMessage;Lo/setPreinstallAttribution;I)V

    .line 198
    new-instance p3, Lo/startTracking;

    .line 2052
    iget-object p1, p1, Lo/getOutOfStore;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    .line 198
    iget-object p5, p0, Lo/getOutOfStore$onPostMessage;->onMessageChannelReady:Lo/AFDeepLinkManager;

    iget p5, p5, Lo/AFDeepLinkManager;->onPostMessage:I

    invoke-direct {p3, p1, p2, p5}, Lo/startTracking;-><init>(Ljava/util/concurrent/Executor;Lo/startTracking$ICustomTabsCallback;I)V

    iput-object p3, p0, Lo/getOutOfStore$onPostMessage;->onPostMessage:Lo/startTracking;

    .line 199
    iget-object p1, p0, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    new-instance p2, Lo/getOutOfStore$onPostMessage$1;

    invoke-direct {p2, p0, p4}, Lo/getOutOfStore$onPostMessage$1;-><init>(Lo/getOutOfStore$onPostMessage;Z)V

    invoke-interface {p1, p2}, Lo/setPreinstallAttribution;->onPostMessage(Lo/releaseGlows$onPostMessage$onMessageChannelReady;)V

    return-void
.end method

.method private ICustomTabsCallback(Lo/convertToJsonObject;JLo/AFKeystoreWrapper;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/convertToJsonObject;",
            "J",
            "Lo/AFKeystoreWrapper;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    .line 421
    iget-object v6, v0, Lo/getOutOfStore$onPostMessage;->onTransact:Lo/unregisterConversionListener;

    iget-object v7, v0, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    const-string v8, "DecodeProducer"

    invoke-interface {v6, v7, v8}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 424
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 425
    invoke-interface/range {p4 .. p4}, Lo/AFKeystoreWrapper;->extraCallback()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    .line 426
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 427
    instance-of v9, v1, Lo/onAppLinkFetchFailed;

    const-string/jumbo v10, "sampleSize"

    const-string v11, "requestedImageSize"

    const-string v12, "imageFormat"

    const-string v13, "encodedImageSize"

    const-string v14, "isFinal"

    const-string v15, "hasGoodQuality"

    const-string v0, "queueTime"

    if-eqz v9, :cond_2

    .line 428
    check-cast v1, Lo/onAppLinkFetchFailed;

    .line 8159
    iget-object v1, v1, Lo/onAppLinkFetchFailed;->extraCallback:Landroid/graphics/Bitmap;

    .line 429
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 432
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 p1, v1

    const/16 v1, 0x8

    invoke-direct {v9, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "bitmapSize"

    .line 433
    invoke-interface {v9, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-interface {v9, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-interface {v9, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-interface {v9, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-interface {v9, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-interface {v9, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-interface {v9, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p9

    .line 440
    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "byteCount"

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9088
    :cond_1
    new-instance v0, Lo/getLocalMatrix;

    invoke-direct {v0, v9}, Lo/getLocalMatrix;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_2
    move-object v1, v5

    .line 446
    new-instance v5, Ljava/util/HashMap;

    const/4 v9, 0x7

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 447
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-interface {v5, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-interface {v5, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-interface {v5, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-interface {v5, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-interface {v5, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-interface {v5, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10088
    new-instance v0, Lo/getLocalMatrix;

    invoke-direct {v0, v5}, Lo/getLocalMatrix;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/getOutOfStore$onPostMessage;Lo/getCardBackgroundColor;I)V
    .locals 21

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const-string v13, "DecodeProducer"

    .line 15326
    iget v0, v12, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_0

    iget v0, v12, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_1

    .line 15327
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 15209
    :cond_1
    iget-object v0, v12, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 14282
    sget-object v1, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    const/4 v15, 0x1

    if-eq v0, v1, :cond_4

    and-int/lit8 v0, p2, 0x1

    if-ne v0, v15, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v15

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return-void

    .line 14286
    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lo/getOutOfStore$onPostMessage;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_23

    if-eqz v12, :cond_5

    .line 17435
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    goto/16 :goto_10

    .line 18326
    :cond_6
    iget v0, v12, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_7

    iget v0, v12, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_8

    .line 18327
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 18209
    :cond_8
    iget-object v0, v12, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    const-string/jumbo v1, "unknown"

    if-eqz v0, :cond_9

    .line 19064
    iget-object v0, v0, Lo/setProgress;->onNavigationEvent:Ljava/lang/String;

    move-object v7, v0

    goto :goto_3

    :cond_9
    move-object v7, v1

    .line 14296
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19326
    iget v2, v12, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v2, :cond_a

    iget v2, v12, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v2, :cond_b

    .line 19327
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 19230
    :cond_b
    iget v2, v12, Lo/getCardBackgroundColor;->asInterface:I

    .line 14296
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20326
    iget v3, v12, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v3, :cond_c

    iget v3, v12, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v3, :cond_d

    .line 20327
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 20236
    :cond_d
    iget v3, v12, Lo/getCardBackgroundColor;->onTransact:I

    .line 14296
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 21255
    iget v0, v12, Lo/getCardBackgroundColor;->onRelationshipValidationResult:I

    .line 14297
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    and-int/lit8 v0, p2, 0x1

    if-ne v0, v15, :cond_e

    const/4 v6, 0x1

    goto :goto_4

    :cond_e
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_10

    and-int/lit8 v0, p2, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_f

    const/4 v0, 0x1

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    :goto_6
    and-int/lit8 v3, p2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    const/4 v3, 0x1

    goto :goto_7

    :cond_11
    const/4 v3, 0x0

    .line 14302
    :goto_7
    iget-object v5, v11, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {v5}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v5

    .line 23166
    iget-object v5, v5, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    if-eqz v5, :cond_12

    .line 14304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v5, Lo/ǃ;->extraCallback:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lo/ǃ;->onPostMessage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_12
    move-object v9, v1

    .line 14309
    :try_start_0
    iget-object v1, v11, Lo/getOutOfStore$onPostMessage;->onPostMessage:Lo/startTracking;

    invoke-virtual {v1}, Lo/startTracking;->onMessageChannelReady()J

    move-result-wide v16

    .line 14310
    iget-object v1, v11, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {v1}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v1

    .line 24150
    iget-object v1, v1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 14310
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_14

    if-eqz v3, :cond_13

    goto :goto_8

    .line 14314
    :cond_13
    invoke-virtual/range {p0 .. p1}, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback(Lo/getCardBackgroundColor;)I

    move-result v2

    goto :goto_9

    .line 14313
    :cond_14
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->onMessageChannelReady()I

    move-result v2

    :goto_9
    if-nez v0, :cond_16

    if-eqz v3, :cond_15

    goto :goto_a

    .line 14318
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lo/getOutOfStore$onPostMessage;->onMessageChannelReady()Lo/AFKeystoreWrapper;

    move-result-object v0

    goto :goto_b

    .line 14315
    :cond_16
    :goto_a
    sget-object v0, Lo/ı;->ICustomTabsCallback:Lo/AFKeystoreWrapper;

    :goto_b
    move-object v5, v0

    .line 14320
    iget-object v0, v11, Lo/getOutOfStore$onPostMessage;->onTransact:Lo/unregisterConversionListener;

    iget-object v3, v11, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {v0, v3, v13}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v18, 0x0

    .line 14324
    :try_start_1
    invoke-direct {v11, v12, v2, v5}, Lo/getOutOfStore$onPostMessage;->onNavigationEvent(Lo/getCardBackgroundColor;ILo/AFKeystoreWrapper;)Lo/convertToJsonObject;

    move-result-object v3
    :try_end_1
    .catch Lcom/facebook/imagepipeline/decoder/DecodeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25255
    :try_start_2
    iget v0, v12, Lo/getCardBackgroundColor;->onRelationshipValidationResult:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v0, v15, :cond_17

    or-int/lit8 v0, p2, 0x10

    goto :goto_c

    :cond_17
    move/from16 v0, p2

    :goto_c
    move-object/from16 v1, p0

    move-object v2, v3

    move-object v14, v3

    move-wide/from16 v3, v16

    .line 14357
    :try_start_3
    invoke-direct/range {v1 .. v10}, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback(Lo/convertToJsonObject;JLo/AFKeystoreWrapper;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 14366
    iget-object v2, v11, Lo/getOutOfStore$onPostMessage;->onTransact:Lo/unregisterConversionListener;

    iget-object v3, v11, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {v2, v3, v13, v1}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 27399
    iget-object v1, v11, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    const-string v2, "encoded_width"

    .line 28326
    iget v3, v12, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v3, :cond_18

    iget v3, v12, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v3, :cond_19

    .line 28327
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 28230
    :cond_19
    iget v3, v12, Lo/getCardBackgroundColor;->asInterface:I

    .line 27399
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lo/setPreinstallAttribution;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27400
    iget-object v1, v11, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    const-string v2, "encoded_height"

    .line 29326
    iget v3, v12, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v3, :cond_1a

    iget v3, v12, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v3, :cond_1b

    .line 29327
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 29236
    :cond_1b
    iget v3, v12, Lo/getCardBackgroundColor;->onTransact:I

    .line 27400
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lo/setPreinstallAttribution;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27401
    iget-object v1, v11, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    const-string v2, "encoded_size"

    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->onMessageChannelReady()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lo/setPreinstallAttribution;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27402
    instance-of v1, v14, Lo/AFFacebookDeferredDeeplink$AppLinkFetchEvents;

    if-eqz v1, :cond_1d

    .line 27403
    move-object v3, v14

    check-cast v3, Lo/AFFacebookDeferredDeeplink$AppLinkFetchEvents;

    invoke-virtual {v3}, Lo/AFFacebookDeferredDeeplink$AppLinkFetchEvents;->onTransact()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1c

    goto :goto_d

    .line 27404
    :cond_1c
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v18

    .line 27405
    :goto_d
    iget-object v1, v11, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    const-string v2, "bitmap_config"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lo/setPreinstallAttribution;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    if-eqz v14, :cond_1e

    .line 27408
    iget-object v1, v11, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {v1}, Lo/setPreinstallAttribution;->newSession()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v14, v1}, Lo/convertToJsonObject;->extraCallback(Ljava/util/Map;)V

    .line 29481
    :cond_1e
    iget-object v1, v11, Lo/getOutOfStore$onPostMessage;->extraCallback:Lo/getOutOfStore;

    .line 30052
    iget-object v1, v1, Lo/getOutOfStore;->onNavigationEvent:Lo/Ι;

    .line 31049
    iget-object v1, v1, Lo/Ι;->onNavigationEvent:Lo/getRootAlpha$onPostMessage;

    invoke-static {v14, v1}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/io/Closeable;Lo/getRootAlpha$onPostMessage;)Lo/getRootAlpha;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    and-int/lit8 v2, v0, 0x1

    if-ne v2, v15, :cond_1f

    const/4 v14, 0x1

    goto :goto_e

    :cond_1f
    const/4 v14, 0x0

    .line 29484
    :goto_e
    :try_start_4
    invoke-virtual {v11, v14}, Lo/getOutOfStore$onPostMessage;->onPostMessage(Z)V

    .line 33020
    iget-object v2, v11, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 29485
    invoke-interface {v2, v1, v0}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 29487
    :try_start_5
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v12, :cond_20

    .line 33425
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->close()V

    :cond_20
    return-void

    :catchall_0
    move-exception v0

    .line 29487
    :try_start_6
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    move-exception v0

    move-object v14, v3

    move-object v2, v14

    goto :goto_f

    :catch_1
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_f

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 25027
    :try_start_7
    iget-object v0, v2, Lcom/facebook/imagepipeline/decoder/DecodeException;->onMessageChannelReady:Lo/getCardBackgroundColor;

    const-string v3, "ProgressiveDecoder"

    const-string v14, "%s, {uri: %s, firstEncodedBytes: %s, length: %d}"

    new-array v4, v4, [Ljava/lang/Object;

    .line 14330
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    const/16 v19, 0x0

    aput-object v20, v4, v19

    aput-object v1, v4, v15

    const/4 v1, 0x2

    .line 14332
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->onPostMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v4, v1

    const/4 v1, 0x3

    .line 14334
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->onMessageChannelReady()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 14327
    invoke-static {v3, v14, v4}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14335
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_f
    move-object/from16 v1, p0

    move-wide/from16 v3, v16

    .line 14342
    :try_start_8
    invoke-direct/range {v1 .. v10}, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback(Lo/convertToJsonObject;JLo/AFKeystoreWrapper;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 14351
    iget-object v2, v11, Lo/getOutOfStore$onPostMessage;->onTransact:Lo/unregisterConversionListener;

    iget-object v3, v11, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {v2, v3, v13, v0, v1}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 25493
    invoke-virtual {v11, v15}, Lo/getOutOfStore$onPostMessage;->onPostMessage(Z)V

    .line 26020
    iget-object v1, v11, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 25494
    invoke-interface {v1, v0}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v12, :cond_21

    .line 26425
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->close()V

    :cond_21
    return-void

    :catchall_1
    move-exception v0

    if-eqz v12, :cond_22

    .line 34425
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->close()V

    .line 14372
    :cond_22
    throw v0

    :cond_23
    :goto_10
    return-void
.end method

.method private onNavigationEvent(Lo/getCardBackgroundColor;ILo/AFKeystoreWrapper;)Lo/convertToJsonObject;
    .locals 2

    .line 382
    :try_start_0
    iget-object v0, p0, Lo/getOutOfStore$onPostMessage;->extraCallback:Lo/getOutOfStore;

    .line 6052
    iget-object v0, v0, Lo/getOutOfStore;->extraCallback:Lo/isEncrypt;

    .line 382
    iget-object v1, p0, Lo/getOutOfStore$onPostMessage;->onMessageChannelReady:Lo/AFDeepLinkManager;

    invoke-interface {v0, p1, p2, p3, v1}, Lo/isEncrypt;->onNavigationEvent(Lo/getCardBackgroundColor;ILo/AFKeystoreWrapper;Lo/AFDeepLinkManager;)Lo/convertToJsonObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 385
    throw p1
.end method

.method private declared-synchronized onPostMessage()Z
    .locals 1

    monitor-enter p0

    .line 460
    :try_start_0
    iget-boolean v0, p0, Lo/getOutOfStore$onPostMessage;->asInterface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract ICustomTabsCallback(Lo/getCardBackgroundColor;)I
.end method

.method protected abstract onMessageChannelReady()Lo/AFKeystoreWrapper;
.end method

.method protected final onMessageChannelReady(F)V
    .locals 1

    const v0, 0x3f7d70a4    # 0.99f

    mul-float p1, p1, v0

    .line 261
    invoke-super {p0, p1}, Lo/setAdditionalData;->onMessageChannelReady(F)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 4

    .line 143
    check-cast p1, Lo/getCardBackgroundColor;

    .line 11232
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 11238
    new-instance p1, Lcom/facebook/common/util/ExceptionWithNoStacktrace;

    const-string p2, "Encoded image is null."

    invoke-direct {p1, p2}, Lcom/facebook/common/util/ExceptionWithNoStacktrace;-><init>(Ljava/lang/String;)V

    .line 12493
    invoke-virtual {p0, v2}, Lo/getOutOfStore$onPostMessage;->onPostMessage(Z)V

    .line 13020
    iget-object p2, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 12494
    invoke-interface {p2, p1}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11253
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 11240
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onNavigationEvent()Z

    move-result v3

    if-nez v3, :cond_2

    .line 11241
    new-instance p1, Lcom/facebook/common/util/ExceptionWithNoStacktrace;

    const-string p2, "Encoded image is not valid."

    invoke-direct {p1, p2}, Lcom/facebook/common/util/ExceptionWithNoStacktrace;-><init>(Ljava/lang/String;)V

    .line 13493
    invoke-virtual {p0, v2}, Lo/getOutOfStore$onPostMessage;->onPostMessage(Z)V

    .line 14020
    iget-object p2, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 13494
    invoke-interface {p2, p1}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11253
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 11245
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lo/getOutOfStore$onPostMessage;->onNavigationEvent(Lo/getCardBackgroundColor;I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_3

    .line 11253
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :cond_3
    const/4 p1, 0x4

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 11249
    :try_start_3
    iget-object p1, p0, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {p1}, Lo/setPreinstallAttribution;->asBinder()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 11250
    :cond_5
    iget-object p1, p0, Lo/getOutOfStore$onPostMessage;->onPostMessage:Lo/startTracking;

    invoke-virtual {p1}, Lo/startTracking;->extraCallback()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11253
    :cond_6
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 11254
    throw p1
.end method

.method public final onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 2493
    invoke-virtual {p0, v0}, Lo/getOutOfStore$onPostMessage;->onPostMessage(Z)V

    .line 3020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 2494
    invoke-interface {v0, p1}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    const/4 v0, 0x1

    .line 3499
    invoke-virtual {p0, v0}, Lo/getOutOfStore$onPostMessage;->onPostMessage(Z)V

    .line 4020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 3500
    invoke-interface {v0}, Lo/waitForCustomerUserId;->ICustomTabsCallback()V

    return-void
.end method

.method protected onNavigationEvent(Lo/getCardBackgroundColor;I)Z
    .locals 1

    .line 276
    iget-object v0, p0, Lo/getOutOfStore$onPostMessage;->onPostMessage:Lo/startTracking;

    invoke-virtual {v0, p1, p2}, Lo/startTracking;->onNavigationEvent(Lo/getCardBackgroundColor;I)Z

    move-result p1

    return p1
.end method

.method final onPostMessage(Z)V
    .locals 1

    .line 469
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 470
    :try_start_0
    iget-boolean p1, p0, Lo/getOutOfStore$onPostMessage;->asInterface:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 11020
    :cond_0
    iget-object p1, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 473
    invoke-interface {p1, v0}, Lo/waitForCustomerUserId;->extraCallback(F)V

    const/4 p1, 0x1

    .line 474
    iput-boolean p1, p0, Lo/getOutOfStore$onPostMessage;->asInterface:Z

    .line 475
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    iget-object p1, p0, Lo/getOutOfStore$onPostMessage;->onPostMessage:Lo/startTracking;

    invoke-virtual {p1}, Lo/startTracking;->ICustomTabsCallback()V

    return-void

    .line 471
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 475
    monitor-exit p0

    throw p1
.end method
