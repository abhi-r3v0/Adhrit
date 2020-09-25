.class final Lo/setSingleSelection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/setCounterTextAppearance;

.field private final synthetic onNavigationEvent:Lo/setChipSpacingResource;

.field private final synthetic onPostMessage:Lo/setShowBuffering;


# direct methods
.method constructor <init>(Lo/setChipSpacingResource;Lo/setCounterTextAppearance;Lo/setShowBuffering;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    iput-object p2, p0, Lo/setSingleSelection;->onMessageChannelReady:Lo/setCounterTextAppearance;

    iput-object p3, p0, Lo/setSingleSelection;->onPostMessage:Lo/setShowBuffering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    .line 4
    invoke-virtual {v2}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    sget-object v3, Lo/zziq;->isCurrent:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    .line 5
    invoke-virtual {v2}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v2

    invoke-virtual {v2}, Lo/setBackgroundTintList;->ICustomTabsService$Stub$Proxy()Lo/zzq;

    move-result-object v2

    invoke-virtual {v2}, Lo/zzq;->extraCallback()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    .line 8
    invoke-virtual {v2, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/pathToString;->onPostMessage()Lo/setChipIconSize;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v2

    iget-object v2, v2, Lo/setBackgroundTintList;->asInterface:Lo/setStrokeWidthResource;

    invoke-virtual {v2, v1}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    iget-object v2, p0, Lo/setSingleSelection;->onPostMessage:Lo/setShowBuffering;

    invoke-virtual {v0, v2, v1}, Lo/setHelperTextEnabled;->extraCallback(Lo/setShowBuffering;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_0
    :try_start_1
    iget-object v2, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-static {v2}, Lo/setChipSpacingResource;->onMessageChannelReady(Lo/setChipSpacingResource;)Lo/setStatusBarForeground;

    move-result-object v2

    if-nez v2, :cond_1

    .line 15
    iget-object v2, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iget-object v0, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    iget-object v2, p0, Lo/setSingleSelection;->onPostMessage:Lo/setShowBuffering;

    invoke-virtual {v0, v2, v1}, Lo/setHelperTextEnabled;->extraCallback(Lo/setShowBuffering;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_1
    :try_start_2
    iget-object v3, p0, Lo/setSingleSelection;->onMessageChannelReady:Lo/setCounterTextAppearance;

    invoke-interface {v2, v3}, Lo/setStatusBarForeground;->onMessageChannelReady(Lo/setCounterTextAppearance;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20
    iget-object v2, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/pathToString;->onPostMessage()Lo/setChipIconSize;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v2

    iget-object v2, v2, Lo/setBackgroundTintList;->asInterface:Lo/setStrokeWidthResource;

    invoke-virtual {v2, v1}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    .line 22
    :cond_2
    iget-object v2, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-static {v2}, Lo/setChipSpacingResource;->onPostMessage(Lo/setChipSpacingResource;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    iget-object v0, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    iget-object v2, p0, Lo/setSingleSelection;->onPostMessage:Lo/setShowBuffering;

    invoke-virtual {v0, v2, v1}, Lo/setHelperTextEnabled;->extraCallback(Lo/setShowBuffering;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 26
    :try_start_3
    iget-object v3, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-virtual {v3}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    iget-object v0, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    iget-object v2, p0, Lo/setSingleSelection;->onPostMessage:Lo/setShowBuffering;

    invoke-virtual {v0, v2, v1}, Lo/setHelperTextEnabled;->extraCallback(Lo/setShowBuffering;Ljava/lang/String;)V

    return-void

    .line 29
    :goto_0
    iget-object v2, p0, Lo/setSingleSelection;->onNavigationEvent:Lo/setChipSpacingResource;

    invoke-virtual {v2}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v2

    iget-object v3, p0, Lo/setSingleSelection;->onPostMessage:Lo/setShowBuffering;

    invoke-virtual {v2, v3, v1}, Lo/setHelperTextEnabled;->extraCallback(Lo/setShowBuffering;Ljava/lang/String;)V

    .line 30
    throw v0
.end method
