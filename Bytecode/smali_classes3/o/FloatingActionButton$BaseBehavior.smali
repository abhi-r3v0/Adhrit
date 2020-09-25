.class public final Lo/FloatingActionButton$BaseBehavior;
.super Lo/setHintTextColor;
.source ""


# instance fields
.field private ICustomTabsCallback:Z

.field private onNavigationEvent:J

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/setHint;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/setHintTextColor;-><init>(Lo/setHint;)V

    return-void
.end method

.method private final onMessageChannelReady(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    .line 9
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 10
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->onPostMessage()J

    move-result-wide v1

    .line 11
    iget-object v3, p0, Lo/FloatingActionButton$BaseBehavior;->onPostMessage:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lo/FloatingActionButton$BaseBehavior;->onNavigationEvent:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 12
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lo/FloatingActionButton$BaseBehavior;->onPostMessage:Ljava/lang/String;

    iget-boolean v1, p0, Lo/FloatingActionButton$BaseBehavior;->ICustomTabsCallback:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lo/FloatingActionButton$BaseBehavior;->onNavigationEvent:J

    const/4 p1, 0x1

    .line 14
    invoke-static {p1}, Lo/getTotalAmountDue;->setShouldSkipGmsCoreVersionCheck(Z)V

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/getTotalAmountDue;->getAdvertisingIdInfo(Landroid/content/Context;)Lo/getTotalAmountDue$onNavigationEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Lo/getTotalAmountDue$onNavigationEvent;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/FloatingActionButton$BaseBehavior;->onPostMessage:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lo/getTotalAmountDue$onNavigationEvent;->isLimitAdTrackingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lo/FloatingActionButton$BaseBehavior;->ICustomTabsCallback:Z

    .line 19
    :cond_1
    iget-object p1, p0, Lo/FloatingActionButton$BaseBehavior;->onPostMessage:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 20
    iput-object v0, p0, Lo/FloatingActionButton$BaseBehavior;->onPostMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iput-object v0, p0, Lo/FloatingActionButton$BaseBehavior;->onPostMessage:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 25
    invoke-static {p1}, Lo/getTotalAmountDue;->setShouldSkipGmsCoreVersionCheck(Z)V

    .line 26
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lo/FloatingActionButton$BaseBehavior;->onPostMessage:Ljava/lang/String;

    iget-boolean v1, p0, Lo/FloatingActionButton$BaseBehavior;->ICustomTabsCallback:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 28
    invoke-direct {p0, p1}, Lo/FloatingActionButton$BaseBehavior;->onMessageChannelReady(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 29
    invoke-static {}, Lo/setHelperTextEnabled;->asBinder()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {v5, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    const-string p1, "%032X"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 40
    invoke-super {p0}, Lo/setHintTextColor;->ICustomTabsCallback()V

    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 42
    invoke-super {p0}, Lo/setHintTextColor;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 44
    invoke-super {p0}, Lo/setHintTextColor;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic L_()Lo/setClickable;
    .locals 1

    .line 37
    invoke-super {p0}, Lo/setHintTextColor;->L_()Lo/setClickable;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic M_()Lo/zzzv;
    .locals 1

    .line 36
    invoke-super {p0}, Lo/setHintTextColor;->M_()Lo/zzzv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic N_()Lo/setErrorIconTintMode;
    .locals 1

    .line 35
    invoke-super {p0}, Lo/setHintTextColor;->N_()Lo/setErrorIconTintMode;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic O_()Lo/setErrorTextColor;
    .locals 1

    .line 34
    invoke-super {p0}, Lo/setHintTextColor;->O_()Lo/setErrorTextColor;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic P_()Lo/FloatingActionButton$BaseBehavior;
    .locals 1

    .line 33
    invoke-super {p0}, Lo/setHintTextColor;->P_()Lo/FloatingActionButton$BaseBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 39
    invoke-super {p0}, Lo/setHintTextColor;->extraCallback()V

    return-void
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 48
    invoke-super {p0}, Lo/setHintTextColor;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 41
    invoke-super {p0}, Lo/setHintTextColor;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 47
    invoke-super {p0}, Lo/setHintTextColor;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 45
    invoke-super {p0}, Lo/setHintTextColor;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 38
    invoke-super {p0}, Lo/setHintTextColor;->onMessageChannelReady()V

    return-void
.end method

.method final onNavigationEvent(Ljava/lang/String;Lo/zzq;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/zzq;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p2}, Lo/zzq;->ICustomTabsCallback()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Landroid/util/Pair;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, ""

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 7
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lo/FloatingActionButton$BaseBehavior;->onMessageChannelReady(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 46
    invoke-super {p0}, Lo/setHintTextColor;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 49
    invoke-super {p0}, Lo/setHintTextColor;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 50
    invoke-super {p0}, Lo/setHintTextColor;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 43
    invoke-super {p0}, Lo/setHintTextColor;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
