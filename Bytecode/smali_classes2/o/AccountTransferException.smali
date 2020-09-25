.class Lo/AccountTransferException;
.super Lo/UserRecoverableNotifiedException;
.source ""


# instance fields
.field protected final onMessageChannelReady:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/UserRecoverableNotifiedException;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lo/AccountTransferException;->onMessageChannelReady:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method


# virtual methods
.method ICustomTabsCallback(I)B
    .locals 1

    .line 7
    iget-object v0, p0, Lo/AccountTransferException;->onMessageChannelReady:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected final ICustomTabsCallback(III)I
    .locals 1

    .line 54
    iget-object p2, p0, Lo/AccountTransferException;->onMessageChannelReady:[B

    invoke-virtual {p0}, Lo/AccountTransferException;->extraCallback()I

    move-result v0

    invoke-static {p1, p2, v0, p3}, Lo/cancelAvailabilityErrorNotifications;->onNavigationEvent(I[BII)I

    move-result p1

    return p1
.end method

.method final ICustomTabsCallback(Lo/createAdOverlay;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lo/AccountTransferException;->onMessageChannelReady:[B

    invoke-virtual {p0}, Lo/AccountTransferException;->extraCallback()I

    move-result v1

    invoke-virtual {p0}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lo/createAdOverlay;->onPostMessage([BII)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 22
    :cond_0
    instance-of v1, p1, Lo/getMobileAdsSettingsManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 24
    :cond_1
    invoke-virtual {p0}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lo/getMobileAdsSettingsManager;

    invoke-virtual {v3}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 26
    :cond_2
    invoke-virtual {p0}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 28
    :cond_3
    instance-of v0, p1, Lo/AccountTransferException;

    if-eqz v0, :cond_5

    .line 29
    check-cast p1, Lo/AccountTransferException;

    .line 30
    invoke-virtual {p0}, Lo/getMobileAdsSettingsManager;->onPostMessage()I

    move-result v0

    .line 31
    invoke-virtual {p1}, Lo/getMobileAdsSettingsManager;->onPostMessage()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    .line 34
    :cond_4
    invoke-virtual {p0}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lo/UserRecoverableNotifiedException;->onMessageChannelReady(Lo/getMobileAdsSettingsManager;II)Z

    move-result p1

    return p1

    .line 35
    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public extraCallback(I)B
    .locals 1

    .line 6
    iget-object v0, p0, Lo/AccountTransferException;->onMessageChannelReady:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected extraCallback()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady(II)Lo/getMobileAdsSettingsManager;
    .locals 2

    .line 9
    invoke-virtual {p0}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lo/AccountTransferException;->onMessageChannelReady(III)I

    move-result p1

    if-nez p1, :cond_0

    .line 11
    sget-object p1, Lo/getMobileAdsSettingsManager;->onNavigationEvent:Lo/getMobileAdsSettingsManager;

    return-object p1

    .line 12
    :cond_0
    new-instance p2, Lo/GooglePlayServicesAvailabilityException;

    iget-object v0, p0, Lo/AccountTransferException;->onMessageChannelReady:[B

    invoke-virtual {p0}, Lo/AccountTransferException;->extraCallback()I

    move-result v1

    invoke-direct {p2, v0, v1, p1}, Lo/GooglePlayServicesAvailabilityException;-><init>([BII)V

    return-object p2
.end method

.method protected onMessageChannelReady([BIII)V
    .locals 0

    .line 13
    iget-object p2, p0, Lo/AccountTransferException;->onMessageChannelReady:[B

    const/4 p3, 0x0

    invoke-static {p2, p3, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 3

    .line 18
    invoke-virtual {p0}, Lo/AccountTransferException;->extraCallback()I

    move-result v0

    .line 19
    iget-object v1, p0, Lo/AccountTransferException;->onMessageChannelReady:[B

    invoke-virtual {p0}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lo/SafeParcelable;->onPostMessage([BII)Z

    move-result v0

    return v0
.end method

.method final onMessageChannelReady(Lo/getMobileAdsSettingsManager;II)Z
    .locals 5

    .line 36
    invoke-virtual {p1}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result p2

    if-gt p3, p2, :cond_4

    .line 38
    invoke-virtual {p1}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result p2

    if-gt p3, p2, :cond_3

    .line 41
    instance-of p2, p1, Lo/AccountTransferException;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 42
    check-cast p1, Lo/AccountTransferException;

    .line 43
    iget-object p2, p0, Lo/AccountTransferException;->onMessageChannelReady:[B

    .line 44
    iget-object v1, p1, Lo/AccountTransferException;->onMessageChannelReady:[B

    .line 45
    invoke-virtual {p0}, Lo/AccountTransferException;->extraCallback()I

    move-result v2

    add-int/2addr v2, p3

    .line 46
    invoke-virtual {p0}, Lo/AccountTransferException;->extraCallback()I

    move-result p3

    .line 47
    invoke-virtual {p1}, Lo/AccountTransferException;->extraCallback()I

    move-result p1

    :goto_0
    if-ge p3, v2, :cond_1

    .line 49
    aget-byte v3, p2, p3

    aget-byte v4, v1, p1

    if-eq v3, v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 53
    :cond_2
    invoke-virtual {p1, v0, p3}, Lo/getMobileAdsSettingsManager;->onMessageChannelReady(II)Lo/getMobileAdsSettingsManager;

    move-result-object p1

    invoke-virtual {p0, v0, p3}, Lo/getMobileAdsSettingsManager;->onMessageChannelReady(II)Lo/getMobileAdsSettingsManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/getMobileAdsSettingsManager;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 39
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 40
    invoke-virtual {p1}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result p1

    const/16 v0, 0x3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Ran off end of other: 0, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 37
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result p2

    const/16 v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onNavigationEvent()I
    .locals 1

    .line 8
    iget-object v0, p0, Lo/AccountTransferException;->onMessageChannelReady:[B

    array-length v0, v0

    return v0
.end method

.method protected final onNavigationEvent(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .line 17
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/AccountTransferException;->onMessageChannelReady:[B

    invoke-virtual {p0}, Lo/AccountTransferException;->extraCallback()I

    move-result v2

    invoke-virtual {p0}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method
