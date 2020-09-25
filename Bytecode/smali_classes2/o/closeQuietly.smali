.class final Lo/closeQuietly;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 9

    .line 22
    invoke-static {p0}, Lo/et;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v0

    and-int v1, v0, p2

    .line 24
    invoke-static {p3, v1}, Lo/closeQuietly;->onPostMessage(Ljava/lang/Object;I)I

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    not-int v4, p2

    and-int/2addr v0, v4

    const/4 v5, -0x1

    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 32
    aget v6, p4, v2

    and-int v7, v6, v4

    if-ne v7, v0, :cond_3

    .line 35
    aget-object v7, p5, v2

    .line 36
    invoke-static {p0, v7}, Lo/fu;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz p6, :cond_1

    aget-object v7, p6, v2

    .line 37
    invoke-static {p1, v7}, Lo/fu;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    and-int p0, v6, p2

    if-ne v5, v3, :cond_2

    .line 42
    invoke-static {p3, v1, p0}, Lo/closeQuietly;->onPostMessage(Ljava/lang/Object;II)V

    goto :goto_1

    .line 43
    :cond_2
    aget p1, p4, v5

    invoke-static {p1, p0, p2}, Lo/closeQuietly;->onNavigationEvent(III)I

    move-result p0

    aput p0, p4, v5

    :goto_1
    return v2

    :cond_3
    and-int v5, v6, p2

    if-nez v5, :cond_4

    return v3

    :cond_4
    move v8, v5

    move v5, v2

    move v2, v8

    goto :goto_0
.end method

.method static onNavigationEvent(III)I
    .locals 1

    not-int v0, p2

    and-int/2addr p0, v0

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method static onNavigationEvent(I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    if-lt p0, v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_2

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    if-ne v0, p0, :cond_2

    const/16 v0, 0x100

    if-gt p0, v0, :cond_0

    .line 5
    new-array p0, p0, [B

    return-object p0

    :cond_0
    const/high16 v0, 0x10000

    if-gt p0, v0, :cond_1

    .line 7
    new-array p0, p0, [S

    return-object p0

    .line 8
    :cond_1
    new-array p0, p0, [I

    return-object p0

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "must be power of 2 between 2^1 and 2^30: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static onPostMessage(I)I
    .locals 1

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    add-int/lit8 p0, p0, 0x1

    mul-int v0, v0, p0

    return v0
.end method

.method static onPostMessage(Ljava/lang/Object;I)I
    .locals 1

    .line 9
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 10
    check-cast p0, [B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 11
    :cond_0
    instance-of v0, p0, [S

    if-eqz v0, :cond_1

    .line 12
    check-cast p0, [S

    aget-short p0, p0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0

    .line 13
    :cond_1
    check-cast p0, [I

    aget p0, p0, p1

    return p0
.end method

.method static onPostMessage(Ljava/lang/Object;II)V
    .locals 1

    .line 14
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 15
    check-cast p0, [B

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void

    .line 16
    :cond_0
    instance-of v0, p0, [S

    if-eqz v0, :cond_1

    .line 17
    check-cast p0, [S

    int-to-short p2, p2

    aput-short p2, p0, p1

    return-void

    .line 18
    :cond_1
    check-cast p0, [I

    aput p2, p0, p1

    return-void
.end method
