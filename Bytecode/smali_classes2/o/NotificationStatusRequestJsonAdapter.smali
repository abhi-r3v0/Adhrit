.class public final Lo/NotificationStatusRequestJsonAdapter;
.super Lo/NotificationStatusRequest;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/NotificationStatusRequest<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/getMismatchDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getMismatchDetails<",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "*>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/getReminder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReminder<",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/getCreditScore;Lo/removeBackgroundStateChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCreditScore;",
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p2}, Lo/NotificationStatusRequest;-><init>(ILo/removeBackgroundStateChangeListener;)V

    .line 2
    iget-object p2, p1, Lo/getCreditScore;->onMessageChannelReady:Lo/getMismatchDetails;

    iput-object p2, p0, Lo/NotificationStatusRequestJsonAdapter;->extraCallback:Lo/getMismatchDetails;

    .line 3
    iget-object p1, p1, Lo/getCreditScore;->extraCallback:Lo/getReminder;

    iput-object p1, p0, Lo/NotificationStatusRequestJsonAdapter;->onNavigationEvent:Lo/getReminder;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getAmount_refunded$onMessageChannelReady;)V
    .locals 4
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

    .line 5
    iget-object v0, p0, Lo/NotificationStatusRequestJsonAdapter;->extraCallback:Lo/getMismatchDetails;

    invoke-virtual {p1}, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent()Lo/setCustomAmount$ICustomTabsCallback$Stub;

    move-result-object v1

    iget-object v2, p0, Lo/NotificationStatusRequestJsonAdapter;->onPostMessage:Lo/removeBackgroundStateChangeListener;

    invoke-virtual {v0, v1, v2}, Lo/getMismatchDetails;->onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;Lo/removeBackgroundStateChangeListener;)V

    .line 6
    iget-object v0, p0, Lo/NotificationStatusRequestJsonAdapter;->extraCallback:Lo/getMismatchDetails;

    invoke-virtual {v0}, Lo/getMismatchDetails;->onPostMessage()Lo/getPaymentMethod$onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lo/NotificationStatusRequestJsonAdapter;->extraCallback:Lo/getMismatchDetails;

    .line 9
    invoke-virtual {v0}, Lo/getMismatchDetails;->onPostMessage()Lo/getPaymentMethod$onPostMessage;

    move-result-object v0

    new-instance v1, Lo/getCreditScore;

    iget-object v2, p0, Lo/NotificationStatusRequestJsonAdapter;->extraCallback:Lo/getMismatchDetails;

    iget-object v3, p0, Lo/NotificationStatusRequestJsonAdapter;->onNavigationEvent:Lo/getReminder;

    invoke-direct {v1, v2, v3}, Lo/getCreditScore;-><init>(Lo/getMismatchDetails;Lo/getReminder;)V

    .line 10
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/getAmount_refunded$onMessageChannelReady;)[Lo/setAmountRefunded;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAmount_refunded$onMessageChannelReady<",
            "*>;)[",
            "Lo/setAmountRefunded;"
        }
    .end annotation

    .line 12
    iget-object p1, p0, Lo/NotificationStatusRequestJsonAdapter;->extraCallback:Lo/getMismatchDetails;

    invoke-virtual {p1}, Lo/getMismatchDetails;->onMessageChannelReady()[Lo/setAmountRefunded;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Lo/getAmount_refunded$onMessageChannelReady;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAmount_refunded$onMessageChannelReady<",
            "*>;)Z"
        }
    .end annotation

    .line 13
    iget-object p1, p0, Lo/NotificationStatusRequestJsonAdapter;->extraCallback:Lo/getMismatchDetails;

    invoke-virtual {p1}, Lo/getMismatchDetails;->onNavigationEvent()Z

    move-result p1

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
