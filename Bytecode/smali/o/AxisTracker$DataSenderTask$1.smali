.class public final Lo/AxisTracker$DataSenderTask$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Event$Action;


# instance fields
.field private ICustomTabsCallback:J

.field private asBinder:I

.field private final extraCallback:[B

.field private final onMessageChannelReady:Lo/ResultJsonAdapter;

.field private final onNavigationEvent:J

.field private onPostMessage:[B

.field private onTransact:I


# direct methods
.method public constructor <init>(Lo/ResultJsonAdapter;JJ)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lo/AxisTracker$DataSenderTask$1;->onMessageChannelReady:Lo/ResultJsonAdapter;

    .line 51
    iput-wide p2, p0, Lo/AxisTracker$DataSenderTask$1;->ICustomTabsCallback:J

    .line 52
    iput-wide p4, p0, Lo/AxisTracker$DataSenderTask$1;->onNavigationEvent:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 53
    iput-object p1, p0, Lo/AxisTracker$DataSenderTask$1;->onPostMessage:[B

    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 54
    iput-object p1, p0, Lo/AxisTracker$DataSenderTask$1;->extraCallback:[B

    return-void
.end method

.method private asInterface(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 277
    iget-wide v0, p0, Lo/AxisTracker$DataSenderTask$1;->ICustomTabsCallback:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/AxisTracker$DataSenderTask$1;->ICustomTabsCallback:J

    :cond_0
    return-void
.end method

.method private extraCallback([BIIIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    iget-object v0, p0, Lo/AxisTracker$DataSenderTask$1;->onMessageChannelReady:Lo/ResultJsonAdapter;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lo/ResultJsonAdapter;->onMessageChannelReady([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    return p2

    .line 265
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    add-int/2addr p4, p1

    return p4

    .line 258
    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method private onMessageChannelReady(I)I
    .locals 1

    .line 198
    iget v0, p0, Lo/AxisTracker$DataSenderTask$1;->onTransact:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 199
    invoke-direct {p0, p1}, Lo/AxisTracker$DataSenderTask$1;->onTransact(I)V

    return p1
.end method

.method private onMessageChannelReady([BII)I
    .locals 2

    .line 212
    iget v0, p0, Lo/AxisTracker$DataSenderTask$1;->onTransact:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 215
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 216
    iget-object v0, p0, Lo/AxisTracker$DataSenderTask$1;->onPostMessage:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    invoke-direct {p0, p3}, Lo/AxisTracker$DataSenderTask$1;->onTransact(I)V

    return p3
.end method

.method private onPostMessage(I)V
    .locals 3

    .line 183
    iget v0, p0, Lo/AxisTracker$DataSenderTask$1;->asBinder:I

    add-int/2addr v0, p1

    .line 184
    iget-object p1, p0, Lo/AxisTracker$DataSenderTask$1;->onPostMessage:[B

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 185
    array-length p1, p1

    shl-int/lit8 p1, p1, 0x1

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(III)I

    move-result p1

    .line 187
    iget-object v0, p0, Lo/AxisTracker$DataSenderTask$1;->onPostMessage:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lo/AxisTracker$DataSenderTask$1;->onPostMessage:[B

    :cond_0
    return-void
.end method

.method private onTransact(I)V
    .locals 5

    .line 227
    iget v0, p0, Lo/AxisTracker$DataSenderTask$1;->onTransact:I

    sub-int/2addr v0, p1

    iput v0, p0, Lo/AxisTracker$DataSenderTask$1;->onTransact:I

    const/4 v1, 0x0

    .line 228
    iput v1, p0, Lo/AxisTracker$DataSenderTask$1;->asBinder:I

    .line 229
    iget-object v2, p0, Lo/AxisTracker$DataSenderTask$1;->onPostMessage:[B

    .line 230
    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    .line 231
    new-array v2, v0, [B

    .line 233
    :cond_0
    iget-object v0, p0, Lo/AxisTracker$DataSenderTask$1;->onPostMessage:[B

    iget v3, p0, Lo/AxisTracker$DataSenderTask$1;->onTransact:I

    invoke-static {v0, p1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iput-object v2, p0, Lo/AxisTracker$DataSenderTask$1;->onPostMessage:[B

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lo/AxisTracker$DataSenderTask$1;->onMessageChannelReady(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v2, p0, Lo/AxisTracker$DataSenderTask$1;->extraCallback:[B

    const/4 v3, 0x0

    array-length v0, v2

    .line 89
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lo/AxisTracker$DataSenderTask$1;->extraCallback([BIIIZ)I

    move-result v0

    .line 91
    :cond_0
    invoke-direct {p0, v0}, Lo/AxisTracker$DataSenderTask$1;->asInterface(I)V

    return v0
.end method

.method public final ICustomTabsCallback([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lo/AxisTracker$DataSenderTask$1;->onMessageChannelReady([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 61
    invoke-direct/range {v1 .. v6}, Lo/AxisTracker$DataSenderTask$1;->extraCallback([BIIIZ)I

    move-result v0

    .line 63
    :cond_0
    invoke-direct {p0, v0}, Lo/AxisTracker$DataSenderTask$1;->asInterface(I)V

    return v0
.end method

.method public final ICustomTabsCallback(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lo/AxisTracker$DataSenderTask$1;->onPostMessage(I)V

    .line 133
    iget v0, p0, Lo/AxisTracker$DataSenderTask$1;->onTransact:I

    iget v1, p0, Lo/AxisTracker$DataSenderTask$1;->asBinder:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_1

    .line 135
    iget-object v2, p0, Lo/AxisTracker$DataSenderTask$1;->onPostMessage:[B

    iget v3, p0, Lo/AxisTracker$DataSenderTask$1;->asBinder:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lo/AxisTracker$DataSenderTask$1;->extraCallback([BIIIZ)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 140
    :cond_0
    iget v0, p0, Lo/AxisTracker$DataSenderTask$1;->asBinder:I

    add-int/2addr v0, v5

    iput v0, p0, Lo/AxisTracker$DataSenderTask$1;->onTransact:I

    goto :goto_0

    .line 142
    :cond_1
    iget p2, p0, Lo/AxisTracker$DataSenderTask$1;->asBinder:I

    add-int/2addr p2, p1

    iput p2, p0, Lo/AxisTracker$DataSenderTask$1;->asBinder:I

    const/4 p1, 0x1

    return p1
.end method

.method public final extraCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lo/AxisTracker$DataSenderTask$1;->asBinder:I

    return-void
.end method

.method public final extraCallback(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, v0}, Lo/AxisTracker$DataSenderTask$1;->onPostMessage(IZ)Z

    return-void
.end method

.method public final extraCallback([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/AxisTracker$DataSenderTask$1;->onNavigationEvent([BIIZ)Z

    return-void
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 163
    iget-wide v0, p0, Lo/AxisTracker$DataSenderTask$1;->ICustomTabsCallback:J

    return-wide v0
.end method

.method public final onMessageChannelReady([BIIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lo/AxisTracker$DataSenderTask$1;->onMessageChannelReady([BII)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p3, :cond_0

    if-eq v5, v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 72
    invoke-direct/range {v1 .. v6}, Lo/AxisTracker$DataSenderTask$1;->extraCallback([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0, v5}, Lo/AxisTracker$DataSenderTask$1;->asInterface(I)V

    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onNavigationEvent()J
    .locals 4

    .line 158
    iget-wide v0, p0, Lo/AxisTracker$DataSenderTask$1;->ICustomTabsCallback:J

    iget v2, p0, Lo/AxisTracker$DataSenderTask$1;->asBinder:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final onNavigationEvent(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, p1, v0}, Lo/AxisTracker$DataSenderTask$1;->ICustomTabsCallback(IZ)Z

    return-void
.end method

.method public final onNavigationEvent([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p3, p4}, Lo/AxisTracker$DataSenderTask$1;->ICustomTabsCallback(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 119
    :cond_0
    iget-object p4, p0, Lo/AxisTracker$DataSenderTask$1;->onPostMessage:[B

    iget v0, p0, Lo/AxisTracker$DataSenderTask$1;->asBinder:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onPostMessage()J
    .locals 2

    .line 168
    iget-wide v0, p0, Lo/AxisTracker$DataSenderTask$1;->onNavigationEvent:J

    return-wide v0
.end method

.method public final onPostMessage([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/AxisTracker$DataSenderTask$1;->onMessageChannelReady([BIIZ)Z

    return-void
.end method

.method public final onPostMessage(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lo/AxisTracker$DataSenderTask$1;->onMessageChannelReady(I)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p1, :cond_0

    if-eq v5, v0, :cond_0

    .line 100
    iget-object v0, p0, Lo/AxisTracker$DataSenderTask$1;->extraCallback:[B

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 101
    iget-object v2, p0, Lo/AxisTracker$DataSenderTask$1;->extraCallback:[B

    neg-int v3, v5

    move-object v1, p0

    move v6, p2

    .line 102
    invoke-direct/range {v1 .. v6}, Lo/AxisTracker$DataSenderTask$1;->extraCallback([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0, v5}, Lo/AxisTracker$DataSenderTask$1;->asInterface(I)V

    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
