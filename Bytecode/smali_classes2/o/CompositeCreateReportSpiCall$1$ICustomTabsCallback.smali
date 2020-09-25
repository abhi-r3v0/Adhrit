.class abstract Lo/CompositeCreateReportSpiCall$1$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CompositeCreateReportSpiCall$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onMessageChannelReady(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    or-int v0, p1, p2

    .line 646
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_e

    add-int v0, p1, p2

    .line 656
    new-array p2, p2, [C

    const/4 v3, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 662
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-ltz v4, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v3, 0x1

    int-to-char v4, v4

    .line 3901
    aput-char v4, p2, v3

    move v3, v5

    goto :goto_0

    :cond_1
    move v8, v3

    :goto_2
    if-ge p1, v0, :cond_d

    add-int/lit8 v3, p1, 0x1

    .line 671
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-ltz p1, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    add-int/lit8 v4, v8, 0x1

    int-to-char p1, p1

    .line 5901
    aput-char p1, p2, v8

    :goto_4
    if-ge v3, v0, :cond_4

    .line 677
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-ltz p1, :cond_3

    const/4 v5, 0x1

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    int-to-char p1, p1

    .line 7901
    aput-char p1, p2, v4

    move v4, v5

    goto :goto_4

    :cond_4
    move p1, v3

    move v8, v4

    goto :goto_2

    :cond_5
    const/16 v4, -0x20

    if-ge p1, v4, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_8

    if-ge v3, v0, :cond_7

    add-int/lit8 v4, v3, 0x1

    .line 689
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    .line 688
    invoke-static {p1, v3, p2, v8}, Lo/CompositeCreateReportSpiCall$1$onPostMessage;->onNavigationEvent(BB[CI)V

    move p1, v4

    move v8, v5

    goto :goto_2

    .line 686
    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->asBinder()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_8
    const/16 v4, -0x10

    if-ge p1, v4, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_b

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 696
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    .line 697
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    .line 694
    invoke-static {p1, v3, v4, p2, v8}, Lo/CompositeCreateReportSpiCall$1$onPostMessage;->ICustomTabsCallback(BBB[CI)V

    move p1, v5

    move v8, v6

    goto :goto_2

    .line 692
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->asBinder()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_b
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_c

    add-int/lit8 v4, v3, 0x1

    .line 706
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    .line 707
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int/lit8 v9, v3, 0x1

    .line 708
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    move v3, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p2

    .line 704
    invoke-static/range {v3 .. v8}, Lo/CompositeCreateReportSpiCall$1$onPostMessage;->onPostMessage(BBBB[CI)V

    add-int/2addr v10, v2

    move p1, v9

    move v8, v10

    goto/16 :goto_2

    .line 702
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->asBinder()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 716
    :cond_d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 647
    :cond_e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 648
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v3, p1

    const-string p0, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract ICustomTabsCallback(Ljava/lang/CharSequence;[BII)I
.end method

.method abstract ICustomTabsCallback([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(I[BII)I
.end method

.method abstract onNavigationEvent(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method
