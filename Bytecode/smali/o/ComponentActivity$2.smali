.class public final Lo/ComponentActivity$2;
.super Lo/getDefaultViewModelProviderFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getDefaultViewModelProviderFactory<",
        "Lo/onCreate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V
    .locals 0

    .line 37
    invoke-static {p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->extraCallback(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;

    move-result-object p1

    .line 1096
    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->onPostMessage:Lo/zza;

    .line 37
    invoke-direct {p0, p1}, Lo/getDefaultViewModelProviderFactory;-><init>(Lo/ImmLeaksCleaner;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 1

    .line 33
    check-cast p1, Lo/onCreate;

    .line 3045
    iget-boolean v0, p1, Lo/onCreate;->onPostMessage:Z

    if-eqz v0, :cond_1

    .line 3063
    iget-boolean p1, p1, Lo/onCreate;->onMessageChannelReady:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final extraCallback(Lo/onDestroy;)Z
    .locals 1

    .line 42
    iget-object p1, p1, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 1105
    iget-object p1, p1, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    .line 42
    sget-object v0, Lo/addCustomAction;->extraCallback:Lo/addCustomAction;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
