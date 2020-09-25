.class final Lo/processImpl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final synthetic onNavigationEvent:Lo/setForegroundGravity;

.field private onPostMessage:Lo/process;


# direct methods
.method constructor <init>(Lo/setForegroundGravity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final extraCallback(J)V
    .locals 7

    .line 9
    iget-object v0, p0, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->onConnected:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lo/process;

    iget-object v1, p0, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    .line 11
    invoke-virtual {v1}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v3

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lo/process;-><init>(Lo/processImpl;JJ)V

    iput-object v0, p0, Lo/processImpl;->onPostMessage:Lo/process;

    .line 12
    iget-object p1, p0, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-static {p1}, Lo/setForegroundGravity;->ICustomTabsCallback(Lo/setForegroundGravity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lo/processImpl;->onPostMessage:Lo/process;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method final onPostMessage()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 3
    iget-object v0, p0, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->onConnected:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lo/processImpl;->onPostMessage:Lo/process;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-static {v0}, Lo/setForegroundGravity;->ICustomTabsCallback(Lo/setForegroundGravity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/processImpl;->onPostMessage:Lo/process;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->postMessage:Lo/setIconSize;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/setIconSize;->onMessageChannelReady(Z)V

    :cond_1
    return-void
.end method
