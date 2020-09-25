.class public final Lo/SurchargeInfoJsonAdapter;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$ICustomTabsCallback;
.source ""


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:Lo/InitPayloadJsonAdapter;

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:I

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/InitPayloadJsonAdapter;)V
    .locals 6

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 55
    invoke-direct/range {v0 .. v5}, Lo/SurchargeInfoJsonAdapter;-><init>(Ljava/lang/String;Lo/InitPayloadJsonAdapter;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/InitPayloadJsonAdapter;IIZ)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$ICustomTabsCallback;-><init>()V

    .line 97
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/SurchargeInfoJsonAdapter;->onPostMessage:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lo/SurchargeInfoJsonAdapter;->extraCallback:Lo/InitPayloadJsonAdapter;

    .line 99
    iput p3, p0, Lo/SurchargeInfoJsonAdapter;->ICustomTabsCallback:I

    .line 100
    iput p4, p0, Lo/SurchargeInfoJsonAdapter;->onNavigationEvent:I

    .line 101
    iput-boolean p5, p0, Lo/SurchargeInfoJsonAdapter;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/SurchargeInfoJsonAdapter;->onMessageChannelReady(Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;)Lo/VerifyPaymentResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected final onMessageChannelReady(Lcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;)Lo/VerifyPaymentResponseJsonAdapter;
    .locals 8

    .line 107
    new-instance v7, Lo/VerifyPaymentResponseJsonAdapter;

    iget-object v1, p0, Lo/SurchargeInfoJsonAdapter;->onPostMessage:Ljava/lang/String;

    iget v3, p0, Lo/SurchargeInfoJsonAdapter;->ICustomTabsCallback:I

    iget v4, p0, Lo/SurchargeInfoJsonAdapter;->onNavigationEvent:I

    iget-boolean v5, p0, Lo/SurchargeInfoJsonAdapter;->onMessageChannelReady:Z

    const/4 v2, 0x0

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lo/VerifyPaymentResponseJsonAdapter;-><init>(Ljava/lang/String;Lo/getAccessToken;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$onNavigationEvent;)V

    .line 115
    iget-object p1, p0, Lo/SurchargeInfoJsonAdapter;->extraCallback:Lo/InitPayloadJsonAdapter;

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {v7, p1}, Lo/PaymentInstrumentRequest;->onNavigationEvent(Lo/InitPayloadJsonAdapter;)V

    :cond_0
    return-object v7
.end method
