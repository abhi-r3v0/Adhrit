.class public final Lo/ImageHeaderParser$ImageType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSessionId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;,
        Lo/ImageHeaderParser$ImageType$onNavigationEvent;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/ImageHeaderParser$ImageType$onNavigationEvent;

.field public static final onPostMessage:I


# instance fields
.field private final onNavigationEvent:Lo/ImageHeaderParser$ImageType$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    sget-object v0, Lo/HttpException;->onNavigationEvent:Lo/HttpException;

    sput-object v0, Lo/ImageHeaderParser$ImageType;->ICustomTabsCallback:Lo/ImageHeaderParser$ImageType$onNavigationEvent;

    const-string v0, "ID3"

    .line 67
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/ImageHeaderParser$ImageType;->onPostMessage:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0}, Lo/ImageHeaderParser$ImageType;-><init>(Lo/ImageHeaderParser$ImageType$onNavigationEvent;)V

    return-void
.end method

.method public constructor <init>(Lo/ImageHeaderParser$ImageType$onNavigationEvent;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lo/ImageHeaderParser$ImageType;->onNavigationEvent:Lo/ImageHeaderParser$ImageType$onNavigationEvent;

    return-void
.end method

.method private static ICustomTabsCallback([BI)I
    .locals 1

    .line 773
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 774
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 778
    :cond_1
    array-length p0, p0

    return p0
.end method

.method private static ICustomTabsCallback(Lo/DreamAppGlideModule;ILjava/lang/String;)Lo/Registry$NoImageHeaderParserException;
    .locals 2

    .line 700
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 701
    invoke-virtual {p0, v0, v1, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 703
    new-instance p0, Lo/Registry$NoImageHeaderParserException;

    invoke-direct {p0, p2, v0}, Lo/Registry$NoImageHeaderParserException;-><init>(Ljava/lang/String;[B)V

    return-object p0
.end method

.method private static ICustomTabsCallback(Lo/DreamAppGlideModule;I)Lo/calculateScaling;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 455
    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    .line 456
    invoke-static {v0}, Lo/ImageHeaderParser$ImageType;->onMessageChannelReady(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    .line 458
    new-array v2, p1, [B

    const/4 v3, 0x0

    .line 459
    invoke-virtual {p0, v2, v3, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 461
    invoke-static {v2, v3, v0}, Lo/ImageHeaderParser$ImageType;->extraCallback([BII)I

    move-result p0

    .line 462
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2, v3, p0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 464
    invoke-static {v0}, Lo/ImageHeaderParser$ImageType;->onPostMessage(I)I

    move-result v0

    add-int/2addr p0, v0

    .line 465
    invoke-static {v2, p0}, Lo/ImageHeaderParser$ImageType;->ICustomTabsCallback([BI)I

    move-result v0

    const-string v1, "ISO-8859-1"

    .line 466
    invoke-static {v2, p0, v0, v1}, Lo/ImageHeaderParser$ImageType;->extraCallback([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 468
    new-instance v0, Lo/calculateScaling;

    const-string v1, "WXXX"

    invoke-direct {v0, v1, p1, p0}, Lo/calculateScaling;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static ICustomTabsCallback$Stub(Lo/DreamAppGlideModule;I)Lo/DefaultImageHeaderParser$Reader$EndOfFileException;
    .locals 10

    .line 670
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v1

    .line 671
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->newSession()I

    move-result v2

    .line 672
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->newSession()I

    move-result v3

    .line 673
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    .line 674
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v4

    .line 676
    new-instance v5, Lo/PublisherException;

    invoke-direct {v5}, Lo/PublisherException;-><init>()V

    .line 677
    invoke-virtual {v5, p0}, Lo/PublisherException;->onPostMessage(Lo/DreamAppGlideModule;)V

    add-int/lit8 p1, p1, -0xa

    mul-int/lit8 p1, p1, 0x8

    add-int p0, v0, v4

    .line 680
    div-int/2addr p1, p0

    .line 681
    new-array p0, p1, [I

    .line 682
    new-array v6, p1, [I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p1, :cond_0

    .line 684
    invoke-virtual {v5, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v8

    .line 685
    invoke-virtual {v5, v4}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v9

    .line 686
    aput v8, p0, v7

    .line 687
    aput v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 690
    :cond_0
    new-instance p1, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;

    move-object v0, p1

    move-object v4, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lo/DefaultImageHeaderParser$Reader$EndOfFileException;-><init>(III[I[I)V

    return-object p1
.end method

.method private static asBinder(Lo/DreamAppGlideModule;I)I
    .locals 5

    .line 715
    iget-object v0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 716
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result p0

    move v1, p0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    add-int v3, p0, p1

    if-ge v2, v3, :cond_1

    .line 718
    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    sub-int v3, v1, p0

    add-int/lit8 v1, v1, 0x2

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x2

    .line 720
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, -0x1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return p1
.end method

.method private static extraCallback([BII)I
    .locals 1

    .line 754
    invoke-static {p0, p1}, Lo/ImageHeaderParser$ImageType;->ICustomTabsCallback([BI)I

    move-result p1

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 762
    :cond_0
    :goto_0
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_2

    .line 763
    rem-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    aget-byte p2, p0, p2

    if-nez p2, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 766
    invoke-static {p0, p1}, Lo/ImageHeaderParser$ImageType;->ICustomTabsCallback([BI)I

    move-result p1

    goto :goto_0

    .line 769
    :cond_2
    array-length p0, p0

    return p0

    :cond_3
    :goto_1
    return p1
.end method

.method private static extraCallback([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-le p2, p1, :cond_1

    .line 815
    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 818
    :cond_0
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static extraCallback(Lo/DreamAppGlideModule;I)Lo/decode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 413
    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    .line 414
    invoke-static {v0}, Lo/ImageHeaderParser$ImageType;->onMessageChannelReady(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    .line 416
    new-array v2, p1, [B

    const/4 v3, 0x0

    .line 417
    invoke-virtual {p0, v2, v3, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 419
    invoke-static {v2, v3, v0}, Lo/ImageHeaderParser$ImageType;->extraCallback([BII)I

    move-result p0

    .line 420
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2, v3, p0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 422
    invoke-static {v0}, Lo/ImageHeaderParser$ImageType;->onPostMessage(I)I

    move-result v3

    add-int/2addr p0, v3

    .line 423
    invoke-static {v2, p0, v0}, Lo/ImageHeaderParser$ImageType;->extraCallback([BII)I

    move-result v0

    .line 424
    invoke-static {v2, p0, v0, v1}, Lo/ImageHeaderParser$ImageType;->extraCallback([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 426
    new-instance v0, Lo/decode;

    const-string v1, "TXXX"

    invoke-direct {v0, v1, p1, p0}, Lo/decode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic extraCallback(IIIII)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static onMessageChannelReady(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "ISO-8859-1"

    return-object p0

    :cond_0
    const-string p0, "UTF-8"

    return-object p0

    :cond_1
    const-string p0, "UTF-16BE"

    return-object p0

    :cond_2
    const-string p0, "UTF-16"

    return-object p0
.end method

.method private static onMessageChannelReady(IIIII)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_0

    .line 749
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v3

    const-string p1, "%c%c%c"

    invoke-static {p0, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 750
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "%c%c%c%c"

    invoke-static {p0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;IIZILo/ImageHeaderParser$ImageType$onNavigationEvent;)Lo/Glide;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    .line 594
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v1

    .line 595
    iget-object v2, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-static {v2, v1}, Lo/ImageHeaderParser$ImageType;->ICustomTabsCallback([BI)I

    move-result v2

    .line 596
    new-instance v4, Ljava/lang/String;

    iget-object v3, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 598
    invoke-virtual {p0, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 600
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v5

    .line 601
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v6

    .line 602
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v2

    const-wide/16 v7, -0x1

    const-wide v9, 0xffffffffL

    cmp-long v11, v2, v9

    if-nez v11, :cond_0

    move-wide v11, v7

    goto :goto_0

    :cond_0
    move-wide v11, v2

    .line 606
    :goto_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v2

    cmp-long v13, v2, v9

    if-nez v13, :cond_1

    move-wide v9, v7

    goto :goto_1

    :cond_1
    move-wide v9, v2

    .line 611
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    .line 613
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v3

    if-ge v3, v1, :cond_3

    move/from16 v3, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v13, p5

    .line 614
    invoke-static {v3, p0, v7, v8, v13}, Lo/ImageHeaderParser$ImageType;->onPostMessage(ILo/DreamAppGlideModule;ZILo/ImageHeaderParser$ImageType$onNavigationEvent;)Lo/handles;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 617
    invoke-virtual {v2, v14}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 621
    :cond_3
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v0, v0, [Lo/handles;

    .line 622
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 623
    new-instance v1, Lo/Glide;

    move-object v3, v1

    move-wide v7, v11

    move-object v11, v0

    invoke-direct/range {v3 .. v11}, Lo/Glide;-><init>(Ljava/lang/String;IIJJ[Lo/handles;)V

    return-object v1
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;I)Lo/hasAlpha;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    .line 499
    invoke-static {v0}, Lo/ImageHeaderParser$ImageType;->onMessageChannelReady(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    .line 501
    new-array v2, p1, [B

    const/4 v3, 0x0

    .line 502
    invoke-virtual {p0, v2, v3, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 504
    invoke-static {v2, v3}, Lo/ImageHeaderParser$ImageType;->ICustomTabsCallback([BI)I

    move-result p0

    .line 505
    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v4, v2, v3, p0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    .line 508
    invoke-static {v2, p0, v0}, Lo/ImageHeaderParser$ImageType;->extraCallback([BII)I

    move-result v3

    .line 509
    invoke-static {v2, p0, v3, v1}, Lo/ImageHeaderParser$ImageType;->extraCallback([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 511
    invoke-static {v0}, Lo/ImageHeaderParser$ImageType;->onPostMessage(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 512
    invoke-static {v2, v3, v0}, Lo/ImageHeaderParser$ImageType;->extraCallback([BII)I

    move-result v5

    .line 514
    invoke-static {v2, v3, v5, v1}, Lo/ImageHeaderParser$ImageType;->extraCallback([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-static {v0}, Lo/ImageHeaderParser$ImageType;->onPostMessage(I)I

    move-result v0

    add-int/2addr v5, v0

    .line 517
    invoke-static {v2, v5, p1}, Lo/ImageHeaderParser$ImageType;->onPostMessage([BII)[B

    move-result-object p1

    .line 519
    new-instance v0, Lo/hasAlpha;

    invoke-direct {v0, v4, p0, v1, p1}, Lo/hasAlpha;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method private static onNavigationEvent(Lo/DreamAppGlideModule;IIZILo/ImageHeaderParser$ImageType$onNavigationEvent;)Lo/Registry$NoResultEncoderAvailableException;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    .line 634
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v1

    .line 635
    iget-object v2, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-static {v2, v1}, Lo/ImageHeaderParser$ImageType;->ICustomTabsCallback([BI)I

    move-result v2

    .line 636
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 638
    invoke-virtual {p0, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 640
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v2

    and-int/lit8 v5, v2, 0x2

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 644
    :goto_1
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v8

    .line 645
    new-array v9, v8, [Ljava/lang/String;

    :goto_2
    if-ge v7, v8, :cond_2

    .line 647
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v10

    .line 648
    iget-object v11, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-static {v11, v10}, Lo/ImageHeaderParser$ImageType;->ICustomTabsCallback([BI)I

    move-result v11

    .line 649
    new-instance v12, Ljava/lang/String;

    iget-object v13, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    sub-int v14, v11, v10

    invoke-direct {v12, v13, v10, v14, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v12, v9, v7

    add-int/2addr v11, v4

    .line 650
    invoke-virtual {p0, v11}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 653
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    .line 655
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v6

    if-ge v6, v1, :cond_4

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v10, p5

    .line 656
    invoke-static {v6, p0, v7, v8, v10}, Lo/ImageHeaderParser$ImageType;->onPostMessage(ILo/DreamAppGlideModule;ZILo/ImageHeaderParser$ImageType$onNavigationEvent;)Lo/handles;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 659
    invoke-virtual {v4, v11}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 663
    :cond_4
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v0, v0, [Lo/handles;

    .line 664
    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 665
    new-instance v1, Lo/Registry$NoResultEncoderAvailableException;

    move-object p0, v1

    move-object/from16 p1, v3

    move/from16 p2, v5

    move/from16 p3, v2

    move-object/from16 p4, v9

    move-object/from16 p5, v0

    invoke-direct/range {p0 .. p5}, Lo/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lo/handles;)V

    return-object v1
.end method

.method private static onNavigationEvent(Lo/DreamAppGlideModule;I)Lo/Registry$NoSourceEncoderAvailableException;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 566
    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v1

    .line 567
    invoke-static {v1}, Lo/ImageHeaderParser$ImageType;->onMessageChannelReady(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 570
    invoke-virtual {p0, v4, v5, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 571
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    sub-int/2addr p1, v0

    .line 573
    new-array v0, p1, [B

    .line 574
    invoke-virtual {p0, v0, v5, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 576
    invoke-static {v0, v5, v1}, Lo/ImageHeaderParser$ImageType;->extraCallback([BII)I

    move-result p0

    .line 577
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v5, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 579
    invoke-static {v1}, Lo/ImageHeaderParser$ImageType;->onPostMessage(I)I

    move-result v3

    add-int/2addr p0, v3

    .line 580
    invoke-static {v0, p0, v1}, Lo/ImageHeaderParser$ImageType;->extraCallback([BII)I

    move-result v1

    .line 581
    invoke-static {v0, p0, v1, v2}, Lo/ImageHeaderParser$ImageType;->extraCallback([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 583
    new-instance v0, Lo/Registry$NoSourceEncoderAvailableException;

    invoke-direct {v0, v6, p1, p0}, Lo/Registry$NoSourceEncoderAvailableException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static onNavigationEvent(Lo/DreamAppGlideModule;ILjava/lang/String;)Lo/calculateScaling;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 473
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 474
    invoke-virtual {p0, v0, v1, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 476
    invoke-static {v0, v1}, Lo/ImageHeaderParser$ImageType;->ICustomTabsCallback([BI)I

    move-result p0

    .line 477
    new-instance p1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {p1, v0, v1, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 479
    new-instance p0, Lo/calculateScaling;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lo/calculateScaling;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static onPostMessage(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static onPostMessage(Lo/DreamAppGlideModule;I)Lo/Downsampler;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 484
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 485
    invoke-virtual {p0, v0, v1, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 487
    invoke-static {v0, v1}, Lo/ImageHeaderParser$ImageType;->ICustomTabsCallback([BI)I

    move-result p0

    .line 488
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, v0, v1, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    .line 491
    invoke-static {v0, p0, p1}, Lo/ImageHeaderParser$ImageType;->onPostMessage([BII)[B

    move-result-object p0

    .line 493
    new-instance p1, Lo/Downsampler;

    invoke-direct {p1, v2, p0}, Lo/Downsampler;-><init>(Ljava/lang/String;[B)V

    return-object p1
.end method

.method private static onPostMessage(Lo/DreamAppGlideModule;)Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;
    .locals 9

    .line 158
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Id3Decoder"

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    const-string p0, "Data too short to be an ID3 tag"

    .line 159
    invoke-static {v2, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 163
    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->newSession()I

    move-result v0

    .line 164
    sget v3, Lo/ImageHeaderParser$ImageType;->onPostMessage:I

    if-eq v0, v3, :cond_1

    .line 165
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unexpected first three bytes of ID3 tag header: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 169
    :cond_1
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    const/4 v3, 0x1

    .line 170
    invoke-virtual {p0, v3}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 171
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v4

    .line 172
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->extraCommand()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-ne v0, v6, :cond_3

    and-int/lit8 p0, v4, 0x40

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_9

    const-string p0, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    .line 177
    invoke-static {v2, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    const/4 v6, 0x3

    if-ne v0, v6, :cond_5

    and-int/lit8 v1, v4, 0x40

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_9

    .line 183
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 184
    invoke-virtual {p0, v1}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    add-int/2addr v1, v7

    sub-int/2addr v5, v1

    goto :goto_4

    :cond_5
    if-ne v0, v7, :cond_b

    and-int/lit8 v1, v4, 0x40

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_7

    .line 190
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->extraCommand()I

    move-result v1

    add-int/lit8 v2, v1, -0x4

    .line 191
    invoke-virtual {p0, v2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    sub-int/2addr v5, v1

    :cond_7
    and-int/lit8 p0, v4, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_3

    :cond_8
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_9

    add-int/lit8 v5, v5, -0xa

    :cond_9
    :goto_4
    if-ge v0, v7, :cond_a

    and-int/lit16 p0, v4, 0x80

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    .line 205
    :goto_5
    new-instance p0, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;

    invoke-direct {p0, v0, v3, v5}, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;-><init>(IZI)V

    return-object p0

    .line 199
    :cond_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static onPostMessage(Lo/DreamAppGlideModule;II)Lo/Registry$MissingComponentException;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 524
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    .line 525
    invoke-static {v0}, Lo/ImageHeaderParser$ImageType;->onMessageChannelReady(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    .line 527
    new-array v2, p1, [B

    const/4 v3, 0x0

    .line 528
    invoke-virtual {p0, v2, v3, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    const-string p0, "image/"

    const-string v4, "ISO-8859-1"

    const/4 v5, 0x2

    if-ne p2, v5, :cond_1

    .line 534
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/String;

    const/4 v6, 0x3

    invoke-direct {p0, v2, v3, v6, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {p0}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "image/jpg"

    .line 535
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "image/jpeg"

    :cond_0
    const/4 p2, 0x2

    goto :goto_0

    .line 539
    :cond_1
    invoke-static {v2, v3}, Lo/ImageHeaderParser$ImageType;->ICustomTabsCallback([BI)I

    move-result p2

    .line 540
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    .line 541
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 542
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v3

    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 546
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr p2, v5

    .line 549
    invoke-static {v2, p2, v0}, Lo/ImageHeaderParser$ImageType;->extraCallback([BII)I

    move-result v4

    .line 550
    new-instance v5, Ljava/lang/String;

    sub-int v6, v4, p2

    invoke-direct {v5, v2, p2, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 553
    invoke-static {v0}, Lo/ImageHeaderParser$ImageType;->onPostMessage(I)I

    move-result p2

    add-int/2addr v4, p2

    .line 554
    invoke-static {v2, v4, p1}, Lo/ImageHeaderParser$ImageType;->onPostMessage([BII)[B

    move-result-object p1

    .line 556
    new-instance p2, Lo/Registry$MissingComponentException;

    invoke-direct {p2, p0, v5, v3, p1}, Lo/Registry$MissingComponentException;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p2
.end method

.method private static onPostMessage(Lo/DreamAppGlideModule;ILjava/lang/String;)Lo/decode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return-object v0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v1

    .line 437
    invoke-static {v1}, Lo/ImageHeaderParser$ImageType;->onMessageChannelReady(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 p1, p1, -0x1

    .line 439
    new-array v3, p1, [B

    const/4 v4, 0x0

    .line 440
    invoke-virtual {p0, v3, v4, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 442
    invoke-static {v3, v4, v1}, Lo/ImageHeaderParser$ImageType;->extraCallback([BII)I

    move-result p0

    .line 443
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v4, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 445
    new-instance p0, Lo/decode;

    invoke-direct {p0, p2, v0, p1}, Lo/decode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static onPostMessage(ILo/DreamAppGlideModule;ZILo/ImageHeaderParser$ImageType$onNavigationEvent;)Lo/handles;
    .locals 19

    move/from16 v0, p0

    move-object/from16 v7, p1

    .line 277
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v8

    .line 278
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v9

    .line 279
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v10

    const/4 v11, 0x3

    if-lt v0, v11, :cond_0

    .line 280
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v1

    move v13, v1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x4

    if-ne v0, v14, :cond_2

    .line 284
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v1

    if-nez p2, :cond_1

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    ushr-int/lit8 v1, v1, 0x18

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v1, v2

    :cond_1
    :goto_1
    move v15, v1

    goto :goto_2

    :cond_2
    if-ne v0, v11, :cond_3

    .line 290
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v1

    goto :goto_1

    .line 292
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->newSession()I

    move-result v1

    goto :goto_1

    :goto_2
    if-lt v0, v11, :cond_4

    .line 295
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v1

    move v6, v1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    const/16 v16, 0x0

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    if-nez v10, :cond_5

    if-nez v13, :cond_5

    if-nez v15, :cond_5

    if-nez v6, :cond_5

    .line 299
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v0

    invoke-virtual {v7, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return-object v16

    .line 303
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v1

    add-int v5, v1, v15

    .line 304
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v1

    const-string v4, "Id3Decoder"

    if-le v5, v1, :cond_6

    const-string v0, "Frame size exceeds remaining tag data"

    .line 305
    invoke-static {v4, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v0

    invoke-virtual {v7, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return-object v16

    :cond_6
    if-eqz p4, :cond_7

    move-object/from16 v1, p4

    move/from16 v2, p0

    move v3, v8

    move-object v12, v4

    move v4, v9

    move v14, v5

    move v5, v10

    move/from16 v18, v6

    move v6, v13

    .line 311
    invoke-interface/range {v1 .. v6}, Lo/ImageHeaderParser$ImageType$onNavigationEvent;->extraCallback(IIIII)Z

    move-result v1

    if-nez v1, :cond_8

    .line 313
    invoke-virtual {v7, v14}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return-object v16

    :cond_7
    move-object v12, v4

    move v14, v5

    move/from16 v18, v6

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v11, :cond_c

    move/from16 v2, v18

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    move/from16 v17, v3

    move v5, v4

    const/4 v6, 0x0

    move v3, v2

    move/from16 v4, v17

    goto :goto_b

    :cond_c
    move/from16 v2, v18

    const/4 v3, 0x4

    if-ne v0, v3, :cond_12

    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_a
    and-int/2addr v2, v1

    if-eqz v2, :cond_11

    const/16 v17, 0x1

    goto :goto_b

    :cond_11
    const/16 v17, 0x0

    :goto_b
    move/from16 v2, v17

    move/from16 v17, v4

    goto :goto_c

    :cond_12
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    :goto_c
    if-nez v17, :cond_28

    if-eqz v5, :cond_13

    goto/16 :goto_10

    :cond_13
    if-eqz v3, :cond_14

    add-int/lit8 v15, v15, -0x1

    .line 345
    invoke-virtual {v7, v1}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    :cond_14
    if-eqz v2, :cond_15

    add-int/lit8 v15, v15, -0x4

    const/4 v1, 0x4

    .line 349
    invoke-virtual {v7, v1}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    :cond_15
    if-eqz v6, :cond_16

    .line 352
    invoke-static {v7, v15}, Lo/ImageHeaderParser$ImageType;->asBinder(Lo/DreamAppGlideModule;I)I

    move-result v15

    :cond_16
    const/16 v1, 0x54

    const/4 v2, 0x2

    const/16 v3, 0x58

    if-ne v8, v1, :cond_18

    if-ne v9, v3, :cond_18

    if-ne v10, v3, :cond_18

    if-eq v0, v2, :cond_17

    if-ne v13, v3, :cond_18

    .line 359
    :cond_17
    :try_start_0
    invoke-static {v7, v15}, Lo/ImageHeaderParser$ImageType;->extraCallback(Lo/DreamAppGlideModule;I)Lo/decode;

    move-result-object v1

    goto/16 :goto_e

    :cond_18
    if-ne v8, v1, :cond_19

    .line 361
    invoke-static {v0, v8, v9, v10, v13}, Lo/ImageHeaderParser$ImageType;->onMessageChannelReady(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v7, v15, v1}, Lo/ImageHeaderParser$ImageType;->onPostMessage(Lo/DreamAppGlideModule;ILjava/lang/String;)Lo/decode;

    move-result-object v1

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_19
    const/16 v4, 0x57

    if-ne v8, v4, :cond_1b

    if-ne v9, v3, :cond_1b

    if-ne v10, v3, :cond_1b

    if-eq v0, v2, :cond_1a

    if-ne v13, v3, :cond_1b

    .line 365
    :cond_1a
    invoke-static {v7, v15}, Lo/ImageHeaderParser$ImageType;->ICustomTabsCallback(Lo/DreamAppGlideModule;I)Lo/calculateScaling;

    move-result-object v1

    goto/16 :goto_e

    :cond_1b
    if-ne v8, v4, :cond_1c

    .line 367
    invoke-static {v0, v8, v9, v10, v13}, Lo/ImageHeaderParser$ImageType;->onMessageChannelReady(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v7, v15, v1}, Lo/ImageHeaderParser$ImageType;->onNavigationEvent(Lo/DreamAppGlideModule;ILjava/lang/String;)Lo/calculateScaling;

    move-result-object v1

    goto/16 :goto_e

    :cond_1c
    const/16 v3, 0x49

    const/16 v4, 0x50

    if-ne v8, v4, :cond_1d

    const/16 v5, 0x52

    if-ne v9, v5, :cond_1d

    if-ne v10, v3, :cond_1d

    const/16 v5, 0x56

    if-ne v13, v5, :cond_1d

    .line 370
    invoke-static {v7, v15}, Lo/ImageHeaderParser$ImageType;->onPostMessage(Lo/DreamAppGlideModule;I)Lo/Downsampler;

    move-result-object v1

    goto/16 :goto_e

    :cond_1d
    const/16 v5, 0x47

    const/16 v6, 0x4f

    if-ne v8, v5, :cond_1f

    const/16 v5, 0x45

    if-ne v9, v5, :cond_1f

    if-ne v10, v6, :cond_1f

    const/16 v5, 0x42

    if-eq v13, v5, :cond_1e

    if-ne v0, v2, :cond_1f

    .line 373
    :cond_1e
    invoke-static {v7, v15}, Lo/ImageHeaderParser$ImageType;->onMessageChannelReady(Lo/DreamAppGlideModule;I)Lo/hasAlpha;

    move-result-object v1

    goto/16 :goto_e

    :cond_1f
    const/16 v5, 0x41

    const/16 v11, 0x43

    if-ne v0, v2, :cond_20

    if-ne v8, v4, :cond_21

    if-ne v9, v3, :cond_21

    if-ne v10, v11, :cond_21

    goto :goto_d

    :cond_20
    if-ne v8, v5, :cond_21

    if-ne v9, v4, :cond_21

    if-ne v10, v3, :cond_21

    if-ne v13, v11, :cond_21

    .line 376
    :goto_d
    invoke-static {v7, v15, v0}, Lo/ImageHeaderParser$ImageType;->onPostMessage(Lo/DreamAppGlideModule;II)Lo/Registry$MissingComponentException;

    move-result-object v1

    goto/16 :goto_e

    :cond_21
    const/16 v3, 0x4d

    if-ne v8, v11, :cond_23

    if-ne v9, v6, :cond_23

    if-ne v10, v3, :cond_23

    if-eq v13, v3, :cond_22

    if-ne v0, v2, :cond_23

    .line 379
    :cond_22
    invoke-static {v7, v15}, Lo/ImageHeaderParser$ImageType;->onNavigationEvent(Lo/DreamAppGlideModule;I)Lo/Registry$NoSourceEncoderAvailableException;

    move-result-object v1

    goto :goto_e

    :cond_23
    if-ne v8, v11, :cond_24

    const/16 v2, 0x48

    if-ne v9, v2, :cond_24

    if-ne v10, v5, :cond_24

    if-ne v13, v4, :cond_24

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 381
    invoke-static/range {v1 .. v6}, Lo/ImageHeaderParser$ImageType;->onMessageChannelReady(Lo/DreamAppGlideModule;IIZILo/ImageHeaderParser$ImageType$onNavigationEvent;)Lo/Glide;

    move-result-object v1

    goto :goto_e

    :cond_24
    if-ne v8, v11, :cond_25

    if-ne v9, v1, :cond_25

    if-ne v10, v6, :cond_25

    if-ne v13, v11, :cond_25

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 384
    invoke-static/range {v1 .. v6}, Lo/ImageHeaderParser$ImageType;->onNavigationEvent(Lo/DreamAppGlideModule;IIZILo/ImageHeaderParser$ImageType$onNavigationEvent;)Lo/Registry$NoResultEncoderAvailableException;

    move-result-object v1

    goto :goto_e

    :cond_25
    if-ne v8, v3, :cond_26

    const/16 v2, 0x4c

    if-ne v9, v2, :cond_26

    if-ne v10, v2, :cond_26

    if-ne v13, v1, :cond_26

    .line 387
    invoke-static {v7, v15}, Lo/ImageHeaderParser$ImageType;->ICustomTabsCallback$Stub(Lo/DreamAppGlideModule;I)Lo/DefaultImageHeaderParser$Reader$EndOfFileException;

    move-result-object v1

    goto :goto_e

    .line 389
    :cond_26
    invoke-static {v0, v8, v9, v10, v13}, Lo/ImageHeaderParser$ImageType;->onMessageChannelReady(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-static {v7, v15, v1}, Lo/ImageHeaderParser$ImageType;->ICustomTabsCallback(Lo/DreamAppGlideModule;ILjava/lang/String;)Lo/Registry$NoImageHeaderParserException;

    move-result-object v1

    :goto_e
    if-nez v1, :cond_27

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to decode frame: id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-static {v0, v8, v9, v10, v13}, Lo/ImageHeaderParser$ImageType;->onMessageChannelReady(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", frameSize="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v12, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_27
    invoke-virtual {v7, v14}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return-object v1

    :catch_0
    :try_start_1
    const-string v0, "Unsupported character encoding"

    .line 399
    invoke-static {v12, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    invoke-virtual {v7, v14}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return-object v16

    :goto_f
    invoke-virtual {v7, v14}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 403
    throw v0

    :cond_28
    :goto_10
    const-string v0, "Skipping unsupported compressed or encrypted frame"

    .line 338
    invoke-static {v12, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v7, v14}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return-object v16
.end method

.method private static onPostMessage(Lo/DreamAppGlideModule;IIZ)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 210
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v2

    .line 212
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v3

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v3, v5, :cond_d

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-lt v0, v3, :cond_0

    .line 218
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v7

    .line 219
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v8

    .line 220
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v10

    goto :goto_1

    .line 222
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->newSession()I

    move-result v7

    .line 223
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->newSession()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v8

    const/4 v10, 0x0

    :goto_1
    const-wide/16 v11, 0x0

    if-nez v7, :cond_1

    cmp-long v7, v8, v11

    if-nez v7, :cond_1

    if-nez v10, :cond_1

    .line 267
    invoke-virtual {v1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return v4

    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_3

    if-nez p3, :cond_3

    const-wide/32 v13, 0x808080

    and-long/2addr v13, v8

    cmp-long v15, v13, v11

    if-eqz v15, :cond_2

    invoke-virtual {v1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return v6

    :cond_2
    const-wide/16 v11, 0xff

    and-long v13, v8, v11

    const/16 v15, 0x8

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0x7

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x10

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0xe

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x18

    shr-long/2addr v8, v15

    and-long/2addr v8, v11

    const/16 v11, 0x15

    shl-long/2addr v8, v11

    or-long/2addr v8, v13

    :cond_3
    if-ne v0, v7, :cond_5

    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    and-int/lit8 v7, v10, 0x1

    if-eqz v7, :cond_8

    :goto_3
    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    if-ne v0, v3, :cond_7

    and-int/lit8 v3, v10, 0x20

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :cond_8
    const/4 v7, 0x0

    :goto_5
    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    if-eqz v7, :cond_a

    add-int/lit8 v4, v4, 0x4

    :cond_a
    int-to-long v3, v4

    cmp-long v7, v8, v3

    if-gez v7, :cond_b

    invoke-virtual {v1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return v6

    .line 259
    :cond_b
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v3, v3

    cmp-long v7, v3, v8

    if-gez v7, :cond_c

    .line 267
    invoke-virtual {v1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return v6

    :cond_c
    long-to-int v3, v8

    .line 262
    :try_start_2
    invoke-virtual {v1, v3}, Lo/DreamAppGlideModule;->onPostMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 267
    :cond_d
    invoke-virtual {v1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return v4

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 268
    throw v0
.end method

.method private static onPostMessage([BII)[B
    .locals 0

    if-gt p2, p1, :cond_0

    .line 797
    sget-object p0, Lo/ThirdPartyAuthorizeRequest;->asBinder:[B

    return-object p0

    .line 799
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/UPIJSInterface$2;)Lo/callAPI;
    .locals 1

    .line 103
    iget-object p1, p1, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lo/ImageHeaderParser$ImageType;->onPostMessage([BI)Lo/callAPI;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage([BI)Lo/callAPI;
    .locals 6

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    new-instance v1, Lo/DreamAppGlideModule;

    invoke-direct {v1, p1, p2}, Lo/DreamAppGlideModule;-><init>([BI)V

    .line 119
    invoke-static {v1}, Lo/ImageHeaderParser$ImageType;->onPostMessage(Lo/DreamAppGlideModule;)Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 124
    :cond_0
    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v2

    .line 125
    invoke-static {p1}, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;->onMessageChannelReady(Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    .line 126
    :goto_0
    invoke-static {p1}, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;->onNavigationEvent(Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;)I

    move-result v4

    .line 127
    invoke-static {p1}, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;->ICustomTabsCallback(Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 128
    invoke-static {p1}, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;->onNavigationEvent(Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;)I

    move-result v4

    invoke-static {v1, v4}, Lo/ImageHeaderParser$ImageType;->asBinder(Lo/DreamAppGlideModule;I)I

    move-result v4

    :cond_2
    add-int/2addr v2, v4

    .line 130
    invoke-virtual {v1, v2}, Lo/DreamAppGlideModule;->onNavigationEvent(I)V

    .line 133
    invoke-static {p1}, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;->onMessageChannelReady(Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lo/ImageHeaderParser$ImageType;->onPostMessage(Lo/DreamAppGlideModule;IIZ)Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_4

    .line 134
    invoke-static {p1}, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;->onMessageChannelReady(Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    invoke-static {v1, v4, v3, v5}, Lo/ImageHeaderParser$ImageType;->onPostMessage(Lo/DreamAppGlideModule;IIZ)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    .line 137
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to validate ID3 tag with majorVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;->onMessageChannelReady(Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Id3Decoder"

    invoke-static {v0, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 142
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result p2

    if-lt p2, v3, :cond_5

    .line 143
    invoke-static {p1}, Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;->onMessageChannelReady(Lo/ImageHeaderParser$ImageType$ICustomTabsCallback;)I

    move-result p2

    iget-object v2, p0, Lo/ImageHeaderParser$ImageType;->onNavigationEvent:Lo/ImageHeaderParser$ImageType$onNavigationEvent;

    invoke-static {p2, v1, v4, v3, v2}, Lo/ImageHeaderParser$ImageType;->onPostMessage(ILo/DreamAppGlideModule;ZILo/ImageHeaderParser$ImageType$onNavigationEvent;)Lo/handles;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 146
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_5
    new-instance p1, Lo/callAPI;

    invoke-direct {p1, v0}, Lo/callAPI;-><init>(Ljava/util/List;)V

    return-object p1
.end method
