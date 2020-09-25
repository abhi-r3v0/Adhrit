.class public interface abstract Lo/toSessionJson;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toFeaturesJson;


# virtual methods
.method public abstract onNavigationEvent(Lo/toFeaturesJson$onMessageChannelReady;)V
.end method

.method public abstract onPostMessage(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Z)V
.end method
