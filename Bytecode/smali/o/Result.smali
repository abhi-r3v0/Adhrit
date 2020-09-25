.class public final Lo/Result;
.super Lo/PaymentInstrumentRequest;
.source ""


# instance fields
.field private ICustomTabsCallback:[B

.field private extraCallback:I

.field private onMessageChannelReady:Lo/PaymentRequestJsonAdapter;

.field private onNavigationEvent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lo/PaymentInstrumentRequest;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lo/Result;->extraCallback(Lo/PaymentRequestJsonAdapter;)V

    .line 46
    iput-object p1, p0, Lo/Result;->onMessageChannelReady:Lo/PaymentRequestJsonAdapter;

    .line 47
    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->onTransact:J

    long-to-int v1, v0

    iput v1, p0, Lo/Result;->extraCallback:I

    .line 48
    iget-object v0, p1, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    .line 49
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 54
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    .line 57
    aget-object v0, v1, v0

    const/4 v2, 0x0

    .line 58
    aget-object v1, v1, v2

    const-string v3, ";base64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lo/Result;->ICustomTabsCallback:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error while parsing Base64 encoded string: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string v1, "US-ASCII"

    .line 66
    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lo/Result;->ICustomTabsCallback:[B

    .line 68
    :goto_0
    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->asBinder:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->asBinder:J

    long-to-int v1, v0

    iget v0, p0, Lo/Result;->extraCallback:I

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/Result;->ICustomTabsCallback:[B

    array-length v1, v0

    :goto_1
    iput v1, p0, Lo/Result;->onNavigationEvent:I

    .line 70
    iget-object v0, p0, Lo/Result;->ICustomTabsCallback:[B

    array-length v0, v0

    if-gt v1, v0, :cond_2

    iget v0, p0, Lo/Result;->extraCallback:I

    if-gt v0, v1, :cond_2

    .line 74
    invoke-virtual {p0, p1}, Lo/Result;->onMessageChannelReady(Lo/PaymentRequestJsonAdapter;)V

    .line 75
    iget p1, p0, Lo/Result;->onNavigationEvent:I

    int-to-long v0, p1

    iget p1, p0, Lo/Result;->extraCallback:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0

    :cond_2
    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lo/Result;->ICustomTabsCallback:[B

    .line 72
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1

    .line 55
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected URI format: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsupported scheme: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback()Landroid/net/Uri;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/Result;->onMessageChannelReady:Lo/PaymentRequestJsonAdapter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMessageChannelReady([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 83
    :cond_0
    iget v0, p0, Lo/Result;->onNavigationEvent:I

    iget v1, p0, Lo/Result;->extraCallback:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 87
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 88
    iget-object v0, p0, Lo/Result;->ICustomTabsCallback:[B

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lo/Result;->extraCallback:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget p1, p0, Lo/Result;->extraCallback:I

    add-int/2addr p1, p3

    iput p1, p0, Lo/Result;->extraCallback:I

    .line 90
    invoke-virtual {p0, p3}, Lo/Result;->onPostMessage(I)V

    return p3
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 102
    iget-object v0, p0, Lo/Result;->ICustomTabsCallback:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 103
    iput-object v1, p0, Lo/Result;->ICustomTabsCallback:[B

    .line 104
    invoke-virtual {p0}, Lo/Result;->ICustomTabsCallback()V

    .line 106
    :cond_0
    iput-object v1, p0, Lo/Result;->onMessageChannelReady:Lo/PaymentRequestJsonAdapter;

    return-void
.end method
