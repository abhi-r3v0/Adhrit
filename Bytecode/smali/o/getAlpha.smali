.class public final Lo/getAlpha;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private extraCallback:I

.field private onNavigationEvent:I

.field private onPostMessage:Lcom/facebook/common/memory/PooledByteBuffer;


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/PooledByteBuffer;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    invoke-interface {p1}, Lcom/facebook/common/memory/PooledByteBuffer;->onMessageChannelReady()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 34
    check-cast p1, Lcom/facebook/common/memory/PooledByteBuffer;

    iput-object p1, p0, Lo/getAlpha;->onPostMessage:Lcom/facebook/common/memory/PooledByteBuffer;

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lo/getAlpha;->onNavigationEvent:I

    .line 36
    iput p1, p0, Lo/getAlpha;->extraCallback:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1215
    throw p1

    .line 1111
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final available()I
    .locals 2

    .line 42
    iget-object v0, p0, Lo/getAlpha;->onPostMessage:Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->onNavigationEvent()I

    move-result v0

    iget v1, p0, Lo/getAlpha;->onNavigationEvent:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final mark(I)V
    .locals 0

    .line 53
    iget p1, p0, Lo/getAlpha;->onNavigationEvent:I

    iput p1, p0, Lo/getAlpha;->extraCallback:I

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 3

    .line 66
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 69
    :cond_0
    iget-object v0, p0, Lo/getAlpha;->onPostMessage:Lcom/facebook/common/memory/PooledByteBuffer;

    iget v1, p0, Lo/getAlpha;->onNavigationEvent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/getAlpha;->onNavigationEvent:I

    invoke-interface {v0, v1}, Lcom/facebook/common/memory/PooledByteBuffer;->onMessageChannelReady(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2

    .line 74
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 88
    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 93
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-gtz p3, :cond_1

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_1
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 103
    iget-object v0, p0, Lo/getAlpha;->onPostMessage:Lcom/facebook/common/memory/PooledByteBuffer;

    iget v1, p0, Lo/getAlpha;->onNavigationEvent:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/facebook/common/memory/PooledByteBuffer;->onMessageChannelReady(I[BII)I

    .line 104
    iget p1, p0, Lo/getAlpha;->onNavigationEvent:I

    add-int/2addr p1, p3

    iput p1, p0, Lo/getAlpha;->onNavigationEvent:I

    return p3

    .line 89
    :cond_2
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

.method public final reset()V
    .locals 1

    .line 115
    iget v0, p0, Lo/getAlpha;->extraCallback:I

    iput v0, p0, Lo/getAlpha;->onNavigationEvent:I

    return-void
.end method

.method public final skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    long-to-int p2, p1

    .line 127
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 128
    iget p2, p0, Lo/getAlpha;->onNavigationEvent:I

    add-int/2addr p2, p1

    iput p2, p0, Lo/getAlpha;->onNavigationEvent:I

    int-to-long p1, p1

    return-wide p1

    .line 2111
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
