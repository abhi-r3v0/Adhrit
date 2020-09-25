.class public final Lcom/cred/pay/ui/CredPaymentUiBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;,
        Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;,
        Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;,
        Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;,
        Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0005\u0012\u0013\u0014\u0015\u0016B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cred/pay/ui/CredPaymentUiBuilder;",
        "",
        "userId",
        "",
        "(Ljava/lang/String;)V",
        "confirmationTemplate",
        "Lcom/cred/pay/ui/CredPaymentUiBuilder$ConfirmationTemplate;",
        "headerTemplate",
        "Lcom/cred/pay/ui/CredPaymentUiBuilder$HeaderTemplate;",
        "remoteConfigs",
        "Lcom/cred/pay/ui/CredPaymentUiBuilder$RemoteConfigs;",
        "getUserId",
        "()Ljava/lang/String;",
        "build",
        "Lcom/cred/pay/ui/PaymentContainerFragment;",
        "setConfirmationTemplate",
        "setHeaderTemplate",
        "setRemoteConfig",
        "ConfirmationTemplate",
        "CredPaymentUi",
        "HeaderTemplate",
        "PollingStrategy",
        "RemoteConfigs",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

.field public extraCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;

.field private final onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getMaxAvailableHeight;
    .locals 5

    .line 30
    sget-object v0, Lo/getMaxAvailableHeight;->ICustomTabsCallback$Stub:Lo/getMaxAvailableHeight$onNavigationEvent;

    new-instance v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;

    .line 31
    iget-object v1, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder;->onMessageChannelReady:Ljava/lang/String;

    .line 32
    iget-object v2, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder;->onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;

    .line 33
    iget-object v3, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder;->ICustomTabsCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    if-nez v3, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 34
    :cond_0
    iget-object v4, p0, Lcom/cred/pay/ui/CredPaymentUiBuilder;->extraCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;

    if-nez v4, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 30
    :cond_1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cred/pay/ui/CredPaymentUiBuilder$onPostMessage;-><init>(Ljava/lang/String;Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;)V

    const-string v1, "credUi"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1786
    new-instance v1, Lo/getMaxAvailableHeight;

    invoke-direct {v1}, Lo/getMaxAvailableHeight;-><init>()V

    .line 1787
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1788
    :cond_2
    check-cast v0, Landroid/os/Parcelable;

    const-string v3, "cred_pay_ui"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1787
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method
