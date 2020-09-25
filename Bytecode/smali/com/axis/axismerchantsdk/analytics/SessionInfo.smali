.class public Lcom/axis/axismerchantsdk/analytics/SessionInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/SessionInfo;

.field private static onNavigationEvent:Ljava/lang/String;


# instance fields
.field private onPostMessage:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onNavigationEvent:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 137
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 139
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 141
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onNavigationEvent:Ljava/lang/String;

    const-string v1, "Exception trying to getVersionName"

    invoke-static {v0, v1, p0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static extraCallback(Landroid/content/Context;)I
    .locals 2

    :try_start_0
    const-string v0, "phone"

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 128
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 130
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onNavigationEvent:Ljava/lang/String;

    const-string v1, "Exception trying to get network type"

    invoke-static {v0, v1, p0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static onMessageChannelReady(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 328
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "development_settings_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 332
    sget-object v1, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onNavigationEvent:Ljava/lang/String;

    const-string v2, "Exception while getting dev options enabled"

    invoke-static {v1, v2, p0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public static onNavigationEvent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "wifi"

    .line 99
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "connectivity"

    .line 100
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 101
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "cellular"

    return-object p0

    :catch_0
    move-exception p0

    .line 108
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onNavigationEvent:Ljava/lang/String;

    const-string v1, "Exception trying to get network info"

    invoke-static {v0, v1, p0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static onPostMessage()Lcom/axis/axismerchantsdk/analytics/SessionInfo;
    .locals 2

    .line 37
    const-class v0, Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    invoke-direct {v1}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;-><init>()V

    sput-object v1, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    .line 41
    :cond_0
    sget-object v1, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 42
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method final onPostMessage(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage:Landroid/util/DisplayMetrics;

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage:Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 153
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onNavigationEvent:Ljava/lang/String;

    const-string v1, "Exception caught trying to get display metrics"

    invoke-static {v0, v1, p1}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
