.class public final Lo/dispatchAddStarting$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/shouldBeKeptAsChild$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchAddStarting;-><init>()V
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
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/dreamplug/upi/UpiFragment$communication$1",
        "Lcom/dreamplug/upi/CredUpiPresenter$ICredUpiListener;",
        "accountLinked",
        "",
        "payload",
        "",
        "",
        "checkPermission",
        "dismiss",
        "isProcessing",
        "value",
        "",
        "onValidAccountsLoaded",
        "vpaAccount",
        "",
        "Lcom/cred/pay/repository/models/VpaAccount;",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/dispatchAddStarting;


# direct methods
.method constructor <init>(Lo/dispatchAddStarting;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lo/dispatchAddStarting$extraCallback;->extraCallback:Lo/dispatchAddStarting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/util/Map;)V
    .locals 1
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

    .line 115
    iget-object v0, p0, Lo/dispatchAddStarting$extraCallback;->extraCallback:Lo/dispatchAddStarting;

    .line 3030
    iget-object v0, v0, Lo/dispatchAddStarting;->onMessageChannelReady:Lo/dispatchAddStarting$onPostMessage;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p1}, Lo/dispatchAddStarting$onPostMessage;->onNavigationEvent(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final extraCallback()V
    .locals 1

    .line 111
    iget-object v0, p0, Lo/dispatchAddStarting$extraCallback;->extraCallback:Lo/dispatchAddStarting;

    .line 2030
    iget-object v0, v0, Lo/dispatchAddStarting;->onMessageChannelReady:Lo/dispatchAddStarting$onPostMessage;

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lo/dispatchAddStarting$onPostMessage;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 5

    .line 124
    iget-object v0, p0, Lo/dispatchAddStarting$extraCallback;->extraCallback:Lo/dispatchAddStarting;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v1, "android.permission.SEND_SMS"

    invoke-static {v0, v1}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lo/dispatchAddStarting$extraCallback;->extraCallback:Lo/dispatchAddStarting;

    invoke-static {v0}, Lo/dispatchAddStarting;->onPostMessage(Lo/dispatchAddStarting;)Lo/snapFromFling;

    move-result-object v0

    const/4 v1, 0x0

    .line 4033
    iput-boolean v1, v0, Lo/snapFromFling;->onNavigationEvent:Z

    .line 126
    iget-object v0, p0, Lo/dispatchAddStarting$extraCallback;->extraCallback:Lo/dispatchAddStarting;

    invoke-static {v0}, Lo/dispatchAddStarting;->onPostMessage(Lo/dispatchAddStarting;)Lo/snapFromFling;

    move-result-object v0

    .line 5031
    iget-object v0, v0, Lo/snapFromFling;->extraCallback:Lo/setActive;

    .line 126
    new-instance v1, Lo/snapFromFling$asBinder;

    sget-object v2, Lo/isRecyclable;->onMessageChannelReady:Lo/isRecyclable;

    check-cast v2, Lo/onAddStarting;

    invoke-direct {v1, v2}, Lo/snapFromFling$asBinder;-><init>(Lo/onAddStarting;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lo/dispatchAddStarting$extraCallback;->extraCallback:Lo/dispatchAddStarting;

    invoke-static {v0}, Lo/dispatchAddStarting;->onPostMessage(Lo/dispatchAddStarting;)Lo/snapFromFling;

    move-result-object v0

    .line 5033
    iget-boolean v0, v0, Lo/snapFromFling;->onNavigationEvent:Z

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lo/dispatchAddStarting$extraCallback;->extraCallback:Lo/dispatchAddStarting;

    .line 5098
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 5099
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5100
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "package"

    invoke-static {v4, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5101
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5102
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 132
    :cond_3
    iget-object v0, p0, Lo/dispatchAddStarting$extraCallback;->extraCallback:Lo/dispatchAddStarting;

    const-string v2, "android.permission.RECEIVE_SMS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public final onPostMessage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/VpaAccount;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "vpaAccount"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lo/dispatchAddStarting$extraCallback;->extraCallback:Lo/dispatchAddStarting;

    .line 4030
    iget-object v0, v0, Lo/dispatchAddStarting;->onMessageChannelReady:Lo/dispatchAddStarting$onPostMessage;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p1}, Lo/dispatchAddStarting$onPostMessage;->ICustomTabsCallback(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 1

    .line 107
    iget-object v0, p0, Lo/dispatchAddStarting$extraCallback;->extraCallback:Lo/dispatchAddStarting;

    .line 1030
    iget-object v0, v0, Lo/dispatchAddStarting;->onMessageChannelReady:Lo/dispatchAddStarting$onPostMessage;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1}, Lo/dispatchAddStarting$onPostMessage;->onMessageChannelReady(Z)V

    :cond_0
    return-void
.end method
