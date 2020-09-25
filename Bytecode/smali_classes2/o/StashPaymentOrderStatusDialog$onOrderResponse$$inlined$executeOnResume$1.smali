.class public abstract Lo/StashPaymentOrderStatusDialog$onOrderResponse$$inlined$executeOnResume$1;
.super Lo/ClaimedSectionsResponse;

# interfaces
.implements Lo/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;


# direct methods
.method public static onPostMessage(Landroid/os/IBinder;)Lo/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.omid.IOmid"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;

    if-eqz v1, :cond_1

    check-cast v0, Lo/AutoDebitNetBankingDialog$onActivityResult$$inlined$executeOnResume$3;

    return-object v0

    :cond_1
    new-instance v0, Lo/ActionsDataJsonAdapter;

    invoke-direct {v0, p0}, Lo/ActionsDataJsonAdapter;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
