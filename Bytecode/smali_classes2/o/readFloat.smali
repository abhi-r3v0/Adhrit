.class Lo/readFloat;
.super Lo/readLong;
.source ""


# instance fields
.field protected final ICustomTabsCallback:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/readLong;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lo/readFloat;->ICustomTabsCallback:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/eF;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lo/readFloat;->ICustomTabsCallback:[B

    invoke-virtual {p0}, Lo/readFloat;->extraCallback()I

    move-result v1

    invoke-virtual {p0}, Lo/ac$1;->onNavigationEvent()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lo/eF;->extraCallback([BII)V

    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 3

    .line 16
    invoke-virtual {p0}, Lo/readFloat;->extraCallback()I

    move-result v0

    .line 17
    iget-object v1, p0, Lo/readFloat;->ICustomTabsCallback:[B

    invoke-virtual {p0}, Lo/ac$1;->onNavigationEvent()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lo/j$1;->onPostMessage([BII)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 20
    :cond_0
    instance-of v1, p1, Lo/ac$1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 22
    :cond_1
    invoke-virtual {p0}, Lo/ac$1;->onNavigationEvent()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lo/ac$1;

    invoke-virtual {v3}, Lo/ac$1;->onNavigationEvent()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 24
    :cond_2
    invoke-virtual {p0}, Lo/ac$1;->onNavigationEvent()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 26
    :cond_3
    instance-of v0, p1, Lo/readFloat;

    if-eqz v0, :cond_5

    .line 27
    check-cast p1, Lo/readFloat;

    .line 28
    invoke-virtual {p0}, Lo/ac$1;->onMessageChannelReady()I

    move-result v0

    .line 29
    invoke-virtual {p1}, Lo/ac$1;->onMessageChannelReady()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    .line 32
    :cond_4
    invoke-virtual {p0}, Lo/ac$1;->onNavigationEvent()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lo/readLong;->onNavigationEvent(Lo/ac$1;II)Z

    move-result p1

    return p1

    .line 33
    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method extraCallback(I)B
    .locals 1

    .line 7
    iget-object v0, p0, Lo/readFloat;->ICustomTabsCallback:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected extraCallback()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final onMessageChannelReady(III)I
    .locals 1

    .line 52
    iget-object p2, p0, Lo/readFloat;->ICustomTabsCallback:[B

    invoke-virtual {p0}, Lo/readFloat;->extraCallback()I

    move-result v0

    invoke-static {p1, p2, v0, p3}, Lo/fG;->onMessageChannelReady(I[BII)I

    move-result p1

    return p1
.end method

.method protected final onMessageChannelReady(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .line 15
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/readFloat;->ICustomTabsCallback:[B

    invoke-virtual {p0}, Lo/readFloat;->extraCallback()I

    move-result v2

    invoke-virtual {p0}, Lo/ac$1;->onNavigationEvent()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public onNavigationEvent(I)B
    .locals 1

    .line 6
    iget-object v0, p0, Lo/readFloat;->ICustomTabsCallback:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public onNavigationEvent()I
    .locals 1

    .line 8
    iget-object v0, p0, Lo/readFloat;->ICustomTabsCallback:[B

    array-length v0, v0

    return v0
.end method

.method public final onNavigationEvent(II)Lo/ac$1;
    .locals 2

    .line 9
    invoke-virtual {p0}, Lo/ac$1;->onNavigationEvent()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lo/readFloat;->onPostMessage(III)I

    move-result p1

    if-nez p1, :cond_0

    .line 11
    sget-object p1, Lo/ac$1;->onNavigationEvent:Lo/ac$1;

    return-object p1

    .line 12
    :cond_0
    new-instance p2, Lo/readUnsignedShort;

    iget-object v0, p0, Lo/readFloat;->ICustomTabsCallback:[B

    invoke-virtual {p0}, Lo/readFloat;->extraCallback()I

    move-result v1

    invoke-direct {p2, v0, v1, p1}, Lo/readUnsignedShort;-><init>([BII)V

    return-object p2
.end method

.method final onNavigationEvent(Lo/ac$1;II)Z
    .locals 5

    .line 34
    invoke-virtual {p1}, Lo/ac$1;->onNavigationEvent()I

    move-result p2

    if-gt p3, p2, :cond_4

    .line 36
    invoke-virtual {p1}, Lo/ac$1;->onNavigationEvent()I

    move-result p2

    if-gt p3, p2, :cond_3

    .line 39
    instance-of p2, p1, Lo/readFloat;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 40
    check-cast p1, Lo/readFloat;

    .line 41
    iget-object p2, p0, Lo/readFloat;->ICustomTabsCallback:[B

    .line 42
    iget-object v1, p1, Lo/readFloat;->ICustomTabsCallback:[B

    .line 43
    invoke-virtual {p0}, Lo/readFloat;->extraCallback()I

    move-result v2

    add-int/2addr v2, p3

    .line 44
    invoke-virtual {p0}, Lo/readFloat;->extraCallback()I

    move-result p3

    .line 45
    invoke-virtual {p1}, Lo/readFloat;->extraCallback()I

    move-result p1

    :goto_0
    if-ge p3, v2, :cond_1

    .line 47
    aget-byte v3, p2, p3

    aget-byte v4, v1, p1

    if-eq v3, v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 51
    :cond_2
    invoke-virtual {p1, v0, p3}, Lo/ac$1;->onNavigationEvent(II)Lo/ac$1;

    move-result-object p1

    invoke-virtual {p0, v0, p3}, Lo/ac$1;->onNavigationEvent(II)Lo/ac$1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/ac$1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 37
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 38
    invoke-virtual {p1}, Lo/ac$1;->onNavigationEvent()I

    move-result p1

    const/16 v0, 0x3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Ran off end of other: 0, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 35
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lo/ac$1;->onNavigationEvent()I

    move-result p2

    const/16 v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
