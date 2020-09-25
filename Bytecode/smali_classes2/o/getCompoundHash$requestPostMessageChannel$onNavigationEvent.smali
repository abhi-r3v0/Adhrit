.class final Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash$requestPostMessageChannel;->extraCallback(Lo/reverseIteratorFrom$asInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/reverseIteratorFrom$asInterface;

.field private synthetic onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;


# direct methods
.method constructor <init>(Lo/getCompoundHash$requestPostMessageChannel;Lo/reverseIteratorFrom$asInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1323
    iput-object p1, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iput-object p2, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onMessageChannelReady:Lo/reverseIteratorFrom$asInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1328
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onMessageChannelReady:Lo/reverseIteratorFrom$asInterface;

    .line 1733
    iget-object v0, v0, Lo/reverseIteratorFrom$asInterface;->ICustomTabsCallback:Ljava/util/List;

    .line 1329
    iget-object v1, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onMessageChannelReady:Lo/reverseIteratorFrom$asInterface;

    .line 1744
    iget-object v1, v1, Lo/reverseIteratorFrom$asInterface;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    .line 1330
    iget-object v2, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v2, v2, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v2}, Lo/getCompoundHash;->mayLaunchUrl(Lo/getCompoundHash;)Lo/saveTrackedQueryKeys;

    move-result-object v2

    sget-object v3, Lo/saveTrackedQueryKeys$extraCallback;->ICustomTabsCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    const-string v7, "Resolved address: {0}, config={1}"

    invoke-virtual {v2, v3, v7, v4}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1332
    iget-object v2, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v2, v2, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v2}, Lo/getCompoundHash;->AudioAttributesImplBaseParcelizer(Lo/getCompoundHash;)Lo/getCompoundHash$updateVisuals;

    move-result-object v2

    .line 1334
    iget-object v3, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v3, v3, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v3}, Lo/getCompoundHash;->AudioAttributesImplBaseParcelizer(Lo/getCompoundHash;)Lo/getCompoundHash$updateVisuals;

    move-result-object v3

    sget-object v4, Lo/getCompoundHash$updateVisuals;->onPostMessage:Lo/getCompoundHash$updateVisuals;

    if-eq v3, v4, :cond_0

    .line 1335
    iget-object v3, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v3, v3, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v3}, Lo/getCompoundHash;->mayLaunchUrl(Lo/getCompoundHash;)Lo/saveTrackedQueryKeys;

    move-result-object v3

    sget-object v4, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v5

    const-string v8, "Address resolved: {0}"

    invoke-virtual {v3, v4, v8, v7}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1336
    iget-object v3, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v3, v3, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    sget-object v4, Lo/getCompoundHash$updateVisuals;->onPostMessage:Lo/getCompoundHash$updateVisuals;

    invoke-static {v3, v4}, Lo/getCompoundHash;->ICustomTabsCallback(Lo/getCompoundHash;Lo/getCompoundHash$updateVisuals;)Lo/getCompoundHash$updateVisuals;

    .line 1339
    :cond_0
    iget-object v3, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v3, v3, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lo/getCompoundHash;->ICustomTabsCallback(Lo/getCompoundHash;Lo/shortCircuitingInOrderTraversal;)Lo/shortCircuitingInOrderTraversal;

    .line 1340
    iget-object v3, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onMessageChannelReady:Lo/reverseIteratorFrom$asInterface;

    .line 1754
    iget-object v3, v3, Lo/reverseIteratorFrom$asInterface;->extraCallback:Lo/reverseIteratorFrom$onPostMessage;

    if-eqz v3, :cond_2

    .line 1344
    iget-object v7, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onMessageChannelReady:Lo/reverseIteratorFrom$asInterface;

    .line 2744
    iget-object v7, v7, Lo/reverseIteratorFrom$asInterface;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    .line 1345
    sget-object v8, Lo/getClientSdkVersion;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 3065
    iget-object v7, v7, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1345
    check-cast v7, Ljava/util/Map;

    .line 3890
    iget-object v8, v3, Lo/reverseIteratorFrom$onPostMessage;->extraCallback:Ljava/lang/Object;

    if-nez v8, :cond_1

    goto :goto_0

    .line 1348
    :cond_1
    new-instance v4, Lo/getCompoundHash$IPostMessageService$Stub;

    .line 4890
    iget-object v8, v3, Lo/reverseIteratorFrom$onPostMessage;->extraCallback:Ljava/lang/Object;

    .line 1349
    check-cast v8, Lo/onDisconnectCancel;

    invoke-direct {v4, v7, v8}, Lo/getCompoundHash$IPostMessageService$Stub;-><init>(Ljava/util/Map;Lo/onDisconnectCancel;)V

    .line 4898
    :goto_0
    iget-object v7, v3, Lo/reverseIteratorFrom$onPostMessage;->onMessageChannelReady:Lo/emptyMap;

    goto :goto_1

    :cond_2
    move-object v7, v4

    .line 1354
    :goto_1
    iget-object v8, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v8, v8, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v8}, Lo/getCompoundHash;->AudioAttributesImplApi21Parcelizer(Lo/getCompoundHash;)Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz v4, :cond_3

    .line 1356
    iget-object v3, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v3, v3, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v3}, Lo/getCompoundHash;->mayLaunchUrl(Lo/getCompoundHash;)Lo/saveTrackedQueryKeys;

    move-result-object v3

    sget-object v7, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const-string v8, "Service config from name resolver discarded by channel settings"

    invoke-virtual {v3, v7, v8}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V

    .line 1361
    :cond_3
    iget-object v3, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v3, v3, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v3}, Lo/getCompoundHash;->connect(Lo/getCompoundHash;)Lo/getCompoundHash$IPostMessageService$Stub;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lo/getCompoundHash;->ICustomTabsCallback$Stub()Lo/getCompoundHash$IPostMessageService$Stub;

    move-result-object v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v3, v3, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v3}, Lo/getCompoundHash;->connect(Lo/getCompoundHash;)Lo/getCompoundHash$IPostMessageService$Stub;

    move-result-object v3

    .line 5108
    :goto_2
    new-instance v7, Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    invoke-direct {v7, v1, v5}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;-><init>(Lo/serverCacheEstimatedSizeInBytes;B)V

    .line 1362
    sget-object v1, Lo/getClientSdkVersion;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 5244
    iget-object v8, v7, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;

    invoke-static {v8}, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback(Lo/serverCacheEstimatedSizeInBytes;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 5245
    new-instance v8, Ljava/util/IdentityHashMap;

    iget-object v9, v7, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;

    invoke-static {v9}, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback(Lo/serverCacheEstimatedSizeInBytes;)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    .line 5246
    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5247
    new-instance v9, Lo/serverCacheEstimatedSizeInBytes;

    invoke-direct {v9, v8, v5}, Lo/serverCacheEstimatedSizeInBytes;-><init>(Ljava/util/Map;B)V

    iput-object v9, v7, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;

    .line 5249
    :cond_5
    iget-object v8, v7, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    if-eqz v8, :cond_6

    .line 5250
    iget-object v8, v7, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    :cond_6
    invoke-virtual {v7}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v1

    goto/16 :goto_5

    :cond_7
    if-eqz v4, :cond_8

    move-object v3, v4

    goto :goto_3

    .line 1368
    :cond_8
    iget-object v8, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v8, v8, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v8}, Lo/getCompoundHash;->connect(Lo/getCompoundHash;)Lo/getCompoundHash$IPostMessageService$Stub;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 1369
    iget-object v3, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v3, v3, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v3}, Lo/getCompoundHash;->connect(Lo/getCompoundHash;)Lo/getCompoundHash$IPostMessageService$Stub;

    move-result-object v3

    .line 1370
    iget-object v7, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v7, v7, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v7}, Lo/getCompoundHash;->mayLaunchUrl(Lo/getCompoundHash;)Lo/saveTrackedQueryKeys;

    move-result-object v7

    sget-object v8, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const-string v9, "Received no service config, using default service config"

    invoke-virtual {v7, v8, v9}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    if-eqz v7, :cond_b

    .line 1374
    iget-object v7, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v7, v7, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v7}, Lo/getCompoundHash;->disconnect(Lo/getCompoundHash;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1376
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v0, v0, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->mayLaunchUrl(Lo/getCompoundHash;)Lo/saveTrackedQueryKeys;

    move-result-object v0

    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const-string v2, "Fallback to error due to invalid first service config without default config"

    invoke-virtual {v0, v1, v2}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    .line 5898
    iget-object v1, v3, Lo/reverseIteratorFrom$onPostMessage;->onMessageChannelReady:Lo/emptyMap;

    .line 1379
    invoke-virtual {v0, v1}, Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;->onMessageChannelReady(Lo/emptyMap;)V

    return-void

    .line 1382
    :cond_a
    iget-object v3, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v3, v3, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v3}, Lo/getCompoundHash;->newSession(Lo/getCompoundHash;)Lo/getCompoundHash$IPostMessageService$Stub;

    move-result-object v3

    goto :goto_3

    .line 1385
    :cond_b
    invoke-static {}, Lo/getCompoundHash;->ICustomTabsCallback$Stub()Lo/getCompoundHash$IPostMessageService$Stub;

    move-result-object v3

    .line 1387
    :goto_3
    iget-object v7, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v7, v7, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v7}, Lo/getCompoundHash;->newSession(Lo/getCompoundHash;)Lo/getCompoundHash$IPostMessageService$Stub;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 1388
    iget-object v7, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v7, v7, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v7}, Lo/getCompoundHash;->mayLaunchUrl(Lo/getCompoundHash;)Lo/saveTrackedQueryKeys;

    move-result-object v7

    sget-object v8, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    new-array v9, v6, [Ljava/lang/Object;

    .line 1391
    invoke-static {}, Lo/getCompoundHash;->ICustomTabsCallback$Stub()Lo/getCompoundHash$IPostMessageService$Stub;

    move-result-object v10

    if-ne v3, v10, :cond_c

    const-string v10, " to empty"

    goto :goto_4

    :cond_c
    const-string v10, ""

    :goto_4
    aput-object v10, v9, v5

    const-string v10, "Service config changed{0}"

    .line 1388
    invoke-virtual {v7, v8, v10, v9}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1392
    iget-object v7, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v7, v7, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v7, v3}, Lo/getCompoundHash;->ICustomTabsCallback(Lo/getCompoundHash;Lo/getCompoundHash$IPostMessageService$Stub;)Lo/getCompoundHash$IPostMessageService$Stub;

    .line 1399
    :cond_d
    :try_start_0
    iget-object v7, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v7, v7, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v7}, Lo/getCompoundHash;->getExtras(Lo/getCompoundHash;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v7

    .line 1401
    sget-object v8, Lo/getCompoundHash;->ICustomTabsCallback:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v11, v11, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    .line 1403
    invoke-virtual {v11}, Lo/getCompoundHash;->ICustomTabsCallback()Lo/buildAncestorWhereClause;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "] Unexpected exception from parsing service config"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1401
    invoke-virtual {v8, v9, v10, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1409
    :goto_5
    iget-object v7, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v7, v7, Lo/getCompoundHash$requestPostMessageChannel;->onMessageChannelReady:Lo/getCompoundHash$mayLaunchUrl;

    iget-object v8, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v8, v8, Lo/getCompoundHash$requestPostMessageChannel;->onNavigationEvent:Lo/getCompoundHash;

    invoke-static {v8}, Lo/getCompoundHash;->INotificationSideChannel(Lo/getCompoundHash;)Lo/getCompoundHash$mayLaunchUrl;

    move-result-object v8

    if-ne v7, v8, :cond_11

    if-eq v3, v4, :cond_e

    .line 6108
    new-instance v4, Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    invoke-direct {v4, v1, v5}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;-><init>(Lo/serverCacheEstimatedSizeInBytes;B)V

    .line 1412
    sget-object v1, Lo/getClientSdkVersion;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    iget-object v7, v3, Lo/getCompoundHash$IPostMessageService$Stub;->ICustomTabsCallback:Ljava/util/Map;

    .line 1413
    invoke-virtual {v4, v1, v7}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object v1

    .line 1416
    invoke-virtual {v1}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v1

    .line 1419
    :cond_e
    iget-object v4, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v4, v4, Lo/getCompoundHash$requestPostMessageChannel;->onMessageChannelReady:Lo/getCompoundHash$mayLaunchUrl;

    iget-object v4, v4, Lo/getCompoundHash$mayLaunchUrl;->onPostMessage:Lo/getRight$ICustomTabsCallback;

    .line 6200
    new-instance v7, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;

    invoke-direct {v7}, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;-><init>()V

    .line 6265
    iput-object v0, v7, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    .line 6276
    iput-object v1, v7, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    .line 1422
    iget-object v1, v3, Lo/getCompoundHash$IPostMessageService$Stub;->onPostMessage:Lo/onDisconnectCancel;

    .line 7146
    iget-object v1, v1, Lo/onDisconnectCancel;->onPostMessage:Ljava/lang/Object;

    .line 7286
    iput-object v1, v7, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 7294
    new-instance v1, Lo/getMinKey$onRelationshipValidationResult;

    iget-object v3, v7, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    iget-object v8, v7, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    iget-object v7, v7, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    invoke-direct {v1, v3, v8, v7, v5}, Lo/getMinKey$onRelationshipValidationResult;-><init>(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;Ljava/lang/Object;B)V

    .line 1419
    invoke-virtual {v4, v1}, Lo/getRight$ICustomTabsCallback;->onMessageChannelReady(Lo/getMinKey$onRelationshipValidationResult;)Lo/emptyMap;

    move-result-object v1

    .line 7516
    sget-object v3, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v4, v1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne v3, v4, :cond_f

    const/4 v5, 0x1

    :cond_f
    if-nez v5, :cond_11

    .line 1428
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lo/getCompoundHash$updateVisuals;->onPostMessage:Lo/getCompoundHash$updateVisuals;

    if-ne v2, v0, :cond_10

    .line 1432
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    .line 8312
    invoke-virtual {v0}, Lo/getCompoundHash$requestPostMessageChannel;->extraCallback()V

    return-void

    .line 1434
    :cond_10
    iget-object v0, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/getCompoundHash$requestPostMessageChannel$onNavigationEvent;->onPostMessage:Lo/getCompoundHash$requestPostMessageChannel;

    iget-object v3, v3, Lo/getCompoundHash$requestPostMessageChannel;->ICustomTabsCallback:Lo/reverseIteratorFrom;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " was used"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v1

    invoke-static {v0, v1}, Lo/getCompoundHash$requestPostMessageChannel;->extraCallback(Lo/getCompoundHash$requestPostMessageChannel;Lo/emptyMap;)V

    :cond_11
    return-void
.end method
