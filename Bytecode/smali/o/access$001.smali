.class public final Lo/access$001;
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


# static fields
.field private static final onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkNotRoamingCtrlr"

    .line 36
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/access$001;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V
    .locals 0

    .line 39
    invoke-static {p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->extraCallback(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;

    move-result-object p1

    .line 1096
    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$ICustomTabsCallback;->onPostMessage:Lo/zza;

    .line 39
    invoke-direct {p0, p1}, Lo/getDefaultViewModelProviderFactory;-><init>(Lo/ImmLeaksCleaner;)V

    return-void
.end method


# virtual methods
.method final synthetic ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 6

    .line 35
    check-cast p1, Lo/onCreate;

    .line 2053
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-ge v0, v3, :cond_1

    .line 2054
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v3, Lo/access$001;->onNavigationEvent:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Throwable;

    const-string v5, "Not-roaming network constraint is not supported before API 24, only checking for connected state."

    invoke-virtual {v0, v3, v5, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3045
    iget-boolean p1, p1, Lo/onCreate;->onPostMessage:Z

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v2

    .line 4045
    :cond_1
    iget-boolean v0, p1, Lo/onCreate;->onPostMessage:Z

    if-eqz v0, :cond_3

    .line 4072
    iget-boolean p1, p1, Lo/onCreate;->ICustomTabsCallback:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method final extraCallback(Lo/onDestroy;)Z
    .locals 1

    .line 44
    iget-object p1, p1, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 1105
    iget-object p1, p1, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    .line 44
    sget-object v0, Lo/addCustomAction;->onMessageChannelReady:Lo/addCustomAction;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
