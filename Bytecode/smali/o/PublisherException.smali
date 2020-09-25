.class public final Lo/PublisherException;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:I

.field private extraCallback:I

.field public onMessageChannelReady:[B

.field private onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->asBinder:[B

    iput-object v0, p0, Lo/PublisherException;->onMessageChannelReady:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 42
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lo/PublisherException;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lo/PublisherException;->onMessageChannelReady:[B

    .line 53
    iput p2, p0, Lo/PublisherException;->onPostMessage:I

    return-void
.end method

.method private onTransact()V
    .locals 2

    .line 306
    iget v0, p0, Lo/PublisherException;->ICustomTabsCallback:I

    if-ltz v0, :cond_1

    iget v1, p0, Lo/PublisherException;->onPostMessage:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/PublisherException;->extraCallback:I

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
    .locals 2

    .line 100
    iget v0, p0, Lo/PublisherException;->ICustomTabsCallback:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lo/PublisherException;->extraCallback:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final ICustomTabsCallback(I)V
    .locals 3

    .line 141
    div-int/lit8 v0, p1, 0x8

    .line 142
    iget v1, p0, Lo/PublisherException;->ICustomTabsCallback:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/PublisherException;->ICustomTabsCallback:I

    .line 143
    iget v2, p0, Lo/PublisherException;->extraCallback:I

    shl-int/lit8 v0, v0, 0x3

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    iput v2, p0, Lo/PublisherException;->extraCallback:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 145
    iput v1, p0, Lo/PublisherException;->ICustomTabsCallback:I

    add-int/lit8 v2, v2, -0x8

    .line 146
    iput v2, p0, Lo/PublisherException;->extraCallback:I

    .line 148
    :cond_0
    invoke-direct {p0}, Lo/PublisherException;->onTransact()V

    return-void
.end method

.method public final ICustomTabsCallback(II)V
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ge p2, v1, :cond_0

    shl-int v1, v0, p2

    sub-int/2addr v1, v0

    and-int/2addr p1, v1

    .line 281
    :cond_0
    iget v1, p0, Lo/PublisherException;->extraCallback:I

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 282
    iget v3, p0, Lo/PublisherException;->extraCallback:I

    rsub-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, v1

    const v5, 0xff00

    shr-int v3, v5, v3

    shl-int v5, v0, v4

    sub-int/2addr v5, v0

    or-int/2addr v3, v5

    .line 284
    iget-object v5, p0, Lo/PublisherException;->onMessageChannelReady:[B

    iget v6, p0, Lo/PublisherException;->ICustomTabsCallback:I

    aget-byte v7, v5, v6

    and-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    sub-int v1, p2, v1

    ushr-int v3, p1, v1

    .line 286
    aget-byte v7, v5, v6

    shl-int/2addr v3, v4

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    add-int/2addr v6, v0

    :goto_0
    if-le v1, v2, :cond_1

    .line 291
    iget-object v3, p0, Lo/PublisherException;->onMessageChannelReady:[B

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v5, v1, -0x8

    ushr-int v5, p1, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    add-int/lit8 v1, v1, -0x8

    move v6, v4

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v1

    .line 295
    iget-object v3, p0, Lo/PublisherException;->onMessageChannelReady:[B

    aget-byte v4, v3, v6

    shl-int v5, v0, v2

    sub-int/2addr v5, v0

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    and-int/2addr p1, v1

    .line 298
    aget-byte v0, v3, v6

    shl-int/2addr p1, v2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v3, v6

    .line 300
    invoke-virtual {p0, p2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 301
    invoke-direct {p0}, Lo/PublisherException;->onTransact()V

    return-void
.end method

.method public final ICustomTabsCallback([BI)V
    .locals 0

    .line 83
    iput-object p1, p0, Lo/PublisherException;->onMessageChannelReady:[B

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lo/PublisherException;->ICustomTabsCallback:I

    .line 85
    iput p1, p0, Lo/PublisherException;->extraCallback:I

    .line 86
    iput p2, p0, Lo/PublisherException;->onPostMessage:I

    return-void
.end method

.method public final asInterface()V
    .locals 1

    .line 230
    iget v0, p0, Lo/PublisherException;->extraCallback:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lo/PublisherException;->extraCallback:I

    .line 234
    iget v0, p0, Lo/PublisherException;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/PublisherException;->ICustomTabsCallback:I

    .line 235
    invoke-direct {p0}, Lo/PublisherException;->onTransact()V

    return-void
.end method

.method public final extraCallback([B)V
    .locals 1

    .line 62
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lo/PublisherException;->ICustomTabsCallback([BI)V

    return-void
.end method

.method public final extraCallback()Z
    .locals 3

    .line 157
    iget-object v0, p0, Lo/PublisherException;->onMessageChannelReady:[B

    iget v1, p0, Lo/PublisherException;->ICustomTabsCallback:I

    aget-byte v0, v0, v1

    iget v1, p0, Lo/PublisherException;->extraCallback:I

    const/16 v2, 0x80

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 158
    :goto_0
    invoke-virtual {p0}, Lo/PublisherException;->onPostMessage()V

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 109
    iget v0, p0, Lo/PublisherException;->extraCallback:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 110
    iget v0, p0, Lo/PublisherException;->ICustomTabsCallback:I

    return v0
.end method

.method public final onMessageChannelReady(I)V
    .locals 1

    .line 119
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lo/PublisherException;->ICustomTabsCallback:I

    shl-int/lit8 v0, v0, 0x3

    sub-int/2addr p1, v0

    .line 120
    iput p1, p0, Lo/PublisherException;->extraCallback:I

    .line 121
    invoke-direct {p0}, Lo/PublisherException;->onTransact()V

    return-void
.end method

.method public final onMessageChannelReady([BII)V
    .locals 2

    .line 249
    iget v0, p0, Lo/PublisherException;->extraCallback:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 250
    iget-object v0, p0, Lo/PublisherException;->onMessageChannelReady:[B

    iget v1, p0, Lo/PublisherException;->ICustomTabsCallback:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget p1, p0, Lo/PublisherException;->ICustomTabsCallback:I

    add-int/2addr p1, p3

    iput p1, p0, Lo/PublisherException;->ICustomTabsCallback:I

    .line 252
    invoke-direct {p0}, Lo/PublisherException;->onTransact()V

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 2

    .line 93
    iget v0, p0, Lo/PublisherException;->onPostMessage:I

    iget v1, p0, Lo/PublisherException;->ICustomTabsCallback:I

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lo/PublisherException;->extraCallback:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final onNavigationEvent(I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 173
    :cond_0
    iget v1, p0, Lo/PublisherException;->extraCallback:I

    add-int/2addr v1, p1

    iput v1, p0, Lo/PublisherException;->extraCallback:I

    const/4 v1, 0x0

    .line 174
    :goto_0
    iget v2, p0, Lo/PublisherException;->extraCallback:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    add-int/lit8 v2, v2, -0x8

    .line 175
    iput v2, p0, Lo/PublisherException;->extraCallback:I

    .line 176
    iget-object v3, p0, Lo/PublisherException;->onMessageChannelReady:[B

    iget v4, p0, Lo/PublisherException;->ICustomTabsCallback:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lo/PublisherException;->ICustomTabsCallback:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 178
    :cond_1
    iget-object v4, p0, Lo/PublisherException;->onMessageChannelReady:[B

    iget v5, p0, Lo/PublisherException;->ICustomTabsCallback:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    const/4 v4, -0x1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int p1, v4, p1

    and-int/2addr p1, v1

    if-ne v2, v3, :cond_2

    .line 181
    iput v0, p0, Lo/PublisherException;->extraCallback:I

    add-int/lit8 v5, v5, 0x1

    .line 182
    iput v5, p0, Lo/PublisherException;->ICustomTabsCallback:I

    .line 184
    :cond_2
    invoke-direct {p0}, Lo/PublisherException;->onTransact()V

    return p1
.end method

.method public final onNavigationEvent([BII)V
    .locals 7

    shr-int/lit8 v0, p3, 0x3

    add-int/2addr v0, p2

    :goto_0
    const/16 v1, 0xff

    const/16 v2, 0x8

    if-ge p2, v0, :cond_0

    .line 201
    iget-object v3, p0, Lo/PublisherException;->onMessageChannelReady:[B

    iget v4, p0, Lo/PublisherException;->ICustomTabsCallback:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lo/PublisherException;->ICustomTabsCallback:I

    aget-byte v4, v3, v4

    iget v6, p0, Lo/PublisherException;->extraCallback:I

    shl-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 202
    aget-byte v4, p1, p2

    aget-byte v3, v3, v5

    and-int/2addr v1, v3

    sub-int/2addr v2, v6

    shr-int/2addr v1, v2

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p3, 0x7

    if-nez p2, :cond_1

    return-void

    .line 210
    :cond_1
    aget-byte p3, p1, v0

    shr-int v3, v1, p2

    and-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    .line 211
    iget p3, p0, Lo/PublisherException;->extraCallback:I

    add-int v3, p3, p2

    if-le v3, v2, :cond_2

    .line 213
    aget-byte v3, p1, v0

    iget-object v4, p0, Lo/PublisherException;->onMessageChannelReady:[B

    iget v5, p0, Lo/PublisherException;->ICustomTabsCallback:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lo/PublisherException;->ICustomTabsCallback:I

    aget-byte v4, v4, v5

    and-int/2addr v4, v1

    shl-int/2addr v4, p3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    sub-int/2addr p3, v2

    .line 214
    iput p3, p0, Lo/PublisherException;->extraCallback:I

    .line 216
    :cond_2
    iget p3, p0, Lo/PublisherException;->extraCallback:I

    add-int/2addr p3, p2

    iput p3, p0, Lo/PublisherException;->extraCallback:I

    .line 217
    iget-object v3, p0, Lo/PublisherException;->onMessageChannelReady:[B

    iget v4, p0, Lo/PublisherException;->ICustomTabsCallback:I

    aget-byte v3, v3, v4

    and-int/2addr v1, v3

    rsub-int/lit8 v3, p3, 0x8

    shr-int/2addr v1, v3

    .line 218
    aget-byte v3, p1, v0

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, v1, p2

    int-to-byte p2, p2

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    if-ne p3, v2, :cond_3

    const/4 p1, 0x0

    .line 220
    iput p1, p0, Lo/PublisherException;->extraCallback:I

    add-int/lit8 v4, v4, 0x1

    .line 221
    iput v4, p0, Lo/PublisherException;->ICustomTabsCallback:I

    .line 223
    :cond_3
    invoke-direct {p0}, Lo/PublisherException;->onTransact()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 128
    iget v0, p0, Lo/PublisherException;->extraCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/PublisherException;->extraCallback:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lo/PublisherException;->extraCallback:I

    .line 130
    iget v0, p0, Lo/PublisherException;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/PublisherException;->ICustomTabsCallback:I

    .line 132
    :cond_0
    invoke-direct {p0}, Lo/PublisherException;->onTransact()V

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 1

    .line 262
    iget v0, p0, Lo/PublisherException;->extraCallback:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 263
    iget v0, p0, Lo/PublisherException;->ICustomTabsCallback:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/PublisherException;->ICustomTabsCallback:I

    .line 264
    invoke-direct {p0}, Lo/PublisherException;->onTransact()V

    return-void
.end method

.method public final onPostMessage(Lo/DreamAppGlideModule;)V
    .locals 2

    .line 72
    iget-object v0, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lo/PublisherException;->ICustomTabsCallback([BI)V

    .line 73
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lo/PublisherException;->onMessageChannelReady(I)V

    return-void
.end method
