.class final Lo/Gating;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/getAmount_refunded$ICustomTabsCallback;

.field private final synthetic onPostMessage:Lo/setReferenceId;


# direct methods
.method constructor <init>(Lo/getAmount_refunded$ICustomTabsCallback;Lo/setReferenceId;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/Gating;->onMessageChannelReady:Lo/getAmount_refunded$ICustomTabsCallback;

    iput-object p2, p0, Lo/Gating;->onPostMessage:Lo/setReferenceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/Gating;->onMessageChannelReady:Lo/getAmount_refunded$ICustomTabsCallback;

    iget-object v0, v0, Lo/getAmount_refunded$ICustomTabsCallback;->ICustomTabsCallback:Lo/getAmount_refunded;

    invoke-static {v0}, Lo/getAmount_refunded;->onNavigationEvent(Lo/getAmount_refunded;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lo/Gating;->onMessageChannelReady:Lo/getAmount_refunded$ICustomTabsCallback;

    invoke-static {v1}, Lo/getAmount_refunded$ICustomTabsCallback;->onNavigationEvent(Lo/getAmount_refunded$ICustomTabsCallback;)Lo/RefundAccount$$Parcelable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAmount_refunded$onMessageChannelReady;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lo/Gating;->onPostMessage:Lo/setReferenceId;

    invoke-virtual {v1}, Lo/setReferenceId;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lo/Gating;->onMessageChannelReady:Lo/getAmount_refunded$ICustomTabsCallback;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lo/getAmount_refunded$ICustomTabsCallback;->onMessageChannelReady(Lo/getAmount_refunded$ICustomTabsCallback;Z)Z

    .line 7
    iget-object v1, p0, Lo/Gating;->onMessageChannelReady:Lo/getAmount_refunded$ICustomTabsCallback;

    invoke-static {v1}, Lo/getAmount_refunded$ICustomTabsCallback;->onPostMessage(Lo/getAmount_refunded$ICustomTabsCallback;)Lo/setCustomAmount$ICustomTabsCallback$Stub;

    move-result-object v1

    invoke-interface {v1}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Lo/Gating;->onMessageChannelReady:Lo/getAmount_refunded$ICustomTabsCallback;

    invoke-static {v0}, Lo/getAmount_refunded$ICustomTabsCallback;->extraCallback(Lo/getAmount_refunded$ICustomTabsCallback;)V

    return-void

    .line 9
    :cond_1
    :try_start_0
    iget-object v1, p0, Lo/Gating;->onMessageChannelReady:Lo/getAmount_refunded$ICustomTabsCallback;

    invoke-static {v1}, Lo/getAmount_refunded$ICustomTabsCallback;->onPostMessage(Lo/getAmount_refunded$ICustomTabsCallback;)Lo/setCustomAmount$ICustomTabsCallback$Stub;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lo/Gating;->onMessageChannelReady:Lo/getAmount_refunded$ICustomTabsCallback;

    .line 10
    invoke-static {v3}, Lo/getAmount_refunded$ICustomTabsCallback;->onPostMessage(Lo/getAmount_refunded$ICustomTabsCallback;)Lo/setCustomAmount$ICustomTabsCallback$Stub;

    move-result-object v3

    invoke-interface {v3}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->getScopesForConnectionlessNonSignIn()Ljava/util/Set;

    move-result-object v3

    .line 11
    invoke-interface {v1, v2, v3}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->getRemoteService(Lo/setTotalPaid;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "GoogleApiManager"

    const-string v3, "Failed to get service from broker. "

    .line 14
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    new-instance v1, Lo/setReferenceId;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lo/setReferenceId;-><init>(I)V

    invoke-virtual {v0, v1}, Lo/getAmount_refunded$onMessageChannelReady;->onConnectionFailed(Lo/setReferenceId;)V

    return-void

    .line 17
    :cond_2
    iget-object v1, p0, Lo/Gating;->onPostMessage:Lo/setReferenceId;

    invoke-virtual {v0, v1}, Lo/getAmount_refunded$onMessageChannelReady;->onConnectionFailed(Lo/setReferenceId;)V

    return-void
.end method
