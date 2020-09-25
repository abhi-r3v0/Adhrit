.class public final Lo/PaymentSlider;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private final ICustomTabsCallback:[B

.field private asBinder:J

.field private final extraCallback:Lo/PaymentRequestJsonAdapter;

.field private final onMessageChannelReady:Lo/ResultJsonAdapter;

.field private onNavigationEvent:Z

.field private onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lo/PaymentSlider;->onPostMessage:Z

    .line 35
    iput-boolean v0, p0, Lo/PaymentSlider;->onNavigationEvent:Z

    .line 43
    iput-object p1, p0, Lo/PaymentSlider;->onMessageChannelReady:Lo/ResultJsonAdapter;

    .line 44
    iput-object p2, p0, Lo/PaymentSlider;->extraCallback:Lo/PaymentRequestJsonAdapter;

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 45
    iput-object p1, p0, Lo/PaymentSlider;->ICustomTabsCallback:[B

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-boolean v0, p0, Lo/PaymentSlider;->onPostMessage:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lo/PaymentSlider;->onMessageChannelReady:Lo/ResultJsonAdapter;

    iget-object v1, p0, Lo/PaymentSlider;->extraCallback:Lo/PaymentRequestJsonAdapter;

    invoke-interface {v0, v1}, Lo/ResultJsonAdapter;->ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lo/PaymentSlider;->onPostMessage:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-boolean v0, p0, Lo/PaymentSlider;->onNavigationEvent:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lo/PaymentSlider;->onMessageChannelReady:Lo/ResultJsonAdapter;

    invoke-interface {v0}, Lo/ResultJsonAdapter;->onMessageChannelReady()V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lo/PaymentSlider;->onNavigationEvent:Z

    :cond_0
    return-void
.end method

.method public final extraCallback()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lo/PaymentSlider;->ICustomTabsCallback()V

    return-void
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lo/PaymentSlider;->ICustomTabsCallback:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 71
    :cond_0
    iget-object v0, p0, Lo/PaymentSlider;->ICustomTabsCallback:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-boolean v0, p0, Lo/PaymentSlider;->onNavigationEvent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 82
    invoke-direct {p0}, Lo/PaymentSlider;->ICustomTabsCallback()V

    .line 83
    iget-object v0, p0, Lo/PaymentSlider;->onMessageChannelReady:Lo/ResultJsonAdapter;

    invoke-interface {v0, p1, p2, p3}, Lo/ResultJsonAdapter;->onMessageChannelReady([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 87
    :cond_0
    iget-wide p2, p0, Lo/PaymentSlider;->asBinder:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lo/PaymentSlider;->asBinder:J

    return p1
.end method
