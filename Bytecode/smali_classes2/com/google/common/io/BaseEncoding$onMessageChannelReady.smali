.class Lcom/google/common/io/BaseEncoding$onMessageChannelReady;
.super Lcom/google/common/io/BaseEncoding;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Character;

.field final onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;


# direct methods
.method constructor <init>(Lcom/google/common/io/BaseEncoding$extraCallback;Ljava/lang/Character;)V
    .locals 4

    .line 576
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding;-><init>()V

    if-eqz p1, :cond_4

    .line 577
    move-object v0, p1

    check-cast v0, Lcom/google/common/io/BaseEncoding$extraCallback;

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 579
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 2543
    iget-object v3, p1, Lcom/google/common/io/BaseEncoding$extraCallback;->asBinder:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object p1, p1, Lcom/google/common/io/BaseEncoding$extraCallback;->asBinder:[B

    aget-byte p1, p1, v2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_3

    .line 582
    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Character;

    return-void

    .line 3217
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "Padding character %s was already in alphabet"

    invoke-static {p2, v1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    .line 1890
    throw p1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .line 573
    new-instance v0, Lcom/google/common/io/BaseEncoding$extraCallback;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$extraCallback;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;-><init>(Lcom/google/common/io/BaseEncoding$extraCallback;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(I)I
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$extraCallback;->extraCallback:I

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$extraCallback;->ICustomTabsCallback:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v1, v2}, Lo/BackgroundPriorityRunnable;->onPostMessage(IILjava/math/RoundingMode;)I

    move-result p1

    mul-int v0, v0, p1

    return v0
.end method

.method public final ICustomTabsCallback()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Character;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    invoke-virtual {p0, v0}, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->extraCallback(Lcom/google/common/io/BaseEncoding$extraCallback;)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    return-object v0
.end method

.method final ICustomTabsCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    if-eqz p1, :cond_2

    .line 677
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Character;

    if-nez v0, :cond_0

    return-object p1

    .line 680
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 682
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 683
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 687
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 5890
    throw p1
.end method

.method final ICustomTabsCallback(Ljava/lang/Appendable;[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    add-int v0, p3, p4

    .line 646
    array-length v1, p2

    invoke-static {p3, v0, v1}, Lo/extraCallback$onMessageChannelReady;->extraCallback(III)V

    .line 647
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$extraCallback;->ICustomTabsCallback:I

    const/4 v1, 0x0

    if-gt p4, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_1

    add-int v4, p3, v0

    .line 650
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p4, 0x1

    shl-int/lit8 p2, p2, 0x3

    .line 654
    iget-object p3, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget p3, p3, Lcom/google/common/io/BaseEncoding$extraCallback;->onMessageChannelReady:I

    sub-int/2addr p2, p3

    :goto_2
    shl-int/lit8 p3, p4, 0x3

    if-ge v1, p3, :cond_2

    sub-int p3, p2, v1

    ushr-long v4, v2, p3

    long-to-int p3, v4

    .line 657
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$extraCallback;->onNavigationEvent:I

    and-int/2addr p3, v0

    .line 658
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    .line 5472
    iget-object v0, v0, Lcom/google/common/io/BaseEncoding$extraCallback;->onPostMessage:[C

    aget-char p3, v0, p3

    .line 658
    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 659
    iget-object p3, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget p3, p3, Lcom/google/common/io/BaseEncoding$extraCallback;->onMessageChannelReady:I

    add-int/2addr v1, p3

    goto :goto_2

    .line 661
    :cond_2
    iget-object p2, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Character;

    if-eqz p2, :cond_3

    .line 662
    :goto_3
    iget-object p2, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget p2, p2, Lcom/google/common/io/BaseEncoding$extraCallback;->ICustomTabsCallback:I

    shl-int/lit8 p2, p2, 0x3

    if-ge v1, p2, :cond_3

    .line 663
    iget-object p2, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 664
    iget-object p2, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget p2, p2, Lcom/google/common/io/BaseEncoding$extraCallback;->onMessageChannelReady:I

    add-int/2addr v1, p2

    goto :goto_3

    :cond_3
    return-void

    .line 5128
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_5
    const/4 p1, 0x0

    .line 4890
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 877
    instance-of v0, p1, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 878
    check-cast p1, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;

    .line 879
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget-object v2, p1, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Character;

    iget-object p1, p1, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Character;

    const/4 v2, 0x1

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 8052
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method extraCallback([BLjava/lang/CharSequence;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    .line 708
    invoke-virtual {p0, p2}, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 709
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7476
    iget-object v2, v0, Lcom/google/common/io/BaseEncoding$extraCallback;->asInterface:[Z

    iget v0, v0, Lcom/google/common/io/BaseEncoding$extraCallback;->extraCallback:I

    rem-int/2addr v1, v0

    aget-boolean v0, v2, v1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 713
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 716
    :goto_1
    iget-object v7, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget v7, v7, Lcom/google/common/io/BaseEncoding$extraCallback;->extraCallback:I

    if-ge v5, v7, :cond_1

    .line 717
    iget-object v7, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget v7, v7, Lcom/google/common/io/BaseEncoding$extraCallback;->onMessageChannelReady:I

    shl-long/2addr v3, v7

    add-int v7, v1, v5

    .line 718
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 719
    iget-object v7, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v6, v1

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v6}, Lcom/google/common/io/BaseEncoding$extraCallback;->extraCallback(C)I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v3, v6

    move v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 722
    :cond_1
    iget-object v5, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget v5, v5, Lcom/google/common/io/BaseEncoding$extraCallback;->ICustomTabsCallback:I

    shl-int/lit8 v5, v5, 0x3

    iget-object v7, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget v7, v7, Lcom/google/common/io/BaseEncoding$extraCallback;->onMessageChannelReady:I

    mul-int v6, v6, v7

    sub-int/2addr v5, v6

    .line 723
    iget-object v6, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget v6, v6, Lcom/google/common/io/BaseEncoding$extraCallback;->ICustomTabsCallback:I

    add-int/lit8 v6, v6, -0x1

    shl-int/lit8 v6, v6, 0x3

    :goto_2
    if-lt v6, v5, :cond_2

    add-int/lit8 v7, v2, 0x1

    ushr-long v8, v3, v6

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v9, v8

    int-to-byte v8, v9

    .line 724
    aput-byte v8, p1, v2

    add-int/lit8 v6, v6, -0x8

    move v2, v7

    goto :goto_2

    .line 713
    :cond_2
    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget v3, v3, Lcom/google/common/io/BaseEncoding$extraCallback;->extraCallback:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_3
    return v2

    .line 710
    :cond_4
    new-instance p1, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid input length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method extraCallback(Lcom/google/common/io/BaseEncoding$extraCallback;)Lcom/google/common/io/BaseEncoding;
    .locals 2

    .line 858
    new-instance v0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;-><init>(Lcom/google/common/io/BaseEncoding$extraCallback;Ljava/lang/Character;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 887
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Character;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 8077
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method final onNavigationEvent(I)I
    .locals 4

    .line 671
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$extraCallback;->onMessageChannelReady:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method onPostMessage(Ljava/lang/Appendable;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p3, p4, 0x0

    .line 638
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, Lo/extraCallback$onMessageChannelReady;->extraCallback(III)V

    :goto_0
    if-ge v1, p4, :cond_0

    add-int/lit8 p3, v1, 0x0

    .line 640
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$extraCallback;->ICustomTabsCallback:I

    sub-int v2, p4, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/Appendable;[BII)V

    .line 639
    iget-object p3, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget p3, p3, Lcom/google/common/io/BaseEncoding$extraCallback;->ICustomTabsCallback:I

    add-int/2addr v1, p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 864
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$extraCallback;->onMessageChannelReady:I

    const/16 v2, 0x8

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 866
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Character;

    if-nez v1, :cond_0

    const-string v1, ".omitPadding()"

    .line 867
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ".withPadChar(\'"

    .line 869
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
