.class final synthetic Lo/setBoxBackgroundMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/process;


# direct methods
.method constructor <init>(Lo/process;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setBoxBackgroundMode;->extraCallback:Lo/process;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lo/setBoxBackgroundMode;->extraCallback:Lo/process;

    .line 2
    iget-object v1, v0, Lo/process;->ICustomTabsCallback:Lo/processImpl;

    iget-wide v5, v0, Lo/process;->extraCallback:J

    iget-wide v2, v0, Lo/process;->onMessageChannelReady:J

    .line 3
    iget-object v0, v1, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 4
    iget-object v0, v1, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v4, "Application going to the background"

    invoke-virtual {v0, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 5
    iget-object v0, v1, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v4, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v4}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v1, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->postMessage:Lo/setIconSize;

    invoke-virtual {v0, v4}, Lo/setIconSize;->onMessageChannelReady(Z)V

    .line 7
    :cond_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 8
    iget-object v0, v1, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setStartIconTintList;->asInterface()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, v1, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    iget-object v0, v0, Lo/setForegroundGravity;->onNavigationEvent:Lo/setBoxStrokeColor;

    invoke-virtual {v0, v2, v3}, Lo/setBoxStrokeColor;->extraCallback(J)V

    .line 11
    iget-object v0, v1, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v8, Lo/zziq;->onProgressUpdate:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v8}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, v1, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0, v2, v3}, Lo/setForegroundGravity;->ICustomTabsCallback(J)J

    move-result-wide v9

    const-string v0, "_et"

    .line 14
    invoke-virtual {v7, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 15
    iget-object v0, v1, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    .line 16
    invoke-virtual {v0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/setChipEndPadding;->extraCallback(Z)Lo/setCloseIconEndPadding;

    move-result-object v0

    .line 17
    invoke-static {v0, v7, v4}, Lo/setChipEndPadding;->onPostMessage(Lo/setCloseIconEndPadding;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 18
    :goto_0
    iget-object v0, v1, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0, v8, v4, v2, v3}, Lo/setForegroundGravity;->onMessageChannelReady(ZZJ)Z

    .line 19
    :cond_2
    iget-object v0, v1, Lo/processImpl;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/pathToString;->onPostMessage()Lo/setChipIconSize;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_ab"

    .line 20
    invoke-virtual/range {v2 .. v7}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
