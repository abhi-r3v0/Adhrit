.class public final Lo/setExpanded;
.super Lo/setUseMaterialThemeColors;
.source ""


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private ICustomTabsCallback$Stub:J

.field private asBinder:I

.field private asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Ljava/lang/String;

.field private getInterfaceDescriptor:Ljava/lang/String;

.field private newSession:Ljava/lang/String;

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:I

.field private onRelationshipValidationResult:J

.field private onTransact:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/setCheckedIcon;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/setUseMaterialThemeColors;-><init>(Lo/setCheckedIcon;)V

    .line 2
    iput-wide p2, p0, Lo/setExpanded;->onRelationshipValidationResult:J

    return-void
.end method

.method private final setDefaultImpl()Ljava/lang/String;
    .locals 7

    .line 201
    invoke-static {}, Lo/setControlDispatcher;->onMessageChannelReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v2, Lo/zziq;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Disabled IID for tests."

    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-object v1

    .line 205
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_1
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 213
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 214
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    :try_start_2
    const-string v3, "getFirebaseInstanceId"

    new-array v4, v6, [Ljava/lang/Class;

    .line 222
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    .line 223
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 225
    :catch_0
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-object v1

    .line 219
    :catch_1
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onTransact()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :catch_2
    return-object v1
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 242
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback()V

    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub()Lo/setChipSpacingResource;
    .locals 1

    .line 246
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 251
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 253
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method protected final ICustomTabsService$Stub()V
    .locals 11

    .line 9
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "Unknown"

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "unknown"

    const/high16 v6, -0x80000000

    if-nez v1, :cond_1

    .line 12
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v7

    .line 13
    invoke-virtual {v7}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v7

    .line 14
    invoke-static {v0}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 15
    invoke-virtual {v7, v9, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v8, v2

    goto :goto_4

    .line 16
    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v7

    .line 20
    invoke-virtual {v7}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v7

    .line 21
    invoke-static {v0}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    invoke-virtual {v7, v9, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v5, :cond_2

    const-string v5, "manual_install"

    goto :goto_1

    :cond_2
    const-string v7, "com.android.vending"

    .line 24
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v5, v3

    .line 26
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 28
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 30
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 31
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_4
    move-object v8, v2

    .line 32
    :goto_2
    :try_start_2
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 33
    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-object v7, v2

    move-object v2, v8

    goto :goto_3

    :catch_2
    move-object v7, v2

    .line 36
    :goto_3
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    .line 37
    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v8

    .line 38
    invoke-static {v0}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Error retrieving package info. appId, appName"

    .line 39
    invoke-virtual {v8, v10, v9, v2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v2

    move-object v2, v7

    .line 40
    :goto_4
    iput-object v0, p0, Lo/setExpanded;->onNavigationEvent:Ljava/lang/String;

    .line 41
    iput-object v5, p0, Lo/setExpanded;->onMessageChannelReady:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lo/setExpanded;->ICustomTabsCallback:Ljava/lang/String;

    .line 43
    iput v6, p0, Lo/setExpanded;->onPostMessage:I

    .line 44
    iput-object v8, p0, Lo/setExpanded;->extraCallback:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 45
    iput-wide v5, p0, Lo/setExpanded;->ICustomTabsCallback$Stub:J

    .line 46
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lo/RefundAccountJsonAdapter;->onNavigationEvent(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->ICustomTabsCallback()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    .line 48
    :goto_5
    iget-object v7, p0, Lo/setExpanded;->validateRelationship:Lo/setCheckedIcon;

    .line 49
    invoke-virtual {v7}, Lo/setCheckedIcon;->ICustomTabsService()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lo/setExpanded;->validateRelationship:Lo/setCheckedIcon;

    .line 50
    invoke-virtual {v7}, Lo/setCheckedIcon;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v7

    const-string v8, "am"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    or-int/2addr v6, v7

    if-nez v6, :cond_8

    if-nez v2, :cond_7

    .line 55
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v8, "GoogleService failed to initialize (no status)"

    invoke-virtual {v2, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_7

    .line 56
    :cond_7
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    .line 57
    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub()Lo/setFabAlignmentMode;

    move-result-object v8

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->onPostMessage()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v2

    const-string v10, "GoogleService failed to initialize, status"

    .line 60
    invoke-virtual {v8, v10, v9, v2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_7
    if-eqz v6, :cond_9

    .line 64
    iget-object v2, p0, Lo/setExpanded;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->cancelAll()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 86
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v8, "App measurement disabled"

    invoke-virtual {v6, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v8, "Invalid scion state in identity"

    invoke-virtual {v6, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v8, "App measurement disabled due to denied storage consent"

    invoke-virtual {v6, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 68
    :pswitch_1
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v8, "App measurement disabled via the global data collection setting"

    invoke-virtual {v6, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_8

    .line 80
    :pswitch_2
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    .line 81
    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v8, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    .line 82
    invoke-virtual {v6, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_8

    .line 74
    :pswitch_3
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v8, "App measurement disabled via the init parameters"

    invoke-virtual {v6, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_8

    .line 78
    :pswitch_4
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v8, "App measurement disabled via the manifest"

    invoke-virtual {v6, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_8

    .line 66
    :pswitch_5
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v8, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v6, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_8

    .line 72
    :pswitch_6
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v8, "App measurement deactivated via the init parameters"

    invoke-virtual {v6, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_8

    .line 76
    :pswitch_7
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v8, "App measurement deactivated via the manifest"

    invoke-virtual {v6, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_8

    .line 70
    :pswitch_8
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v8, "App measurement collection enabled"

    invoke-virtual {v6, v8}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :goto_8
    if-nez v2, :cond_9

    const/4 v2, 0x1

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    .line 90
    :goto_9
    iput-object v3, p0, Lo/setExpanded;->onTransact:Ljava/lang/String;

    .line 91
    iput-object v3, p0, Lo/setExpanded;->getInterfaceDescriptor:Ljava/lang/String;

    .line 92
    iput-object v3, p0, Lo/setExpanded;->newSession:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 94
    iget-object v6, p0, Lo/setExpanded;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v6}, Lo/setCheckedIcon;->ICustomTabsService()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lo/setExpanded;->getInterfaceDescriptor:Ljava/lang/String;

    .line 95
    :cond_a
    :try_start_3
    invoke-static {}, Lo/setAdGroupTimesMs;->onNavigationEvent()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v6

    sget-object v7, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$7:Lo/setStatusBarForegroundColor;

    invoke-virtual {v6, v7}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 96
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v6

    const-string v7, "google_app_id"

    .line 97
    invoke-static {v6, v7}, Lo/setDividerDrawableHorizontal;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    .line 99
    :cond_b
    invoke-static {}, Lo/RefundAccountJsonAdapter;->onNavigationEvent()Ljava/lang/String;

    move-result-object v6

    .line 100
    :goto_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    move-object v7, v3

    goto :goto_b

    :cond_c
    move-object v7, v6

    :goto_b
    iput-object v7, p0, Lo/setExpanded;->onTransact:Ljava/lang/String;

    .line 101
    invoke-static {}, Lo/AudioSink$InitializationException;->onPostMessage()Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    const-string v8, "admob_app_id"

    if-eqz v7, :cond_f

    :try_start_4
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v7

    sget-object v9, Lo/zziq;->onConnectionFailed:Lo/setStatusBarForegroundColor;

    invoke-virtual {v7, v9}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 102
    new-instance v7, Lo/getAndroidDisplayRatio;

    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lo/getAndroidDisplayRatio;-><init>(Landroid/content/Context;)V

    const-string v9, "ga_app_id"

    .line 103
    invoke-virtual {v7, v9}, Lo/getAndroidDisplayRatio;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 104
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_c

    :cond_d
    move-object v3, v9

    :goto_c
    iput-object v3, p0, Lo/setExpanded;->newSession:Ljava/lang/String;

    .line 105
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 106
    :cond_e
    invoke-virtual {v7, v8}, Lo/getAndroidDisplayRatio;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lo/setExpanded;->getInterfaceDescriptor:Ljava/lang/String;

    goto :goto_d

    .line 108
    :cond_f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 109
    new-instance v3, Lo/getAndroidDisplayRatio;

    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lo/getAndroidDisplayRatio;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {v3, v8}, Lo/getAndroidDisplayRatio;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lo/setExpanded;->getInterfaceDescriptor:Ljava/lang/String;

    :cond_10
    :goto_d
    if-eqz v2, :cond_12

    .line 112
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "App measurement enabled for app package, google app id"

    iget-object v6, p0, Lo/setExpanded;->onNavigationEvent:Ljava/lang/String;

    .line 114
    iget-object v7, p0, Lo/setExpanded;->onTransact:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lo/setExpanded;->getInterfaceDescriptor:Ljava/lang/String;

    goto :goto_e

    :cond_11
    iget-object v7, p0, Lo/setExpanded;->onTransact:Ljava/lang/String;

    .line 115
    :goto_e
    invoke-virtual {v2, v3, v6, v7}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_f

    :catch_3
    move-exception v2

    .line 118
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 119
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    .line 120
    invoke-static {v0}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "Fetching Google App Id failed with exception. appId"

    .line 121
    invoke-virtual {v3, v6, v0, v2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    :goto_f
    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lo/setExpanded;->asInterface:Ljava/util/List;

    .line 124
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    const-string v2, "analytics.safelisted_events"

    invoke-virtual {v0, v2}, Lo/setStartIconTintList;->asInterface(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_13

    .line 128
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v2, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :goto_10
    const/4 v5, 0x0

    goto :goto_11

    .line 130
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v6

    const-string v7, "safelisted event"

    invoke-virtual {v6, v7, v3}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_10

    :cond_15
    :goto_11
    if-eqz v5, :cond_16

    .line 136
    iput-object v0, p0, Lo/setExpanded;->asInterface:Ljava/util/List;

    .line 137
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_18

    if-eqz v1, :cond_17

    .line 139
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/preferLastSpan$extraCallback;->onPostMessage(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lo/setExpanded;->asBinder:I

    return-void

    .line 140
    :cond_17
    iput v4, p0, Lo/setExpanded;->asBinder:I

    return-void

    .line 141
    :cond_18
    iput v4, p0, Lo/setExpanded;->asBinder:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final ICustomTabsService$Stub$Proxy()Ljava/lang/String;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 232
    iget-object v0, p0, Lo/setExpanded;->getInterfaceDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method final INotificationSideChannel()I
    .locals 1

    .line 235
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 236
    iget v0, p0, Lo/setExpanded;->onPostMessage:I

    return v0
.end method

.method protected final IPostMessageService()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final IPostMessageService$Stub()Ljava/lang/String;
    .locals 1

    .line 227
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 228
    iget-object v0, p0, Lo/setExpanded;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method final IPostMessageService$Stub$Proxy()Ljava/lang/String;
    .locals 1

    .line 233
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 234
    iget-object v0, p0, Lo/setExpanded;->newSession:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic asBinder()Lo/AppBarLayout$Behavior;
    .locals 1

    .line 248
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic asInterface()Lo/setForegroundGravity;
    .locals 1

    .line 249
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->asInterface()Lo/setForegroundGravity;

    move-result-object v0

    return-object v0
.end method

.method final cancel()I
    .locals 1

    .line 237
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 238
    iget v0, p0, Lo/setExpanded;->asBinder:I

    return v0
.end method

.method final cancelAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lo/setExpanded;->asInterface:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 241
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->extraCallback()V

    return-void
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 257
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 250
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 256
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 254
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method final onMessageChannelReady(Ljava/lang/String;)Lo/setCounterTextAppearance;
    .locals 34

    move-object/from16 v0, p0

    .line 143
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 144
    new-instance v31, Lo/setCounterTextAppearance;

    .line 145
    invoke-virtual/range {p0 .. p0}, Lo/setExpanded;->IPostMessageService$Stub()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual/range {p0 .. p0}, Lo/setExpanded;->validateRelationship()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual/range {p0 .. p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 149
    iget-object v4, v0, Lo/setExpanded;->ICustomTabsCallback:Ljava/lang/String;

    .line 151
    invoke-virtual/range {p0 .. p0}, Lo/setExpanded;->INotificationSideChannel()I

    move-result v1

    int-to-long v5, v1

    .line 153
    invoke-virtual/range {p0 .. p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 154
    iget-object v7, v0, Lo/setExpanded;->onMessageChannelReady:Ljava/lang/String;

    .line 158
    invoke-virtual/range {p0 .. p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 160
    iget-wide v8, v0, Lo/setExpanded;->ICustomTabsCallback$Stub:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_0

    .line 161
    iget-object v1, v0, Lo/setExpanded;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lo/setExpanded;->ICustomTabsCallback$Stub:J

    .line 162
    :cond_0
    iget-wide v12, v0, Lo/setExpanded;->ICustomTabsCallback$Stub:J

    .line 163
    iget-object v1, v0, Lo/setExpanded;->validateRelationship:Lo/setCheckedIcon;

    .line 164
    invoke-virtual {v1}, Lo/setCheckedIcon;->cancel()Z

    move-result v14

    .line 165
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v1

    iget-boolean v1, v1, Lo/setBackgroundTintList;->requestPostMessageChannel:Z

    const/4 v8, 0x1

    xor-int/lit8 v15, v1, 0x1

    .line 167
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 168
    iget-object v1, v0, Lo/setExpanded;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->cancel()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v16, 0x0

    goto :goto_0

    .line 170
    :cond_1
    invoke-direct/range {p0 .. p0}, Lo/setExpanded;->setDefaultImpl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    :goto_0
    const-wide/16 v17, 0x0

    .line 171
    iget-object v1, v0, Lo/setExpanded;->validateRelationship:Lo/setCheckedIcon;

    .line 173
    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v9

    iget-object v9, v9, Lo/setBackgroundTintList;->asBinder:Lo/setIconTint;

    invoke-virtual {v9}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 174
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v22, v20, v10

    if-nez v22, :cond_2

    .line 175
    iget-wide v9, v1, Lo/setCheckedIcon;->onMessageChannelReady:J

    move-wide/from16 v20, v9

    goto :goto_1

    .line 176
    :cond_2
    iget-wide v10, v1, Lo/setCheckedIcon;->onMessageChannelReady:J

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-wide/from16 v20, v8

    .line 178
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lo/setExpanded;->cancel()I

    move-result v22

    .line 179
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v8

    invoke-virtual {v8}, Lo/setStartIconTintList;->onTransact()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 180
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v8

    const-string v9, "google_analytics_ssaid_collection_enabled"

    .line 182
    invoke-virtual {v8, v9}, Lo/setStartIconTintList;->onRelationshipValidationResult(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    .line 183
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v8, 0x1

    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 184
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    .line 185
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v8

    .line 186
    invoke-virtual {v8}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 187
    invoke-virtual {v8}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "deferred_analytics_collection"

    invoke-interface {v8, v10, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 189
    invoke-virtual/range {p0 .. p0}, Lo/setExpanded;->ICustomTabsService$Stub$Proxy()Ljava/lang/String;

    move-result-object v26

    .line 190
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v8

    const-string v9, "google_analytics_default_allow_ad_personalization_signals"

    invoke-virtual {v8, v9}, Lo/setStartIconTintList;->onRelationshipValidationResult(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    if-nez v8, :cond_5

    const/16 v27, 0x0

    goto :goto_4

    .line 191
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v1, 0x1

    xor-int/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v27, v1

    .line 193
    :goto_4
    iget-wide v10, v0, Lo/setExpanded;->onRelationshipValidationResult:J

    .line 195
    iget-object v1, v0, Lo/setExpanded;->asInterface:Ljava/util/List;

    .line 196
    invoke-static {}, Lo/AudioSink$InitializationException;->onPostMessage()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v8

    sget-object v9, Lo/zziq;->onConnectionFailed:Lo/setStatusBarForegroundColor;

    invoke-virtual {v8, v9}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lo/setExpanded;->IPostMessageService$Stub$Proxy()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v29, v8

    goto :goto_5

    :cond_6
    const/16 v29, 0x0

    .line 197
    :goto_5
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v8

    sget-object v9, Lo/zziq;->isCurrent:Lo/setStatusBarForegroundColor;

    invoke-virtual {v8, v9}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 198
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v8

    invoke-virtual {v8}, Lo/setBackgroundTintList;->ICustomTabsService$Stub$Proxy()Lo/zzq;

    move-result-object v8

    invoke-virtual {v8}, Lo/zzq;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_7
    const-string v8, ""

    :goto_6
    move-object/from16 v30, v8

    const-wide/16 v8, 0x7949

    move-object/from16 v28, v1

    move-object/from16 v1, v31

    move-wide/from16 v32, v10

    move-wide v10, v12

    move-object/from16 v12, p1

    move v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v20

    move/from16 v20, v22

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-wide/from16 v26, v32

    .line 199
    invoke-direct/range {v1 .. v30}, Lo/setCounterTextAppearance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v31
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 240
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onMessageChannelReady()V

    return-void
.end method

.method public final bridge synthetic onNavigationEvent()Lo/zzbfb;
    .locals 1

    .line 243
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onNavigationEvent()Lo/zzbfb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onPostMessage()Lo/setChipIconSize;
    .locals 1

    .line 244
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onPostMessage()Lo/setChipIconSize;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onRelationshipValidationResult()Lo/setExpanded;
    .locals 1

    .line 245
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onRelationshipValidationResult()Lo/setExpanded;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onTransact()Lo/setChipEndPadding;
    .locals 1

    .line 247
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 255
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 258
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 259
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method final validateRelationship()Ljava/lang/String;
    .locals 1

    .line 229
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub()V

    .line 230
    iget-object v0, p0, Lo/setExpanded;->onTransact:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 252
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
