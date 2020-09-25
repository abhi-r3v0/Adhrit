.class public final Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:[I

.field private static final onNavigationEvent:[B

.field private static final onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 30
    fill-array-data v0, :array_0

    sput-object v0, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->onNavigationEvent:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 34
    fill-array-data v0, :array_1

    sput-object v0, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->extraCallback:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 52
    fill-array-data v0, :array_2

    sput-object v0, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->onPostMessage:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private static ICustomTabsCallback(Lo/PublisherException;)I
    .locals 2

    const/4 v0, 0x5

    .line 314
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    .line 316
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result p0

    add-int/lit8 v0, p0, 0x20

    :cond_0
    return v0
.end method

.method public static ICustomTabsCallback([BII)[B
    .locals 4

    .line 232
    sget-object v0, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->onNavigationEvent:[B

    array-length v1, v0

    add-int/2addr v1, p2

    new-array v1, v1, [B

    .line 233
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    sget-object v0, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->onNavigationEvent:[B

    array-length v0, v0

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static extraCallback(Lo/PublisherException;Z)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PublisherException;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 109
    invoke-static {p0}, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->ICustomTabsCallback(Lo/PublisherException;)I

    move-result v0

    .line 110
    invoke-static {p0}, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->onMessageChannelReady(Lo/PublisherException;)I

    move-result v1

    const/4 v2, 0x4

    .line 111
    invoke-virtual {p0, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    const/16 v4, 0x1d

    if-ne v0, v4, :cond_1

    .line 118
    :cond_0
    invoke-static {p0}, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->onMessageChannelReady(Lo/PublisherException;)I

    move-result v1

    .line 119
    invoke-static {p0}, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->ICustomTabsCallback(Lo/PublisherException;)I

    move-result v0

    const/16 v4, 0x16

    if-ne v0, v4, :cond_1

    .line 122
    invoke-virtual {p0, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    :cond_1
    const/4 v4, 0x1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    const/4 v5, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, p1, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x11

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 143
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported audio object type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_2
    :pswitch_0
    invoke-static {p0, v0, v3}, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->onMessageChannelReady(Lo/PublisherException;II)V

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 152
    :pswitch_2
    invoke-virtual {p0, v5}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result p0

    if-eq p0, v5, :cond_3

    if-eq p0, p1, :cond_3

    goto :goto_0

    .line 154
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unsupported epConfig: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_4
    :goto_0
    sget-object p0, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->onPostMessage:[I

    aget p0, p0, v3

    const/4 p1, -0x1

    if-eq p0, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    .line 161
    :goto_1
    invoke-static {v4}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static extraCallback(III)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 220
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "avc1.%02X%02X%02X"

    .line 219
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static onMessageChannelReady(Lo/PublisherException;)I
    .locals 2

    const/4 v0, 0x4

    .line 330
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/16 v0, 0x18

    .line 332
    invoke-virtual {p0, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result p0

    goto :goto_1

    :cond_0
    const/16 p0, 0xd

    if-ge v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 334
    :goto_0
    invoke-static {p0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 335
    sget-object p0, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->extraCallback:[I

    aget p0, p0, v0

    :goto_1
    return p0
.end method

.method private static onMessageChannelReady(Lo/PublisherException;II)V
    .locals 4

    const/4 v0, 0x1

    .line 342
    invoke-virtual {p0, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 343
    invoke-virtual {p0}, Lo/PublisherException;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    .line 345
    invoke-virtual {p0, v1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 347
    :cond_0
    invoke-virtual {p0}, Lo/PublisherException;->extraCallback()Z

    move-result v1

    if-eqz p2, :cond_7

    const/4 p2, 0x6

    const/16 v2, 0x14

    const/4 v3, 0x3

    if-eq p1, p2, :cond_1

    if-ne p1, v2, :cond_2

    .line 352
    :cond_1
    invoke-virtual {p0, v3}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_2
    if-eqz v1, :cond_6

    const/16 p2, 0x16

    if-ne p1, p2, :cond_3

    const/16 p2, 0x10

    .line 356
    invoke-virtual {p0, p2}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_3
    const/16 p2, 0x11

    if-eq p1, p2, :cond_4

    const/16 p2, 0x13

    if-eq p1, p2, :cond_4

    if-eq p1, v2, :cond_4

    const/16 p2, 0x17

    if-ne p1, p2, :cond_5

    .line 362
    :cond_4
    invoke-virtual {p0, v3}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 364
    :cond_5
    invoke-virtual {p0, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    :cond_6
    return-void

    .line 349
    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static onNavigationEvent([B)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 94
    new-instance v0, Lo/PublisherException;

    invoke-direct {v0, p0}, Lo/PublisherException;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->extraCallback(Lo/PublisherException;Z)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(III)[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    shl-int/lit8 p0, p0, 0x3

    and-int/lit16 p0, p0, 0xf8

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    shl-int/lit8 p0, p1, 0x7

    and-int/lit16 p0, p0, 0x80

    shl-int/lit8 p1, p2, 0x3

    and-int/lit8 p1, p1, 0x78

    or-int/2addr p0, p1

    int-to-byte p0, p0

    const/4 p1, 0x1

    aput-byte p0, v0, p1

    return-object v0
.end method
