.class final Lo/OrderAttributes;
.super Lo/getCard_number;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getCard_number<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/getPaymentMode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/getCard_number;-><init>(Lo/getPaymentMode;)V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Lcom/google/android/gms/common/api/Status;)Lo/PaymentRequestItem;
    .locals 0

    return-object p1
.end method

.method public final synthetic onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lo/getReference_id;

    .line 4
    invoke-virtual {p1}, Lo/getReference_id;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/getPromise_date;

    new-instance v1, Lo/OrderAttributes$$Parcelable;

    invoke-direct {v1, p0}, Lo/OrderAttributes$$Parcelable;-><init>(Lo/OrderAttributes;)V

    .line 5
    invoke-virtual {p1}, Lo/getReference_id;->ICustomTabsCallback()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    .line 6
    invoke-interface {v0, v1, p1}, Lo/getPromise_date;->onNavigationEvent(Lo/component11;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
