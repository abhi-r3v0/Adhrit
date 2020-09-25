.class public final Lo/JuspaySessionToken$JuspayUpi;
.super Lo/toJson;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/CredUpiInstrumentBankStatus;


# direct methods
.method public constructor <init>(Lo/t;Lo/CredUpiInstrumentBankStatus;)V
    .locals 3

    .line 38
    invoke-direct {p0, p1}, Lo/toJson;-><init>(Lo/t;)V

    .line 39
    invoke-virtual {p1}, Lo/t;->onPostMessage()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 40
    invoke-virtual {p1}, Lo/t;->onMessageChannelReady()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 41
    iput-object p2, p0, Lo/JuspaySessionToken$JuspayUpi;->ICustomTabsCallback:Lo/CredUpiInstrumentBankStatus;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(ILo/t$onMessageChannelReady;ZJ)Lo/t$onMessageChannelReady;
    .locals 1

    .line 60
    invoke-super/range {p0 .. p5}, Lo/toJson;->onNavigationEvent(ILo/t$onMessageChannelReady;ZJ)Lo/t$onMessageChannelReady;

    move-result-object p1

    .line 61
    iget-wide p2, p1, Lo/t$onMessageChannelReady;->asBinder:J

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    .line 62
    iget-object p2, p0, Lo/JuspaySessionToken$JuspayUpi;->ICustomTabsCallback:Lo/CredUpiInstrumentBankStatus;

    iget-wide p2, p2, Lo/CredUpiInstrumentBankStatus;->asBinder:J

    iput-wide p2, p1, Lo/t$onMessageChannelReady;->asBinder:J

    :cond_0
    return-object p1
.end method

.method public final onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;
    .locals 10

    .line 46
    iget-object v0, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    invoke-virtual {v0, p1, p2, p3}, Lo/t;->onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;

    .line 47
    iget-object v2, p2, Lo/t$onPostMessage;->onPostMessage:Ljava/lang/Object;

    iget-object v3, p2, Lo/t$onPostMessage;->extraCallback:Ljava/lang/Object;

    iget v4, p2, Lo/t$onPostMessage;->onNavigationEvent:I

    iget-wide v5, p2, Lo/t$onPostMessage;->ICustomTabsCallback:J

    .line 52
    invoke-virtual {p2}, Lo/t$onPostMessage;->onMessageChannelReady()J

    move-result-wide v7

    iget-object v9, p0, Lo/JuspaySessionToken$JuspayUpi;->ICustomTabsCallback:Lo/CredUpiInstrumentBankStatus;

    move-object v1, p2

    .line 47
    invoke-virtual/range {v1 .. v9}, Lo/t$onPostMessage;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;IJJLo/CredUpiInstrumentBankStatus;)Lo/t$onPostMessage;

    return-object p2
.end method
