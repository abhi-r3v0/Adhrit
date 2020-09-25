.class public final Lo/trackException;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ICustomTabsCallback(Lo/DreamAppGlideModule;II)J
    .locals 4

    .line 47
    invoke-virtual {p0, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 48
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x5

    if-ge p1, v2, :cond_0

    return-wide v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result p1

    const/high16 v2, 0x800000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    return-wide v0

    :cond_1
    const v2, 0x1fff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    if-eq v2, p2, :cond_2

    return-wide v0

    :cond_2
    and-int/lit8 p1, p1, 0x20

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    return-wide v0

    .line 67
    :cond_4
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result p1

    const/4 v3, 0x7

    if-lt p1, v3, :cond_6

    .line 68
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result p1

    if-lt p1, v3, :cond_6

    .line 69
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result p1

    const/16 v3, 0x10

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_6

    const/4 p1, 0x6

    new-array p2, p1, [B

    .line 73
    invoke-virtual {p0, p2, v2, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 74
    invoke-static {p2}, Lo/trackException;->onPostMessage([B)J

    move-result-wide p0

    return-wide p0

    :cond_6
    return-wide v0
.end method

.method public static onPostMessage([BII)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 30
    aget-byte v0, p0, p1

    const/16 v1, 0x47

    if-eq v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private static onPostMessage([B)J
    .locals 8

    const/4 v0, 0x0

    .line 86
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x19

    shl-long/2addr v0, v4

    const/4 v4, 0x1

    aget-byte v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v7, 0x11

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    const/4 v5, 0x2

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v7, 0x9

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    shl-long v4, v5, v4

    or-long/2addr v0, v4

    const/4 v4, 0x4

    aget-byte p0, p0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/4 p0, 0x7

    shr-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method
