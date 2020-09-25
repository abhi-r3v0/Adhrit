.class public final Lo/getSDKVersion;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ICustomTabsCallback(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static extraCallback(Landroid/media/MediaFormat;Ljava/lang/String;[B)V
    .locals 0

    if-eqz p2, :cond_0

    .line 90
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public static extraCallback(Landroid/media/MediaFormat;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 49
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "csd-"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static onNavigationEvent(Landroid/media/MediaFormat;Lo/getRewardDetails;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 103
    iget v0, p1, Lo/getRewardDetails;->ICustomTabsCallback:I

    const-string v1, "color-transfer"

    invoke-static {p0, v1, v0}, Lo/getSDKVersion;->ICustomTabsCallback(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 104
    iget v0, p1, Lo/getRewardDetails;->onPostMessage:I

    const-string v1, "color-standard"

    invoke-static {p0, v1, v0}, Lo/getSDKVersion;->ICustomTabsCallback(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 105
    iget v0, p1, Lo/getRewardDetails;->onMessageChannelReady:I

    const-string v1, "color-range"

    invoke-static {p0, v1, v0}, Lo/getSDKVersion;->ICustomTabsCallback(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 106
    iget-object p1, p1, Lo/getRewardDetails;->onNavigationEvent:[B

    const-string v0, "hdr-static-info"

    invoke-static {p0, v0, p1}, Lo/getSDKVersion;->extraCallback(Landroid/media/MediaFormat;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public static onPostMessage(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method
