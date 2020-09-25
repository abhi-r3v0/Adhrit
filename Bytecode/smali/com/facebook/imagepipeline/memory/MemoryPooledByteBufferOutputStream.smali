.class public final Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;
.super Lo/setRootAlpha;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getVersionName;

.field public onMessageChannelReady:Lo/getRootAlpha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRootAlpha<",
            "Lo/AppsFlyer2dXConversionCallback;",
            ">;"
        }
    .end annotation
.end field

.field public onPostMessage:I


# direct methods
.method public constructor <init>(Lo/getVersionName;)V
    .locals 2

    .line 1042
    iget-object v0, p1, Lo/getVersionName;->onPostMessage:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;-><init>(Lo/getVersionName;I)V

    return-void
.end method

.method public constructor <init>(Lo/getVersionName;I)V
    .locals 2

    .line 46
    invoke-direct {p0}, Lo/setRootAlpha;-><init>()V

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 49
    check-cast p1, Lo/getVersionName;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->ICustomTabsCallback:Lo/getVersionName;

    .line 50
    iput v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onPostMessage:I

    .line 51
    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->ICustomTabsCallback:Lo/getVersionName;

    invoke-static {p1, p2}, Lo/getRootAlpha;->extraCallback(Ljava/lang/Object;Lo/setPageMargin;)Lo/getRootAlpha;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1215
    throw p1

    .line 1111
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onPostMessage:I

    .line 125
    invoke-super {p0}, Lo/setRootAlpha;->close()V

    return-void
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onPostMessage:I

    return v0
.end method

.method public final synthetic onPostMessage()Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 3

    .line 4156
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4064
    new-instance v0, Lo/getVersionCode;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    iget v2, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onPostMessage:I

    invoke-direct {v0, v1, v2}, Lo/getVersionCode;-><init>(Lo/getRootAlpha;I)V

    return-object v0

    .line 4157
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;-><init>()V

    throw v0
.end method

.method public final write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 88
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    .line 104
    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 2156
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onPostMessage:I

    add-int/2addr v0, p3

    .line 3156
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-static {v1}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3140
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-virtual {v1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AppsFlyer2dXConversionCallback;

    invoke-interface {v1}, Lo/AppsFlyer2dXConversionCallback;->ICustomTabsCallback()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 3143
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->ICustomTabsCallback:Lo/getVersionName;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AppsFlyer2dXConversionCallback;

    .line 3144
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-virtual {v1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AppsFlyer2dXConversionCallback;

    iget v2, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onPostMessage:I

    invoke-interface {v1, v0, v2}, Lo/AppsFlyer2dXConversionCallback;->onMessageChannelReady(Lo/AppsFlyer2dXConversionCallback;I)V

    .line 3145
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-virtual {v1}, Lo/getRootAlpha;->close()V

    .line 3146
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->ICustomTabsCallback:Lo/getVersionName;

    invoke-static {v0, v1}, Lo/getRootAlpha;->extraCallback(Ljava/lang/Object;Lo/setPageMargin;)Lo/getRootAlpha;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onMessageChannelReady:Lo/getRootAlpha;

    invoke-virtual {v0}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AppsFlyer2dXConversionCallback;

    iget v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onPostMessage:I

    invoke-interface {v0, v1, p1, p2, p3}, Lo/AppsFlyer2dXConversionCallback;->ICustomTabsCallback(I[BII)I

    .line 111
    iget p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onPostMessage:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream;->onPostMessage:I

    return-void

    .line 3157
    :cond_1
    new-instance p1, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;

    invoke-direct {p1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;-><init>()V

    throw p1

    .line 2157
    :cond_2
    new-instance p1, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;

    invoke-direct {p1}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBufferOutputStream$InvalidStreamException;-><init>()V

    throw p1

    .line 105
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; regionStart="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; regionLength="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
