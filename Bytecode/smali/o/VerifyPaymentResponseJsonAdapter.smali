.class public Lo/VerifyPaymentResponseJsonAdapter;
.super Lo/PaymentInstrumentRequest;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;


# static fields
.field private static final extraCallback:Ljava/util/regex/Pattern;

.field private static final onPostMessage:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback$Stub:Ljava/lang/String;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Ljava/io/InputStream;

.field private final asBinder:Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;

.field private final asInterface:I

.field private getInterfaceDescriptor:Ljava/net/HttpURLConnection;

.field private mayLaunchUrl:J

.field private newSession:Lo/PaymentRequestJsonAdapter;

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:Z

.field private final onRelationshipValidationResult:Lo/getAccessToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getAccessToken<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;

.field private postMessage:J

.field private requestPostMessageChannel:J

.field private updateVisuals:J

.field private warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 70
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/VerifyPaymentResponseJsonAdapter;->extraCallback:Ljava/util/regex/Pattern;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lo/VerifyPaymentResponseJsonAdapter;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/getAccessToken;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/getAccessToken<",
            "Ljava/lang/String;",
            ">;IIZ",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 158
    invoke-direct {p0, v0}, Lo/PaymentInstrumentRequest;-><init>(Z)V

    .line 159
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lo/VerifyPaymentResponseJsonAdapter;->onRelationshipValidationResult:Lo/getAccessToken;

    .line 161
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;-><init>()V

    iput-object p1, p0, Lo/VerifyPaymentResponseJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;

    .line 162
    iput p3, p0, Lo/VerifyPaymentResponseJsonAdapter;->onMessageChannelReady:I

    .line 163
    iput p4, p0, Lo/VerifyPaymentResponseJsonAdapter;->asInterface:I

    .line 164
    iput-boolean p5, p0, Lo/VerifyPaymentResponseJsonAdapter;->onNavigationEvent:Z

    .line 165
    iput-object p6, p0, Lo/VerifyPaymentResponseJsonAdapter;->onTransact:Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;

    return-void
.end method

.method private ICustomTabsCallback([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 693
    :cond_0
    iget-wide v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->requestPostMessageChannel:J

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    .line 694
    iget-wide v5, p0, Lo/VerifyPaymentResponseJsonAdapter;->postMessage:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_1

    return v4

    :cond_1
    int-to-long v5, p3

    .line 698
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 701
    :cond_2
    iget-object v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsService:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 703
    iget-wide p1, p0, Lo/VerifyPaymentResponseJsonAdapter;->requestPostMessageChannel:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_3

    return v4

    .line 705
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 710
    :cond_4
    iget-wide p2, p0, Lo/VerifyPaymentResponseJsonAdapter;->postMessage:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lo/VerifyPaymentResponseJsonAdapter;->postMessage:J

    .line 711
    invoke-virtual {p0, p1}, Lo/VerifyPaymentResponseJsonAdapter;->onPostMessage(I)V

    return p1
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 3

    .line 764
    iget-object v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->getInterfaceDescriptor:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 766
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 768
    invoke-static {v1, v2, v0}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 770
    iput-object v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->getInterfaceDescriptor:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method private asBinder()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    iget-wide v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->mayLaunchUrl:J

    iget-wide v2, p0, Lo/VerifyPaymentResponseJsonAdapter;->updateVisuals:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 653
    :cond_0
    sget-object v0, Lo/VerifyPaymentResponseJsonAdapter;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 658
    :cond_1
    :goto_0
    iget-wide v1, p0, Lo/VerifyPaymentResponseJsonAdapter;->mayLaunchUrl:J

    iget-wide v3, p0, Lo/VerifyPaymentResponseJsonAdapter;->updateVisuals:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    sub-long/2addr v3, v1

    .line 659
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 660
    iget-object v1, p0, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsService:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 661
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 667
    iget-wide v2, p0, Lo/VerifyPaymentResponseJsonAdapter;->mayLaunchUrl:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lo/VerifyPaymentResponseJsonAdapter;->mayLaunchUrl:J

    .line 668
    invoke-virtual {p0, v1}, Lo/VerifyPaymentResponseJsonAdapter;->onPostMessage(I)V

    goto :goto_0

    .line 665
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 662
    :cond_3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 672
    :cond_4
    sget-object v1, Lo/VerifyPaymentResponseJsonAdapter;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private static extraCallback(Ljava/net/HttpURLConnection;)J
    .locals 10

    const-string v0, "Content-Length"

    .line 603
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    const-string v3, "DefaultHttpDataSource"

    if-nez v1, :cond_0

    .line 606
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected Content-Length ["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v4, -0x1

    :goto_0
    const-string v1, "Content-Range"

    .line 611
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 612
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 613
    sget-object v1, Lo/VerifyPaymentResponseJsonAdapter;->extraCallback:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 614
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    .line 617
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gez v1, :cond_1

    move-wide v4, v6

    goto :goto_1

    :cond_1
    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "Inconsistent headers ["

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v4, v0

    goto :goto_1

    .line 632
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected Content-Range ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-wide v4
.end method

.method private extraCallback(Ljava/net/URL;I[BJJZZZ)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 525
    iget v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->onMessageChannelReady:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 526
    iget v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->asInterface:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 527
    iget-object v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->onTransact:Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 529
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :cond_0
    iget-object v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->asBinder:Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 533
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, p4, v0

    if-nez v4, :cond_2

    cmp-long v0, p6, v2

    if-eqz v0, :cond_4

    .line 536
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v1, p6, v2

    if-eqz v1, :cond_3

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string p4, "Range"

    .line 540
    invoke-virtual {p1, p4, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_4
    iget-object p4, p0, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const-string p5, "User-Agent"

    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p8, :cond_5

    const-string p4, "Accept-Encoding"

    const-string p5, "identity"

    .line 544
    invoke-virtual {p1, p4, p5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p9, :cond_6

    const-string p4, "Icy-MetaData"

    const-string p5, "1"

    .line 547
    invoke-virtual {p1, p4, p5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_6
    invoke-virtual {p1, p10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_7

    const/4 p4, 0x1

    goto :goto_2

    :cond_7
    const/4 p4, 0x0

    .line 552
    :goto_2
    invoke-virtual {p1, p4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 553
    invoke-static {p2}, Lo/PaymentRequestJsonAdapter;->onMessageChannelReady(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    .line 555
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 556
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 557
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 558
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 559
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 561
    :cond_8
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    :goto_3
    return-object p1
.end method

.method private static extraCallback(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 579
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https"

    .line 582
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "http"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unsupported protocol redirect: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object v0

    .line 576
    :cond_2
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Null location redirect"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extraCallback(Ljava/net/HttpURLConnection;J)V
    .locals 3

    .line 727
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    return-void

    .line 732
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 735
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return-void

    :cond_1
    const-wide/16 v0, 0x800

    cmp-long v2, p1, v0

    if-gtz v2, :cond_2

    return-void

    .line 743
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 744
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 746
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 747
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    const-string/jumbo p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 748
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 749
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array p2, v0, [Ljava/lang/Object;

    .line 750
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method private onNavigationEvent(Lo/PaymentRequestJsonAdapter;)Ljava/net/HttpURLConnection;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 437
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 438
    iget v2, v0, Lo/PaymentRequestJsonAdapter;->ICustomTabsCallback:I

    .line 439
    iget-object v3, v0, Lo/PaymentRequestJsonAdapter;->onNavigationEvent:[B

    .line 440
    iget-wide v14, v0, Lo/PaymentRequestJsonAdapter;->onTransact:J

    .line 441
    iget-wide v12, v0, Lo/PaymentRequestJsonAdapter;->asBinder:J

    const/4 v10, 0x1

    .line 442
    invoke-virtual {v0, v10}, Lo/PaymentRequestJsonAdapter;->extraCallback(I)Z

    move-result v16

    const/4 v11, 0x2

    .line 443
    invoke-virtual {v0, v11}, Lo/PaymentRequestJsonAdapter;->extraCallback(I)Z

    move-result v17

    move-object/from16 v9, p0

    .line 445
    iget-boolean v0, v9, Lo/VerifyPaymentResponseJsonAdapter;->onNavigationEvent:Z

    if-nez v0, :cond_0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-wide v4, v14

    move-wide v6, v12

    move/from16 v8, v16

    move/from16 v9, v17

    .line 448
    invoke-direct/range {v0 .. v10}, Lo/VerifyPaymentResponseJsonAdapter;->extraCallback(Ljava/net/URL;I[BJJZZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v18, v0, 0x1

    const/16 v4, 0x14

    if-gt v0, v4, :cond_6

    const/4 v0, 0x0

    move-object/from16 v4, p0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    move-wide v8, v14

    move-wide v10, v12

    move-wide/from16 v19, v12

    move/from16 v12, v16

    move/from16 v13, v17

    move-wide/from16 v21, v14

    move v14, v0

    .line 463
    invoke-direct/range {v4 .. v14}, Lo/VerifyPaymentResponseJsonAdapter;->extraCallback(Ljava/net/URL;I[BJJZZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const-string v5, "Location"

    .line 473
    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x12f

    const/16 v7, 0x12e

    const/16 v8, 0x12d

    const/16 v9, 0x12c

    const/4 v10, 0x1

    if-eq v2, v10, :cond_2

    const/4 v11, 0x3

    if-ne v2, v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v11, 0x2

    goto :goto_2

    :cond_2
    :goto_1
    if-eq v4, v9, :cond_5

    if-eq v4, v8, :cond_5

    if-eq v4, v7, :cond_5

    if-eq v4, v6, :cond_5

    const/16 v11, 0x133

    if-eq v4, v11, :cond_5

    const/16 v11, 0x134

    if-ne v4, v11, :cond_1

    goto :goto_3

    :goto_2
    if-ne v2, v11, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_3

    if-ne v4, v6, :cond_4

    .line 489
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v3, 0x0

    .line 492
    invoke-static {v1, v5}, Lo/VerifyPaymentResponseJsonAdapter;->extraCallback(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    move/from16 v0, v18

    move-wide/from16 v12, v19

    move-wide/from16 v14, v21

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    const/4 v11, 0x2

    .line 481
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 482
    invoke-static {v1, v5}, Lo/VerifyPaymentResponseJsonAdapter;->extraCallback(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    move/from16 v0, v18

    move-wide/from16 v12, v19

    move-wide/from16 v14, v21

    goto :goto_0

    .line 499
    :cond_6
    new-instance v0, Ljava/net/NoRouteToHostException;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Too many redirects: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const-string v0, "Unable to connect to "

    .line 286
    iput-object p1, p0, Lo/VerifyPaymentResponseJsonAdapter;->newSession:Lo/PaymentRequestJsonAdapter;

    const-wide/16 v1, 0x0

    .line 287
    iput-wide v1, p0, Lo/VerifyPaymentResponseJsonAdapter;->postMessage:J

    .line 288
    iput-wide v1, p0, Lo/VerifyPaymentResponseJsonAdapter;->mayLaunchUrl:J

    .line 289
    invoke-virtual {p0, p1}, Lo/VerifyPaymentResponseJsonAdapter;->extraCallback(Lo/PaymentRequestJsonAdapter;)V

    const/4 v3, 0x1

    .line 291
    :try_start_0
    invoke-direct {p0, p1}, Lo/VerifyPaymentResponseJsonAdapter;->onNavigationEvent(Lo/PaymentRequestJsonAdapter;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, p0, Lo/VerifyPaymentResponseJsonAdapter;->getInterfaceDescriptor:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 299
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, p0, Lo/VerifyPaymentResponseJsonAdapter;->warmup:I

    .line 300
    iget-object v4, p0, Lo/VerifyPaymentResponseJsonAdapter;->getInterfaceDescriptor:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    iget v4, p0, Lo/VerifyPaymentResponseJsonAdapter;->warmup:I

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_7

    const/16 v6, 0x12b

    if-le v4, v6, :cond_0

    goto :goto_2

    .line 320
    :cond_0
    iget-object v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->getInterfaceDescriptor:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 321
    iget-object v4, p0, Lo/VerifyPaymentResponseJsonAdapter;->onRelationshipValidationResult:Lo/getAccessToken;

    if-eqz v4, :cond_2

    invoke-interface {v4, v0}, Lo/getAccessToken;->onPostMessage(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    invoke-direct {p0}, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback$Stub()V

    .line 323
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lo/PaymentRequestJsonAdapter;)V

    throw v1

    .line 329
    :cond_2
    :goto_0
    iget v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->warmup:I

    if-ne v0, v5, :cond_3

    iget-wide v4, p1, Lo/PaymentRequestJsonAdapter;->onTransact:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_3

    iget-wide v1, p1, Lo/PaymentRequestJsonAdapter;->onTransact:J

    :cond_3
    iput-wide v1, p0, Lo/VerifyPaymentResponseJsonAdapter;->updateVisuals:J

    .line 332
    invoke-virtual {p1, v3}, Lo/PaymentRequestJsonAdapter;->extraCallback(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 333
    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->asBinder:J

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_4

    .line 334
    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->asBinder:J

    iput-wide v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->requestPostMessageChannel:J

    goto :goto_1

    .line 336
    :cond_4
    iget-object v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->getInterfaceDescriptor:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lo/VerifyPaymentResponseJsonAdapter;->extraCallback(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_5

    .line 337
    iget-wide v4, p0, Lo/VerifyPaymentResponseJsonAdapter;->updateVisuals:J

    sub-long v4, v0, v4

    :cond_5
    iput-wide v4, p0, Lo/VerifyPaymentResponseJsonAdapter;->requestPostMessageChannel:J

    goto :goto_1

    .line 345
    :cond_6
    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->asBinder:J

    iput-wide v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->requestPostMessageChannel:J

    .line 349
    :goto_1
    :try_start_2
    iget-object v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->getInterfaceDescriptor:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsService:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 355
    iput-boolean v3, p0, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    .line 356
    invoke-virtual {p0, p1}, Lo/VerifyPaymentResponseJsonAdapter;->onMessageChannelReady(Lo/PaymentRequestJsonAdapter;)V

    .line 358
    iget-wide v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->requestPostMessageChannel:J

    return-wide v0

    :catch_0
    move-exception v0

    .line 351
    invoke-direct {p0}, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback$Stub()V

    .line 352
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, p1, v3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lo/PaymentRequestJsonAdapter;I)V

    throw v1

    .line 309
    :cond_7
    :goto_2
    iget-object v1, p0, Lo/VerifyPaymentResponseJsonAdapter;->getInterfaceDescriptor:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 310
    invoke-direct {p0}, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback$Stub()V

    .line 311
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v3, p0, Lo/VerifyPaymentResponseJsonAdapter;->warmup:I

    invoke-direct {v2, v3, v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/util/Map;Lo/PaymentRequestJsonAdapter;)V

    .line 313
    iget p1, p0, Lo/VerifyPaymentResponseJsonAdapter;->warmup:I

    const/16 v0, 0x1a0

    if-ne p1, v0, :cond_8

    .line 314
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 316
    :cond_8
    throw v2

    :catch_1
    move-exception v1

    .line 302
    invoke-direct {p0}, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback$Stub()V

    .line 303
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lo/PaymentRequestJsonAdapter;I)V

    throw v2

    :catch_2
    move-exception v1

    .line 293
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lo/PaymentRequestJsonAdapter;I)V

    throw v2
.end method

.method public extraCallback()Landroid/net/Uri;
    .locals 1

    .line 253
    iget-object v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->getInterfaceDescriptor:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onMessageChannelReady([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 364
    :try_start_0
    invoke-direct {p0}, Lo/VerifyPaymentResponseJsonAdapter;->asBinder()V

    .line 365
    invoke-direct {p0, p1, p2, p3}, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 367
    new-instance p2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object p3, p0, Lo/VerifyPaymentResponseJsonAdapter;->newSession:Lo/PaymentRequestJsonAdapter;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lo/PaymentRequestJsonAdapter;I)V

    throw p2
.end method

.method public onMessageChannelReady()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 374
    :try_start_0
    iget-object v2, p0, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsService:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lo/VerifyPaymentResponseJsonAdapter;->getInterfaceDescriptor:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lo/VerifyPaymentResponseJsonAdapter;->onNavigationEvent()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lo/VerifyPaymentResponseJsonAdapter;->extraCallback(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :try_start_1
    iget-object v2, p0, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsService:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 379
    :try_start_2
    new-instance v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v4, p0, Lo/VerifyPaymentResponseJsonAdapter;->newSession:Lo/PaymentRequestJsonAdapter;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lo/PaymentRequestJsonAdapter;I)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    :cond_0
    :goto_0
    iput-object v1, p0, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsService:Ljava/io/InputStream;

    .line 384
    invoke-direct {p0}, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback$Stub()V

    .line 385
    iget-boolean v1, p0, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v1, :cond_1

    .line 386
    iput-boolean v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    .line 387
    invoke-virtual {p0}, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    .line 383
    iput-object v1, p0, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsService:Ljava/io/InputStream;

    .line 384
    invoke-direct {p0}, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback$Stub()V

    .line 385
    iget-boolean v1, p0, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v1, :cond_2

    .line 386
    iput-boolean v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    .line 387
    invoke-virtual {p0}, Lo/VerifyPaymentResponseJsonAdapter;->ICustomTabsCallback()V

    .line 389
    :cond_2
    throw v2
.end method

.method protected final onNavigationEvent()J
    .locals 5

    .line 430
    iget-wide v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->requestPostMessageChannel:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lo/VerifyPaymentResponseJsonAdapter;->postMessage:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public onPostMessage()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lo/VerifyPaymentResponseJsonAdapter;->getInterfaceDescriptor:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
