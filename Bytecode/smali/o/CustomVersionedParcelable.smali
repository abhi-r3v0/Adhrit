.class public interface abstract Lo/CustomVersionedParcelable;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract ICustomTabsCallback(I)Lo/setRootAlpha;
.end method

.method public abstract extraCallback(Ljava/io/InputStream;)Lcom/facebook/common/memory/PooledByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback()Lo/setRootAlpha;
.end method

.method public abstract onPostMessage(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage([B)Lcom/facebook/common/memory/PooledByteBuffer;
.end method
