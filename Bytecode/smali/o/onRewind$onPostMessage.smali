.class public final Lo/onRewind$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRewind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/onRewind$onPostMessage;

.field public onPostMessage:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 401
    iput-wide v0, p0, Lo/onRewind$onPostMessage;->onPostMessage:J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 5

    move-object v0, p0

    :goto_0
    const/16 v1, 0x40

    if-lt p1, v1, :cond_1

    .line 1415
    iget-object v1, v0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    if-nez v1, :cond_0

    .line 1416
    new-instance v1, Lo/onRewind$onPostMessage;

    invoke-direct {v1}, Lo/onRewind$onPostMessage;-><init>()V

    iput-object v1, v0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    .line 408
    :cond_0
    iget-object v0, v0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 410
    :cond_1
    iget-wide v1, v0, Lo/onRewind$onPostMessage;->onPostMessage:J

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    iput-wide v1, v0, Lo/onRewind$onPostMessage;->onPostMessage:J

    return-void
.end method

.method public final extraCallback(I)Z
    .locals 4

    move-object v0, p0

    :goto_0
    const/16 v1, 0x40

    if-lt p1, v1, :cond_1

    .line 2415
    iget-object v1, v0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    if-nez v1, :cond_0

    .line 2416
    new-instance v1, Lo/onRewind$onPostMessage;

    invoke-direct {v1}, Lo/onRewind$onPostMessage;-><init>()V

    iput-object v1, v0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    .line 434
    :cond_0
    iget-object v0, v0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 436
    :cond_1
    iget-wide v0, v0, Lo/onRewind$onPostMessage;->onPostMessage:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method final onMessageChannelReady(I)I
    .locals 6

    .line 493
    iget-object v0, p0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    if-lt p1, v1, :cond_0

    .line 495
    iget-wide v0, p0, Lo/onRewind$onPostMessage;->onPostMessage:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    .line 497
    :cond_0
    iget-wide v0, p0, Lo/onRewind$onPostMessage;->onPostMessage:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_1
    if-ge p1, v1, :cond_2

    .line 500
    iget-wide v0, p0, Lo/onRewind$onPostMessage;->onPostMessage:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_2
    sub-int/2addr p1, v1

    .line 502
    invoke-virtual {v0, p1}, Lo/onRewind$onPostMessage;->onMessageChannelReady(I)I

    move-result p1

    iget-wide v0, p0, Lo/onRewind$onPostMessage;->onPostMessage:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method final onNavigationEvent(IZ)V
    .locals 11

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    const/16 v2, 0x40

    if-lt p1, v2, :cond_1

    .line 3415
    iget-object v2, v1, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    if-nez v2, :cond_0

    .line 3416
    new-instance v2, Lo/onRewind$onPostMessage;

    invoke-direct {v2}, Lo/onRewind$onPostMessage;-><init>()V

    iput-object v2, v1, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    .line 450
    :cond_0
    iget-object v1, v1, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 452
    :cond_1
    iget-wide v2, v1, Lo/onRewind$onPostMessage;->onPostMessage:J

    const-wide/high16 v4, -0x8000000000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-wide/16 v3, 0x1

    shl-long v7, v3, p1

    sub-long/2addr v7, v3

    .line 454
    iget-wide v3, v1, Lo/onRewind$onPostMessage;->onPostMessage:J

    and-long v9, v3, v7

    not-long v7, v7

    and-long/2addr v3, v7

    shl-long/2addr v3, v6

    or-long/2addr v3, v9

    .line 456
    iput-wide v3, v1, Lo/onRewind$onPostMessage;->onPostMessage:J

    if-eqz p2, :cond_3

    .line 458
    invoke-virtual {v1, p1}, Lo/onRewind$onPostMessage;->ICustomTabsCallback(I)V

    goto :goto_2

    .line 460
    :cond_3
    invoke-virtual {v1, p1}, Lo/onRewind$onPostMessage;->onPostMessage(I)V

    :goto_2
    if-nez v2, :cond_5

    .line 462
    iget-object p1, v1, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    return-void

    .line 4415
    :cond_5
    :goto_3
    iget-object p1, v1, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    if-nez p1, :cond_6

    .line 4416
    new-instance p1, Lo/onRewind$onPostMessage;

    invoke-direct {p1}, Lo/onRewind$onPostMessage;-><init>()V

    iput-object p1, v1, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    .line 464
    :cond_6
    iget-object v1, v1, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    move p2, v2

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final onNavigationEvent(I)Z
    .locals 12

    move-object v0, p0

    :goto_0
    const/16 v1, 0x40

    if-lt p1, v1, :cond_1

    .line 5415
    iget-object v1, v0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    if-nez v1, :cond_0

    .line 5416
    new-instance v1, Lo/onRewind$onPostMessage;

    invoke-direct {v1}, Lo/onRewind$onPostMessage;-><init>()V

    iput-object v1, v0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    .line 472
    :cond_0
    iget-object v0, v0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x1

    shl-long v3, v1, p1

    .line 475
    iget-wide v5, v0, Lo/onRewind$onPostMessage;->onPostMessage:J

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    const/4 p1, 0x1

    const/4 v9, 0x0

    cmp-long v10, v5, v7

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 476
    :goto_1
    iget-wide v6, v0, Lo/onRewind$onPostMessage;->onPostMessage:J

    not-long v10, v3

    and-long/2addr v6, v10

    iput-wide v6, v0, Lo/onRewind$onPostMessage;->onPostMessage:J

    sub-long/2addr v3, v1

    and-long v1, v6, v3

    not-long v3, v3

    and-long/2addr v3, v6

    .line 480
    invoke-static {v3, v4, p1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    or-long/2addr v1, v3

    .line 481
    iput-wide v1, v0, Lo/onRewind$onPostMessage;->onPostMessage:J

    .line 482
    iget-object p1, v0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    if-eqz p1, :cond_4

    .line 483
    invoke-virtual {p1, v9}, Lo/onRewind$onPostMessage;->extraCallback(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x3f

    .line 484
    invoke-virtual {v0, p1}, Lo/onRewind$onPostMessage;->ICustomTabsCallback(I)V

    .line 486
    :cond_3
    iget-object p1, v0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    invoke-virtual {p1, v9}, Lo/onRewind$onPostMessage;->onNavigationEvent(I)Z

    :cond_4
    return v5
.end method

.method public final onPostMessage(I)V
    .locals 5

    move-object v0, p0

    :goto_0
    const/16 v1, 0x40

    if-lt p1, v1, :cond_0

    .line 422
    iget-object v0, v0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 426
    :cond_0
    iget-wide v1, v0, Lo/onRewind$onPostMessage;->onPostMessage:J

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    not-long v3, v3

    and-long/2addr v1, v3

    iput-wide v1, v0, Lo/onRewind$onPostMessage;->onPostMessage:J

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 508
    iget-object v0, p0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lo/onRewind$onPostMessage;->onPostMessage:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/onRewind$onPostMessage;->ICustomTabsCallback:Lo/onRewind$onPostMessage;

    .line 509
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/onRewind$onPostMessage;->onPostMessage:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
