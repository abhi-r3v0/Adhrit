.class public final Lcom/cred/pay/ui/checkout/CheckoutBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cred/pay/ui/checkout/CheckoutBuilder$onNavigationEvent;,
        Lcom/cred/pay/ui/checkout/CheckoutBuilder$extraCallback;,
        Lcom/cred/pay/ui/checkout/CheckoutBuilder$onMessageChannelReady;,
        Lcom/cred/pay/ui/checkout/CheckoutBuilder$PolingRemoteConfig;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0004\u0016\u0017\u0018\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cred/pay/ui/checkout/CheckoutBuilder;",
        "",
        "userId",
        "",
        "(Ljava/lang/String;)V",
        "checkoutConfigs",
        "Lcom/cred/pay/ui/checkout/CheckoutBuilder$CheckoutConfigs;",
        "getCheckoutConfigs",
        "()Lcom/cred/pay/ui/checkout/CheckoutBuilder$CheckoutConfigs;",
        "setCheckoutConfigs",
        "(Lcom/cred/pay/ui/checkout/CheckoutBuilder$CheckoutConfigs;)V",
        "data",
        "Lcom/cred/pay/ui/checkout/CheckoutBuilder$Data;",
        "getData",
        "()Lcom/cred/pay/ui/checkout/CheckoutBuilder$Data;",
        "setData",
        "(Lcom/cred/pay/ui/checkout/CheckoutBuilder$Data;)V",
        "getUserId",
        "()Ljava/lang/String;",
        "build",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerFragment;",
        "setConfig",
        "CheckoutConfigs",
        "Data",
        "PolingRemoteConfig",
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
.field public extraCallback:Lcom/cred/pay/ui/checkout/CheckoutBuilder$extraCallback;

.field private final onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Lcom/cred/pay/ui/checkout/CheckoutBuilder$onNavigationEvent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cred/pay/ui/checkout/CheckoutBuilder;->onMessageChannelReady:Ljava/lang/String;

    .line 11
    sget-object p1, Lo/removePromptView;->onMessageChannelReady:Lo/removePromptView;

    iget-object p1, p0, Lcom/cred/pay/ui/checkout/CheckoutBuilder;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {p1}, Lo/removePromptView;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/getMenuListView;
    .locals 5

    .line 28
    sget-object v0, Lo/getMenuListView;->onPostMessage:Lo/getMenuListView$extraCallback;

    iget-object v0, p0, Lcom/cred/pay/ui/checkout/CheckoutBuilder;->onNavigationEvent:Lcom/cred/pay/ui/checkout/CheckoutBuilder$onNavigationEvent;

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    iget-object v1, p0, Lcom/cred/pay/ui/checkout/CheckoutBuilder;->extraCallback:Lcom/cred/pay/ui/checkout/CheckoutBuilder$extraCallback;

    if-nez v1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const-string v2, "data"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "checkoutConfigs"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1311
    new-instance v3, Lo/getMenuListView;

    invoke-direct {v3}, Lo/getMenuListView;-><init>()V

    .line 1312
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1313
    :cond_2
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1314
    check-cast v1, Landroid/os/Parcelable;

    const-string v0, "config"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1312
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v3
.end method
