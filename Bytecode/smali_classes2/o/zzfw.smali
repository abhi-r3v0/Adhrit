.class public final Lo/zzfw;
.super Lo/setChipIconEnabled;
.source ""


# instance fields
.field private ICustomTabsCallback:Landroid/accounts/AccountManager;

.field private extraCallback:J

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Ljava/lang/Boolean;

.field private onPostMessage:Ljava/lang/Boolean;

.field private onRelationshipValidationResult:J


# direct methods
.method constructor <init>(Lo/setCheckedIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/setChipIconEnabled;-><init>(Lo/setCheckedIcon;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 66
    invoke-super {p0}, Lo/setChipIconEnabled;->ICustomTabsCallback()V

    return-void
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 68
    invoke-super {p0}, Lo/setChipIconEnabled;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 70
    invoke-super {p0}, Lo/setChipIconEnabled;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method final asBinder()Z
    .locals 9

    const-string v0, "com.google"

    .line 31
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 32
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v1

    .line 33
    iget-wide v3, p0, Lo/zzfw;->onRelationshipValidationResult:J

    sub-long v3, v1, v3

    const/4 v5, 0x0

    const-wide/32 v6, 0x5265c00

    cmp-long v8, v3, v6

    if-lez v8, :cond_0

    .line 34
    iput-object v5, p0, Lo/zzfw;->onNavigationEvent:Ljava/lang/Boolean;

    .line 35
    :cond_0
    iget-object v3, p0, Lo/zzfw;->onNavigationEvent:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 36
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.GET_ACCOUNTS"

    invoke-static {v3, v4}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 38
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onTransact()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v3, "Permission error checking for dasher/unicorn accounts"

    invoke-virtual {v0, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 39
    iput-wide v1, p0, Lo/zzfw;->onRelationshipValidationResult:J

    .line 40
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/zzfw;->onNavigationEvent:Ljava/lang/Boolean;

    return v4

    .line 42
    :cond_2
    iget-object v3, p0, Lo/zzfw;->ICustomTabsCallback:Landroid/accounts/AccountManager;

    if-nez v3, :cond_3

    .line 43
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iput-object v3, p0, Lo/zzfw;->ICustomTabsCallback:Landroid/accounts/AccountManager;

    .line 44
    :cond_3
    :try_start_0
    iget-object v3, p0, Lo/zzfw;->ICustomTabsCallback:Landroid/accounts/AccountManager;

    const-string v6, "service_HOSTED"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-virtual {v3, v0, v6, v5, v5}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v3

    .line 46
    invoke-interface {v3}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/accounts/Account;

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    .line 47
    array-length v3, v3

    if-lez v3, :cond_4

    .line 48
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/zzfw;->onNavigationEvent:Ljava/lang/Boolean;

    .line 49
    iput-wide v1, p0, Lo/zzfw;->onRelationshipValidationResult:J

    return v6

    .line 51
    :cond_4
    iget-object v3, p0, Lo/zzfw;->ICustomTabsCallback:Landroid/accounts/AccountManager;

    const-string v7, "service_uca"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    .line 52
    invoke-virtual {v3, v0, v7, v5, v5}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    if-eqz v0, :cond_5

    .line 54
    array-length v0, v0

    if-lez v0, :cond_5

    .line 55
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/zzfw;->onNavigationEvent:Ljava/lang/Boolean;

    .line 56
    iput-wide v1, p0, Lo/zzfw;->onRelationshipValidationResult:J
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 60
    :goto_0
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v5, "Exception checking account types"

    invoke-virtual {v3, v5, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    :cond_5
    iput-wide v1, p0, Lo/zzfw;->onRelationshipValidationResult:J

    .line 62
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/zzfw;->onNavigationEvent:Ljava/lang/Boolean;

    return v4
.end method

.method public final asInterface()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 15
    iget-object v0, p0, Lo/zzfw;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 65
    invoke-super {p0}, Lo/setChipIconEnabled;->extraCallback()V

    return-void
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 74
    invoke-super {p0}, Lo/setChipIconEnabled;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 67
    invoke-super {p0}, Lo/setChipIconEnabled;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 73
    invoke-super {p0}, Lo/setChipIconEnabled;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 71
    invoke-super {p0}, Lo/setChipIconEnabled;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 64
    invoke-super {p0}, Lo/setChipIconEnabled;->onMessageChannelReady()V

    return-void
.end method

.method public final onNavigationEvent()J
    .locals 2

    .line 12
    invoke-virtual {p0}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 13
    iget-wide v0, p0, Lo/zzfw;->extraCallback:J

    return-wide v0
.end method

.method protected final onPostMessage()Z
    .locals 4

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0xf

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v2, v0

    int-to-long v2, v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/zzfw;->extraCallback:J

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/zzfw;->onMessageChannelReady:Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage(Landroid/content/Context;)Z
    .locals 2

    .line 16
    iget-object v0, p0, Lo/zzfw;->onPostMessage:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/zzfw;->onPostMessage:Ljava/lang/Boolean;

    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.google.android.gms"

    const/16 v1, 0x80

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 p1, 0x1

    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/zzfw;->onPostMessage:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    :cond_0
    iget-object p1, p0, Lo/zzfw;->onPostMessage:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method final onRelationshipValidationResult()V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lo/zzfw;->onNavigationEvent:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lo/zzfw;->onRelationshipValidationResult:J

    return-void
.end method

.method final onTransact()J
    .locals 2

    .line 25
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 26
    iget-wide v0, p0, Lo/zzfw;->onRelationshipValidationResult:J

    return-wide v0
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 72
    invoke-super {p0}, Lo/setChipIconEnabled;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 75
    invoke-super {p0}, Lo/setChipIconEnabled;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 76
    invoke-super {p0}, Lo/setChipIconEnabled;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 69
    invoke-super {p0}, Lo/setChipIconEnabled;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
