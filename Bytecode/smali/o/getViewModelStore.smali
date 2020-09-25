.class public final Lo/getViewModelStore;
.super Lo/getDefaultViewModelProviderFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getDefaultViewModelProviderFactory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V
    .locals 0

    .line 31
    invoke-static {p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->extraCallback(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;

    move-result-object p1

    .line 1086
    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->onMessageChannelReady:Lo/newTopicsSyncTriggerExecutor;

    .line 31
    invoke-direct {p0, p1}, Lo/getDefaultViewModelProviderFactory;-><init>(Lo/ImmLeaksCleaner;)V

    return-void
.end method


# virtual methods
.method final synthetic ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    .line 2041
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final extraCallback(Lo/onDestroy;)Z
    .locals 0

    .line 36
    iget-object p1, p1, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 1155
    iget-boolean p1, p1, Lo/getErrorCode;->onPostMessage:Z

    return p1
.end method
