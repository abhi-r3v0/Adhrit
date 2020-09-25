.class final Lo/getAppKey;
.super Lo/getAccountReference$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getAccountReference$onPostMessage<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lo/setResponseExpectationEnabled;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setCurrency;


# direct methods
.method constructor <init>(Lo/setCurrency;Lo/getPaymentMode;)V
    .locals 1

    sget-object v0, Lo/getReferenceId;->onPostMessage:Lo/setCustomAmount;

    invoke-direct {p0, v0, p2}, Lo/getAccountReference$onPostMessage;-><init>(Lo/setCustomAmount;Lo/getPaymentMode;)V

    iput-object p1, p0, Lo/getAppKey;->ICustomTabsCallback:Lo/setCurrency;

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Lcom/google/android/gms/common/api/Status;)Lo/PaymentRequestItem;
    .locals 0

    return-object p1
.end method

.method public final synthetic onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lo/setResponseExpectationEnabled;

    new-instance v0, Lo/FreshchatConfig;

    invoke-direct {v0, p0}, Lo/FreshchatConfig;-><init>(Lo/getAppKey;)V

    :try_start_0
    iget-object v1, p0, Lo/getAppKey;->ICustomTabsCallback:Lo/setCurrency;

    iget-object v2, v1, Lo/setCurrency;->onPostMessage:Lo/getReferenceId$onMessageChannelReady;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lo/setCurrency;->onMessageChannelReady:Lo/setDomain;

    iget-object v2, v2, Lo/setDomain;->ICustomTabsCallback$Stub:[B

    array-length v2, v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lo/setCurrency;->onMessageChannelReady:Lo/setDomain;

    iget-object v3, v1, Lo/setCurrency;->onPostMessage:Lo/getReferenceId$onMessageChannelReady;

    invoke-interface {v3}, Lo/getReferenceId$onMessageChannelReady;->onMessageChannelReady()[B

    move-result-object v3

    iput-object v3, v2, Lo/setDomain;->ICustomTabsCallback$Stub:[B

    :cond_0
    iget-object v2, v1, Lo/setCurrency;->ICustomTabsCallback:Lo/getReferenceId$onMessageChannelReady;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lo/setCurrency;->onMessageChannelReady:Lo/setDomain;

    iget-object v2, v2, Lo/setDomain;->onTransact:[B

    array-length v2, v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lo/setCurrency;->onMessageChannelReady:Lo/setDomain;

    iget-object v3, v1, Lo/setCurrency;->ICustomTabsCallback:Lo/getReferenceId$onMessageChannelReady;

    invoke-interface {v3}, Lo/getReferenceId$onMessageChannelReady;->onMessageChannelReady()[B

    move-result-object v3

    iput-object v3, v2, Lo/setDomain;->onTransact:[B

    :cond_1
    iget-object v2, v1, Lo/setCurrency;->onMessageChannelReady:Lo/setDomain;

    invoke-virtual {v2}, Lo/setUserProperty;->extraCallback()I

    move-result v3

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Lo/setUserProperty;->ICustomTabsCallback(Lo/setUserProperty;[BII)V

    iput-object v4, v1, Lo/setCurrency;->extraCallback:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lo/setResponseExpectationEnabled;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lo/isTeamMemberInfoVisible;

    iget-object v1, p0, Lo/getAppKey;->ICustomTabsCallback:Lo/setCurrency;

    invoke-interface {p1, v0, v1}, Lo/isTeamMemberInfoVisible;->onPostMessage(Lo/isResponseExpectationEnabled;Lo/setCurrency;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v1, "derived ClearcutLogger.MessageProducer "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "MessageProducer"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lo/getAppKey;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
