.class public final Lo/getLastCustomNonConfigurationInstance;
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

    .line 41
    invoke-static {p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->extraCallback(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;

    move-result-object p1

    .line 1096
    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->onPostMessage:Lo/zza;

    .line 41
    invoke-direct {p0, p1}, Lo/getDefaultViewModelProviderFactory;-><init>(Lo/ImmLeaksCleaner;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 4

    .line 39
    check-cast p1, Lo/onCreate;

    .line 2051
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    .line 3045
    iget-boolean v0, p1, Lo/onCreate;->onPostMessage:Z

    if-eqz v0, :cond_1

    .line 3054
    iget-boolean p1, p1, Lo/onCreate;->onNavigationEvent:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    .line 4045
    :cond_2
    iget-boolean p1, p1, Lo/onCreate;->onPostMessage:Z

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method final extraCallback(Lo/onDestroy;)Z
    .locals 1

    .line 46
    iget-object p1, p1, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 1105
    iget-object p1, p1, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    .line 46
    sget-object v0, Lo/addCustomAction;->onPostMessage:Lo/addCustomAction;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
