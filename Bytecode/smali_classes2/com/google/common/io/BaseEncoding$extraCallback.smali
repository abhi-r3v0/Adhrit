.class final Lcom/google/common/io/BaseEncoding$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:I

.field final asBinder:[B

.field final asInterface:[Z

.field final extraCallback:I

.field final onMessageChannelReady:I

.field final onNavigationEvent:I

.field final onPostMessage:[C

.field private final onTransact:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 7

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 432
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->onTransact:Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 433
    move-object p1, p2

    check-cast p1, [C

    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->onPostMessage:[C

    .line 435
    :try_start_0
    array-length p1, p2

    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    const-string v1, "x"

    if-lez p1, :cond_9

    .line 3120
    sget-object v1, Lo/BackgroundPriorityRunnable$1;->onPostMessage:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 3143
    new-instance p1, Ljava/lang/AssertionError;

    goto/16 :goto_7

    .line 3136
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    const v3, -0x4afb0ccd

    ushr-int/2addr v3, v0

    rsub-int/lit8 v0, v0, 0x1f

    sub-int/2addr v3, p1

    not-int p1, v3

    not-int p1, p1

    ushr-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    goto :goto_2

    :pswitch_1
    sub-int/2addr p1, v2

    .line 3130
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 v0, p1, 0x20

    goto :goto_2

    :pswitch_2
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v3, p1, -0x1

    and-int/2addr v3, p1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_8

    .line 3126
    :pswitch_3
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 v0, p1, 0x1f

    .line 435
    :goto_2
    iput v0, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->onMessageChannelReady:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    .line 444
    invoke-static {v0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result p1

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 446
    :try_start_1
    div-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->extraCallback:I

    .line 447
    iget v0, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->onMessageChannelReady:I

    div-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->ICustomTabsCallback:I
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    array-length p1, p2

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->onNavigationEvent:I

    const/16 p1, 0x80

    new-array v0, p1, [B

    const/4 v3, -0x1

    .line 455
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    const/4 v4, 0x0

    .line 456
    :goto_3
    array-length v5, p2

    if-ge v4, v5, :cond_6

    .line 457
    aget-char v5, p2, v4

    if-ge v5, p1, :cond_2

    const/4 v6, 0x1

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_5

    .line 459
    aget-byte v6, v0, v5

    if-ne v6, v3, :cond_3

    const/4 v6, 0x1

    goto :goto_5

    :cond_3
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_4

    int-to-byte v6, v4

    .line 460
    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 6177
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "Duplicate character: %s"

    invoke-static {v0, p2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5177
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "Non-ASCII character: %s"

    invoke-static {v0, p2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 462
    :cond_6
    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->asBinder:[B

    .line 464
    iget p1, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->extraCallback:I

    new-array p1, p1, [Z

    .line 465
    :goto_6
    iget p2, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->ICustomTabsCallback:I

    if-ge v1, p2, :cond_7

    shl-int/lit8 p2, v1, 0x3

    .line 466
    iget v0, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->onMessageChannelReady:I

    sget-object v3, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p2, v0, v3}, Lo/BackgroundPriorityRunnable;->onPostMessage(IILjava/math/RoundingMode;)I

    move-result p2

    aput-boolean v2, p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 468
    :cond_7
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->asInterface:[Z

    return-void

    :catch_0
    move-exception p1

    .line 449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal alphabet "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5082
    :cond_8
    :try_start_2
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3143
    :goto_7
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4033
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") must be > 0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal alphabet length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2890
    :cond_a
    throw v0

    .line 1890
    :cond_b
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 553
    instance-of v0, p1, Lcom/google/common/io/BaseEncoding$extraCallback;

    if-eqz v0, :cond_0

    .line 554
    check-cast p1, Lcom/google/common/io/BaseEncoding$extraCallback;

    .line 555
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->onPostMessage:[C

    iget-object p1, p1, Lcom/google/common/io/BaseEncoding$extraCallback;->onPostMessage:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final extraCallback(C)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    const-string v0, "Unrecognized character: 0x"

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_3

    .line 487
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->asBinder:[B

    aget-byte v2, v2, p1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x20

    if-le p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unrecognized character: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_1
    :goto_0
    new-instance v1, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return v2

    .line 485
    :cond_3
    new-instance v1, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final hashCode()I
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->onPostMessage:[C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$extraCallback;->onTransact:Ljava/lang/String;

    return-object v0
.end method
