.class final Lo/onActivityResumed$ICustomTabsService;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityResumed;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/onActivityResumed;


# direct methods
.method constructor <init>(Lo/onActivityResumed;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityResumed$ICustomTabsService;->onNavigationEvent:Lo/onActivityResumed;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 45
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1219
    iget-object p1, p0, Lo/onActivityResumed$ICustomTabsService;->onNavigationEvent:Lo/onActivityResumed;

    .line 2000
    iget-object p1, p1, Lo/onActivityResumed;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/onActivityPaused;

    .line 2033
    iget-object p1, p1, Lo/onActivityPaused;->extraCallback:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 1219
    :goto_0
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 1220
    iget-object v0, p0, Lo/onActivityResumed$ICustomTabsService;->onNavigationEvent:Lo/onActivityResumed;

    invoke-static {v0}, Lo/onActivityResumed;->ICustomTabsCallback(Lo/onActivityResumed;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1221
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 1222
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1223
    iget-object v0, p0, Lo/onActivityResumed$ICustomTabsService;->onNavigationEvent:Lo/onActivityResumed;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const-string v2, "activity!!"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1224
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1225
    iget-object v0, p0, Lo/onActivityResumed$ICustomTabsService;->onNavigationEvent:Lo/onActivityResumed;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1226
    invoke-static {}, Lo/onActivityResumed;->extraCallback()V

    .line 1227
    iget-object p1, p0, Lo/onActivityResumed$ICustomTabsService;->onNavigationEvent:Lo/onActivityResumed;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    .line 1229
    :cond_3
    iget-object v0, p0, Lo/onActivityResumed$ICustomTabsService;->onNavigationEvent:Lo/onActivityResumed;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0x3e9

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 45
    :cond_4
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
