.class public final Lo/getOptedIn;
.super Lo/NotificationStatusRequest;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/NotificationStatusRequest<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getPaymentMethod$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPaymentMethod$onPostMessage<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/getPaymentMethod$onPostMessage;Lo/removeBackgroundStateChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getPaymentMethod$onPostMessage<",
            "*>;",
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p2}, Lo/NotificationStatusRequest;-><init>(ILo/removeBackgroundStateChangeListener;)V

    .line 2
    iput-object p1, p0, Lo/getOptedIn;->ICustomTabsCallback:Lo/getPaymentMethod$onPostMessage;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getAmount_refunded$onMessageChannelReady;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAmount_refunded$onMessageChannelReady<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lo/getOptedIn;->ICustomTabsCallback:Lo/getPaymentMethod$onPostMessage;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getCreditScore;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, v0, Lo/getCreditScore;->extraCallback:Lo/getReminder;

    invoke-virtual {p1}, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent()Lo/setCustomAmount$ICustomTabsCallback$Stub;

    move-result-object p1

    iget-object v2, p0, Lo/getOptedIn;->onPostMessage:Lo/removeBackgroundStateChangeListener;

    invoke-virtual {v1, p1, v2}, Lo/getReminder;->onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;Lo/removeBackgroundStateChangeListener;)V

    .line 7
    iget-object p1, v0, Lo/getCreditScore;->onMessageChannelReady:Lo/getMismatchDetails;

    invoke-virtual {p1}, Lo/getMismatchDetails;->extraCallback()V

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lo/getOptedIn;->onPostMessage:Lo/removeBackgroundStateChangeListener;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/removeBackgroundStateChangeListener;->extraCallback(Ljava/lang/Object;)Z

    return-void
.end method

.method public final extraCallback(Lo/getAmount_refunded$onMessageChannelReady;)[Lo/setAmountRefunded;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAmount_refunded$onMessageChannelReady<",
            "*>;)[",
            "Lo/setAmountRefunded;"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lo/getOptedIn;->ICustomTabsCallback:Lo/getPaymentMethod$onPostMessage;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCreditScore;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_0
    iget-object p1, p1, Lo/getCreditScore;->onMessageChannelReady:Lo/getMismatchDetails;

    invoke-virtual {p1}, Lo/getMismatchDetails;->onMessageChannelReady()[Lo/setAmountRefunded;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Lo/getAmount_refunded$onMessageChannelReady;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAmount_refunded$onMessageChannelReady<",
            "*>;)Z"
        }
    .end annotation

    .line 12
    invoke-virtual {p1}, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lo/getOptedIn;->ICustomTabsCallback:Lo/getPaymentMethod$onPostMessage;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCreditScore;

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p1, Lo/getCreditScore;->onMessageChannelReady:Lo/getMismatchDetails;

    invoke-virtual {p1}, Lo/getMismatchDetails;->onNavigationEvent()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic onNavigationEvent(Ljava/lang/RuntimeException;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lo/NotificationStatusRequest;->onNavigationEvent(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final bridge synthetic onPostMessage(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lo/NotificationStatusRequest;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic onPostMessage(Lo/AmexWebViewInterface;Z)V
    .locals 0

    return-void
.end method
