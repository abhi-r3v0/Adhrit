.class public final Lo/FragmentStateAdapter$5;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field private extraCallback:I

.field private final onMessageChannelReady:[B

.field private onPostMessage:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 30
    iput-object p2, p0, Lo/FragmentStateAdapter$5;->onMessageChannelReady:[B

    return-void

    .line 28
    :cond_0
    throw v0

    .line 25
    :cond_1
    throw v0
.end method

.method private onNavigationEvent()I
    .locals 3

    .line 89
    iget v0, p0, Lo/FragmentStateAdapter$5;->extraCallback:I

    iget-object v1, p0, Lo/FragmentStateAdapter$5;->onMessageChannelReady:[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 92
    iput v2, p0, Lo/FragmentStateAdapter$5;->extraCallback:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public final mark(I)V
    .locals 1

    .line 82
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 84
    iget p1, p0, Lo/FragmentStateAdapter$5;->extraCallback:I

    iput p1, p0, Lo/FragmentStateAdapter$5;->onPostMessage:I

    :cond_0
    return-void
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 39
    :cond_0
    invoke-direct {p0}, Lo/FragmentStateAdapter$5;->onNavigationEvent()I

    move-result v0

    return v0
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    return v0

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_2

    .line 60
    invoke-direct {p0}, Lo/FragmentStateAdapter$5;->onNavigationEvent()I

    move-result v2

    if-eq v2, v1, :cond_2

    add-int v3, p2, v0

    int-to-byte v2, v2

    .line 64
    aput-byte v2, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 74
    iget v0, p0, Lo/FragmentStateAdapter$5;->onPostMessage:I

    iput v0, p0, Lo/FragmentStateAdapter$5;->extraCallback:I

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
