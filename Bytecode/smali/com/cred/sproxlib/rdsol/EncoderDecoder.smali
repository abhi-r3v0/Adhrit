.class public final Lcom/cred/sproxlib/rdsol/EncoderDecoder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cred/sproxlib/rdsol/EncoderDecoder$RDSException;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/onItemHoverEnter$onPostMessage;

.field private onMessageChannelReady:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lo/MenuItemHoverListener$extraCallback;

    invoke-direct {v0, p1}, Lo/MenuItemHoverListener$extraCallback;-><init>(I)V

    .line 14
    new-instance v0, Lo/onItemHoverEnter$onPostMessage;

    invoke-direct {v0, p1}, Lo/onItemHoverEnter$onPostMessage;-><init>(I)V

    iput-object v0, p0, Lcom/cred/sproxlib/rdsol/EncoderDecoder;->ICustomTabsCallback:Lo/onItemHoverEnter$onPostMessage;

    .line 15
    iput p1, p0, Lcom/cred/sproxlib/rdsol/EncoderDecoder;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final extraCallback([B)[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cred/sproxlib/rdsol/EncoderDecoder$RDSException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 30
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 33
    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/cred/sproxlib/rdsol/EncoderDecoder;->onMessageChannelReady:I

    add-int/2addr v0, v1

    const/16 v2, 0x100

    if-gt v0, v2, :cond_a

    .line 37
    array-length v0, p1

    add-int/2addr v1, v0

    .line 38
    new-array v0, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 40
    :goto_0
    array-length v4, p1

    const/16 v5, 0xff

    if-ge v3, v4, :cond_1

    .line 41
    aget-byte v4, p1, v3

    and-int/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/cred/sproxlib/rdsol/EncoderDecoder;->ICustomTabsCallback:Lo/onItemHoverEnter$onPostMessage;

    .line 1065
    iget v3, p1, Lo/onItemHoverEnter$onPostMessage;->extraCallback:I

    sub-int v3, v1, v3

    if-ltz v3, :cond_9

    .line 3033
    iget v4, p1, Lo/onItemHoverEnter$onPostMessage;->extraCallback:I

    add-int/2addr v4, v3

    if-gt v4, v5, :cond_9

    .line 3036
    iget v4, p1, Lo/onItemHoverEnter$onPostMessage;->extraCallback:I

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_7

    .line 3039
    aget v6, v0, v5

    .line 3040
    aget v7, v4, v2

    xor-int/2addr v6, v7

    const/4 v7, 0x0

    .line 3041
    :goto_2
    iget v8, p1, Lo/onItemHoverEnter$onPostMessage;->extraCallback:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_4

    add-int/lit8 v8, v7, 0x1

    .line 3042
    aget v9, v4, v8

    iget-object v10, p1, Lo/onItemHoverEnter$onPostMessage;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;

    iget-object v11, p1, Lo/onItemHoverEnter$onPostMessage;->onNavigationEvent:[I

    aget v11, v11, v7

    if-eqz v6, :cond_3

    if-nez v11, :cond_2

    goto :goto_3

    .line 4041
    :cond_2
    iget-object v12, v10, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->ICustomTabsCallback:[I

    iget-object v13, v10, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->extraCallback:[I

    aget v13, v13, v6

    iget-object v10, v10, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->extraCallback:[I

    aget v10, v10, v11

    add-int/2addr v13, v10

    aget v10, v12, v13

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v10, 0x0

    :goto_4
    xor-int/2addr v9, v10

    .line 3042
    aput v9, v4, v7

    move v7, v8

    goto :goto_2

    .line 3044
    :cond_4
    iget v7, p1, Lo/onItemHoverEnter$onPostMessage;->extraCallback:I

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p1, Lo/onItemHoverEnter$onPostMessage;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;

    iget-object v9, p1, Lo/onItemHoverEnter$onPostMessage;->onNavigationEvent:[I

    iget v10, p1, Lo/onItemHoverEnter$onPostMessage;->extraCallback:I

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    if-eqz v6, :cond_6

    if-nez v9, :cond_5

    goto :goto_5

    .line 5041
    :cond_5
    iget-object v10, v8, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->ICustomTabsCallback:[I

    iget-object v11, v8, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->extraCallback:[I

    aget v6, v11, v6

    iget-object v8, v8, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->extraCallback:[I

    aget v8, v8, v9

    add-int/2addr v6, v8

    aget v6, v10, v6

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v6, 0x0

    .line 3044
    :goto_6
    aput v6, v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3047
    :cond_7
    iget p1, p1, Lo/onItemHoverEnter$onPostMessage;->extraCallback:I

    invoke-static {v4, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_7
    if-ge v2, v1, :cond_8

    .line 48
    aget v3, v0, v2

    .line 49
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 52
    :cond_8
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 3034
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bad data length:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_a
    new-instance p1, Lcom/cred/sproxlib/rdsol/EncoderDecoder$RDSException;

    const-string v0, "Data Length + Number or error correction bytes cannot exceed 256 bytes"

    invoke-direct {p1, v0}, Lcom/cred/sproxlib/rdsol/EncoderDecoder$RDSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_8
    const/4 p1, 0x0

    return-object p1
.end method
