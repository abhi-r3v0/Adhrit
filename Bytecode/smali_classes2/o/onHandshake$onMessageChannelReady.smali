.class final Lo/onHandshake$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/onHandshake;

.field private final onPostMessage:Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;


# direct methods
.method constructor <init>(Lo/onHandshake;Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 219
    check-cast p2, Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

    iput-object p2, p0, Lo/onHandshake$onMessageChannelReady;->onPostMessage:Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "savedListener"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onMessageChannelReady()V
    .locals 7

    const-string v0, "Unable to resolve host "

    .line 242
    iget-object v1, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    .line 243
    invoke-static {v1}, Lo/onHandshake;->onPostMessage(Lo/onHandshake;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    invoke-static {v2}, Lo/onHandshake;->extraCallback(Lo/onHandshake;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 246
    :try_start_0
    iget-object v2, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    iget-object v2, v2, Lo/onHandshake;->ICustomTabsCallback:Lo/addToArray;

    invoke-interface {v2, v1}, Lo/addToArray;->onPostMessage(Ljava/net/SocketAddress;)Lo/removeFromArray;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 253
    invoke-static {}, Lo/onHandshake;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {}, Lo/onHandshake;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Using proxy address "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 256
    :cond_0
    new-instance v0, Lo/splitNodeRunLength;

    invoke-direct {v0, v1}, Lo/splitNodeRunLength;-><init>(Ljava/net/SocketAddress;)V

    .line 2712
    new-instance v1, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;

    invoke-direct {v1}, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;-><init>()V

    .line 259
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2809
    iput-object v0, v1, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    .line 259
    sget-object v0, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    .line 2820
    iput-object v0, v1, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    .line 2841
    new-instance v0, Lo/reverseIteratorFrom$asInterface;

    iget-object v2, v1, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    iget-object v3, v1, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    iget-object v1, v1, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->onPostMessage:Lo/reverseIteratorFrom$onPostMessage;

    invoke-direct {v0, v2, v3, v1}, Lo/reverseIteratorFrom$asInterface;-><init>(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;Lo/reverseIteratorFrom$onPostMessage;)V

    .line 262
    iget-object v1, p0, Lo/onHandshake$onMessageChannelReady;->onPostMessage:Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

    invoke-virtual {v1, v0}, Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;->extraCallback(Lo/reverseIteratorFrom$asInterface;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 269
    :try_start_1
    sget-boolean v2, Lo/onHandshake;->extraCallback:Z

    sget-boolean v3, Lo/onHandshake;->onMessageChannelReady:Z

    iget-object v4, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    invoke-static {v4}, Lo/onHandshake;->onPostMessage(Lo/onHandshake;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lo/onHandshake;->ICustomTabsCallback(ZZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    iget-object v1, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    invoke-static {v1}, Lo/onHandshake;->ICustomTabsCallback(Lo/onHandshake;)Lo/onHandshake$onPostMessage;

    move-result-object v1

    .line 272
    :cond_2
    iget-object v2, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    .line 273
    invoke-static {v2}, Lo/onHandshake;->onRelationshipValidationResult(Lo/onHandshake;)Lo/onHandshake$extraCallback;

    move-result-object v2

    iget-object v3, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    .line 275
    invoke-static {v3}, Lo/onHandshake;->onTransact(Lo/onHandshake;)Z

    move-result v3

    sget-boolean v4, Lo/onHandshake;->onPostMessage:Z

    iget-object v5, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    .line 277
    invoke-static {v5}, Lo/onHandshake;->onPostMessage(Lo/onHandshake;)Ljava/lang/String;

    move-result-object v5

    .line 272
    invoke-static {v2, v1, v3, v4, v5}, Lo/onHandshake;->onNavigationEvent(Lo/onHandshake$extraCallback;Lo/onHandshake$onPostMessage;ZZLjava/lang/String;)Lo/onHandshake$onNavigationEvent;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    invoke-static {v2}, Lo/onHandshake;->onMessageChannelReady(Lo/onHandshake;)Lo/unionWith;

    move-result-object v2

    new-instance v3, Lo/onHandshake$onMessageChannelReady$2;

    invoke-direct {v3, p0, v1}, Lo/onHandshake$onMessageChannelReady$2;-><init>(Lo/onHandshake$onMessageChannelReady;Lo/onHandshake$onNavigationEvent;)V

    invoke-virtual {v2, v3}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    .line 288
    invoke-static {}, Lo/onHandshake;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    invoke-static {}, Lo/onHandshake;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found DNS results "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    invoke-static {v4}, Lo/onHandshake;->onPostMessage(Lo/onHandshake;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v2, v1, Lo/onHandshake$onNavigationEvent;->onPostMessage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 299
    new-instance v4, Lo/splitNodeRunLength;

    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    invoke-static {v6}, Lo/onHandshake;->extraCallback(Lo/onHandshake;)I

    move-result v6

    invoke-direct {v5, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v4, v5}, Lo/splitNodeRunLength;-><init>(Ljava/net/SocketAddress;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3712
    :cond_4
    new-instance v2, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;

    invoke-direct {v2}, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;-><init>()V

    .line 3809
    iput-object v0, v2, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    .line 303
    invoke-static {}, Lo/serverCacheEstimatedSizeInBytes;->onMessageChannelReady()Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    move-result-object v0

    .line 304
    iget-object v3, v1, Lo/onHandshake$onNavigationEvent;->extraCallback:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 305
    sget-object v3, Lo/getClientSdkVersion;->extraCallback:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    iget-object v4, v1, Lo/onHandshake$onNavigationEvent;->extraCallback:Ljava/util/List;

    invoke-virtual {v0, v3, v4}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    .line 307
    :cond_5
    iget-object v3, v1, Lo/onHandshake$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 308
    iget-object v1, v1, Lo/onHandshake$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    iget-object v3, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    .line 309
    invoke-static {v3}, Lo/onHandshake;->asInterface(Lo/onHandshake;)Ljava/util/Random;

    move-result-object v3

    invoke-static {}, Lo/onHandshake;->onPostMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lo/onHandshake;->onPostMessage(Ljava/util/List;Ljava/util/Random;Ljava/lang/String;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3898
    iget-object v3, v1, Lo/reverseIteratorFrom$onPostMessage;->onMessageChannelReady:Lo/emptyMap;

    if-eqz v3, :cond_6

    .line 312
    iget-object v0, p0, Lo/onHandshake$onMessageChannelReady;->onPostMessage:Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

    .line 4898
    iget-object v1, v1, Lo/reverseIteratorFrom$onPostMessage;->onMessageChannelReady:Lo/emptyMap;

    .line 312
    invoke-virtual {v0, v1}, Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;->onMessageChannelReady(Lo/emptyMap;)V

    return-void

    .line 5890
    :cond_6
    iget-object v1, v1, Lo/reverseIteratorFrom$onPostMessage;->extraCallback:Ljava/lang/Object;

    .line 317
    check-cast v1, Ljava/util/Map;

    .line 318
    iget-object v3, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    .line 319
    invoke-static {v3}, Lo/onHandshake;->warmup(Lo/onHandshake;)Lo/reverseIteratorFrom$onRelationshipValidationResult;

    move-result-object v3

    invoke-virtual {v3, v1}, Lo/reverseIteratorFrom$onRelationshipValidationResult;->onPostMessage(Ljava/util/Map;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object v3

    .line 6831
    iput-object v3, v2, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->onPostMessage:Lo/reverseIteratorFrom$onPostMessage;

    .line 321
    sget-object v3, Lo/getClientSdkVersion;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    .line 322
    invoke-virtual {v0, v3, v1}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    goto :goto_1

    .line 325
    :cond_7
    invoke-static {}, Lo/onHandshake;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    invoke-static {v6}, Lo/onHandshake;->onPostMessage(Lo/onHandshake;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "No TXT records found for {0}"

    invoke-virtual {v1, v3, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    :cond_8
    :goto_1
    iget-object v1, p0, Lo/onHandshake$onMessageChannelReady;->onPostMessage:Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

    invoke-virtual {v0}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;

    move-result-object v0

    .line 7820
    iput-object v0, v2, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    .line 7841
    new-instance v0, Lo/reverseIteratorFrom$asInterface;

    iget-object v3, v2, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    iget-object v4, v2, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    iget-object v2, v2, Lo/reverseIteratorFrom$asInterface$ICustomTabsCallback;->onPostMessage:Lo/reverseIteratorFrom$onPostMessage;

    invoke-direct {v0, v3, v4, v2}, Lo/reverseIteratorFrom$asInterface;-><init>(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;Lo/reverseIteratorFrom$onPostMessage;)V

    .line 327
    invoke-virtual {v1, v0}, Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;->extraCallback(Lo/reverseIteratorFrom$asInterface;)V

    return-void

    :catch_0
    move-exception v1

    .line 292
    iget-object v2, p0, Lo/onHandshake$onMessageChannelReady;->onPostMessage:Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

    sget-object v3, Lo/emptyMap;->onTransact:Lo/emptyMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    .line 293
    invoke-static {v0}, Lo/onHandshake;->onPostMessage(Lo/onHandshake;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object v0

    .line 292
    invoke-virtual {v2, v0}, Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;->onMessageChannelReady(Lo/emptyMap;)V

    return-void

    :catch_1
    move-exception v1

    .line 248
    iget-object v2, p0, Lo/onHandshake$onMessageChannelReady;->onPostMessage:Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

    sget-object v3, Lo/emptyMap;->onTransact:Lo/emptyMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    .line 249
    invoke-static {v0}, Lo/onHandshake;->onPostMessage(Lo/onHandshake;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object v0

    .line 248
    invoke-virtual {v2, v0}, Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;->onMessageChannelReady(Lo/emptyMap;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 224
    invoke-static {}, Lo/onHandshake;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lo/onHandshake;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting DNS resolution of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    invoke-static {v2}, Lo/onHandshake;->onPostMessage(Lo/onHandshake;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 228
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v0, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    invoke-static {v0}, Lo/onHandshake;->onMessageChannelReady(Lo/onHandshake;)Lo/unionWith;

    move-result-object v0

    new-instance v1, Lo/onHandshake$onMessageChannelReady$4;

    invoke-direct {v1, p0}, Lo/onHandshake$onMessageChannelReady$4;-><init>(Lo/onHandshake$onMessageChannelReady;)V

    invoke-virtual {v0, v1}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/onHandshake$onMessageChannelReady;->onMessageChannelReady:Lo/onHandshake;

    invoke-static {v1}, Lo/onHandshake;->onMessageChannelReady(Lo/onHandshake;)Lo/unionWith;

    move-result-object v1

    new-instance v2, Lo/onHandshake$onMessageChannelReady$4;

    invoke-direct {v2, p0}, Lo/onHandshake$onMessageChannelReady$4;-><init>(Lo/onHandshake$onMessageChannelReady;)V

    invoke-virtual {v1, v2}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    throw v0
.end method
