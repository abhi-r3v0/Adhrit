.class public final Lo/CompositeCreateReportSpiCall$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CompositeCreateReportSpiCall$1$onPostMessage;,
        Lo/CompositeCreateReportSpiCall$1$onNavigationEvent;,
        Lo/CompositeCreateReportSpiCall$1$onMessageChannelReady;,
        Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;,
        Lo/CompositeCreateReportSpiCall$1$extraCallback;
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7172
    invoke-static {}, Lo/CreateReportSpiCall;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/CreateReportSpiCall;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lo/computeRawVarint64Size;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lo/CompositeCreateReportSpiCall$1$onNavigationEvent;

    invoke-direct {v0}, Lo/CompositeCreateReportSpiCall$1$onNavigationEvent;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Lo/CompositeCreateReportSpiCall$1$onMessageChannelReady;

    invoke-direct {v0}, Lo/CompositeCreateReportSpiCall$1$onMessageChannelReady;-><init>()V

    :goto_1
    sput-object v0, Lo/CompositeCreateReportSpiCall$1;->extraCallback:Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;

    return-void
.end method

.method static ICustomTabsCallback([BII)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 340
    sget-object v0, Lo/CompositeCreateReportSpiCall$1;->extraCallback:Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;

    invoke-virtual {v0, p0, p1, p2}, Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;->ICustomTabsCallback([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ICustomTabsCallback([B)Z
    .locals 3

    .line 147
    sget-object v0, Lo/CompositeCreateReportSpiCall$1;->extraCallback:Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;

    array-length v1, p0

    const/4 v2, 0x0

    .line 1390
    invoke-virtual {v0, v2, p0, v2, v1}, Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;->onMessageChannelReady(I[BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public static extraCallback(I[BII)I
    .locals 1

    .line 176
    sget-object v0, Lo/CompositeCreateReportSpiCall$1;->extraCallback:Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;

    invoke-virtual {v0, p0, p1, p2, p3}, Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;->onMessageChannelReady(I[BII)I

    move-result p0

    return p0
.end method

.method static synthetic extraCallback([BII)I
    .locals 6

    add-int/lit8 v0, p1, -0x1

    .line 4194
    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    const/4 v1, -0x1

    const/16 v2, -0xc

    if-eqz p2, :cond_6

    const/16 v3, -0x41

    const/4 v4, 0x1

    if-eq p2, v4, :cond_3

    const/4 v5, 0x2

    if-ne p2, v5, :cond_2

    .line 4201
    aget-byte p2, p0, p1

    add-int/2addr p1, v4

    aget-byte p0, p0, p1

    if-gt v0, v2, :cond_1

    if-gt p2, v3, :cond_1

    if-le p0, v3, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p2, 0x8

    xor-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    return v1

    .line 4203
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4199
    :cond_3
    aget-byte p0, p0, p1

    if-gt v0, v2, :cond_5

    if-le p0, v3, :cond_4

    goto :goto_1

    :cond_4
    shl-int/lit8 p0, p0, 0x8

    xor-int/2addr p0, v0

    return p0

    :cond_5
    :goto_1
    return v1

    :cond_6
    if-le v0, v2, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method static extraCallback(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 330
    sget-object v0, Lo/CompositeCreateReportSpiCall$1;->extraCallback:Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;

    .line 3626
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3627
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    .line 3628
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    add-int/2addr v1, p1

    invoke-virtual {v0, p0, v1, p2}, Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;->ICustomTabsCallback([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3629
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3630
    invoke-virtual {v0, p0, p1, p2}, Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;->onNavigationEvent(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3632
    :cond_1
    invoke-static {p0, p1, p2}, Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;->onMessageChannelReady(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onNavigationEvent(I)I
    .locals 1

    const/16 v0, -0xc

    if-le p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method static synthetic onNavigationEvent(II)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic onNavigationEvent(III)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-gt p1, v0, :cond_1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static onNavigationEvent(Ljava/lang/CharSequence;[BII)I
    .locals 1

    .line 293
    sget-object v0, Lo/CompositeCreateReportSpiCall$1;->extraCallback:Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;

    invoke-virtual {v0, p0, p1, p2, p3}, Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/CharSequence;[BII)I

    move-result p0

    return p0
.end method

.method public static onPostMessage(Ljava/lang/CharSequence;)I
    .locals 8

    .line 241
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 246
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 252
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_1

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3270
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_5

    .line 3273
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_2

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-gt v7, v6, :cond_4

    const v7, 0xdfff

    if-gt v6, v7, :cond_4

    .line 3281
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3283
    :cond_3
    new-instance p0, Lo/CompositeCreateReportSpiCall$1$extraCallback;

    invoke-direct {p0, v2, v4}, Lo/CompositeCreateReportSpiCall$1$extraCallback;-><init>(II)V

    throw p0

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v3, v1

    :cond_6
    if-lt v3, v0, :cond_7

    return v3

    .line 263
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v1, v3

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onPostMessage([BII)Z
    .locals 2

    .line 159
    sget-object v0, Lo/CompositeCreateReportSpiCall$1;->extraCallback:Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;

    const/4 v1, 0x0

    .line 2390
    invoke-virtual {v0, v1, p0, p1, p2}, Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;->onMessageChannelReady(I[BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method
