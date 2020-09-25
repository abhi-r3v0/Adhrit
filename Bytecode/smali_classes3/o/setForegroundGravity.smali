.class public final Lo/setForegroundGravity;
.super Lo/setUseMaterialThemeColors;
.source ""


# instance fields
.field private ICustomTabsCallback:Landroid/os/Handler;

.field protected final extraCallback:Lo/setBoxBackgroundColor;

.field protected final onNavigationEvent:Lo/setBoxStrokeColor;

.field private final onPostMessage:Lo/processImpl;


# direct methods
.method constructor <init>(Lo/setCheckedIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/setUseMaterialThemeColors;-><init>(Lo/setCheckedIcon;)V

    .line 2
    new-instance p1, Lo/setBoxBackgroundColor;

    invoke-direct {p1, p0}, Lo/setBoxBackgroundColor;-><init>(Lo/setForegroundGravity;)V

    iput-object p1, p0, Lo/setForegroundGravity;->extraCallback:Lo/setBoxBackgroundColor;

    .line 3
    new-instance p1, Lo/setBoxStrokeColor;

    invoke-direct {p1, p0}, Lo/setBoxStrokeColor;-><init>(Lo/setForegroundGravity;)V

    iput-object p1, p0, Lo/setForegroundGravity;->onNavigationEvent:Lo/setBoxStrokeColor;

    .line 4
    new-instance p1, Lo/processImpl;

    invoke-direct {p1, p0}, Lo/processImpl;-><init>(Lo/setForegroundGravity;)V

    iput-object p1, p0, Lo/setForegroundGravity;->onPostMessage:Lo/processImpl;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setForegroundGravity;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lo/setForegroundGravity;->ICustomTabsCallback:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/setForegroundGravity;J)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lo/setForegroundGravity;->onMessageChannelReady(J)V

    return-void
.end method

.method private final IPostMessageService$Stub()V
    .locals 2

    .line 6
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 7
    iget-object v0, p0, Lo/setForegroundGravity;->ICustomTabsCallback:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lo/setUseController;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/setUseController;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/setForegroundGravity;->ICustomTabsCallback:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private final extraCallback(J)V
    .locals 3

    .line 28
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 29
    invoke-direct {p0}, Lo/setForegroundGravity;->IPostMessageService$Stub()V

    .line 30
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lo/setForegroundGravity;->onPostMessage:Lo/processImpl;

    invoke-virtual {v0, p1, p2}, Lo/processImpl;->extraCallback(J)V

    .line 32
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setStartIconTintList;->asInterface()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lo/setForegroundGravity;->onNavigationEvent:Lo/setBoxStrokeColor;

    invoke-virtual {v0, p1, p2}, Lo/setBoxStrokeColor;->extraCallback(J)V

    .line 34
    :cond_0
    iget-object p1, p0, Lo/setForegroundGravity;->extraCallback:Lo/setBoxBackgroundColor;

    .line 35
    iget-object p2, p1, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {p2}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p2

    sget-object v0, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {p2, v0}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 36
    iget-object p1, p1, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {p1}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object p1

    iget-object p1, p1, Lo/setBackgroundTintList;->postMessage:Lo/setIconSize;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/setIconSize;->onMessageChannelReady(Z)V

    :cond_1
    return-void
.end method

.method static synthetic extraCallback(Lo/setForegroundGravity;J)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lo/setForegroundGravity;->extraCallback(J)V

    return-void
.end method

.method private final onMessageChannelReady(J)V
    .locals 3

    .line 10
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 11
    invoke-direct {p0}, Lo/setForegroundGravity;->IPostMessageService$Stub()V

    .line 12
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setStartIconTintList;->asInterface()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->postMessage:Lo/setIconSize;

    invoke-virtual {v0}, Lo/setIconSize;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    :cond_0
    iget-object v0, p0, Lo/setForegroundGravity;->onNavigationEvent:Lo/setBoxStrokeColor;

    invoke-virtual {v0, p1, p2}, Lo/setBoxStrokeColor;->ICustomTabsCallback(J)V

    .line 17
    :cond_1
    iget-object p1, p0, Lo/setForegroundGravity;->onPostMessage:Lo/processImpl;

    invoke-virtual {p1}, Lo/processImpl;->onPostMessage()V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lo/setForegroundGravity;->onPostMessage:Lo/processImpl;

    invoke-virtual {v0}, Lo/processImpl;->onPostMessage()V

    .line 19
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setStartIconTintList;->asInterface()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lo/setForegroundGravity;->onNavigationEvent:Lo/setBoxStrokeColor;

    invoke-virtual {v0, p1, p2}, Lo/setBoxStrokeColor;->ICustomTabsCallback(J)V

    .line 21
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/setForegroundGravity;->extraCallback:Lo/setBoxBackgroundColor;

    .line 22
    iget-object p2, p1, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {p2}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 23
    iget-object p2, p1, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    iget-object p2, p2, Lo/setForegroundGravity;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->cancel()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 24
    iget-object p2, p1, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {p2}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p2

    sget-object v0, Lo/zziq;->onItemLoaded:Lo/setStatusBarForegroundColor;

    invoke-virtual {p2, v0}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 25
    iget-object p2, p1, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {p2}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object p2

    iget-object p2, p2, Lo/setBackgroundTintList;->postMessage:Lo/setIconSize;

    invoke-virtual {p2, v0}, Lo/setIconSize;->onMessageChannelReady(Z)V

    .line 26
    :cond_4
    iget-object p2, p1, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {p2}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p2

    invoke-interface {p2}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v0}, Lo/setBoxBackgroundColor;->ICustomTabsCallback(JZ)V

    :cond_5
    return-void
.end method

.method static synthetic onPostMessage(Lo/setForegroundGravity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lo/setForegroundGravity;->IPostMessageService$Stub()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(J)J
    .locals 1

    .line 39
    iget-object v0, p0, Lo/setForegroundGravity;->onNavigationEvent:Lo/setBoxStrokeColor;

    invoke-virtual {v0, p1, p2}, Lo/setBoxStrokeColor;->onPostMessage(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 43
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback()V

    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub()Lo/setChipSpacingResource;
    .locals 1

    .line 47
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 52
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 54
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method protected final IPostMessageService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic asBinder()Lo/AppBarLayout$Behavior;
    .locals 1

    .line 49
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic asInterface()Lo/setForegroundGravity;
    .locals 1

    .line 50
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->asInterface()Lo/setForegroundGravity;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 42
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->extraCallback()V

    return-void
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 58
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 51
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 57
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 55
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 41
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onMessageChannelReady()V

    return-void
.end method

.method public final onMessageChannelReady(ZZJ)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lo/setForegroundGravity;->onNavigationEvent:Lo/setBoxStrokeColor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/setBoxStrokeColor;->onMessageChannelReady(ZZJ)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic onNavigationEvent()Lo/zzbfb;
    .locals 1

    .line 44
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onNavigationEvent()Lo/zzbfb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onPostMessage()Lo/setChipIconSize;
    .locals 1

    .line 45
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onPostMessage()Lo/setChipIconSize;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onRelationshipValidationResult()Lo/setExpanded;
    .locals 1

    .line 46
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onRelationshipValidationResult()Lo/setExpanded;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onTransact()Lo/setChipEndPadding;
    .locals 1

    .line 48
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 56
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 59
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 60
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 53
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
