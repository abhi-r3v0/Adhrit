.class final Lo/setBoxStrokeColor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:J

.field private extraCallback:J

.field private final onMessageChannelReady:Lo/zzft;

.field private final synthetic onNavigationEvent:Lo/setForegroundGravity;


# direct methods
.method public constructor <init>(Lo/setForegroundGravity;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/BaseTransientBottomBar$Behavior;

    iget-object v1, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    iget-object v1, v1, Lo/setForegroundGravity;->validateRelationship:Lo/setCheckedIcon;

    invoke-direct {v0, p0, v1}, Lo/BaseTransientBottomBar$Behavior;-><init>(Lo/setBoxStrokeColor;Lo/setChipStrokeWidthResource;)V

    iput-object v0, p0, Lo/setBoxStrokeColor;->onMessageChannelReady:Lo/zzft;

    .line 3
    invoke-virtual {p1}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p1

    invoke-interface {p1}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    iput-wide v0, p0, Lo/setBoxStrokeColor;->extraCallback:J

    .line 4
    iput-wide v0, p0, Lo/setBoxStrokeColor;->ICustomTabsCallback:J

    return-void
.end method

.method private final onPostMessage()V
    .locals 3

    .line 17
    iget-object v0, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 18
    iget-object v0, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lo/setBoxStrokeColor;->onMessageChannelReady(ZZJ)Z

    .line 19
    iget-object v0, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/pathToString;->onNavigationEvent()Lo/zzbfb;

    move-result-object v0

    iget-object v1, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v1}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->onPostMessage()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/zzbfb;->ICustomTabsCallback(J)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/setBoxStrokeColor;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lo/setBoxStrokeColor;->onPostMessage()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(J)V
    .locals 1

    .line 6
    iget-object v0, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 7
    iget-object v0, p0, Lo/setBoxStrokeColor;->onMessageChannelReady:Lo/zzft;

    invoke-virtual {v0}, Lo/zzft;->ICustomTabsCallback()V

    .line 8
    iput-wide p1, p0, Lo/setBoxStrokeColor;->extraCallback:J

    .line 9
    iput-wide p1, p0, Lo/setBoxStrokeColor;->ICustomTabsCallback:J

    return-void
.end method

.method final extraCallback(J)V
    .locals 0

    .line 11
    iget-object p1, p0, Lo/setBoxStrokeColor;->onMessageChannelReady:Lo/zzft;

    invoke-virtual {p1}, Lo/zzft;->ICustomTabsCallback()V

    return-void
.end method

.method final onMessageChannelReady()V
    .locals 2

    .line 13
    iget-object v0, p0, Lo/setBoxStrokeColor;->onMessageChannelReady:Lo/zzft;

    invoke-virtual {v0}, Lo/zzft;->ICustomTabsCallback()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lo/setBoxStrokeColor;->extraCallback:J

    .line 15
    iput-wide v0, p0, Lo/setBoxStrokeColor;->ICustomTabsCallback:J

    return-void
.end method

.method public final onMessageChannelReady(ZZJ)Z
    .locals 4

    .line 21
    iget-object v0, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 22
    iget-object v0, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 23
    invoke-static {}, Lo/CustomEventInterstitial;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    .line 24
    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->onError:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    iget-object v0, v0, Lo/setForegroundGravity;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->cancel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    iget-object v0, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->updateVisuals:Lo/setIconTint;

    iget-object v1, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v1}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 27
    :cond_1
    iget-wide v0, p0, Lo/setBoxStrokeColor;->extraCallback:J

    sub-long v0, p3, v0

    if-nez p1, :cond_2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    .line 29
    iget-object p1, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {p1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, p3, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    .line 33
    :cond_2
    iget-object p1, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {p1}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p1

    sget-object v2, Lo/zziq;->isConnected:Lo/setStatusBarForegroundColor;

    invoke-virtual {p1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 34
    invoke-static {}, Lo/CctBackendFactory;->onNavigationEvent()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    .line 35
    invoke-virtual {p1}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p1

    sget-object v0, Lo/zziq;->getSessionToken:Lo/setStatusBarForegroundColor;

    invoke-virtual {p1, v0}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 36
    invoke-virtual {p0, p3, p4}, Lo/setBoxStrokeColor;->onPostMessage(J)J

    move-result-wide v0

    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {p0}, Lo/setBoxStrokeColor;->onNavigationEvent()J

    move-result-wide v0

    .line 38
    :cond_4
    :goto_0
    iget-object p1, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {p1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Recording user engagement, ms"

    invoke-virtual {p1, v3, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_et"

    .line 40
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 41
    iget-object v0, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setStartIconTintList;->asInterface()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 42
    iget-object v2, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    .line 43
    invoke-virtual {v2}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/setChipEndPadding;->extraCallback(Z)Lo/setCloseIconEndPadding;

    move-result-object v0

    .line 44
    invoke-static {v0, p1, v1}, Lo/setChipEndPadding;->onPostMessage(Lo/setCloseIconEndPadding;Landroid/os/Bundle;Z)V

    .line 45
    iget-object v0, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v2, Lo/zziq;->isConnected:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    iget-object v0, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v2, Lo/zziq;->getExtras:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    const-wide/16 v2, 0x1

    const-string v0, "_fr"

    .line 48
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 49
    :cond_5
    iget-object v0, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v2, Lo/zziq;->getExtras:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p2, :cond_7

    .line 50
    :cond_6
    iget-object p2, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {p2}, Lo/pathToString;->onPostMessage()Lo/setChipIconSize;

    move-result-object p2

    const-string v0, "auto"

    const-string v2, "_e"

    .line 51
    invoke-virtual {p2, v0, v2, p1}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 52
    :cond_7
    iput-wide p3, p0, Lo/setBoxStrokeColor;->extraCallback:J

    .line 53
    iget-object p1, p0, Lo/setBoxStrokeColor;->onMessageChannelReady:Lo/zzft;

    invoke-virtual {p1}, Lo/zzft;->ICustomTabsCallback()V

    .line 54
    iget-object p1, p0, Lo/setBoxStrokeColor;->onMessageChannelReady:Lo/zzft;

    const-wide/32 p2, 0x36ee80

    invoke-virtual {p1, p2, p3}, Lo/zzft;->ICustomTabsCallback(J)V

    return v1
.end method

.method final onNavigationEvent()J
    .locals 4

    .line 56
    iget-object v0, p0, Lo/setBoxStrokeColor;->onNavigationEvent:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    .line 57
    iget-wide v2, p0, Lo/setBoxStrokeColor;->ICustomTabsCallback:J

    sub-long v2, v0, v2

    .line 58
    iput-wide v0, p0, Lo/setBoxStrokeColor;->ICustomTabsCallback:J

    return-wide v2
.end method

.method final onPostMessage(J)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lo/setBoxStrokeColor;->ICustomTabsCallback:J

    sub-long v0, p1, v0

    .line 61
    iput-wide p1, p0, Lo/setBoxStrokeColor;->ICustomTabsCallback:J

    return-wide v0
.end method
