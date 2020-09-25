.class public final Lo/DreamAppGlideModule;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:I

.field private onMessageChannelReady:I

.field public onNavigationEvent:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->asBinder:[B

    iput-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-array v0, p1, [B

    iput-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 46
    iput p1, p0, Lo/DreamAppGlideModule;->ICustomTabsCallback:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 56
    array-length p1, p1

    iput p1, p0, Lo/DreamAppGlideModule;->ICustomTabsCallback:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 67
    iput p2, p0, Lo/DreamAppGlideModule;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 450
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo/DreamAppGlideModule;->onPostMessage(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    .line 73
    iput v0, p0, Lo/DreamAppGlideModule;->ICustomTabsCallback:I

    return-void
.end method

.method public final ICustomTabsCallback(Lo/PublisherException;I)V
    .locals 2

    .line 178
    iget-object v0, p1, Lo/PublisherException;->onMessageChannelReady:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 179
    invoke-virtual {p1, v1}, Lo/PublisherException;->onMessageChannelReady(I)V

    return-void
.end method

.method public final ICustomTabsCallback([BI)V
    .locals 0

    .line 103
    iput-object p1, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 104
    iput p2, p0, Lo/DreamAppGlideModule;->ICustomTabsCallback:I

    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    return-void
.end method

.method public final ICustomTabsCallback$Stub()I
    .locals 4

    .line 233
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()I
    .locals 4

    .line 319
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final ICustomTabsService()I
    .locals 4

    .line 329
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final ICustomTabsService$Stub()Ljava/lang/String;
    .locals 6

    .line 520
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 523
    :cond_0
    iget v0, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    .line 524
    :goto_0
    iget v1, p0, Lo/DreamAppGlideModule;->ICustomTabsCallback:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(I)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_1
    iget v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    sub-int v2, v0, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    aget-byte v4, v2, v1

    const/16 v5, -0x11

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    const/16 v5, -0x45

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, 0x2

    aget-byte v2, v2, v4

    const/16 v4, -0x41

    if-ne v2, v4, :cond_2

    add-int/2addr v1, v3

    .line 530
    iput v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    .line 532
    :cond_2
    iget-object v1, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage([BII)Ljava/lang/String;

    move-result-object v1

    .line 533
    iput v0, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    .line 534
    iget v2, p0, Lo/DreamAppGlideModule;->ICustomTabsCallback:I

    if-ne v0, v2, :cond_3

    return-object v1

    .line 537
    :cond_3
    iget-object v3, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    aget-byte v3, v3, v0

    const/16 v4, 0xd

    if-ne v3, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 538
    iput v0, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    if-ne v0, v2, :cond_4

    return-object v1

    .line 543
    :cond_4
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v0, v0, v2

    const/16 v3, 0xa

    if-ne v0, v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 544
    iput v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    :cond_5
    return-object v1
.end method

.method public final IPostMessageService$Stub()Ljava/lang/String;
    .locals 4

    .line 494
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 497
    :cond_0
    iget v0, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    .line 498
    :goto_0
    iget v1, p0, Lo/DreamAppGlideModule;->ICustomTabsCallback:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_1
    iget-object v1, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage([BII)Ljava/lang/String;

    move-result-object v1

    .line 502
    iput v0, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    .line 503
    iget v2, p0, Lo/DreamAppGlideModule;->ICustomTabsCallback:I

    if-ge v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 504
    iput v0, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    :cond_2
    return-object v1
.end method

.method public final asBinder()C
    .locals 3

    .line 218
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-char v0, v0

    return v0
.end method

.method public final asInterface()S
    .locals 4

    .line 248
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 143
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    array-length v0, v0

    return v0
.end method

.method public final extraCallback(I)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->extraCallback()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    :goto_0
    invoke-virtual {p0, v0, p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    return-void
.end method

.method public final extraCallback([B)V
    .locals 1

    .line 93
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    return-void
.end method

.method public final extraCommand()I
    .locals 4

    .line 382
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    .line 383
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v1

    .line 384
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v2

    .line 385
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v3

    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public final getInterfaceDescriptor()J
    .locals 9

    .line 299
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x18

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final mayLaunchUrl()I
    .locals 4

    .line 367
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x2

    .line 369
    iput v3, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    return v0
.end method

.method public final newSession()I
    .locals 4

    .line 263
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 2

    .line 112
    iget v0, p0, Lo/DreamAppGlideModule;->ICustomTabsCallback:I

    iget v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 155
    iget v0, p0, Lo/DreamAppGlideModule;->ICustomTabsCallback:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 156
    iput p1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    return-void
.end method

.method public final onMessageChannelReady([BII)V
    .locals 2

    .line 191
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget p1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    add-int/2addr p1, p3

    iput p1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 136
    iget v0, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    return v0
.end method

.method public final onNavigationEvent(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 128
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 129
    iput p1, p0, Lo/DreamAppGlideModule;->ICustomTabsCallback:I

    return-void
.end method

.method public final onPostMessage()I
    .locals 1

    .line 119
    iget v0, p0, Lo/DreamAppGlideModule;->ICustomTabsCallback:I

    return v0
.end method

.method public final onPostMessage(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 461
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 462
    iget p2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    add-int/2addr p2, p1

    iput p2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    return-object v0
.end method

.method public final onPostMessage(I)V
    .locals 1

    .line 167
    iget v0, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return-void
.end method

.method public final onRelationshipValidationResult()I
    .locals 3

    .line 226
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final onTransact()I
    .locals 2

    .line 211
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final postMessage()I
    .locals 3

    .line 395
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 397
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Top bit not zero: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final requestPostMessageChannel()J
    .locals 5

    .line 422
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->warmup()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    .line 424
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Top bit not zero: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final updateVisuals()F
    .locals 1

    .line 433
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final validateRelationship()D
    .locals 2

    .line 440
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->warmup()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final warmup()J
    .locals 9

    .line 339
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x38

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x18

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lo/DreamAppGlideModule;->onMessageChannelReady:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method
