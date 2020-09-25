.class public final Lo/setAlpha;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/setPageMargin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPageMargin<",
            "[B>;"
        }
    .end annotation
.end field

.field private asInterface:Z

.field private final extraCallback:[B

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private final onPostMessage:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[BLo/setPageMargin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "[B",
            "Lo/setPageMargin<",
            "[B>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 45
    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lo/setAlpha;->onPostMessage:Ljava/io/InputStream;

    if-eqz p2, :cond_1

    .line 46
    check-cast p2, [B

    iput-object p2, p0, Lo/setAlpha;->extraCallback:[B

    if-eqz p3, :cond_0

    .line 47
    check-cast p3, Lo/setPageMargin;

    iput-object p3, p0, Lo/setAlpha;->ICustomTabsCallback:Lo/setPageMargin;

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lo/setAlpha;->onMessageChannelReady:I

    .line 49
    iput p1, p0, Lo/setAlpha;->onNavigationEvent:I

    .line 50
    iput-boolean p1, p0, Lo/setAlpha;->asInterface:Z

    return-void

    .line 3215
    :cond_0
    throw v0

    .line 2215
    :cond_1
    throw v0

    .line 1215
    :cond_2
    throw v0
.end method

.method private onNavigationEvent()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget v0, p0, Lo/setAlpha;->onNavigationEvent:I

    iget v1, p0, Lo/setAlpha;->onMessageChannelReady:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 121
    :cond_0
    iget-object v0, p0, Lo/setAlpha;->onPostMessage:Ljava/io/InputStream;

    iget-object v1, p0, Lo/setAlpha;->extraCallback:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return v1

    .line 126
    :cond_1
    iput v0, p0, Lo/setAlpha;->onMessageChannelReady:I

    .line 127
    iput v1, p0, Lo/setAlpha;->onNavigationEvent:I

    return v2
.end method


# virtual methods
.method public final available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget v0, p0, Lo/setAlpha;->onNavigationEvent:I

    iget v1, p0, Lo/setAlpha;->onMessageChannelReady:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 7132
    iget-boolean v0, p0, Lo/setAlpha;->asInterface:Z

    if-nez v0, :cond_1

    .line 82
    iget v0, p0, Lo/setAlpha;->onMessageChannelReady:I

    iget v1, p0, Lo/setAlpha;->onNavigationEvent:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lo/setAlpha;->onPostMessage:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 7133
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6162
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Lo/setAlpha;->asInterface:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lo/setAlpha;->asInterface:Z

    .line 89
    iget-object v0, p0, Lo/setAlpha;->ICustomTabsCallback:Lo/setPageMargin;

    iget-object v1, p0, Lo/setAlpha;->extraCallback:[B

    invoke-interface {v0, v1}, Lo/setPageMargin;->extraCallback(Ljava/lang/Object;)V

    .line 90
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 139
    iget-boolean v0, p0, Lo/setAlpha;->asInterface:Z

    if-nez v0, :cond_0

    const-string v0, "PooledByteInputStream"

    const-string v1, "Finalized without closing"

    .line 140
    invoke-static {v0, v1}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 143
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget v0, p0, Lo/setAlpha;->onNavigationEvent:I

    iget v1, p0, Lo/setAlpha;->onMessageChannelReady:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 5132
    iget-boolean v0, p0, Lo/setAlpha;->asInterface:Z

    if-nez v0, :cond_2

    .line 57
    invoke-direct {p0}, Lo/setAlpha;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 61
    :cond_1
    iget-object v0, p0, Lo/setAlpha;->extraCallback:[B

    iget v1, p0, Lo/setAlpha;->onNavigationEvent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/setAlpha;->onNavigationEvent:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 5133
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4162
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget v0, p0, Lo/setAlpha;->onNavigationEvent:I

    iget v1, p0, Lo/setAlpha;->onMessageChannelReady:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 6132
    iget-boolean v0, p0, Lo/setAlpha;->asInterface:Z

    if-nez v0, :cond_2

    .line 68
    invoke-direct {p0}, Lo/setAlpha;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 72
    :cond_1
    iget v0, p0, Lo/setAlpha;->onMessageChannelReady:I

    iget v1, p0, Lo/setAlpha;->onNavigationEvent:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 73
    iget-object v0, p0, Lo/setAlpha;->extraCallback:[B

    iget v1, p0, Lo/setAlpha;->onNavigationEvent:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget p1, p0, Lo/setAlpha;->onNavigationEvent:I

    add-int/2addr p1, p3

    iput p1, p0, Lo/setAlpha;->onNavigationEvent:I

    return p3

    .line 6133
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "stream already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5162
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget v0, p0, Lo/setAlpha;->onNavigationEvent:I

    iget v1, p0, Lo/setAlpha;->onMessageChannelReady:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 8132
    iget-boolean v0, p0, Lo/setAlpha;->asInterface:Z

    if-nez v0, :cond_2

    .line 98
    iget v0, p0, Lo/setAlpha;->onMessageChannelReady:I

    iget v1, p0, Lo/setAlpha;->onNavigationEvent:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_1

    int-to-long v0, v1

    add-long/2addr v0, p1

    long-to-int v1, v0

    .line 100
    iput v1, p0, Lo/setAlpha;->onNavigationEvent:I

    return-wide p1

    .line 104
    :cond_1
    iput v0, p0, Lo/setAlpha;->onNavigationEvent:I

    .line 105
    iget-object v0, p0, Lo/setAlpha;->onPostMessage:Ljava/io/InputStream;

    sub-long/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    add-long/2addr v2, p1

    return-wide v2

    .line 8133
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "stream already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7162
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
