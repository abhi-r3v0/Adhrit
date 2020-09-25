.class public final Lo/AutoDebitRegisterResponseJsonAdapter;
.super Ljava/lang/Object;


# instance fields
.field private ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:I

.field private ICustomTabsService$Stub:F

.field private ICustomTabsService$Stub$Proxy:Ljava/lang/String;

.field private IPostMessageService:Ljava/lang/String;

.field private IPostMessageService$Stub:I

.field private IPostMessageService$Stub$Proxy:I

.field private asBinder:Ljava/lang/String;

.field private asInterface:I

.field private cancelAll:Ljava/lang/String;

.field private extraCallback:I

.field private extraCommand:Ljava/lang/String;

.field private getInterfaceDescriptor:Ljava/lang/String;

.field private mayLaunchUrl:Z

.field private newSession:D

.field private notify:Z

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private onPostMessage:Z

.field private onRelationshipValidationResult:I

.field private onTransact:I

.field private postMessage:Ljava/lang/String;

.field private requestPostMessageChannel:Z

.field private updateVisuals:Z

.field private validateRelationship:Z

.field private warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lo/AutoDebitRegisterResponseJsonAdapter;->onPostMessage(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lo/AutoDebitRegisterResponseJsonAdapter;->onMessageChannelReady(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsCallback(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "geo:0,0?q=donuts"

    invoke-static {v0, v2}, Lo/AutoDebitRegisterResponseJsonAdapter;->extraCallback(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->requestPostMessageChannel:Z

    const-string v2, "http://www.google.com"

    invoke-static {v0, v2}, Lo/AutoDebitRegisterResponseJsonAdapter;->extraCallback(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->updateVisuals:Z

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->extraCommand:Ljava/lang/String;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {}, Lo/ControlStatementRepo$TransactionItem;->onPostMessage()Z

    move-result v2

    iput-boolean v2, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->mayLaunchUrl:Z

    invoke-static {p1}, Lo/component17;->ICustomTabsCallback(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->validateRelationship:Z

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/AutoDebitRegisterResponseJsonAdapter;->onNavigationEvent(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->IPostMessageService:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsCallback(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->cancelAll:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsService$Stub:F

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->IPostMessageService$Stub:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->IPostMessageService$Stub$Proxy:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/AutoDebitRegistrationStatusResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-direct {p0, p1}, Lo/AutoDebitRegisterResponseJsonAdapter;->onPostMessage(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lo/AutoDebitRegisterResponseJsonAdapter;->onMessageChannelReady(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsCallback(Landroid/content/Context;)V

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->getInterfaceDescriptor:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->postMessage:Ljava/lang/String;

    invoke-static {}, Lo/component20;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lo/setAnimationEnabled;->onPostMessage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->notify:Z

    iget-boolean p1, p2, Lo/AutoDebitRegistrationStatusResponse;->extraCallback:Z

    iput-boolean p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->requestPostMessageChannel:Z

    iget-boolean p1, p2, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsCallback:Z

    iput-boolean p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->updateVisuals:Z

    iget-object p1, p2, Lo/AutoDebitRegistrationStatusResponse;->onPostMessage:Ljava/lang/String;

    iput-object p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->extraCommand:Ljava/lang/String;

    iget-boolean p1, p2, Lo/AutoDebitRegistrationStatusResponse;->asInterface:Z

    iput-boolean p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->mayLaunchUrl:Z

    iget-boolean p1, p2, Lo/AutoDebitRegistrationStatusResponse;->onTransact:Z

    iput-boolean p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->validateRelationship:Z

    iget-object p1, p2, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-object p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    iget-object p1, p2, Lo/AutoDebitRegistrationStatusResponse;->ICustomTabsService:Ljava/lang/String;

    iput-object p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->IPostMessageService:Ljava/lang/String;

    iget-object p1, p2, Lo/AutoDebitRegistrationStatusResponse;->warmup:Ljava/lang/String;

    iput-object p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->cancelAll:Ljava/lang/String;

    iget p1, p2, Lo/AutoDebitRegistrationStatusResponse;->postMessage:F

    iput p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsService$Stub:F

    iget p1, p2, Lo/AutoDebitRegistrationStatusResponse;->mayLaunchUrl:I

    iput p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->IPostMessageService$Stub:I

    iget p1, p2, Lo/AutoDebitRegistrationStatusResponse;->validateRelationship:I

    iput p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->IPostMessageService$Stub$Proxy:I

    return-void
.end method

.method private static ICustomTabsCallback(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p0}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object p0

    const-string v0, "com.android.vending"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Lo/component28;->ICustomTabsCallback(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object p1
.end method

.method private final ICustomTabsCallback(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    const-string v2, "status"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "level"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "scale"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float v1, v3

    int-to-float p1, p1

    div-float/2addr v1, p1

    float-to-double v3, v1

    iput-wide v3, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->newSession:D

    const/4 p1, 0x2

    if-eq v2, p1, :cond_0

    const/4 p1, 0x5

    if-ne v2, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    return-void

    :cond_2
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->newSession:D

    iput-boolean v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method

.method private static extraCallback(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    const-string v0, "DeviceInfo.getResolveInfo"

    invoke-virtual {p1, p0, v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final onMessageChannelReady(Landroid/content/Context;)V
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->asBinder:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    iput v2, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsCallback$Stub:I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iput v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->onTransact:I

    const/4 v0, -0x2

    iput v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->onRelationshipValidationResult:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->warmup:Z

    const/4 v0, -0x1

    iput v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsService:I

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v2}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->onRelationshipValidationResult:I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p1

    iput p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsService:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->onRelationshipValidationResult:I

    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p1

    iput-boolean p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->warmup:Z

    :cond_1
    return-void
.end method

.method private static onNavigationEvent(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3

    const-string v0, "market://details?id=com.google.android.gms.ads"

    invoke-static {p1, v0}, Lo/AutoDebitRegisterResponseJsonAdapter;->extraCallback(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object p0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lo/component28;->ICustomTabsCallback(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v0
.end method

.method private final onPostMessage(Landroid/content/Context;)V
    .locals 2

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iput v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->onMessageChannelReady:I

    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iput-boolean v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->onPostMessage:Z

    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsCallback:Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->extraCallback:I

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->onNavigationEvent:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->asInterface:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    const-string v1, "DeviceInfo.gatherAudioInfo"

    invoke-virtual {v0, p1, v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 p1, -0x2

    iput p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->onMessageChannelReady:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->onPostMessage:Z

    iput-boolean p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsCallback:Z

    iput p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->extraCallback:I

    iput p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->onNavigationEvent:I

    iput p1, p0, Lo/AutoDebitRegisterResponseJsonAdapter;->asInterface:I

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/AutoDebitRegistrationStatusResponse;
    .locals 34

    move-object/from16 v0, p0

    new-instance v31, Lo/AutoDebitRegistrationStatusResponse;

    move-object/from16 v1, v31

    iget v2, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->onMessageChannelReady:I

    iget-boolean v3, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->requestPostMessageChannel:Z

    iget-boolean v4, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->updateVisuals:Z

    iget-object v5, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->asBinder:Ljava/lang/String;

    iget-object v6, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->extraCommand:Ljava/lang/String;

    iget-boolean v7, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->mayLaunchUrl:Z

    iget-boolean v8, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->validateRelationship:Z

    iget-boolean v9, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->onPostMessage:Z

    iget-boolean v10, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsCallback:Z

    iget-object v11, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    iget-object v12, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->IPostMessageService:Ljava/lang/String;

    iget-object v13, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->cancelAll:Ljava/lang/String;

    iget v14, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->extraCallback:I

    iget v15, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->onRelationshipValidationResult:I

    move-object/from16 v32, v1

    iget v1, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsCallback$Stub:I

    move/from16 v16, v1

    iget v1, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->onTransact:I

    move/from16 v17, v1

    iget v1, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->onNavigationEvent:I

    move/from16 v18, v1

    iget v1, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->asInterface:I

    move/from16 v19, v1

    iget v1, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsService$Stub:F

    move/from16 v20, v1

    iget v1, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->IPostMessageService$Stub:I

    move/from16 v21, v1

    iget v1, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->IPostMessageService$Stub$Proxy:I

    move/from16 v22, v1

    move/from16 v33, v2

    iget-wide v1, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->newSession:D

    move-wide/from16 v23, v1

    iget-boolean v1, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    move/from16 v25, v1

    iget-boolean v1, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->warmup:Z

    move/from16 v26, v1

    iget v1, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->ICustomTabsService:I

    move/from16 v27, v1

    iget-object v1, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->getInterfaceDescriptor:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-boolean v1, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->notify:Z

    move/from16 v29, v1

    iget-object v1, v0, Lo/AutoDebitRegisterResponseJsonAdapter;->postMessage:Ljava/lang/String;

    move-object/from16 v30, v1

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct/range {v1 .. v30}, Lo/AutoDebitRegistrationStatusResponse;-><init>(IZZLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIFIIDZZILjava/lang/String;ZLjava/lang/String;)V

    return-object v31
.end method
