.class final Lo/setConsumeAFDeepLinks$onPostMessage$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/startTracking$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setConsumeAFDeepLinks$onPostMessage;-><init>(Lo/setConsumeAFDeepLinks;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;ZLo/handleDeepLinkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/setConsumeAFDeepLinks$onPostMessage;


# direct methods
.method constructor <init>(Lo/setConsumeAFDeepLinks$onPostMessage;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lo/setConsumeAFDeepLinks$onPostMessage$3;->extraCallback:Lo/setConsumeAFDeepLinks$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/getCardBackgroundColor;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string/jumbo v8, "x"

    .line 113
    iget-object v9, v1, Lo/setConsumeAFDeepLinks$onPostMessage$3;->extraCallback:Lo/setConsumeAFDeepLinks$onPostMessage;

    .line 1082
    iget-object v2, v9, Lo/setConsumeAFDeepLinks$onPostMessage;->onPostMessage:Lo/handleDeepLinkCallback;

    .line 1326
    iget v3, v0, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v3, :cond_0

    iget v3, v0, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v3, :cond_1

    .line 1327
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 1209
    :cond_1
    iget-object v3, v0, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 118
    iget-object v4, v1, Lo/setConsumeAFDeepLinks$onPostMessage$3;->extraCallback:Lo/setConsumeAFDeepLinks$onPostMessage;

    .line 2082
    iget-boolean v4, v4, Lo/setConsumeAFDeepLinks$onPostMessage;->onMessageChannelReady:Z

    .line 117
    invoke-interface {v2, v3, v4}, Lo/handleDeepLinkCallback;->createImageTranscoder(Lo/setProgress;Z)Lo/AppsFlyerLibCore;

    move-result-object v2

    const/4 v10, 0x0

    if-eqz v2, :cond_e

    .line 116
    move-object v11, v2

    check-cast v11, Lo/AppsFlyerLibCore;

    .line 3217
    iget-object v2, v9, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {v2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v2

    iget-object v3, v9, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    const-string v12, "ResizeAndRotateProducer"

    invoke-interface {v2, v3, v12}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V

    .line 3218
    iget-object v2, v9, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    invoke-interface {v2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v13

    .line 3219
    iget-object v2, v9, Lo/setConsumeAFDeepLinks$onPostMessage;->asBinder:Lo/setConsumeAFDeepLinks;

    .line 4046
    iget-object v2, v2, Lo/setConsumeAFDeepLinks;->onMessageChannelReady:Lo/CustomVersionedParcelable;

    .line 3219
    invoke-interface {v2}, Lo/CustomVersionedParcelable;->extraCallback()Lo/setRootAlpha;

    move-result-object v14

    const/4 v15, 0x1

    .line 4170
    :try_start_0
    iget-object v5, v13, Lo/getHostPrefix;->onRelationshipValidationResult:Lo/ɩ;

    .line 5166
    iget-object v6, v13, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    const/16 v2, 0x55

    .line 3230
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, v11

    move-object/from16 v3, p1

    move-object v4, v14

    .line 3224
    invoke-interface/range {v2 .. v7}, Lo/AppsFlyerLibCore;->onPostMessage(Lo/getCardBackgroundColor;Ljava/io/OutputStream;Lo/ɩ;Lo/ǃ;Ljava/lang/Integer;)Lo/performGetLayoutInflater$onNavigationEvent;

    move-result-object v2

    .line 6023
    iget v3, v2, Lo/performGetLayoutInflater$onNavigationEvent;->onNavigationEvent:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_b

    .line 6166
    iget-object v3, v13, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    .line 3241
    invoke-interface {v11}, Lo/AppsFlyerLibCore;->extraCallback()Ljava/lang/String;

    move-result-object v4

    .line 6281
    iget-object v5, v9, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 6282
    invoke-interface {v5}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v5

    iget-object v6, v9, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 6283
    invoke-interface {v5, v6, v12}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_1

    .line 6286
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 7326
    iget v6, v0, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v6, :cond_3

    iget v6, v0, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v6, :cond_4

    .line 7327
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 7230
    :cond_4
    iget v6, v0, Lo/getCardBackgroundColor;->asInterface:I

    .line 6286
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8326
    iget v6, v0, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v6, :cond_5

    iget v6, v0, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v6, :cond_6

    .line 8327
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 8236
    :cond_6
    iget v6, v0, Lo/getCardBackgroundColor;->onTransact:I

    .line 6286
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_7

    .line 6290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v3, Lo/ǃ;->extraCallback:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lo/ǃ;->onPostMessage:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_7
    const-string v3, "Unspecified"

    .line 6295
    :goto_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "Image format"

    .line 9326
    iget v8, v0, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v8, :cond_8

    iget v8, v0, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v8, :cond_9

    .line 9327
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 9209
    :cond_9
    iget-object v0, v0, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 6296
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Original size"

    .line 6297
    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Requested size"

    .line 6298
    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "queueTime"

    .line 6299
    iget-object v3, v9, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback$Stub:Lo/startTracking;

    invoke-virtual {v3}, Lo/startTracking;->onMessageChannelReady()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Transcoder id"

    .line 6300
    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Transcoding result"

    .line 6301
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10088
    new-instance v0, Lo/getLocalMatrix;

    invoke-direct {v0, v6}, Lo/getLocalMatrix;-><init>(Ljava/util/Map;)V

    move-object v10, v0

    .line 3244
    :goto_1
    invoke-virtual {v14}, Lo/setRootAlpha;->onPostMessage()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/io/Closeable;)Lo/getRootAlpha;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3246
    :try_start_1
    new-instance v4, Lo/getCardBackgroundColor;

    invoke-direct {v4, v3}, Lo/getCardBackgroundColor;-><init>(Lo/getRootAlpha;)V

    .line 3247
    sget-object v0, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    .line 10165
    iput-object v0, v4, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 3249
    :try_start_2
    invoke-virtual {v4}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 3250
    iget-object v0, v9, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 3251
    invoke-interface {v0}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v0

    iget-object v5, v9, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 3252
    invoke-interface {v0, v5, v12, v10}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 11023
    iget v0, v2, Lo/performGetLayoutInflater$onNavigationEvent;->onNavigationEvent:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v0, v15, :cond_a

    or-int/lit8 v0, p2, 0x10

    move v2, v0

    goto :goto_2

    :cond_a
    move/from16 v2, p2

    .line 12020
    :goto_2
    :try_start_3
    iget-object v0, v9, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 3256
    invoke-interface {v0, v4, v2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12425
    :try_start_4
    invoke-virtual {v4}, Lo/getCardBackgroundColor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3261
    :try_start_5
    invoke-static {v3}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 3272
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v2, p2

    .line 13425
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Lo/getCardBackgroundColor;->close()V

    .line 3258
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move/from16 v2, p2

    .line 3261
    :goto_4
    :try_start_7
    invoke-static {v3}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catch_0
    move-exception v0

    goto :goto_5

    .line 3233
    :cond_b
    :try_start_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error while transcoding the image"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move/from16 v2, p2

    .line 3264
    :goto_5
    :try_start_9
    iget-object v3, v9, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 3265
    invoke-interface {v3}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v3

    iget-object v4, v9, Lo/setConsumeAFDeepLinks$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 3266
    invoke-interface {v3, v4, v12, v0, v10}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_c

    goto :goto_6

    :cond_c
    const/4 v15, 0x0

    :goto_6
    if-eqz v15, :cond_d

    .line 15020
    iget-object v2, v9, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 3268
    invoke-interface {v2, v0}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 3272
    :cond_d
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    return-void

    :goto_7
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    throw v0

    .line 2215
    :cond_e
    throw v10
.end method
