.class public interface abstract Lcom/google/android/exoplayer2/audio/AudioSink;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$onPostMessage;
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()V
.end method

.method public abstract ICustomTabsCallback(II)Z
.end method

.method public abstract ICustomTabsCallback$Stub()V
.end method

.method public abstract asBinder()V
.end method

.method public abstract asInterface()V
.end method

.method public abstract extraCallback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract extraCallback(F)V
.end method

.method public abstract extraCallback(IIII[III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Lo/r;)Lo/r;
.end method

.method public abstract onMessageChannelReady()V
.end method

.method public abstract onMessageChannelReady(Lcom/google/android/exoplayer2/audio/AudioSink$onPostMessage;)V
.end method

.method public abstract onNavigationEvent(Z)J
.end method

.method public abstract onNavigationEvent(Lo/OnSupport;)V
.end method

.method public abstract onNavigationEvent()Z
.end method

.method public abstract onNavigationEvent(Ljava/nio/ByteBuffer;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(I)V
.end method

.method public abstract onPostMessage(Lo/u$b;)V
.end method

.method public abstract onPostMessage()Z
.end method

.method public abstract onRelationshipValidationResult()Lo/r;
.end method

.method public abstract onTransact()V
.end method
