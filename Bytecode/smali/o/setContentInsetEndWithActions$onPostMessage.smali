.class public final Lo/setContentInsetEndWithActions$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dispatchAddStarting$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setContentInsetEndWithActions;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J\u0016\u0010\u000b\u001a\u00020\u00032\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/dreamplug/androidapp/payments/CredUpiFragment$onViewCreated$1",
        "Lcom/dreamplug/upi/UpiFragment$IAppUpiCommunication;",
        "accountLinked",
        "",
        "payload",
        "",
        "",
        "dismiss",
        "isProcessing",
        "value",
        "",
        "onValidAccountsLoaded",
        "vpaAccounts",
        "",
        "Lcom/cred/pay/repository/models/VpaAccount;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/setContentInsetEndWithActions;


# direct methods
.method constructor <init>(Lo/setContentInsetEndWithActions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lo/setContentInsetEndWithActions$onPostMessage;->onPostMessage:Lo/setContentInsetEndWithActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/VpaAccount;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "vpaAccounts"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lo/setContentInsetEndWithActions$onPostMessage;->onPostMessage:Lo/setContentInsetEndWithActions;

    invoke-static {v0, p1}, Lo/setContentInsetEndWithActions;->onPostMessage(Lo/setContentInsetEndWithActions;Z)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 78
    iget-object v0, p0, Lo/setContentInsetEndWithActions$onPostMessage;->onPostMessage:Lo/setContentInsetEndWithActions;

    invoke-static {v0}, Lo/setContentInsetEndWithActions;->onNavigationEvent(Lo/setContentInsetEndWithActions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lo/setAutoMeasureEnabled;->ICustomTabsCallback:Lo/setAutoMeasureEnabled;

    new-instance v0, Lo/moveView;

    const-string/jumbo v1, "setup_cred_upi"

    invoke-direct {v0, v1}, Lo/moveView;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/setAutoMeasureEnabled;->extraCallback(Lo/moveView;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lo/setContentInsetEndWithActions$onPostMessage;->onPostMessage:Lo/setContentInsetEndWithActions;

    invoke-virtual {v0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "payload"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lo/setContentInsetEndWithActions$onPostMessage;->onPostMessage:Lo/setContentInsetEndWithActions;

    invoke-static {v0}, Lo/setContentInsetEndWithActions;->extraCallback(Lo/setContentInsetEndWithActions;)V

    .line 73
    iget-object v0, p0, Lo/setContentInsetEndWithActions$onPostMessage;->onPostMessage:Lo/setContentInsetEndWithActions;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lo/setContentInsetEndWithActions$onPostMessage;->onPostMessage:Lo/setContentInsetEndWithActions;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/dreamplug/androidapp/UpiAliasActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 74
    :cond_0
    iget-object v0, p0, Lo/setContentInsetEndWithActions$onPostMessage;->onPostMessage:Lo/setContentInsetEndWithActions;

    invoke-static {v0}, Lo/setContentInsetEndWithActions;->ICustomTabsCallback(Lo/setContentInsetEndWithActions;)Lo/getCurrentContentInsetRight;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getCurrentContentInsetRight;->extraCallback(Ljava/util/Map;)V

    return-void
.end method
