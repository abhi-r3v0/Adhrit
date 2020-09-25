.class public interface abstract Lo/waitForAutomaticDataCollectionEnabled$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/waitForAutomaticDataCollectionEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onPostMessage"
.end annotation


# virtual methods
.method public abstract onCacheHost(Ljava/lang/String;)V
.end method

.method public abstract onDataMessage(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDisconnect(Lo/waitForAutomaticDataCollectionEnabled$onMessageChannelReady;)V
.end method

.method public abstract onKill(Ljava/lang/String;)V
.end method

.method public abstract onReady(JLjava/lang/String;)V
.end method
