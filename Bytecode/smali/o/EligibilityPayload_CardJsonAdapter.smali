.class public final Lo/EligibilityPayload_CardJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ResultJsonAdapter;


# instance fields
.field private ICustomTabsCallback:J

.field private final extraCallback:Lo/PaymentSliderJsonAdapter;

.field private onMessageChannelReady:Z

.field private final onPostMessage:Lo/ResultJsonAdapter;


# direct methods
.method public constructor <init>(Lo/ResultJsonAdapter;Lo/PaymentSliderJsonAdapter;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ResultJsonAdapter;

    iput-object p1, p0, Lo/EligibilityPayload_CardJsonAdapter;->onPostMessage:Lo/ResultJsonAdapter;

    .line 43
    invoke-static {p2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PaymentSliderJsonAdapter;

    iput-object p1, p0, Lo/EligibilityPayload_CardJsonAdapter;->extraCallback:Lo/PaymentSliderJsonAdapter;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->onPostMessage:Lo/ResultJsonAdapter;

    invoke-interface {v0, p1}, Lo/ResultJsonAdapter;->ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->ICustomTabsCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 57
    :cond_0
    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->asBinder:J

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    iget-wide v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->ICustomTabsCallback:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    .line 59
    invoke-virtual {p1, v2, v3, v0, v1}, Lo/PaymentRequestJsonAdapter;->ICustomTabsCallback(JJ)Lo/PaymentRequestJsonAdapter;

    move-result-object p1

    :cond_1
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->onMessageChannelReady:Z

    .line 62
    iget-object v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->extraCallback:Lo/PaymentSliderJsonAdapter;

    invoke-interface {v0, p1}, Lo/PaymentSliderJsonAdapter;->extraCallback(Lo/PaymentRequestJsonAdapter;)V

    .line 63
    iget-wide v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->ICustomTabsCallback:J

    return-wide v0
.end method

.method public final extraCallback()Landroid/net/Uri;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->onPostMessage:Lo/ResultJsonAdapter;

    invoke-interface {v0}, Lo/ResultJsonAdapter;->extraCallback()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-wide v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->ICustomTabsCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 71
    :cond_0
    iget-object v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->onPostMessage:Lo/ResultJsonAdapter;

    invoke-interface {v0, p1, p2, p3}, Lo/ResultJsonAdapter;->onMessageChannelReady([BII)I

    move-result p3

    if-lez p3, :cond_1

    .line 74
    iget-object v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->extraCallback:Lo/PaymentSliderJsonAdapter;

    invoke-interface {v0, p1, p2, p3}, Lo/PaymentSliderJsonAdapter;->ICustomTabsCallback([BII)V

    .line 75
    iget-wide p1, p0, Lo/EligibilityPayload_CardJsonAdapter;->ICustomTabsCallback:J

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    int-to-long v0, p3

    sub-long/2addr p1, v0

    .line 76
    iput-wide p1, p0, Lo/EligibilityPayload_CardJsonAdapter;->ICustomTabsCallback:J

    :cond_1
    return p3
.end method

.method public final onMessageChannelReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    :try_start_0
    iget-object v1, p0, Lo/EligibilityPayload_CardJsonAdapter;->onPostMessage:Lo/ResultJsonAdapter;

    invoke-interface {v1}, Lo/ResultJsonAdapter;->onMessageChannelReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-boolean v1, p0, Lo/EligibilityPayload_CardJsonAdapter;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    .line 98
    iput-boolean v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->onMessageChannelReady:Z

    .line 99
    iget-object v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->extraCallback:Lo/PaymentSliderJsonAdapter;

    invoke-interface {v0}, Lo/PaymentSliderJsonAdapter;->onMessageChannelReady()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 97
    iget-boolean v2, p0, Lo/EligibilityPayload_CardJsonAdapter;->onMessageChannelReady:Z

    if-eqz v2, :cond_1

    .line 98
    iput-boolean v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->onMessageChannelReady:Z

    .line 99
    iget-object v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->extraCallback:Lo/PaymentSliderJsonAdapter;

    invoke-interface {v0}, Lo/PaymentSliderJsonAdapter;->onMessageChannelReady()V

    .line 101
    :cond_1
    throw v1
.end method

.method public final onNavigationEvent(Lo/InitPayloadJsonAdapter;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->onPostMessage:Lo/ResultJsonAdapter;

    invoke-interface {v0, p1}, Lo/ResultJsonAdapter;->onNavigationEvent(Lo/InitPayloadJsonAdapter;)V

    return-void
.end method

.method public final onPostMessage()Ljava/util/Map;
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

    .line 89
    iget-object v0, p0, Lo/EligibilityPayload_CardJsonAdapter;->onPostMessage:Lo/ResultJsonAdapter;

    invoke-interface {v0}, Lo/ResultJsonAdapter;->onPostMessage()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
