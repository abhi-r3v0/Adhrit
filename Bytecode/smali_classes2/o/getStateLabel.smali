.class public Lo/getStateLabel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final onMessageChannelReady:Landroid/support/customtabs/ICustomTabsService;

.field private final onPostMessage:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lo/getStateLabel;->onMessageChannelReady:Landroid/support/customtabs/ICustomTabsService;

    .line 54
    iput-object p2, p0, Lo/getStateLabel;->onPostMessage:Landroid/content/ComponentName;

    return-void
.end method

.method public static onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Lo/dump;)Z
    .locals 2

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 p1, 0x21

    .line 73
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final onNavigationEvent(J)Z
    .locals 2

    .line 173
    :try_start_0
    iget-object p1, p0, Lo/getStateLabel;->onMessageChannelReady:Landroid/support/customtabs/ICustomTabsService;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Landroid/support/customtabs/ICustomTabsService;->warmup(J)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage(Lo/extraCallback$ICustomTabsCallback;)Lo/extraCallback$extraCallback;
    .locals 3

    .line 191
    new-instance p1, Lo/getStateLabel$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lo/getStateLabel$1;-><init>(Lo/getStateLabel;Lo/extraCallback$ICustomTabsCallback;)V

    .line 257
    :try_start_0
    iget-object v1, p0, Lo/getStateLabel;->onMessageChannelReady:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v1, p1}, Landroid/support/customtabs/ICustomTabsService;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    .line 261
    :cond_0
    new-instance v0, Lo/extraCallback$extraCallback;

    iget-object v1, p0, Lo/getStateLabel;->onMessageChannelReady:Landroid/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Lo/getStateLabel;->onPostMessage:Landroid/content/ComponentName;

    invoke-direct {v0, v1, p1, v2}, Lo/extraCallback$extraCallback;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V

    :catch_0
    return-object v0
.end method
