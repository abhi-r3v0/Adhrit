.class public final Lo/WhatsappConsentState;
.super Lo/Contacts;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lo/Contacts;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/removeBackgroundStateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/removeBackgroundStateChangeListener<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/getPanMismatch;

.field private final onNavigationEvent:Lo/isFabrikEnabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isFabrikEnabled<",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILo/isFabrikEnabled;Lo/removeBackgroundStateChangeListener;Lo/getPanMismatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/isFabrikEnabled<",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "TResultT;>;",
            "Lo/removeBackgroundStateChangeListener<",
            "TResultT;>;",
            "Lo/getPanMismatch;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lo/Contacts;-><init>(I)V

    .line 2
    iput-object p3, p0, Lo/WhatsappConsentState;->ICustomTabsCallback:Lo/removeBackgroundStateChangeListener;

    .line 3
    iput-object p2, p0, Lo/WhatsappConsentState;->onNavigationEvent:Lo/isFabrikEnabled;

    .line 4
    iput-object p4, p0, Lo/WhatsappConsentState;->extraCallback:Lo/getPanMismatch;

    return-void
.end method


# virtual methods
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

    .line 21
    iget-object p1, p0, Lo/WhatsappConsentState;->onNavigationEvent:Lo/isFabrikEnabled;

    invoke-virtual {p1}, Lo/isFabrikEnabled;->onMessageChannelReady()[Lo/setAmountRefunded;

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

    .line 22
    iget-object p1, p0, Lo/WhatsappConsentState;->onNavigationEvent:Lo/isFabrikEnabled;

    invoke-virtual {p1}, Lo/isFabrikEnabled;->ICustomTabsCallback()Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lo/WhatsappConsentState;->ICustomTabsCallback:Lo/removeBackgroundStateChangeListener;

    invoke-virtual {v0, p1}, Lo/removeBackgroundStateChangeListener;->ICustomTabsCallback(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final onPostMessage(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lo/WhatsappConsentState;->ICustomTabsCallback:Lo/removeBackgroundStateChangeListener;

    iget-object v1, p0, Lo/WhatsappConsentState;->extraCallback:Lo/getPanMismatch;

    invoke-interface {v1, p1}, Lo/getPanMismatch;->getException(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/removeBackgroundStateChangeListener;->ICustomTabsCallback(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final onPostMessage(Lo/AmexWebViewInterface;Z)V
    .locals 1

    .line 19
    iget-object v0, p0, Lo/WhatsappConsentState;->ICustomTabsCallback:Lo/removeBackgroundStateChangeListener;

    invoke-virtual {p1, v0, p2}, Lo/AmexWebViewInterface;->extraCallback(Lo/removeBackgroundStateChangeListener;Z)V

    return-void
.end method

.method public final onPostMessage(Lo/getAmount_refunded$onMessageChannelReady;)V
    .locals 2
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

    .line 6
    :try_start_0
    iget-object v0, p0, Lo/WhatsappConsentState;->onNavigationEvent:Lo/isFabrikEnabled;

    invoke-virtual {p1}, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent()Lo/setCustomAmount$ICustomTabsCallback$Stub;

    move-result-object p1

    iget-object v1, p0, Lo/WhatsappConsentState;->ICustomTabsCallback:Lo/removeBackgroundStateChangeListener;

    invoke-virtual {v0, p1, v1}, Lo/isFabrikEnabled;->onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;Lo/removeBackgroundStateChangeListener;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p0, p1}, Lo/getContacts;->onNavigationEvent(Ljava/lang/RuntimeException;)V

    return-void

    :catch_1
    move-exception p1

    .line 10
    invoke-static {p1}, Lo/getContacts;->onPostMessage(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/getContacts;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    .line 8
    throw p1
.end method
