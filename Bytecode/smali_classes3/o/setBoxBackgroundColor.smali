.class final Lo/setBoxBackgroundColor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final synthetic onPostMessage:Lo/setForegroundGravity;


# direct methods
.method constructor <init>(Lo/setForegroundGravity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onMessageChannelReady(JZ)V
    .locals 9

    .line 19
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 20
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    iget-object v0, v0, Lo/setForegroundGravity;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->updateVisuals:Lo/setIconTint;

    invoke-virtual {v0, p1, p2}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 23
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    .line 24
    iget-object v2, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Session started, time"

    invoke-virtual {v2, v1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    .line 25
    div-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v1}, Lo/pathToString;->onPostMessage()Lo/setChipIconSize;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_sid"

    move-object v5, v0

    move-wide v6, p1

    .line 27
    invoke-virtual/range {v2 .. v7}, Lo/setChipIconSize;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 28
    iget-object v1, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v1}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v1

    iget-object v1, v1, Lo/setBackgroundTintList;->warmup:Lo/setIconSize;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/setIconSize;->onMessageChannelReady(Z)V

    .line 29
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "_sid"

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 31
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->onConnectionSuspended:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    const-wide/16 v0, 0x1

    const-string p3, "_aib"

    .line 32
    invoke-virtual {v8, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 33
    :cond_1
    iget-object p3, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {p3}, Lo/pathToString;->onPostMessage()Lo/setChipIconSize;

    move-result-object v3

    const-string v4, "auto"

    const-string v5, "_s"

    move-wide v6, p1

    .line 34
    invoke-virtual/range {v3 .. v8}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 35
    invoke-static {}, Lo/showInterstitial;->onPostMessage()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    .line 36
    invoke-virtual {p3}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object p3

    sget-object v0, Lo/zziq;->onResult:Lo/setStatusBarForegroundColor;

    invoke-virtual {p3, v0}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 37
    iget-object p3, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {p3}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object p3

    iget-object p3, p3, Lo/setBackgroundTintList;->ICustomTabsService$Stub:Lo/setStrokeWidthResource;

    invoke-virtual {p3}, Lo/setStrokeWidthResource;->onNavigationEvent()Ljava/lang/String;

    move-result-object p3

    .line 38
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_ffr"

    .line 40
    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p3, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {p3}, Lo/pathToString;->onPostMessage()Lo/setChipIconSize;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_ssr"

    move-wide v4, p1

    .line 42
    invoke-virtual/range {v1 .. v6}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(JZ)V
    .locals 2

    .line 11
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 12
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-static {v0}, Lo/setForegroundGravity;->onPostMessage(Lo/setForegroundGravity;)V

    .line 13
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/setBackgroundTintList;->onPostMessage(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->warmup:Lo/setIconSize;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/setIconSize;->onMessageChannelReady(Z)V

    .line 15
    :cond_0
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->updateVisuals:Lo/setIconTint;

    invoke-virtual {v0, p1, p2}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 16
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->warmup:Lo/setIconSize;

    invoke-virtual {v0}, Lo/setIconSize;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lo/setBoxBackgroundColor;->onMessageChannelReady(JZ)V

    :cond_1
    return-void
.end method

.method final extraCallback()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 3
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v1, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v1}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/setBackgroundTintList;->onPostMessage(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->warmup:Lo/setIconSize;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/setIconSize;->onMessageChannelReady(Z)V

    .line 5
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 6
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 7
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Detected application was in foreground"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lo/setBoxBackgroundColor;->onPostMessage:Lo/setForegroundGravity;

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lo/setBoxBackgroundColor;->onMessageChannelReady(JZ)V

    :cond_0
    return-void
.end method
