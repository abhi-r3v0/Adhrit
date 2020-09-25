.class public Lo/setMinAmount;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:Lo/setMinAmount;


# instance fields
.field public final onPostMessage:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/setMinAmount;->onPostMessage:Landroid/content/Context;

    return-void
.end method

.method public static extraCallback(Landroid/content/pm/PackageInfo;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 33
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 35
    sget-object p1, Lo/EventTriggeredRatingResponseJsonAdapter;->onPostMessage:[Lo/setDragState;

    invoke-static {p0, p1}, Lo/setMinAmount;->onNavigationEvent(Landroid/content/pm/PackageInfo;[Lo/setDragState;)Lo/setDragState;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p1, v1, [Lo/setDragState;

    .line 36
    sget-object v2, Lo/EventTriggeredRatingResponseJsonAdapter;->onPostMessage:[Lo/setDragState;

    aget-object v2, v2, v0

    aput-object v2, p1, v0

    invoke-static {p0, p1}, Lo/setMinAmount;->onNavigationEvent(Landroid/content/pm/PackageInfo;[Lo/setDragState;)Lo/setDragState;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static onMessageChannelReady(Landroid/content/Context;)Lo/setMinAmount;
    .locals 2

    if-eqz p0, :cond_1

    .line 5
    const-class v0, Lo/setMinAmount;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lo/setMinAmount;->ICustomTabsCallback:Lo/setMinAmount;

    if-nez v1, :cond_0

    .line 7
    invoke-static {p0}, Lo/RewardDetails$$Parcelable;->ICustomTabsCallback(Landroid/content/Context;)V

    .line 8
    new-instance v1, Lo/setMinAmount;

    invoke-direct {v1, p0}, Lo/setMinAmount;-><init>(Landroid/content/Context;)V

    sput-object v1, Lo/setMinAmount;->ICustomTabsCallback:Lo/setMinAmount;

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object p0, Lo/setMinAmount;->ICustomTabsCallback:Lo/setMinAmount;

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0

    throw p0

    .line 1002
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static varargs onNavigationEvent(Landroid/content/pm/PackageInfo;[Lo/setDragState;)Lo/setDragState;
    .locals 3

    .line 109
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 111
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    .line 112
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 114
    :cond_1
    new-instance v0, Lo/setOnDragStateChangeListener;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lo/setOnDragStateChangeListener;-><init>([B)V

    .line 115
    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    .line 116
    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 117
    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private final onPostMessage(Ljava/lang/String;)Lo/BackgroundJsonAdapter;
    .locals 7

    .line 47
    :try_start_0
    iget-object v0, p0, Lo/setMinAmount;->onPostMessage:Landroid/content/Context;

    .line 3007
    sget-object v1, Lo/preferLastSpan$onMessageChannelReady;->extraCallback:Lo/preferLastSpan$onMessageChannelReady;

    invoke-virtual {v1, v0}, Lo/preferLastSpan$onMessageChannelReady;->onNavigationEvent(Landroid/content/Context;)Lo/component28;

    move-result-object v0

    .line 4006
    iget-object v0, v0, Lo/component28;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lo/setMinAmount;->onPostMessage:Landroid/content/Context;

    invoke-static {v1}, Lo/getTotalAmount;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v1

    if-nez v0, :cond_0

    const-string v0, "null pkg"

    .line 55
    invoke-static {v0}, Lo/BackgroundJsonAdapter;->onPostMessage(Ljava/lang/String;)Lo/BackgroundJsonAdapter;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    new-instance v2, Lo/setOnDragStateChangeListener;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v4}, Lo/setOnDragStateChangeListener;-><init>([B)V

    .line 59
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 61
    invoke-static {v4, v2, v1, v5}, Lo/RewardDetails$$Parcelable;->onNavigationEvent(Ljava/lang/String;Lo/setDragState;ZZ)Lo/BackgroundJsonAdapter;

    move-result-object v1

    .line 63
    iget-boolean v6, v1, Lo/BackgroundJsonAdapter;->onPostMessage:Z

    if-eqz v6, :cond_2

    .line 64
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 65
    invoke-static {v4, v2, v5, v3}, Lo/RewardDetails$$Parcelable;->onNavigationEvent(Ljava/lang/String;Lo/setDragState;ZZ)Lo/BackgroundJsonAdapter;

    move-result-object v0

    .line 66
    iget-boolean v0, v0, Lo/BackgroundJsonAdapter;->onPostMessage:Z

    if-eqz v0, :cond_2

    const-string v0, "debuggable release cert app rejected"

    .line 68
    invoke-static {v0}, Lo/BackgroundJsonAdapter;->onPostMessage(Ljava/lang/String;)Lo/BackgroundJsonAdapter;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    const-string/jumbo v0, "single cert required"

    .line 57
    invoke-static {v0}, Lo/BackgroundJsonAdapter;->onPostMessage(Ljava/lang/String;)Lo/BackgroundJsonAdapter;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    const-string v0, "no pkg "

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lo/BackgroundJsonAdapter;->onPostMessage(Ljava/lang/String;)Lo/BackgroundJsonAdapter;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final onNavigationEvent(I)Z
    .locals 4

    .line 12
    iget-object v0, p0, Lo/setMinAmount;->onPostMessage:Landroid/content/Context;

    .line 1007
    sget-object v1, Lo/preferLastSpan$onMessageChannelReady;->extraCallback:Lo/preferLastSpan$onMessageChannelReady;

    invoke-virtual {v1, v0}, Lo/preferLastSpan$onMessageChannelReady;->onNavigationEvent(Landroid/content/Context;)Lo/component28;

    move-result-object v0

    .line 2007
    iget-object v0, v0, Lo/component28;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 16
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v0, p1, v2

    .line 17
    invoke-direct {p0, v0}, Lo/setMinAmount;->onPostMessage(Ljava/lang/String;)Lo/BackgroundJsonAdapter;

    move-result-object v0

    .line 19
    iget-boolean v3, v0, Lo/BackgroundJsonAdapter;->onPostMessage:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, "no pkgs"

    .line 14
    invoke-static {p1}, Lo/BackgroundJsonAdapter;->onPostMessage(Ljava/lang/String;)Lo/BackgroundJsonAdapter;

    move-result-object v0

    .line 24
    :cond_2
    invoke-virtual {v0}, Lo/BackgroundJsonAdapter;->onNavigationEvent()V

    .line 26
    iget-boolean p1, v0, Lo/BackgroundJsonAdapter;->onPostMessage:Z

    return p1
.end method
