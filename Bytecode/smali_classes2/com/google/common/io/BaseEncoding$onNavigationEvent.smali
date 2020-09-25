.class final Lcom/google/common/io/BaseEncoding$onNavigationEvent;
.super Lcom/google/common/io/BaseEncoding$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/io/BaseEncoding$extraCallback;Ljava/lang/Character;)V
    .locals 0

    .line 944
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;-><init>(Lcom/google/common/io/BaseEncoding$extraCallback;Ljava/lang/Character;)V

    .line 1420
    iget-object p1, p1, Lcom/google/common/io/BaseEncoding$extraCallback;->onPostMessage:[C

    .line 945
    array-length p1, p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 2128
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .line 940
    new-instance v0, Lcom/google/common/io/BaseEncoding$extraCallback;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$extraCallback;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/common/io/BaseEncoding$onNavigationEvent;-><init>(Lcom/google/common/io/BaseEncoding$extraCallback;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method final extraCallback([BLjava/lang/CharSequence;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    .line 968
    invoke-virtual {p0, p2}, Lcom/google/common/io/BaseEncoding$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 969
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7476
    iget-object v2, v0, Lcom/google/common/io/BaseEncoding$extraCallback;->asInterface:[Z

    iget v0, v0, Lcom/google/common/io/BaseEncoding$extraCallback;->extraCallback:I

    rem-int/2addr v1, v0

    aget-boolean v0, v2, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 973
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 974
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/common/io/BaseEncoding$extraCallback;->extraCallback(C)I

    move-result v0

    shl-int/lit8 v0, v0, 0x12

    .line 975
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$extraCallback;->extraCallback(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    .line 976
    aput-byte v3, p1, v1

    .line 977
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 978
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    add-int/lit8 v3, v4, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/common/io/BaseEncoding$extraCallback;->extraCallback(C)I

    move-result v1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    .line 979
    aput-byte v4, p1, v2

    .line 980
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 981
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$extraCallback;->extraCallback(C)I

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    int-to-byte v0, v0

    .line 982
    aput-byte v0, p1, v1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    move v1, v2

    move v0, v4

    goto :goto_0

    :cond_2
    return v1

    .line 970
    :cond_3
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

.method final extraCallback(Lcom/google/common/io/BaseEncoding$extraCallback;)Lcom/google/common/io/BaseEncoding;
    .locals 2

    .line 991
    new-instance v0, Lcom/google/common/io/BaseEncoding$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/common/io/BaseEncoding$onNavigationEvent;-><init>(Lcom/google/common/io/BaseEncoding$extraCallback;Ljava/lang/Character;)V

    return-object v0
.end method

.method final onPostMessage(Ljava/lang/Appendable;[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p3, p4, 0x0

    .line 951
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, Lo/extraCallback$onMessageChannelReady;->extraCallback(III)V

    :goto_0
    const/4 v0, 0x3

    if-lt p4, v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    .line 954
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 955
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    ushr-int/lit8 v3, v0, 0x12

    .line 3472
    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$extraCallback;->onPostMessage:[C

    aget-char v2, v2, v3

    .line 955
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 956
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    .line 4472
    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$extraCallback;->onPostMessage:[C

    aget-char v2, v2, v3

    .line 956
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 957
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    .line 5472
    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$extraCallback;->onPostMessage:[C

    aget-char v2, v2, v3

    .line 957
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 958
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    and-int/lit8 v0, v0, 0x3f

    .line 6472
    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$extraCallback;->onPostMessage:[C

    aget-char v0, v2, v0

    .line 958
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p4, p4, -0x3

    goto :goto_0

    :cond_0
    if-ge v1, p3, :cond_1

    sub-int/2addr p3, v1

    .line 961
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/google/common/io/BaseEncoding$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/Appendable;[BII)V

    :cond_1
    return-void
.end method
