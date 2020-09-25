.class public final Lo/getRight$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final extraCallback:Lo/getMinKey$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/getRight;

.field private onNavigationEvent:Lo/iteratorFrom;

.field onPostMessage:Lo/getMinKey;


# direct methods
.method constructor <init>(Lo/getRight;Lo/getMinKey$onMessageChannelReady;)V
    .locals 2

    .line 91
    iput-object p1, p0, Lo/getRight$ICustomTabsCallback;->onMessageChannelReady:Lo/getRight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lo/getRight$ICustomTabsCallback;->extraCallback:Lo/getMinKey$onMessageChannelReady;

    .line 1050
    iget-object v0, p1, Lo/getRight;->onNavigationEvent:Lo/inOrderTraversal;

    .line 2050
    iget-object v1, p1, Lo/getRight;->ICustomTabsCallback:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Lo/inOrderTraversal;->onNavigationEvent(Ljava/lang/String;)Lo/iteratorFrom;

    move-result-object v0

    iput-object v0, p0, Lo/getRight$ICustomTabsCallback;->onNavigationEvent:Lo/iteratorFrom;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p2}, Lo/getMinKey$onNavigationEvent;->extraCallback(Lo/getMinKey$onMessageChannelReady;)Lo/getMinKey;

    move-result-object p1

    iput-object p1, p0, Lo/getRight$ICustomTabsCallback;->onPostMessage:Lo/getMinKey;

    return-void

    .line 95
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find policy \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3050
    iget-object p1, p1, Lo/getRight;->ICustomTabsCallback:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method final onMessageChannelReady(Lo/getMinKey$onRelationshipValidationResult;)Lo/emptyMap;
    .locals 9

    .line 3221
    iget-object v0, p1, Lo/getMinKey$onRelationshipValidationResult;->onNavigationEvent:Ljava/util/List;

    .line 3232
    iget-object v1, p1, Lo/getMinKey$onRelationshipValidationResult;->extraCallback:Lo/serverCacheEstimatedSizeInBytes;

    .line 115
    sget-object v2, Lo/getMinKey;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 4065
    iget-object v3, v1, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 5243
    iget-object v2, p1, Lo/getMinKey$onRelationshipValidationResult;->onMessageChannelReady:Ljava/lang/Object;

    .line 121
    check-cast v2, Lo/getRight$onRelationshipValidationResult;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 126
    :try_start_0
    iget-object v4, p0, Lo/getRight$ICustomTabsCallback;->onMessageChannelReady:Lo/getRight;

    iget-object v5, p0, Lo/getRight$ICustomTabsCallback;->onMessageChannelReady:Lo/getRight;

    .line 6050
    iget-object v5, v5, Lo/getRight;->ICustomTabsCallback:Ljava/lang/String;

    const-string v6, "using default policy"

    .line 7212
    iget-object v4, v4, Lo/getRight;->onNavigationEvent:Lo/inOrderTraversal;

    invoke-virtual {v4, v5}, Lo/inOrderTraversal;->onNavigationEvent(Ljava/lang/String;)Lo/iteratorFrom;

    move-result-object v4
    :try_end_0
    .catch Lo/getRight$extraCallback; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 135
    new-instance v5, Lo/getRight$onRelationshipValidationResult;

    invoke-direct {v5, v4, v2, v2}, Lo/getRight$onRelationshipValidationResult;-><init>(Lo/iteratorFrom;Ljava/util/Map;Ljava/lang/Object;)V

    move-object v2, v5

    goto :goto_0

    .line 7214
    :cond_0
    :try_start_1
    new-instance p1, Lo/getRight$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to load \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but it\'s unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Lo/getRight$extraCallback;-><init>(Ljava/lang/String;B)V

    throw p1
    :try_end_1
    .catch Lo/getRight$extraCallback; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 128
    sget-object v0, Lo/emptyMap;->asBinder:Lo/emptyMap;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lo/getRight$ICustomTabsCallback;->extraCallback:Lo/getMinKey$onMessageChannelReady;

    sget-object v1, Lo/setTransactionSuccessful;->onNavigationEvent:Lo/setTransactionSuccessful;

    new-instance v4, Lo/getRight$onNavigationEvent;

    invoke-direct {v4, p1}, Lo/getRight$onNavigationEvent;-><init>(Lo/emptyMap;)V

    invoke-virtual {v0, v1, v4}, Lo/getMinKey$onMessageChannelReady;->onNavigationEvent(Lo/setTransactionSuccessful;Lo/getMinKey$ICustomTabsCallback$Stub;)V

    .line 130
    iget-object p1, p0, Lo/getRight$ICustomTabsCallback;->onPostMessage:Lo/getMinKey;

    invoke-virtual {p1}, Lo/getMinKey;->extraCallback()V

    .line 131
    iput-object v2, p0, Lo/getRight$ICustomTabsCallback;->onNavigationEvent:Lo/iteratorFrom;

    .line 132
    new-instance p1, Lo/getRight$onMessageChannelReady;

    invoke-direct {p1, v3}, Lo/getRight$onMessageChannelReady;-><init>(B)V

    iput-object p1, p0, Lo/getRight$ICustomTabsCallback;->onPostMessage:Lo/getMinKey;

    .line 133
    sget-object p1, Lo/emptyMap;->onMessageChannelReady:Lo/emptyMap;

    return-object p1

    .line 139
    :cond_1
    :goto_0
    iget-object v4, p0, Lo/getRight$ICustomTabsCallback;->onNavigationEvent:Lo/iteratorFrom;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v4, v2, Lo/getRight$onRelationshipValidationResult;->onMessageChannelReady:Lo/iteratorFrom;

    .line 140
    invoke-virtual {v4}, Lo/iteratorFrom;->extraCallback()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lo/getRight$ICustomTabsCallback;->onNavigationEvent:Lo/iteratorFrom;

    invoke-virtual {v6}, Lo/iteratorFrom;->extraCallback()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 141
    :cond_2
    iget-object v4, p0, Lo/getRight$ICustomTabsCallback;->extraCallback:Lo/getMinKey$onMessageChannelReady;

    sget-object v6, Lo/setTransactionSuccessful;->extraCallback:Lo/setTransactionSuccessful;

    new-instance v7, Lo/getRight$onPostMessage;

    invoke-direct {v7, v3}, Lo/getRight$onPostMessage;-><init>(B)V

    invoke-virtual {v4, v6, v7}, Lo/getMinKey$onMessageChannelReady;->onNavigationEvent(Lo/setTransactionSuccessful;Lo/getMinKey$ICustomTabsCallback$Stub;)V

    .line 142
    iget-object v4, p0, Lo/getRight$ICustomTabsCallback;->onPostMessage:Lo/getMinKey;

    invoke-virtual {v4}, Lo/getMinKey;->extraCallback()V

    .line 143
    iget-object v4, v2, Lo/getRight$onRelationshipValidationResult;->onMessageChannelReady:Lo/iteratorFrom;

    iput-object v4, p0, Lo/getRight$ICustomTabsCallback;->onNavigationEvent:Lo/iteratorFrom;

    .line 144
    iget-object v6, p0, Lo/getRight$ICustomTabsCallback;->onPostMessage:Lo/getMinKey;

    .line 145
    iget-object v7, p0, Lo/getRight$ICustomTabsCallback;->extraCallback:Lo/getMinKey$onMessageChannelReady;

    invoke-virtual {v4, v7}, Lo/getMinKey$onNavigationEvent;->extraCallback(Lo/getMinKey$onMessageChannelReady;)Lo/getMinKey;

    move-result-object v4

    iput-object v4, p0, Lo/getRight$ICustomTabsCallback;->onPostMessage:Lo/getMinKey;

    .line 146
    iget-object v4, p0, Lo/getRight$ICustomTabsCallback;->extraCallback:Lo/getMinKey$onMessageChannelReady;

    invoke-virtual {v4}, Lo/getMinKey$onMessageChannelReady;->extraCallback()Lo/saveTrackedQueryKeys;

    move-result-object v4

    sget-object v7, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 148
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v3

    iget-object v6, p0, Lo/getRight$ICustomTabsCallback;->onPostMessage:Lo/getMinKey;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    const-string v6, "Load balancer changed from {0} to {1}"

    .line 146
    invoke-virtual {v4, v7, v6, v8}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_3
    iget-object v4, v2, Lo/getRight$onRelationshipValidationResult;->extraCallback:Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 152
    iget-object v6, p0, Lo/getRight$ICustomTabsCallback;->extraCallback:Lo/getMinKey$onMessageChannelReady;

    invoke-virtual {v6}, Lo/getMinKey$onMessageChannelReady;->extraCallback()Lo/saveTrackedQueryKeys;

    move-result-object v6

    sget-object v7, Lo/saveTrackedQueryKeys$extraCallback;->ICustomTabsCallback:Lo/saveTrackedQueryKeys$extraCallback;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, v2, Lo/getRight$onRelationshipValidationResult;->extraCallback:Ljava/lang/Object;

    aput-object v8, v5, v3

    const-string v8, "Load-balancing config: {0}"

    invoke-virtual {v6, v7, v8, v5}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8108
    new-instance v5, Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    invoke-direct {v5, v1, v3}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;-><init>(Lo/serverCacheEstimatedSizeInBytes;B)V

    .line 155
    sget-object v1, Lo/getMinKey;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    iget-object v2, v2, Lo/getRight$onRelationshipValidationResult;->onPostMessage:Ljava/util/Map;

    .line 156
    invoke-virtual {v5, v1, v2}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v1

    .line 8196
    :cond_4
    iget-object v2, p0, Lo/getRight$ICustomTabsCallback;->onPostMessage:Lo/getMinKey;

    .line 8221
    iget-object v5, p1, Lo/getMinKey$onRelationshipValidationResult;->onNavigationEvent:Ljava/util/List;

    .line 161
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 163
    sget-object p1, Lo/emptyMap;->onTransact:Lo/emptyMap;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NameResolver returned no usable address. addrs="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", attrs="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    return-object p1

    .line 9200
    :cond_5
    new-instance v0, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;-><init>()V

    .line 9221
    iget-object p1, p1, Lo/getMinKey$onRelationshipValidationResult;->onNavigationEvent:Ljava/util/List;

    .line 9265
    iput-object p1, v0, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    .line 9276
    iput-object v1, v0, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    .line 9286
    iput-object v4, v0, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 9294
    new-instance p1, Lo/getMinKey$onRelationshipValidationResult;

    iget-object v1, v0, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    iget-object v4, v0, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    iget-object v0, v0, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    invoke-direct {p1, v1, v4, v0, v3}, Lo/getMinKey$onRelationshipValidationResult;-><init>(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;Ljava/lang/Object;B)V

    .line 166
    invoke-virtual {v2, p1}, Lo/getMinKey;->onMessageChannelReady(Lo/getMinKey$onRelationshipValidationResult;)V

    .line 172
    sget-object p1, Lo/emptyMap;->onMessageChannelReady:Lo/emptyMap;

    return-object p1

    .line 116
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected ATTR_LOAD_BALANCING_CONFIG from upstream: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lo/getMinKey;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 5065
    iget-object v1, v1, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
