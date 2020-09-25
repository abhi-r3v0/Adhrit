.class public Lo/setCheckedIcon;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setChipStrokeWidthResource;


# static fields
.field private static volatile extraCallback:Lo/setCheckedIcon;


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private final ICustomTabsCallback$Stub:Z

.field private final ICustomTabsCallback$Stub$Proxy:Lo/HideBottomViewOnScrollBehavior;

.field private final ICustomTabsService:Lo/setLiftOnScrollTargetViewId;

.field private ICustomTabsService$Stub:Lo/setExpanded;

.field private ICustomTabsService$Stub$Proxy:Lo/setIconTintResource;

.field private INotificationSideChannel:Z

.field private INotificationSideChannel$Default:Ljava/lang/Boolean;

.field private INotificationSideChannel$Stub:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile INotificationSideChannel$Stub$Proxy:Z

.field private IPostMessageService:Lo/AppBarLayout$Behavior;

.field private IPostMessageService$Stub:Lo/setChipSpacingResource;

.field private IPostMessageService$Stub$Proxy:Ljava/lang/Boolean;

.field private final asBinder:Ljava/lang/String;

.field private final asInterface:Lo/setStartIconContentDescription;

.field private cancel:J

.field private volatile cancelAll:Ljava/lang/Boolean;

.field private final extraCommand:Lo/component15;

.field private getDefaultImpl:I

.field private final getInterfaceDescriptor:Lo/setHelperTextEnabled;

.field private final mayLaunchUrl:Lo/setTextEndPadding;

.field private final newSession:Lo/setForegroundGravity;

.field private notify:Ljava/lang/Boolean;

.field final onMessageChannelReady:J

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Lo/setStartIconTintList;

.field private final onTransact:Lo/setBackgroundTintList;

.field private final postMessage:Lo/zzbfb;

.field private final requestPostMessageChannel:Lo/setChipEndPadding;

.field private final updateVisuals:Lo/setChipIconSize;

.field private validateRelationship:Lo/zzfw;

.field private final warmup:Lo/setShapeAppearanceModel;


# direct methods
.method private constructor <init>(Lo/setChipIconSizeResource;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo/setCheckedIcon;->INotificationSideChannel:Z

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lo/setCheckedIcon;->INotificationSideChannel$Stub:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p1, Lo/setChipIconSizeResource;->onPostMessage:Landroid/content/Context;

    .line 6
    new-instance v2, Lo/setStartIconContentDescription;

    invoke-direct {v2, v1}, Lo/setStartIconContentDescription;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object v2, p0, Lo/setCheckedIcon;->asInterface:Lo/setStartIconContentDescription;

    .line 9
    sput-object v2, Lo/setElevation;->extraCallback:Lo/setStartIconContentDescription;

    .line 10
    iget-object v1, p1, Lo/setChipIconSizeResource;->onPostMessage:Landroid/content/Context;

    iput-object v1, p0, Lo/setCheckedIcon;->ICustomTabsCallback:Landroid/content/Context;

    .line 11
    iget-object v1, p1, Lo/setChipIconSizeResource;->ICustomTabsCallback:Ljava/lang/String;

    iput-object v1, p0, Lo/setCheckedIcon;->onPostMessage:Ljava/lang/String;

    .line 12
    iget-object v1, p1, Lo/setChipIconSizeResource;->extraCallback:Ljava/lang/String;

    iput-object v1, p0, Lo/setCheckedIcon;->onNavigationEvent:Ljava/lang/String;

    .line 13
    iget-object v1, p1, Lo/setChipIconSizeResource;->onNavigationEvent:Ljava/lang/String;

    iput-object v1, p0, Lo/setCheckedIcon;->asBinder:Ljava/lang/String;

    .line 14
    iget-boolean v1, p1, Lo/setChipIconSizeResource;->onTransact:Z

    iput-boolean v1, p0, Lo/setCheckedIcon;->ICustomTabsCallback$Stub:Z

    .line 15
    iget-object v1, p1, Lo/setChipIconSizeResource;->onMessageChannelReady:Ljava/lang/Boolean;

    iput-object v1, p0, Lo/setCheckedIcon;->cancelAll:Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lo/setCheckedIcon;->INotificationSideChannel$Stub$Proxy:Z

    .line 17
    iget-object v2, p1, Lo/setChipIconSizeResource;->asInterface:Lo/setStatusCode;

    if-eqz v2, :cond_1

    .line 18
    iget-object v3, v2, Lo/setStatusCode;->onTransact:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 19
    iget-object v3, v2, Lo/setStatusCode;->onTransact:Landroid/os/Bundle;

    const-string v4, "measurementEnabled"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 20
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 21
    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lo/setCheckedIcon;->notify:Ljava/lang/Boolean;

    .line 22
    :cond_0
    iget-object v2, v2, Lo/setStatusCode;->onTransact:Landroid/os/Bundle;

    const-string v3, "measurementDeactivated"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 24
    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, p0, Lo/setCheckedIcon;->INotificationSideChannel$Default:Ljava/lang/Boolean;

    .line 25
    :cond_1
    iget-object v2, p0, Lo/setCheckedIcon;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v2}, Lo/MethodNotAllowedException;->onPostMessage(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->extraCallback()Lo/component15;

    move-result-object v2

    .line 28
    iput-object v2, p0, Lo/setCheckedIcon;->extraCommand:Lo/component15;

    .line 30
    iget-object v2, p1, Lo/setChipIconSizeResource;->onRelationshipValidationResult:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 31
    iget-object v2, p1, Lo/setChipIconSizeResource;->onRelationshipValidationResult:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 32
    :cond_2
    iget-object v2, p0, Lo/setCheckedIcon;->extraCommand:Lo/component15;

    invoke-interface {v2}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lo/setCheckedIcon;->onMessageChannelReady:J

    .line 34
    new-instance v2, Lo/setStartIconTintList;

    invoke-direct {v2, p0}, Lo/setStartIconTintList;-><init>(Lo/setCheckedIcon;)V

    .line 35
    iput-object v2, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    .line 37
    new-instance v2, Lo/setBackgroundTintList;

    invoke-direct {v2, p0}, Lo/setBackgroundTintList;-><init>(Lo/setCheckedIcon;)V

    .line 39
    invoke-virtual {v2}, Lo/setChipIconEnabled;->cancel()V

    .line 40
    iput-object v2, p0, Lo/setCheckedIcon;->onTransact:Lo/setBackgroundTintList;

    .line 42
    new-instance v2, Lo/HideBottomViewOnScrollBehavior;

    invoke-direct {v2, p0}, Lo/HideBottomViewOnScrollBehavior;-><init>(Lo/setCheckedIcon;)V

    .line 44
    invoke-virtual {v2}, Lo/setChipIconEnabled;->cancel()V

    .line 45
    iput-object v2, p0, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy:Lo/HideBottomViewOnScrollBehavior;

    .line 47
    new-instance v2, Lo/setHelperTextEnabled;

    invoke-direct {v2, p0}, Lo/setHelperTextEnabled;-><init>(Lo/setCheckedIcon;)V

    .line 49
    invoke-virtual {v2}, Lo/setChipIconEnabled;->cancel()V

    .line 50
    iput-object v2, p0, Lo/setCheckedIcon;->getInterfaceDescriptor:Lo/setHelperTextEnabled;

    .line 52
    new-instance v2, Lo/setLiftOnScrollTargetViewId;

    invoke-direct {v2, p0}, Lo/setLiftOnScrollTargetViewId;-><init>(Lo/setCheckedIcon;)V

    .line 54
    invoke-virtual {v2}, Lo/setChipIconEnabled;->cancel()V

    .line 55
    iput-object v2, p0, Lo/setCheckedIcon;->ICustomTabsService:Lo/setLiftOnScrollTargetViewId;

    .line 57
    new-instance v2, Lo/zzbfb;

    invoke-direct {v2, p0}, Lo/zzbfb;-><init>(Lo/setCheckedIcon;)V

    .line 58
    iput-object v2, p0, Lo/setCheckedIcon;->postMessage:Lo/zzbfb;

    .line 60
    new-instance v2, Lo/setChipEndPadding;

    invoke-direct {v2, p0}, Lo/setChipEndPadding;-><init>(Lo/setCheckedIcon;)V

    .line 62
    invoke-virtual {v2}, Lo/setUseMaterialThemeColors;->getDefaultImpl()V

    .line 63
    iput-object v2, p0, Lo/setCheckedIcon;->requestPostMessageChannel:Lo/setChipEndPadding;

    .line 65
    new-instance v2, Lo/setChipIconSize;

    invoke-direct {v2, p0}, Lo/setChipIconSize;-><init>(Lo/setCheckedIcon;)V

    .line 67
    invoke-virtual {v2}, Lo/setUseMaterialThemeColors;->getDefaultImpl()V

    .line 68
    iput-object v2, p0, Lo/setCheckedIcon;->updateVisuals:Lo/setChipIconSize;

    .line 70
    new-instance v2, Lo/setForegroundGravity;

    invoke-direct {v2, p0}, Lo/setForegroundGravity;-><init>(Lo/setCheckedIcon;)V

    .line 72
    invoke-virtual {v2}, Lo/setUseMaterialThemeColors;->getDefaultImpl()V

    .line 73
    iput-object v2, p0, Lo/setCheckedIcon;->newSession:Lo/setForegroundGravity;

    .line 75
    new-instance v2, Lo/setTextEndPadding;

    invoke-direct {v2, p0}, Lo/setTextEndPadding;-><init>(Lo/setCheckedIcon;)V

    .line 77
    invoke-virtual {v2}, Lo/setChipIconEnabled;->cancel()V

    .line 78
    iput-object v2, p0, Lo/setCheckedIcon;->mayLaunchUrl:Lo/setTextEndPadding;

    .line 80
    new-instance v2, Lo/setShapeAppearanceModel;

    invoke-direct {v2, p0}, Lo/setShapeAppearanceModel;-><init>(Lo/setCheckedIcon;)V

    .line 82
    invoke-virtual {v2}, Lo/setChipIconEnabled;->cancel()V

    .line 83
    iput-object v2, p0, Lo/setCheckedIcon;->warmup:Lo/setShapeAppearanceModel;

    .line 84
    iget-object v2, p1, Lo/setChipIconSizeResource;->asInterface:Lo/setStatusCode;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lo/setChipIconSizeResource;->asInterface:Lo/setStatusCode;

    iget-wide v2, v2, Lo/setStatusCode;->onMessageChannelReady:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    :cond_3
    xor-int/2addr v0, v1

    .line 87
    iget-object v1, p0, Lo/setCheckedIcon;->ICustomTabsCallback:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_5

    .line 88
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_6

    .line 90
    invoke-virtual {v1}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 91
    iget-object v3, v1, Lo/setChipIconSize;->onMessageChannelReady:Lo/setIconEndPaddingResource;

    if-nez v3, :cond_4

    .line 92
    new-instance v3, Lo/setIconEndPaddingResource;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lo/setIconEndPaddingResource;-><init>(Lo/setChipIconSize;Lo/setCloseIconEnabled;)V

    iput-object v3, v1, Lo/setChipIconSize;->onMessageChannelReady:Lo/setIconEndPaddingResource;

    :cond_4
    if-eqz v0, :cond_6

    .line 94
    iget-object v0, v1, Lo/setChipIconSize;->onMessageChannelReady:Lo/setIconEndPaddingResource;

    .line 95
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 96
    iget-object v0, v1, Lo/setChipIconSize;->onMessageChannelReady:Lo/setIconEndPaddingResource;

    .line 97
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 98
    invoke-virtual {v1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_5
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 101
    :cond_6
    :goto_1
    iget-object v0, p0, Lo/setCheckedIcon;->warmup:Lo/setShapeAppearanceModel;

    new-instance v1, Lo/setLines;

    invoke-direct {v1, p0, p1}, Lo/setLines;-><init>(Lo/setCheckedIcon;Lo/setChipIconSizeResource;)V

    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Lo/setStatusCode;Ljava/lang/Long;)Lo/setCheckedIcon;
    .locals 11

    if-eqz p1, :cond_1

    .line 293
    iget-object v0, p1, Lo/setStatusCode;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lo/setStatusCode;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 294
    :cond_0
    new-instance v0, Lo/setStatusCode;

    iget-wide v2, p1, Lo/setStatusCode;->extraCallback:J

    iget-wide v4, p1, Lo/setStatusCode;->onMessageChannelReady:J

    iget-boolean v6, p1, Lo/setStatusCode;->onNavigationEvent:Z

    iget-object v7, p1, Lo/setStatusCode;->onPostMessage:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lo/setStatusCode;->onTransact:Landroid/os/Bundle;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lo/setStatusCode;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v0

    .line 295
    :cond_1
    invoke-static {p0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lo/setCheckedIcon;->extraCallback:Lo/setCheckedIcon;

    if-nez v0, :cond_3

    .line 298
    const-class v0, Lo/setCheckedIcon;

    monitor-enter v0

    .line 299
    :try_start_0
    sget-object v1, Lo/setCheckedIcon;->extraCallback:Lo/setCheckedIcon;

    if-nez v1, :cond_2

    .line 301
    new-instance v1, Lo/setChipIconSizeResource;

    invoke-direct {v1, p0, p1, p2}, Lo/setChipIconSizeResource;-><init>(Landroid/content/Context;Lo/setStatusCode;Ljava/lang/Long;)V

    .line 303
    new-instance p0, Lo/setCheckedIcon;

    invoke-direct {p0, v1}, Lo/setCheckedIcon;-><init>(Lo/setChipIconSizeResource;)V

    .line 304
    sput-object p0, Lo/setCheckedIcon;->extraCallback:Lo/setCheckedIcon;

    .line 305
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 306
    iget-object p0, p1, Lo/setStatusCode;->onTransact:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    iget-object p0, p1, Lo/setStatusCode;->onTransact:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 307
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 308
    sget-object p0, Lo/setCheckedIcon;->extraCallback:Lo/setCheckedIcon;

    iget-object p1, p1, Lo/setStatusCode;->onTransact:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 309
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 310
    invoke-virtual {p0, p1}, Lo/setCheckedIcon;->onMessageChannelReady(Z)V

    .line 311
    :cond_4
    :goto_0
    sget-object p0, Lo/setCheckedIcon;->extraCallback:Lo/setCheckedIcon;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/setCheckedIcon;Lo/setChipIconSizeResource;)V
    .locals 0

    .line 497
    invoke-direct {p0, p1}, Lo/setCheckedIcon;->ICustomTabsCallback(Lo/setChipIconSizeResource;)V

    return-void
.end method

.method private final ICustomTabsCallback(Lo/setChipIconSizeResource;)V
    .locals 4

    .line 104
    invoke-virtual {p0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 106
    new-instance v0, Lo/zzfw;

    invoke-direct {v0, p0}, Lo/zzfw;-><init>(Lo/setCheckedIcon;)V

    .line 108
    invoke-virtual {v0}, Lo/setChipIconEnabled;->cancel()V

    .line 109
    iput-object v0, p0, Lo/setCheckedIcon;->validateRelationship:Lo/zzfw;

    .line 111
    new-instance v0, Lo/setExpanded;

    iget-wide v1, p1, Lo/setChipIconSizeResource;->ICustomTabsCallback$Stub:J

    invoke-direct {v0, p0, v1, v2}, Lo/setExpanded;-><init>(Lo/setCheckedIcon;J)V

    .line 113
    invoke-virtual {v0}, Lo/setUseMaterialThemeColors;->getDefaultImpl()V

    .line 114
    iput-object v0, p0, Lo/setCheckedIcon;->ICustomTabsService$Stub:Lo/setExpanded;

    .line 116
    new-instance p1, Lo/AppBarLayout$Behavior;

    invoke-direct {p1, p0}, Lo/AppBarLayout$Behavior;-><init>(Lo/setCheckedIcon;)V

    .line 118
    invoke-virtual {p1}, Lo/setUseMaterialThemeColors;->getDefaultImpl()V

    .line 119
    iput-object p1, p0, Lo/setCheckedIcon;->IPostMessageService:Lo/AppBarLayout$Behavior;

    .line 121
    new-instance p1, Lo/setChipSpacingResource;

    invoke-direct {p1, p0}, Lo/setChipSpacingResource;-><init>(Lo/setCheckedIcon;)V

    .line 123
    invoke-virtual {p1}, Lo/setUseMaterialThemeColors;->getDefaultImpl()V

    .line 124
    iput-object p1, p0, Lo/setCheckedIcon;->IPostMessageService$Stub:Lo/setChipSpacingResource;

    .line 125
    iget-object p1, p0, Lo/setCheckedIcon;->getInterfaceDescriptor:Lo/setHelperTextEnabled;

    invoke-virtual {p1}, Lo/setChipIconEnabled;->cancelAll()V

    .line 126
    iget-object p1, p0, Lo/setCheckedIcon;->onTransact:Lo/setBackgroundTintList;

    invoke-virtual {p1}, Lo/setChipIconEnabled;->cancelAll()V

    .line 128
    new-instance p1, Lo/setIconTintResource;

    invoke-direct {p1, p0}, Lo/setIconTintResource;-><init>(Lo/setCheckedIcon;)V

    .line 129
    iput-object p1, p0, Lo/setCheckedIcon;->ICustomTabsService$Stub$Proxy:Lo/setIconTintResource;

    .line 130
    iget-object p1, p0, Lo/setCheckedIcon;->ICustomTabsService$Stub:Lo/setExpanded;

    invoke-virtual {p1}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Default()V

    .line 131
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object p1

    const-wide/16 v1, 0x7949

    .line 132
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement initialized, version"

    invoke-virtual {p1, v2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Lo/setExpanded;->IPostMessageService$Stub()Ljava/lang/String;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lo/setCheckedIcon;->onPostMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {p0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setHelperTextEnabled;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    goto :goto_1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 144
    :goto_1
    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 145
    :cond_2
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 146
    iget p1, p0, Lo/setCheckedIcon;->getDefaultImpl:I

    iget-object v0, p0, Lo/setCheckedIcon;->INotificationSideChannel$Stub:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_3

    .line 147
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    iget v0, p0, Lo/setCheckedIcon;->getDefaultImpl:I

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lo/setCheckedIcon;->INotificationSideChannel$Stub:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lo/setCheckedIcon;->INotificationSideChannel:Z

    return-void
.end method

.method private final INotificationSideChannel$Default()Lo/setTextEndPadding;
    .locals 1

    .line 272
    iget-object v0, p0, Lo/setCheckedIcon;->mayLaunchUrl:Lo/setTextEndPadding;

    invoke-static {v0}, Lo/setCheckedIcon;->onMessageChannelReady(Lo/setChipIconEnabled;)V

    .line 273
    iget-object v0, p0, Lo/setCheckedIcon;->mayLaunchUrl:Lo/setTextEndPadding;

    return-object v0
.end method

.method private static onMessageChannelReady(Lo/setChipIconEnabled;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 314
    invoke-virtual {p0}, Lo/setChipIconEnabled;->INotificationSideChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onMessageChannelReady(Lo/setChipTextResource;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 323
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onMessageChannelReady(Lo/setUseMaterialThemeColors;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 319
    invoke-virtual {p0}, Lo/setUseMaterialThemeColors;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setBackgroundTintList;
    .locals 1

    .line 253
    iget-object v0, p0, Lo/setCheckedIcon;->onTransact:Lo/setBackgroundTintList;

    invoke-static {v0}, Lo/setCheckedIcon;->onMessageChannelReady(Lo/setChipTextResource;)V

    .line 254
    iget-object v0, p0, Lo/setCheckedIcon;->onTransact:Lo/setBackgroundTintList;

    return-object v0
.end method

.method protected final ICustomTabsCallback(Lo/setStatusCode;)V
    .locals 5

    .line 153
    invoke-virtual {p0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 154
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    .line 156
    sget-object v1, Lo/zziq;->isCurrent:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setBackgroundTintList;->ICustomTabsService$Stub$Proxy()Lo/zzq;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 158
    iget-object v1, p1, Lo/setStatusCode;->onTransact:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v1

    const/16 v2, 0x1e

    .line 160
    invoke-virtual {v1, v2}, Lo/setBackgroundTintList;->extraCallback(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object p1, p1, Lo/setStatusCode;->onTransact:Landroid/os/Bundle;

    .line 162
    invoke-static {p1}, Lo/zzq;->extraCallback(Landroid/os/Bundle;)Lo/zzq;

    move-result-object p1

    .line 163
    sget-object v1, Lo/zzq;->onMessageChannelReady:Lo/zzq;

    invoke-virtual {p1, v1}, Lo/zzq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    iget-wide v3, p0, Lo/setCheckedIcon;->onMessageChannelReady:J

    .line 166
    invoke-virtual {v0, p1, v2, v3, v4}, Lo/setChipIconSize;->onMessageChannelReady(Lo/zzq;IJ)V

    move-object v0, p1

    .line 167
    :cond_0
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/setChipIconSize;->onNavigationEvent(Lo/zzq;)V

    .line 168
    :cond_1
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    iget-object p1, p1, Lo/setBackgroundTintList;->onMessageChannelReady:Lo/setIconTint;

    invoke-virtual {p1}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 169
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    iget-object p1, p1, Lo/setBackgroundTintList;->onMessageChannelReady:Lo/setIconTint;

    .line 170
    iget-object v0, p0, Lo/setCheckedIcon;->extraCommand:Lo/component15;

    .line 171
    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 172
    :cond_2
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    iget-object p1, p1, Lo/setBackgroundTintList;->asBinder:Lo/setIconTint;

    invoke-virtual {p1}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 174
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    iget-wide v0, p0, Lo/setCheckedIcon;->onMessageChannelReady:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Persisting first open"

    invoke-virtual {p1, v1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    iget-object p1, p1, Lo/setBackgroundTintList;->asBinder:Lo/setIconTint;

    iget-wide v0, p0, Lo/setCheckedIcon;->onMessageChannelReady:J

    invoke-virtual {p1, v0, v1}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 177
    :cond_3
    iget-object p1, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    .line 178
    sget-object v0, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$5:Lo/setStatusBarForegroundColor;

    invoke-virtual {p1, v0}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 179
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p1

    iget-object p1, p1, Lo/setChipIconSize;->onNavigationEvent:Lo/setCounterOverflowTextAppearance;

    invoke-virtual {p1}, Lo/setCounterOverflowTextAppearance;->onNavigationEvent()V

    .line 180
    :cond_4
    invoke-virtual {p0}, Lo/setCheckedIcon;->INotificationSideChannel$Stub()Z

    move-result p1

    if-nez p1, :cond_9

    .line 181
    invoke-virtual {p0}, Lo/setCheckedIcon;->cancel()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 182
    invoke-virtual {p0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object p1

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 183
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "App is missing INTERNET permission"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 184
    :cond_5
    invoke-virtual {p0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 185
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 187
    :cond_6
    iget-object p1, p0, Lo/setCheckedIcon;->ICustomTabsCallback:Landroid/content/Context;

    .line 188
    invoke-static {p1}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object p1

    invoke-virtual {p1}, Lo/component28;->onNavigationEvent()Z

    move-result p1

    if-nez p1, :cond_8

    .line 189
    iget-object p1, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    .line 190
    invoke-virtual {p1}, Lo/setStartIconTintList;->ICustomTabsService$Stub$Proxy()Z

    move-result p1

    if-nez p1, :cond_8

    .line 192
    iget-object p1, p0, Lo/setCheckedIcon;->ICustomTabsCallback:Landroid/content/Context;

    .line 193
    invoke-static {p1}, Lo/setIconTintMode;->extraCallback(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 194
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 196
    :cond_7
    iget-object p1, p0, Lo/setCheckedIcon;->ICustomTabsCallback:Landroid/content/Context;

    const/4 v0, 0x0

    .line 197
    invoke-static {p1, v0}, Lo/setHelperTextEnabled;->onNavigationEvent(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_8

    .line 198
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 199
    :cond_8
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_9
    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object p1

    invoke-virtual {p1}, Lo/setExpanded;->validateRelationship()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 202
    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object p1

    invoke-virtual {p1}, Lo/setExpanded;->ICustomTabsService$Stub$Proxy()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 203
    :cond_a
    invoke-virtual {p0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    .line 204
    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object p1

    invoke-virtual {p1}, Lo/setExpanded;->validateRelationship()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v1

    invoke-virtual {v1}, Lo/setBackgroundTintList;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object v2

    invoke-virtual {v2}, Lo/setExpanded;->ICustomTabsService$Stub$Proxy()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v3

    invoke-virtual {v3}, Lo/setBackgroundTintList;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-static {p1, v1, v2, v3}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 209
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {p1, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    invoke-virtual {p1}, Lo/setBackgroundTintList;->onTransact()V

    .line 211
    invoke-virtual {p0}, Lo/setCheckedIcon;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/AppBarLayout$Behavior;->IPostMessageService$Stub()V

    .line 212
    iget-object p1, p0, Lo/setCheckedIcon;->IPostMessageService$Stub:Lo/setChipSpacingResource;

    invoke-virtual {p1}, Lo/setChipSpacingResource;->cancelAll()V

    .line 213
    iget-object p1, p0, Lo/setCheckedIcon;->IPostMessageService$Stub:Lo/setChipSpacingResource;

    invoke-virtual {p1}, Lo/setChipSpacingResource;->IPostMessageService$Stub$Proxy()V

    .line 214
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    iget-object p1, p1, Lo/setBackgroundTintList;->asBinder:Lo/setIconTint;

    iget-wide v1, p0, Lo/setCheckedIcon;->onMessageChannelReady:J

    invoke-virtual {p1, v1, v2}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 215
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    iget-object p1, p1, Lo/setBackgroundTintList;->asInterface:Lo/setStrokeWidthResource;

    invoke-virtual {p1, v0}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    .line 216
    :cond_b
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object v1

    invoke-virtual {v1}, Lo/setExpanded;->validateRelationship()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/setBackgroundTintList;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object v1

    invoke-virtual {v1}, Lo/setExpanded;->ICustomTabsService$Stub$Proxy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/setBackgroundTintList;->onNavigationEvent(Ljava/lang/String;)V

    .line 218
    :cond_c
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 219
    iget-object p1, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    .line 220
    sget-object v1, Lo/zziq;->isCurrent:Lo/setStatusBarForegroundColor;

    invoke-virtual {p1, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 221
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    invoke-virtual {p1}, Lo/setBackgroundTintList;->ICustomTabsService$Stub$Proxy()Lo/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lo/zzq;->extraCallback()Z

    move-result p1

    if-nez p1, :cond_d

    .line 222
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    iget-object p1, p1, Lo/setBackgroundTintList;->asInterface:Lo/setStrokeWidthResource;

    invoke-virtual {p1, v0}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    .line 223
    :cond_d
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p1

    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v1

    iget-object v1, v1, Lo/setBackgroundTintList;->asInterface:Lo/setStrokeWidthResource;

    invoke-virtual {v1}, Lo/setStrokeWidthResource;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lo/showInterstitial;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 225
    iget-object p1, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    .line 226
    sget-object v1, Lo/zziq;->onResult:Lo/setStatusBarForegroundColor;

    invoke-virtual {p1, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 227
    invoke-virtual {p0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object p1

    invoke-virtual {p1}, Lo/setHelperTextEnabled;->onTransact()Z

    move-result p1

    if-nez p1, :cond_e

    .line 228
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    iget-object p1, p1, Lo/setBackgroundTintList;->ICustomTabsService$Stub:Lo/setStrokeWidthResource;

    invoke-virtual {p1}, Lo/setStrokeWidthResource;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 229
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v1, "Remote config removed with active feature rollouts"

    invoke-virtual {p1, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    iget-object p1, p1, Lo/setBackgroundTintList;->ICustomTabsService$Stub:Lo/setStrokeWidthResource;

    invoke-virtual {p1, v0}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    .line 231
    :cond_e
    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object p1

    invoke-virtual {p1}, Lo/setExpanded;->validateRelationship()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 232
    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object p1

    invoke-virtual {p1}, Lo/setExpanded;->ICustomTabsService$Stub$Proxy()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 233
    :cond_f
    invoke-virtual {p0}, Lo/setCheckedIcon;->cancel()Z

    move-result p1

    .line 234
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setBackgroundTintList;->IPostMessageService()Z

    move-result v0

    if-nez v0, :cond_10

    .line 235
    iget-object v0, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    .line 236
    invoke-virtual {v0}, Lo/setStartIconTintList;->asBinder()Z

    move-result v0

    if-nez v0, :cond_10

    .line 237
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lo/setBackgroundTintList;->onPostMessage(Z)V

    :cond_10
    if-eqz p1, :cond_11

    .line 239
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object p1

    invoke-virtual {p1}, Lo/setChipIconSize;->setDefaultImpl()V

    .line 240
    :cond_11
    invoke-virtual {p0}, Lo/setCheckedIcon;->extraCallback()Lo/setForegroundGravity;

    move-result-object p1

    iget-object p1, p1, Lo/setForegroundGravity;->extraCallback:Lo/setBoxBackgroundColor;

    invoke-virtual {p1}, Lo/setBoxBackgroundColor;->extraCallback()V

    .line 241
    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService$Stub()Lo/setChipSpacingResource;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lo/setChipSpacingResource;->extraCallback(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 242
    invoke-static {}, Lo/ParserException;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 243
    iget-object p1, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    .line 244
    sget-object v0, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$3:Lo/setStatusBarForegroundColor;

    invoke-virtual {p1, v0}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 245
    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService$Stub()Lo/setChipSpacingResource;

    move-result-object p1

    .line 246
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->IPostMessageService$Stub:Lo/setIconPadding;

    invoke-virtual {v0}, Lo/setIconPadding;->ICustomTabsCallback()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/setChipSpacingResource;->onNavigationEvent(Landroid/os/Bundle;)V

    .line 247
    :cond_12
    :goto_0
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    iget-object p1, p1, Lo/setBackgroundTintList;->ICustomTabsCallback$Stub$Proxy:Lo/setIconSize;

    .line 248
    iget-object v0, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    .line 249
    sget-object v1, Lo/zziq;->search:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lo/setIconSize;->onMessageChannelReady(Z)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Lo/setChipIconSize;
    .locals 1

    .line 264
    iget-object v0, p0, Lo/setCheckedIcon;->updateVisuals:Lo/setChipIconSize;

    invoke-static {v0}, Lo/setCheckedIcon;->onMessageChannelReady(Lo/setUseMaterialThemeColors;)V

    .line 265
    iget-object v0, p0, Lo/setCheckedIcon;->updateVisuals:Lo/setChipIconSize;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 280
    iget-object v0, p0, Lo/setCheckedIcon;->extraCommand:Lo/component15;

    return-object v0
.end method

.method public final ICustomTabsService()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lo/setCheckedIcon;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsService$Stub()Lo/setChipEndPadding;
    .locals 1

    .line 281
    iget-object v0, p0, Lo/setCheckedIcon;->requestPostMessageChannel:Lo/setChipEndPadding;

    invoke-static {v0}, Lo/setCheckedIcon;->onMessageChannelReady(Lo/setUseMaterialThemeColors;)V

    .line 282
    iget-object v0, p0, Lo/setCheckedIcon;->requestPostMessageChannel:Lo/setChipEndPadding;

    return-object v0
.end method

.method public final ICustomTabsService$Stub$Proxy()Lo/zzbfb;
    .locals 2

    .line 289
    iget-object v0, p0, Lo/setCheckedIcon;->postMessage:Lo/zzbfb;

    if-eqz v0, :cond_0

    return-object v0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final INotificationSideChannel()Z
    .locals 1

    .line 374
    invoke-virtual {p0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 375
    iget-boolean v0, p0, Lo/setCheckedIcon;->INotificationSideChannel$Stub$Proxy:Z

    return v0
.end method

.method protected final INotificationSideChannel$Stub()Z
    .locals 6

    .line 384
    iget-boolean v0, p0, Lo/setCheckedIcon;->INotificationSideChannel:Z

    if-eqz v0, :cond_6

    .line 387
    invoke-virtual {p0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 388
    iget-object v0, p0, Lo/setCheckedIcon;->IPostMessageService$Stub$Proxy:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lo/setCheckedIcon;->cancel:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    if-eqz v0, :cond_5

    .line 389
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 390
    iget-object v0, p0, Lo/setCheckedIcon;->extraCommand:Lo/component15;

    .line 391
    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    iget-wide v2, p0, Lo/setCheckedIcon;->cancel:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 393
    :cond_0
    iget-object v0, p0, Lo/setCheckedIcon;->extraCommand:Lo/component15;

    .line 394
    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v0

    iput-wide v0, p0, Lo/setCheckedIcon;->cancel:J

    .line 396
    invoke-virtual {p0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {p0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lo/setCheckedIcon;->ICustomTabsCallback:Landroid/content/Context;

    .line 399
    invoke-static {v0}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object v0

    invoke-virtual {v0}, Lo/component28;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    iget-object v0, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    .line 401
    invoke-virtual {v0}, Lo/setStartIconTintList;->ICustomTabsService$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    iget-object v0, p0, Lo/setCheckedIcon;->ICustomTabsCallback:Landroid/content/Context;

    .line 403
    invoke-static {v0}, Lo/setIconTintMode;->extraCallback(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lo/setCheckedIcon;->ICustomTabsCallback:Landroid/content/Context;

    .line 405
    invoke-static {v0, v2}, Lo/setHelperTextEnabled;->onNavigationEvent(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 406
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/setCheckedIcon;->IPostMessageService$Stub$Proxy:Ljava/lang/Boolean;

    .line 407
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 409
    invoke-virtual {p0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v0

    .line 410
    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object v3

    invoke-virtual {v3}, Lo/setExpanded;->validateRelationship()Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object v4

    invoke-virtual {v4}, Lo/setExpanded;->ICustomTabsService$Stub$Proxy()Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object v5

    invoke-virtual {v5}, Lo/setExpanded;->IPostMessageService$Stub$Proxy()Ljava/lang/String;

    move-result-object v5

    .line 413
    invoke-virtual {v0, v3, v4, v5}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 414
    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object v0

    invoke-virtual {v0}, Lo/setExpanded;->ICustomTabsService$Stub$Proxy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 415
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/setCheckedIcon;->IPostMessageService$Stub$Proxy:Ljava/lang/Boolean;

    .line 416
    :cond_5
    iget-object v0, p0, Lo/setCheckedIcon;->IPostMessageService$Stub$Proxy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 385
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final INotificationSideChannel$Stub$Proxy()V
    .locals 2

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final IPostMessageService()Lo/setExpanded;
    .locals 1

    .line 287
    iget-object v0, p0, Lo/setCheckedIcon;->ICustomTabsService$Stub:Lo/setExpanded;

    invoke-static {v0}, Lo/setCheckedIcon;->onMessageChannelReady(Lo/setUseMaterialThemeColors;)V

    .line 288
    iget-object v0, p0, Lo/setCheckedIcon;->ICustomTabsService$Stub:Lo/setExpanded;

    return-object v0
.end method

.method public final IPostMessageService$Stub()Lo/setChipSpacingResource;
    .locals 1

    .line 283
    iget-object v0, p0, Lo/setCheckedIcon;->IPostMessageService$Stub:Lo/setChipSpacingResource;

    invoke-static {v0}, Lo/setCheckedIcon;->onMessageChannelReady(Lo/setUseMaterialThemeColors;)V

    .line 284
    iget-object v0, p0, Lo/setCheckedIcon;->IPostMessageService$Stub:Lo/setChipSpacingResource;

    return-object v0
.end method

.method public final IPostMessageService$Stub$Proxy()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lo/setCheckedIcon;->cancelAll:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setCheckedIcon;->cancelAll:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final asBinder()Lo/AppBarLayout$Behavior;
    .locals 1

    .line 270
    iget-object v0, p0, Lo/setCheckedIcon;->IPostMessageService:Lo/AppBarLayout$Behavior;

    invoke-static {v0}, Lo/setCheckedIcon;->onMessageChannelReady(Lo/setUseMaterialThemeColors;)V

    .line 271
    iget-object v0, p0, Lo/setCheckedIcon;->IPostMessageService:Lo/AppBarLayout$Behavior;

    return-object v0
.end method

.method public final asInterface()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 268
    iget-object v0, p0, Lo/setCheckedIcon;->ICustomTabsService:Lo/setLiftOnScrollTargetViewId;

    invoke-static {v0}, Lo/setCheckedIcon;->onMessageChannelReady(Lo/setChipTextResource;)V

    .line 269
    iget-object v0, p0, Lo/setCheckedIcon;->ICustomTabsService:Lo/setLiftOnScrollTargetViewId;

    return-object v0
.end method

.method public final cancel()Z
    .locals 1

    .line 328
    invoke-virtual {p0}, Lo/setCheckedIcon;->cancelAll()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final cancelAll()I
    .locals 3

    .line 330
    invoke-virtual {p0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 332
    iget-object v0, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    .line 333
    invoke-virtual {v0}, Lo/setStartIconTintList;->asBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 335
    :cond_0
    iget-object v0, p0, Lo/setCheckedIcon;->INotificationSideChannel$Default:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 338
    :cond_1
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    .line 340
    sget-object v1, Lo/zziq;->isCurrent:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {p0}, Lo/setCheckedIcon;->INotificationSideChannel()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    return v0

    .line 343
    :cond_2
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    invoke-virtual {v0}, Lo/setBackgroundTintList;->ICustomTabsService$Stub()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 345
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x3

    return v0

    .line 347
    :cond_4
    iget-object v0, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    const-string v2, "firebase_analytics_collection_enabled"

    .line 349
    invoke-virtual {v0, v2}, Lo/setStartIconTintList;->onRelationshipValidationResult(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 352
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x4

    return v0

    .line 353
    :cond_6
    iget-object v0, p0, Lo/setCheckedIcon;->notify:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 354
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x5

    return v0

    .line 358
    :cond_8
    invoke-static {}, Lo/RefundAccountJsonAdapter;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    return v0

    .line 362
    :cond_9
    iget-object v0, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    .line 363
    sget-object v2, Lo/zziq;->AudioAttributesImplApi21Parcelizer:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lo/setCheckedIcon;->cancelAll:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 364
    iget-object v0, p0, Lo/setCheckedIcon;->cancelAll:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x7

    return v0

    :cond_b
    return v1
.end method

.method public final extraCallback()Lo/setForegroundGravity;
    .locals 1

    .line 260
    iget-object v0, p0, Lo/setCheckedIcon;->newSession:Lo/setForegroundGravity;

    invoke-static {v0}, Lo/setCheckedIcon;->onMessageChannelReady(Lo/setUseMaterialThemeColors;)V

    .line 261
    iget-object v0, p0, Lo/setCheckedIcon;->newSession:Lo/setForegroundGravity;

    return-object v0
.end method

.method public final extraCommand()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lo/setCheckedIcon;->asBinder:Ljava/lang/String;

    return-object v0
.end method

.method final getDefaultImpl()V
    .locals 1

    .line 381
    iget-object v0, p0, Lo/setCheckedIcon;->INotificationSideChannel$Stub:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lo/setCheckedIcon;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 255
    iget-object v0, p0, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy:Lo/HideBottomViewOnScrollBehavior;

    invoke-static {v0}, Lo/setCheckedIcon;->onMessageChannelReady(Lo/setChipIconEnabled;)V

    .line 256
    iget-object v0, p0, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy:Lo/HideBottomViewOnScrollBehavior;

    return-object v0
.end method

.method public final newSession()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lo/setCheckedIcon;->onPostMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()Lo/setIconTintResource;
    .locals 1

    .line 262
    iget-object v0, p0, Lo/setCheckedIcon;->ICustomTabsService$Stub$Proxy:Lo/setIconTintResource;

    return-object v0
.end method

.method final onMessageChannelReady(Z)V
    .locals 0

    .line 325
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/setCheckedIcon;->cancelAll:Ljava/lang/Boolean;

    return-void
.end method

.method public final onNavigationEvent()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 257
    iget-object v0, p0, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy:Lo/HideBottomViewOnScrollBehavior;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/setChipIconEnabled;->INotificationSideChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy:Lo/HideBottomViewOnScrollBehavior;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onNavigationEvent(Z)V
    .locals 1

    .line 370
    invoke-virtual {p0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 371
    iput-boolean p1, p0, Lo/setCheckedIcon;->INotificationSideChannel$Stub$Proxy:Z

    return-void
.end method

.method public final onPostMessage()Lo/setStartIconTintList;
    .locals 1

    .line 252
    iget-object v0, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    return-object v0
.end method

.method final synthetic onPostMessage(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6

    const-string p1, "gclid"

    const-string p5, ""

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-eq p2, v2, :cond_0

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_0

    const/16 v2, 0x130

    if-ne p2, v2, :cond_1

    :cond_0
    if-nez p3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 452
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 453
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p1

    .line 454
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "Network Request for Deferred Deep Link failed. response, exception"

    .line 455
    invoke-virtual {p1, p4, p2, p3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 457
    :cond_2
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p2

    iget-object p2, p2, Lo/setBackgroundTintList;->extraCommand:Lo/setIconSize;

    invoke-virtual {p2, v0}, Lo/setIconSize;->onMessageChannelReady(Z)V

    .line 458
    array-length p2, p4

    if-nez p2, :cond_3

    .line 459
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Deferred Deep Link response empty."

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 461
    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>([B)V

    .line 462
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "deeplink"

    .line 464
    invoke-virtual {p3, p2, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 465
    invoke-virtual {p3, p1, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "timestamp"

    const-wide/16 v2, 0x0

    .line 467
    invoke-virtual {p3, p5, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 468
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 469
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Deferred Deep Link is empty."

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 471
    :cond_4
    invoke-virtual {p0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object p3

    .line 473
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_5

    .line 475
    invoke-virtual {p3}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object p3

    .line 476
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    new-instance p5, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    .line 477
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p5, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p3, p5, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 478
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_6

    .line 480
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 481
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, deep link"

    .line 482
    invoke-virtual {p1, p3, p4, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 484
    :cond_6
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 485
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_cis"

    const-string p4, "ddp"

    .line 486
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object p1, p0, Lo/setCheckedIcon;->updateVisuals:Lo/setChipIconSize;

    const-string p4, "auto"

    const-string p5, "_cmp"

    invoke-virtual {p1, p4, p5, p3}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 488
    invoke-virtual {p0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object p1

    .line 489
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 490
    invoke-virtual {p1, p2, v2, v3}, Lo/setHelperTextEnabled;->onPostMessage(Ljava/lang/String;D)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 491
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p1}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception p1

    .line 495
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final onPostMessage(Lo/setChipIconEnabled;)V
    .locals 0

    .line 377
    iget p1, p0, Lo/setCheckedIcon;->getDefaultImpl:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/setCheckedIcon;->getDefaultImpl:I

    return-void
.end method

.method final onPostMessage(Lo/setUseMaterialThemeColors;)V
    .locals 0

    .line 379
    iget p1, p0, Lo/setCheckedIcon;->getDefaultImpl:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/setCheckedIcon;->getDefaultImpl:I

    return-void
.end method

.method final onRelationshipValidationResult()Lo/setShapeAppearanceModel;
    .locals 1

    .line 263
    iget-object v0, p0, Lo/setCheckedIcon;->warmup:Lo/setShapeAppearanceModel;

    return-object v0
.end method

.method public final onTransact()Lo/setHelperTextEnabled;
    .locals 1

    .line 266
    iget-object v0, p0, Lo/setCheckedIcon;->getInterfaceDescriptor:Lo/setHelperTextEnabled;

    invoke-static {v0}, Lo/setCheckedIcon;->onMessageChannelReady(Lo/setChipTextResource;)V

    .line 267
    iget-object v0, p0, Lo/setCheckedIcon;->getInterfaceDescriptor:Lo/setHelperTextEnabled;

    return-object v0
.end method

.method public final postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 258
    iget-object v0, p0, Lo/setCheckedIcon;->warmup:Lo/setShapeAppearanceModel;

    invoke-static {v0}, Lo/setCheckedIcon;->onMessageChannelReady(Lo/setChipIconEnabled;)V

    .line 259
    iget-object v0, p0, Lo/setCheckedIcon;->warmup:Lo/setShapeAppearanceModel;

    return-object v0
.end method

.method public final requestPostMessageChannel()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lo/setCheckedIcon;->ICustomTabsCallback$Stub:Z

    return v0
.end method

.method public final setDefaultImpl()V
    .locals 10

    .line 418
    invoke-virtual {p0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 419
    invoke-direct {p0}, Lo/setCheckedIcon;->INotificationSideChannel$Default()Lo/setTextEndPadding;

    move-result-object v0

    invoke-static {v0}, Lo/setCheckedIcon;->onMessageChannelReady(Lo/setChipIconEnabled;)V

    .line 420
    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    move-result-object v0

    invoke-virtual {v0}, Lo/setExpanded;->IPostMessageService$Stub()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/setBackgroundTintList;->onPostMessage(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 424
    iget-object v2, p0, Lo/setCheckedIcon;->onRelationshipValidationResult:Lo/setStartIconTintList;

    .line 425
    invoke-virtual {v2}, Lo/setStartIconTintList;->onTransact()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 426
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 427
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-direct {p0}, Lo/setCheckedIcon;->INotificationSideChannel$Default()Lo/setTextEndPadding;

    move-result-object v2

    invoke-virtual {v2}, Lo/setTextEndPadding;->onRelationshipValidationResult()Z

    move-result v2

    if-nez v2, :cond_1

    .line 431
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 434
    :cond_1
    invoke-virtual {p0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v2

    .line 435
    invoke-virtual {p0}, Lo/setCheckedIcon;->IPostMessageService()Lo/setExpanded;

    const-wide/16 v3, 0x7949

    .line 437
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 438
    invoke-virtual {p0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v1

    iget-object v1, v1, Lo/setBackgroundTintList;->mayLaunchUrl:Lo/setIconTint;

    invoke-virtual {v1}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v0

    .line 439
    invoke-virtual/range {v1 .. v7}, Lo/setHelperTextEnabled;->ICustomTabsCallback(JLjava/lang/String;Ljava/lang/String;J)Ljava/net/URL;

    move-result-object v4

    .line 440
    invoke-direct {p0}, Lo/setCheckedIcon;->INotificationSideChannel$Default()Lo/setTextEndPadding;

    move-result-object v2

    new-instance v7, Lo/setOnCheckedChangeListener;

    invoke-direct {v7, p0}, Lo/setOnCheckedChangeListener;-><init>(Lo/setCheckedIcon;)V

    .line 442
    invoke-virtual {v2}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 443
    invoke-virtual {v2}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 444
    invoke-static {v4}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-static {v7}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-virtual {v2}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v8

    new-instance v9, Lo/setTextEndPaddingResource;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lo/setTextEndPaddingResource;-><init>(Lo/setTextEndPadding;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lo/setCloseIconEndPaddingResource;)V

    .line 447
    invoke-virtual {v8, v9}, Lo/setShapeAppearanceModel;->extraCallback(Ljava/lang/Runnable;)V

    return-void

    .line 428
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public final updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 251
    iget-object v0, p0, Lo/setCheckedIcon;->asInterface:Lo/setStartIconContentDescription;

    return-object v0
.end method

.method public final validateRelationship()Lo/zzfw;
    .locals 1

    .line 285
    iget-object v0, p0, Lo/setCheckedIcon;->validateRelationship:Lo/zzfw;

    invoke-static {v0}, Lo/setCheckedIcon;->onMessageChannelReady(Lo/setChipIconEnabled;)V

    .line 286
    iget-object v0, p0, Lo/setCheckedIcon;->validateRelationship:Lo/zzfw;

    return-object v0
.end method

.method public final warmup()Landroid/content/Context;
    .locals 1

    .line 274
    iget-object v0, p0, Lo/setCheckedIcon;->ICustomTabsCallback:Landroid/content/Context;

    return-object v0
.end method
