.class public final Lo/UploadWorker;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private extraCallback:[B

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private onPostMessage:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lo/UploadWorker;->onMessageChannelReady([BII)V

    return-void
.end method

.method private asInterface()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 194
    :goto_0
    invoke-virtual {p0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    if-lez v1, :cond_1

    .line 197
    invoke-virtual {p0, v1}, Lo/UploadWorker;->extraCallback(I)I

    move-result v0

    :cond_1
    add-int/2addr v3, v0

    return v3
.end method

.method private onNavigationEvent(I)Z
    .locals 3

    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    .line 201
    iget v0, p0, Lo/UploadWorker;->onMessageChannelReady:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lo/UploadWorker;->extraCallback:[B

    aget-byte v1, v0, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, -0x2

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-byte p1, v0, p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onRelationshipValidationResult()V
    .locals 2

    .line 207
    iget v0, p0, Lo/UploadWorker;->onPostMessage:I

    if-ltz v0, :cond_1

    iget v1, p0, Lo/UploadWorker;->onMessageChannelReady:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/UploadWorker;->onNavigationEvent:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 3

    .line 188
    invoke-direct {p0}, Lo/UploadWorker;->asInterface()I

    move-result v0

    .line 189
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    mul-int v1, v1, v0

    return v1
.end method

.method public final extraCallback(I)I
    .locals 9

    .line 138
    iget v0, p0, Lo/UploadWorker;->onNavigationEvent:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/UploadWorker;->onNavigationEvent:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    :goto_0
    iget v2, p0, Lo/UploadWorker;->onNavigationEvent:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-le v2, v5, :cond_1

    add-int/lit8 v2, v2, -0x8

    .line 140
    iput v2, p0, Lo/UploadWorker;->onNavigationEvent:I

    .line 141
    iget-object v5, p0, Lo/UploadWorker;->extraCallback:[B

    iget v6, p0, Lo/UploadWorker;->onPostMessage:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int v2, v5, v2

    or-int/2addr v1, v2

    add-int/lit8 v2, v6, 0x1

    .line 142
    invoke-direct {p0, v2}, Lo/UploadWorker;->onNavigationEvent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    add-int/2addr v6, v3

    iput v6, p0, Lo/UploadWorker;->onPostMessage:I

    goto :goto_0

    .line 144
    :cond_1
    iget-object v6, p0, Lo/UploadWorker;->extraCallback:[B

    iget v7, p0, Lo/UploadWorker;->onPostMessage:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v8, v2, 0x8

    shr-int/2addr v6, v8

    or-int/2addr v1, v6

    const/4 v6, -0x1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v6, p1

    and-int/2addr p1, v1

    if-ne v2, v5, :cond_3

    .line 147
    iput v0, p0, Lo/UploadWorker;->onNavigationEvent:I

    add-int/lit8 v0, v7, 0x1

    .line 148
    invoke-direct {p0, v0}, Lo/UploadWorker;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    add-int/2addr v7, v3

    iput v7, p0, Lo/UploadWorker;->onPostMessage:I

    .line 150
    :cond_3
    invoke-direct {p0}, Lo/UploadWorker;->onRelationshipValidationResult()V

    return p1
.end method

.method public final extraCallback()V
    .locals 3

    .line 62
    iget v0, p0, Lo/UploadWorker;->onNavigationEvent:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/UploadWorker;->onNavigationEvent:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lo/UploadWorker;->onNavigationEvent:I

    .line 64
    iget v0, p0, Lo/UploadWorker;->onPostMessage:I

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lo/UploadWorker;->onNavigationEvent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lo/UploadWorker;->onPostMessage:I

    .line 66
    :cond_1
    invoke-direct {p0}, Lo/UploadWorker;->onRelationshipValidationResult()V

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 4

    .line 75
    iget v0, p0, Lo/UploadWorker;->onPostMessage:I

    .line 76
    div-int/lit8 v1, p1, 0x8

    add-int v2, v0, v1

    .line 77
    iput v2, p0, Lo/UploadWorker;->onPostMessage:I

    .line 78
    iget v3, p0, Lo/UploadWorker;->onNavigationEvent:I

    shl-int/lit8 v1, v1, 0x3

    sub-int/2addr p1, v1

    add-int/2addr v3, p1

    iput v3, p0, Lo/UploadWorker;->onNavigationEvent:I

    const/4 p1, 0x7

    if-le v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 80
    iput v2, p0, Lo/UploadWorker;->onPostMessage:I

    add-int/lit8 v3, v3, -0x8

    .line 81
    iput v3, p0, Lo/UploadWorker;->onNavigationEvent:I

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 83
    iget p1, p0, Lo/UploadWorker;->onPostMessage:I

    if-gt v0, p1, :cond_1

    .line 84
    invoke-direct {p0, v0}, Lo/UploadWorker;->onNavigationEvent(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget p1, p0, Lo/UploadWorker;->onPostMessage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/UploadWorker;->onPostMessage:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 90
    :cond_1
    invoke-direct {p0}, Lo/UploadWorker;->onRelationshipValidationResult()V

    return-void
.end method

.method public final onMessageChannelReady([BII)V
    .locals 0

    .line 51
    iput-object p1, p0, Lo/UploadWorker;->extraCallback:[B

    .line 52
    iput p2, p0, Lo/UploadWorker;->onPostMessage:I

    .line 53
    iput p3, p0, Lo/UploadWorker;->onMessageChannelReady:I

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lo/UploadWorker;->onNavigationEvent:I

    .line 55
    invoke-direct {p0}, Lo/UploadWorker;->onRelationshipValidationResult()V

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 3

    .line 125
    iget-object v0, p0, Lo/UploadWorker;->extraCallback:[B

    iget v1, p0, Lo/UploadWorker;->onPostMessage:I

    aget-byte v0, v0, v1

    iget v1, p0, Lo/UploadWorker;->onNavigationEvent:I

    const/16 v2, 0x80

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    invoke-virtual {p0}, Lo/UploadWorker;->extraCallback()V

    return v0
.end method

.method public final onNavigationEvent()Z
    .locals 7

    .line 161
    iget v0, p0, Lo/UploadWorker;->onPostMessage:I

    .line 162
    iget v1, p0, Lo/UploadWorker;->onNavigationEvent:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 164
    :goto_0
    iget v4, p0, Lo/UploadWorker;->onPostMessage:I

    iget v5, p0, Lo/UploadWorker;->onMessageChannelReady:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Lo/UploadWorker;->onMessageChannelReady()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iget v4, p0, Lo/UploadWorker;->onPostMessage:I

    iget v5, p0, Lo/UploadWorker;->onMessageChannelReady:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 168
    :goto_1
    iput v0, p0, Lo/UploadWorker;->onPostMessage:I

    .line 169
    iput v1, p0, Lo/UploadWorker;->onNavigationEvent:I

    if-nez v4, :cond_2

    shl-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v6

    .line 170
    invoke-virtual {p0, v0}, Lo/UploadWorker;->onPostMessage(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v6

    :cond_2
    return v2
.end method

.method public final onPostMessage()I
    .locals 1

    .line 179
    invoke-direct {p0}, Lo/UploadWorker;->asInterface()I

    move-result v0

    return v0
.end method

.method public final onPostMessage(I)Z
    .locals 4

    .line 101
    iget v0, p0, Lo/UploadWorker;->onPostMessage:I

    .line 102
    div-int/lit8 v1, p1, 0x8

    add-int v2, v0, v1

    .line 104
    iget v3, p0, Lo/UploadWorker;->onNavigationEvent:I

    add-int/2addr v3, p1

    shl-int/lit8 p1, v1, 0x3

    sub-int/2addr v3, p1

    const/4 p1, 0x7

    if-le v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x8

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_0
    add-int/2addr v0, p1

    if-gt v0, v2, :cond_2

    .line 109
    iget v1, p0, Lo/UploadWorker;->onMessageChannelReady:I

    if-ge v2, v1, :cond_2

    .line 110
    invoke-direct {p0, v0}, Lo/UploadWorker;->onNavigationEvent(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 116
    :cond_2
    iget v0, p0, Lo/UploadWorker;->onMessageChannelReady:I

    if-lt v2, v0, :cond_4

    if-ne v2, v0, :cond_3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_1
    return p1
.end method
