.class public interface abstract Lcom/facebook/common/memory/PooledByteBuffer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/memory/PooledByteBuffer$ClosedException;
    }
.end annotation


# virtual methods
.method public abstract extraCallback()Ljava/nio/ByteBuffer;
.end method

.method public abstract onMessageChannelReady(I)B
.end method

.method public abstract onMessageChannelReady(I[BII)I
.end method

.method public abstract onMessageChannelReady()Z
.end method

.method public abstract onNavigationEvent()I
.end method

.method public abstract onPostMessage()J
.end method
