.class public final Lo/setIconTintResource;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final extraCallback:Lo/setCheckedIcon;


# direct methods
.method constructor <init>(Lo/setCheckedIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    return-void
.end method

.method private final onMessageChannelReady()Z
    .locals 4

    const/4 v0, 0x0

    .line 62
    :try_start_0
    iget-object v1, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->warmup()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 65
    invoke-virtual {v1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Failed to get PackageManager for Install Referrer Play Store compatibility check"

    .line 67
    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v2, "com.android.vending"

    const/16 v3, 0x80

    .line 70
    invoke-virtual {v1, v2, v3}, Lo/component28;->ICustomTabsCallback(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 71
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x4d17ab4

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 74
    iget-object v2, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 75
    invoke-virtual {v2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Failed to retrieve Play Store version for Install Referrer"

    .line 77
    invoke-virtual {v2, v3, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method protected final onMessageChannelReady(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 11
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 12
    invoke-direct {p0}, Lo/setIconTintResource;->onMessageChannelReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object p1, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Install Referrer Reporter is not available"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_1
    new-instance v0, Lo/setRippleColor;

    invoke-direct {v0, p0, p1}, Lo/setRippleColor;-><init>(Lo/setIconTintResource;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 17
    invoke-virtual {p1}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p1}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 18
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.vending"

    const-string v3, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 20
    iget-object v1, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->warmup()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 22
    iget-object p1, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 23
    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onTransact()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 25
    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 28
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 29
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 30
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_5

    .line 31
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 32
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    invoke-direct {p0}, Lo/setIconTintResource;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 37
    :try_start_0
    invoke-static {}, Lo/findSameItem$extraCallback;->onPostMessage()Lo/findSameItem$extraCallback;

    move-result-object p1

    iget-object v2, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 38
    invoke-virtual {v2}, Lo/setCheckedIcon;->warmup()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    .line 39
    invoke-virtual {p1, v2, v1, v0, v3}, Lo/findSameItem$extraCallback;->onMessageChannelReady(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    .line 40
    iget-object v0, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 41
    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Install Referrer Service is"

    if-eqz p1, :cond_3

    const-string p1, "available"

    goto :goto_0

    :cond_3
    const-string p1, "not available"

    .line 43
    :goto_0
    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 46
    iget-object v0, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 47
    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Exception occurred while binding to Install Referrer Service"

    .line 50
    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 52
    :cond_4
    iget-object p1, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 53
    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 55
    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_5
    return-void

    .line 57
    :cond_6
    iget-object p1, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 58
    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Play Service for fetching Install Referrer is unavailable on device"

    .line 60
    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_7
    :goto_1
    iget-object p1, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 6
    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onTransact()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Install Referrer Reporter was called with invalid app package name"

    .line 8
    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method final onPostMessage(Ljava/lang/String;Lo/createSocket;)Landroid/os/Bundle;
    .locals 3

    .line 79
    iget-object v0, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 80
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 82
    iget-object p1, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 83
    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Attempting to use Install Referrer Service while it is not initialized"

    .line 85
    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-object v0

    .line 87
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name"

    .line 88
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :try_start_0
    invoke-interface {p2, v1}, Lo/createSocket;->onMessageChannelReady(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 91
    iget-object p1, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {p1}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Install Referrer Service returned a null response"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    return-object p1

    :catch_0
    move-exception p1

    .line 95
    iget-object p2, p0, Lo/setIconTintResource;->extraCallback:Lo/setCheckedIcon;

    .line 96
    invoke-virtual {p2}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 97
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    .line 98
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Exception occurred while retrieving the Install Referrer"

    invoke-virtual {p2, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
