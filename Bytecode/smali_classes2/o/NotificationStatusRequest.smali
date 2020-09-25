.class abstract Lo/NotificationStatusRequest;
.super Lo/Contacts;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/Contacts;"
    }
.end annotation


# instance fields
.field protected final onPostMessage:Lo/removeBackgroundStateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/removeBackgroundStateChangeListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILo/removeBackgroundStateChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/removeBackgroundStateChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lo/Contacts;-><init>(I)V

    .line 2
    iput-object p2, p0, Lo/NotificationStatusRequest;->onPostMessage:Lo/removeBackgroundStateChangeListener;

    return-void
.end method


# virtual methods
.method protected abstract ICustomTabsCallback(Lo/getAmount_refunded$onMessageChannelReady;)V
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
.end method

.method public onNavigationEvent(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lo/NotificationStatusRequest;->onPostMessage:Lo/removeBackgroundStateChangeListener;

    invoke-virtual {v0, p1}, Lo/removeBackgroundStateChangeListener;->ICustomTabsCallback(Ljava/lang/Exception;)Z

    return-void
.end method

.method public onPostMessage(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lo/NotificationStatusRequest;->onPostMessage:Lo/removeBackgroundStateChangeListener;

    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lo/removeBackgroundStateChangeListener;->ICustomTabsCallback(Ljava/lang/Exception;)Z

    return-void
.end method

.method public onPostMessage(Lo/AmexWebViewInterface;Z)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/getAmount_refunded$onMessageChannelReady;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAmount_refunded$onMessageChannelReady<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lo/NotificationStatusRequest;->ICustomTabsCallback(Lo/getAmount_refunded$onMessageChannelReady;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p0, p1}, Lo/getContacts;->onNavigationEvent(Ljava/lang/RuntimeException;)V

    return-void

    :catch_1
    move-exception p1

    .line 15
    invoke-static {p1}, Lo/getContacts;->onPostMessage(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/getContacts;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    .line 12
    invoke-static {p1}, Lo/getContacts;->onPostMessage(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/getContacts;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    .line 13
    throw p1
.end method
