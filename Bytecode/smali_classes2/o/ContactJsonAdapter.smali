.class public final Lo/ContactJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public static onNavigationEvent(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lo/getCurrencyType;->extraCallback(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lo/getCurrencyType;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lo/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-direct {v0, p0}, Lo/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lo/ContactReverseSyncResponse;->s_()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/PaymentModeListResponseJsonAdapter;

    const-string v0, "Updating ad debug logging enablement."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    const-string v0, "AdDebugLogUpdater.updateEnablement"

    invoke-static {p0, v0}, Lo/FooterJsonAdapter;->ICustomTabsCallback(Lo/PaymentModeListResponseJsonAdapter;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
