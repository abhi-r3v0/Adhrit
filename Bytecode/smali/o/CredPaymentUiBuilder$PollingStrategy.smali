.class public final synthetic Lo/CredPaymentUiBuilder$PollingStrategy;
.super Ljava/lang/Object;


# direct methods
.method public static extraCallback(Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "exo_redir"

    .line 1084
    invoke-interface {p0, v1, v0}, Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 1085
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;)J
    .locals 3

    const-string v0, "exo_len"

    const-wide/16 v1, -0x1

    .line 1075
    invoke-interface {p0, v0, v1, v2}, Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
