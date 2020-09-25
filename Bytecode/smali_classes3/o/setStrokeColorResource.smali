.class final Lo/setStrokeColorResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setRippleColor;

.field private final synthetic extraCallback:Landroid/content/ServiceConnection;

.field private final synthetic onMessageChannelReady:Lo/createSocket;


# direct methods
.method constructor <init>(Lo/setRippleColor;Lo/createSocket;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setStrokeColorResource;->ICustomTabsCallback:Lo/setRippleColor;

    iput-object p2, p0, Lo/setStrokeColorResource;->onMessageChannelReady:Lo/createSocket;

    iput-object p3, p0, Lo/setStrokeColorResource;->extraCallback:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 2
    iget-object v0, p0, Lo/setStrokeColorResource;->ICustomTabsCallback:Lo/setRippleColor;

    iget-object v0, v0, Lo/setRippleColor;->extraCallback:Lo/setIconTintResource;

    iget-object v1, p0, Lo/setStrokeColorResource;->ICustomTabsCallback:Lo/setRippleColor;

    invoke-static {v1}, Lo/setRippleColor;->ICustomTabsCallback(Lo/setRippleColor;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/setStrokeColorResource;->onMessageChannelReady:Lo/createSocket;

    iget-object v3, p0, Lo/setStrokeColorResource;->extraCallback:Landroid/content/ServiceConnection;

    .line 3
    invoke-virtual {v0, v1, v2}, Lo/setIconTintResource;->onPostMessage(Ljava/lang/String;Lo/createSocket;)Landroid/os/Bundle;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 6
    invoke-virtual {v2}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v2

    invoke-virtual {v2}, Lo/setChipTextResource;->ICustomTabsCallback()V

    if-eqz v1, :cond_a

    const-wide/16 v4, 0x0

    const-string v2, "install_begin_timestamp_seconds"

    .line 8
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    cmp-long v2, v6, v4

    if-nez v2, :cond_0

    .line 10
    iget-object v1, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 11
    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Service response is missing Install Referrer install timestamp"

    .line 13
    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    const-string v2, "install_referrer"

    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    goto/16 :goto_2

    .line 19
    :cond_1
    iget-object v10, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v10}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v10

    invoke-virtual {v10}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v10

    const-string v11, "InstallReferrer API result"

    invoke-virtual {v10, v11, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v10, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 21
    invoke-virtual {v10}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v10

    const-string v11, "?"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v10, v2}, Lo/setHelperTextEnabled;->onNavigationEvent(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_3

    .line 23
    iget-object v1, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "No campaign params defined in Install Referrer result"

    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const-string v10, "medium"

    .line 25
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v11, "(not set)"

    .line 27
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "organic"

    .line 28
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_6

    const-string v10, "referrer_click_timestamp_seconds"

    .line 30
    invoke-virtual {v1, v10, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    mul-long v10, v10, v8

    cmp-long v1, v10, v4

    if-nez v1, :cond_5

    .line 32
    iget-object v1, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 33
    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Install Referrer is missing click timestamp for ad campaign"

    .line 35
    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    const-string v1, "click_timestamp"

    .line 37
    invoke-virtual {v2, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 38
    :cond_6
    iget-object v1, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v1

    iget-object v1, v1, Lo/setBackgroundTintList;->onRelationshipValidationResult:Lo/setIconTint;

    invoke-virtual {v1}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v4

    cmp-long v1, v6, v4

    if-nez v1, :cond_7

    .line 40
    iget-object v1, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Install Referrer campaign has already been logged"

    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_3

    .line 42
    :cond_7
    invoke-static {}, Lo/requestNativeAd;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 43
    invoke-virtual {v1}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v4, Lo/zziq;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, v4}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 44
    iget-object v1, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->cancel()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 45
    :cond_8
    iget-object v1, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v1

    iget-object v1, v1, Lo/setBackgroundTintList;->onRelationshipValidationResult:Lo/setIconTint;

    invoke-virtual {v1, v6, v7}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 48
    iget-object v1, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 49
    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v4, "referrer API"

    const-string v5, "Logging Install Referrer campaign from sdk with "

    .line 51
    invoke-virtual {v1, v5, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "_cis"

    .line 52
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 54
    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v1

    const-string v4, "auto"

    const-string v5, "_cmp"

    .line 55
    invoke-virtual {v1, v4, v5, v2}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    .line 17
    :cond_9
    :goto_2
    iget-object v1, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "No referrer defined in Install Referrer response"

    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_a
    :goto_3
    if-eqz v3, :cond_b

    .line 57
    invoke-static {}, Lo/findSameItem$extraCallback;->onPostMessage()Lo/findSameItem$extraCallback;

    move-result-object v1

    iget-object v0, v0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->warmup()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lo/findSameItem$extraCallback;->extraCallback(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_b
    return-void
.end method
