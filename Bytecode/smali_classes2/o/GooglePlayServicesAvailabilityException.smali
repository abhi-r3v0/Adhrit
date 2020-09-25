.class final Lo/GooglePlayServicesAvailabilityException;
.super Lo/AccountTransferException;
.source ""


# instance fields
.field private final extraCallback:I

.field private final onPostMessage:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lo/AccountTransferException;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lo/GooglePlayServicesAvailabilityException;->onMessageChannelReady(III)I

    .line 3
    iput p2, p0, Lo/GooglePlayServicesAvailabilityException;->extraCallback:I

    .line 4
    iput p3, p0, Lo/GooglePlayServicesAvailabilityException;->onPostMessage:I

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(I)B
    .locals 2

    .line 12
    iget-object v0, p0, Lo/GooglePlayServicesAvailabilityException;->onMessageChannelReady:[B

    iget v1, p0, Lo/GooglePlayServicesAvailabilityException;->extraCallback:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final extraCallback(I)B
    .locals 4

    .line 6
    invoke-virtual {p0}, Lo/getMobileAdsSettingsManager;->onNavigationEvent()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_1

    if-gez p1, :cond_0

    .line 9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Index < 0: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index > length: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_1
    iget-object v0, p0, Lo/GooglePlayServicesAvailabilityException;->onMessageChannelReady:[B

    iget v1, p0, Lo/GooglePlayServicesAvailabilityException;->extraCallback:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method protected final extraCallback()I
    .locals 1

    .line 14
    iget v0, p0, Lo/GooglePlayServicesAvailabilityException;->extraCallback:I

    return v0
.end method

.method protected final onMessageChannelReady([BIII)V
    .locals 1

    .line 15
    iget-object p2, p0, Lo/GooglePlayServicesAvailabilityException;->onMessageChannelReady:[B

    .line 16
    invoke-virtual {p0}, Lo/AccountTransferException;->extraCallback()I

    move-result p3

    const/4 v0, 0x0

    .line 17
    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 13
    iget v0, p0, Lo/GooglePlayServicesAvailabilityException;->onPostMessage:I

    return v0
.end method
