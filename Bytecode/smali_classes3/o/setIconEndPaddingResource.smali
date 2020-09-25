.class final Lo/setIconEndPaddingResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final synthetic onNavigationEvent:Lo/setChipIconSize;


# direct methods
.method private constructor <init>(Lo/setChipIconSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/setChipIconSize;Lo/setCloseIconEnabled;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lo/setIconEndPaddingResource;-><init>(Lo/setChipIconSize;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/setIconEndPaddingResource;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lo/setIconEndPaddingResource;->onPostMessage(ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final onPostMessage(ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    .line 28
    iget-object v3, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v3}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 30
    :try_start_0
    iget-object v3, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v3}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v3

    sget-object v4, Lo/zziq;->getNotifyChildrenChangedOptions:Lo/setStatusBarForegroundColor;

    invoke-virtual {v3, v4}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Activity created with data \'referrer\' without required params"

    const-string v5, "utm_medium"

    const-string v6, "_cis"

    const-string v7, "utm_source"

    const-string v8, "utm_campaign"

    const-string v10, "gclid"

    if-nez v3, :cond_1

    :try_start_1
    iget-object v3, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    .line 31
    invoke-virtual {v3}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v3

    sget-object v11, Lo/zziq;->MediaBrowserCompat$ConnectionCallback:Lo/setStatusBarForegroundColor;

    invoke-virtual {v3, v11}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    .line 32
    invoke-virtual {v3}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v3

    sget-object v11, Lo/zziq;->setCallbacksMessenger:Lo/setStatusBarForegroundColor;

    invoke-virtual {v3, v11}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, 0x0

    goto :goto_3

    .line 33
    :cond_1
    :goto_1
    iget-object v3, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v3}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v3

    .line 34
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 37
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 38
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 39
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 40
    invoke-virtual {v3}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v3

    invoke-virtual {v3, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v11, "https://google.com/search?"

    .line 42
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_4
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v11, v12

    .line 43
    :goto_2
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v3, v11}, Lo/setHelperTextEnabled;->onNavigationEvent(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v11, "referrer"

    .line 45
    invoke-virtual {v3, v6, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_3
    const/4 v11, 0x0

    const-string v12, "_cmp"

    const/4 v13, 0x1

    if-eqz p1, :cond_7

    .line 50
    :try_start_2
    iget-object v14, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v14}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v14

    move-object/from16 v15, p2

    invoke-virtual {v14, v15}, Lo/setHelperTextEnabled;->onNavigationEvent(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_8

    const-string v15, "intent"

    .line 52
    invoke-virtual {v14, v6, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v6, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v6}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v6

    sget-object v15, Lo/zziq;->getNotifyChildrenChangedOptions:Lo/setStatusBarForegroundColor;

    invoke-virtual {v6, v15}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 54
    invoke-virtual {v14, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v3, :cond_6

    .line 55
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "_cer"

    const-string v15, "gclid=%s"

    new-array v9, v13, [Ljava/lang/Object;

    .line 57
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v9, v11

    invoke-static {v15, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 58
    invoke-virtual {v14, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_6
    iget-object v6, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v6, v0, v12, v14}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 60
    iget-object v6, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v6}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v6

    sget-object v9, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$5:Lo/setStatusBarForegroundColor;

    invoke-virtual {v6, v9}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 61
    iget-object v6, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    iget-object v6, v6, Lo/setChipIconSize;->onNavigationEvent:Lo/setCounterOverflowTextAppearance;

    invoke-virtual {v6, v0, v14}, Lo/setCounterOverflowTextAppearance;->onMessageChannelReady(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    .line 62
    :cond_8
    :goto_4
    iget-object v6, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v6}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v6

    sget-object v9, Lo/zziq;->MediaBrowserCompat$ConnectionCallback:Lo/setStatusBarForegroundColor;

    invoke-virtual {v6, v9}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v9, "auto"

    if-eqz v6, :cond_a

    :try_start_3
    iget-object v6, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    .line 63
    invoke-virtual {v6}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v6

    sget-object v15, Lo/zziq;->setCallbacksMessenger:Lo/setStatusBarForegroundColor;

    invoke-virtual {v6, v15}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz v3, :cond_a

    .line 64
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v14, :cond_9

    .line 65
    invoke-virtual {v14, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 66
    :cond_9
    iget-object v6, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    const-string v14, "_lgclid"

    .line 67
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 68
    invoke-virtual {v6, v9, v14, v15, v13}, Lo/setChipIconSize;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 69
    :cond_a
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    return-void

    .line 71
    :cond_b
    iget-object v6, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v6}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v14, "Activity created with referrer"

    invoke-virtual {v6, v14, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    iget-object v6, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v6}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v6

    sget-object v14, Lo/zziq;->setCallbacksMessenger:Lo/setStatusBarForegroundColor;

    invoke-virtual {v6, v14}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v14, "_ldl"

    if-eqz v6, :cond_e

    if-eqz v3, :cond_c

    .line 74
    :try_start_4
    iget-object v2, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v2, v0, v12, v3}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    iget-object v2, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v2}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    sget-object v4, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$5:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v4}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 76
    iget-object v2, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    iget-object v2, v2, Lo/setChipIconSize;->onNavigationEvent:Lo/setCounterOverflowTextAppearance;

    invoke-virtual {v2, v0, v3}, Lo/setCounterOverflowTextAppearance;->onMessageChannelReady(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    .line 77
    :cond_c
    iget-object v0, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v3, "Referrer does not contain valid parameters"

    invoke-virtual {v0, v3, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    :cond_d
    :goto_5
    iget-object v0, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v14, v2, v13}, Lo/setChipIconSize;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    .line 81
    :cond_e
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 82
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 83
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 84
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "utm_term"

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "utm_content"

    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    const/4 v11, 0x1

    :cond_10
    if-nez v11, :cond_11

    .line 88
    iget-object v0, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_11
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 91
    iget-object v0, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0, v9, v14, v2, v13}, Lo/setChipIconSize;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_12
    return-void

    :catch_0
    move-exception v0

    .line 94
    iget-object v2, v1, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v2}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Throwable caught in handleReferrerForOnActivityCreated"

    invoke-virtual {v2, v3, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    .line 4
    :try_start_0
    iget-object v0, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "onActivityCreated"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/setChipEndPadding;->onPostMessage(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v4}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 13
    :cond_1
    iget-object v1, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v1}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    invoke-static {v0}, Lo/setHelperTextEnabled;->extraCallback(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "gs"

    goto :goto_0

    :cond_2
    const-string v0, "auto"

    :goto_0
    move-object v5, v0

    const-string v0, "referrer"

    .line 16
    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez p2, :cond_3

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 18
    :goto_1
    iget-object v0, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v7, Lo/setCloseIconStartPaddingResource;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lo/setCloseIconStartPaddingResource;-><init>(Lo/setIconEndPaddingResource;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v7}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    iget-object v0, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/setChipEndPadding;->onPostMessage(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    .line 11
    :cond_4
    :goto_2
    iget-object v0, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/setChipEndPadding;->onPostMessage(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 23
    :try_start_2
    iget-object v1, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    iget-object v0, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/setChipEndPadding;->onPostMessage(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    .line 26
    :goto_3
    iget-object v1, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v1}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lo/setChipEndPadding;->onPostMessage(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 27
    throw v0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setChipEndPadding;->onMessageChannelReady(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 98
    iget-object v0, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setChipEndPadding;->onPostMessage(Landroid/app/Activity;)V

    .line 99
    iget-object p1, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {p1}, Lo/pathToString;->asInterface()Lo/setForegroundGravity;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    .line 101
    invoke-virtual {p1}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v2

    new-instance v3, Lo/lambda$process$0$IidBroadcastProcessor;

    invoke-direct {v3, p1, v0, v1}, Lo/lambda$process$0$IidBroadcastProcessor;-><init>(Lo/setForegroundGravity;J)V

    .line 102
    invoke-virtual {v2, v3}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    .line 104
    iget-object v0, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/pathToString;->asInterface()Lo/setForegroundGravity;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->onPostMessage()J

    move-result-wide v1

    .line 106
    invoke-virtual {v0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v3

    new-instance v4, Lo/setNeedsEmptyIcon;

    invoke-direct {v4, v0, v1, v2}, Lo/setNeedsEmptyIcon;-><init>(Lo/setForegroundGravity;J)V

    .line 107
    invoke-virtual {v3, v4}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setChipEndPadding;->onNavigationEvent(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lo/setIconEndPaddingResource;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/pathToString;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/setChipEndPadding;->ICustomTabsCallback(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
