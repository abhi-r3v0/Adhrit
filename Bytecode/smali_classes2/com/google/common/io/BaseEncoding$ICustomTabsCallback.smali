.class final Lcom/google/common/io/BaseEncoding$ICustomTabsCallback;
.super Lcom/google/common/io/BaseEncoding$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private extraCallback:[C


# direct methods
.method private constructor <init>(Lcom/google/common/io/BaseEncoding$extraCallback;)V
    .locals 5

    const/4 v0, 0x0

    .line 899
    invoke-direct {p0, p1, v0}, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;-><init>(Lcom/google/common/io/BaseEncoding$extraCallback;Ljava/lang/Character;)V

    const/16 v0, 0x200

    new-array v0, v0, [C

    .line 892
    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$ICustomTabsCallback;->extraCallback:[C

    .line 1420
    iget-object v0, p1, Lcom/google/common/io/BaseEncoding$extraCallback;->onPostMessage:[C

    .line 900
    array-length v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    const/16 v0, 0x100

    if-ge v1, v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$ICustomTabsCallback;->extraCallback:[C

    ushr-int/lit8 v2, v1, 0x4

    .line 2472
    iget-object v3, p1, Lcom/google/common/io/BaseEncoding$extraCallback;->onPostMessage:[C

    aget-char v2, v3, v2

    .line 902
    aput-char v2, v0, v1

    .line 903
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$ICustomTabsCallback;->extraCallback:[C

    or-int/lit16 v2, v1, 0x100

    and-int/lit8 v3, v1, 0xf

    .line 3472
    iget-object v4, p1, Lcom/google/common/io/BaseEncoding$extraCallback;->onPostMessage:[C

    aget-char v3, v4, v3

    .line 903
    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 2128
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 895
    new-instance v0, Lcom/google/common/io/BaseEncoding$extraCallback;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$extraCallback;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0}, Lcom/google/common/io/BaseEncoding$ICustomTabsCallback;-><init>(Lcom/google/common/io/BaseEncoding$extraCallback;)V

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

    .line 921
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 925
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 926
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$extraCallback;->extraCallback(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$onMessageChannelReady;->onPostMessage:Lcom/google/common/io/BaseEncoding$extraCallback;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/io/BaseEncoding$extraCallback;->extraCallback(C)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 927
    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_0
    return v1

    .line 922
    :cond_1
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
    .locals 1

    .line 934
    new-instance v0, Lcom/google/common/io/BaseEncoding$ICustomTabsCallback;

    invoke-direct {v0, p1}, Lcom/google/common/io/BaseEncoding$ICustomTabsCallback;-><init>(Lcom/google/common/io/BaseEncoding$extraCallback;)V

    return-object v0
.end method

.method final onPostMessage(Ljava/lang/Appendable;[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p3, p4, 0x0

    .line 910
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, Lo/extraCallback$onMessageChannelReady;->extraCallback(III)V

    :goto_0
    if-ge v1, p4, :cond_0

    add-int/lit8 p3, v1, 0x0

    .line 912
    aget-byte p3, p2, p3

    and-int/lit16 p3, p3, 0xff

    .line 913
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$ICustomTabsCallback;->extraCallback:[C

    aget-char v0, v0, p3

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 914
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$ICustomTabsCallback;->extraCallback:[C

    or-int/lit16 p3, p3, 0x100

    aget-char p3, v0, p3

    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
