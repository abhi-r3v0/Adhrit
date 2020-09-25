.class final Lo/getQueryParamsFor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback$Stub:Lo/getQueryParamsFor;

.field private static final onTransact:Ljava/lang/Object;


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final asBinder:Ljava/lang/String;

.field final extraCallback:Landroid/util/DisplayMetrics;

.field final onMessageChannelReady:Ljava/lang/Boolean;

.field final onNavigationEvent:Ljava/lang/Boolean;

.field final onPostMessage:Landroid/content/Context;

.field final onRelationshipValidationResult:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/getQueryParamsFor;->onTransact:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    const-string v0, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it."

    const-string v1, "MixpanelAPI.SysInfo"

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lo/getQueryParamsFor;->onPostMessage:Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 49
    :try_start_0
    iget-object v5, p0, Lo/getQueryParamsFor;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 50
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v6, v4

    :catch_1
    const-string v5, "System information constructed with a context that apparently doesn\'t exist."

    .line 53
    invoke-static {v1, v5}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    .line 56
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 57
    iget v8, v7, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 59
    iput-object v6, p0, Lo/getQueryParamsFor;->ICustomTabsCallback:Ljava/lang/String;

    .line 60
    iput-object v5, p0, Lo/getQueryParamsFor;->onRelationshipValidationResult:Ljava/lang/Integer;

    if-nez v8, :cond_1

    .line 61
    iget-object p1, v7, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    const-string p1, "Misc"

    goto :goto_1

    :cond_0
    iget-object p1, v7, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lo/getQueryParamsFor;->asBinder:Ljava/lang/String;

    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v5, 0x1

    :try_start_2
    const-string v6, "hasSystemFeature"

    new-array v7, v5, [Ljava/lang/Class;

    .line 69
    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-object p1, v4

    :goto_2
    if-eqz p1, :cond_2

    :try_start_3
    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "android.hardware.nfc"

    aput-object v7, v6, v3

    .line 78
    invoke-virtual {p1, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "android.hardware.telephony"

    aput-object v7, v5, v3

    .line 79
    invoke-virtual {p1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_3
    move-object v6, v4

    .line 83
    :catch_4
    invoke-static {v1, v0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_5
    move-object v6, v4

    .line 81
    :catch_6
    invoke-static {v1, v0}, Lo/TrimmedThrowableData;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object p1, v4

    :goto_4
    move-object v4, v6

    goto :goto_5

    :cond_2
    move-object p1, v4

    .line 87
    :goto_5
    iput-object v4, p0, Lo/getQueryParamsFor;->onMessageChannelReady:Ljava/lang/Boolean;

    .line 88
    iput-object p1, p0, Lo/getQueryParamsFor;->onNavigationEvent:Ljava/lang/Boolean;

    .line 89
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lo/getQueryParamsFor;->extraCallback:Landroid/util/DisplayMetrics;

    .line 91
    iget-object p1, p0, Lo/getQueryParamsFor;->onPostMessage:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lo/getQueryParamsFor;->extraCallback:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method static onMessageChannelReady(Landroid/content/Context;)Lo/getQueryParamsFor;
    .locals 2

    .line 31
    sget-object v0, Lo/getQueryParamsFor;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lo/getQueryParamsFor;->ICustomTabsCallback$Stub:Lo/getQueryParamsFor;

    if-nez v1, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 34
    new-instance v1, Lo/getQueryParamsFor;

    invoke-direct {v1, p0}, Lo/getQueryParamsFor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lo/getQueryParamsFor;->ICustomTabsCallback$Stub:Lo/getQueryParamsFor;

    .line 36
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    sget-object p0, Lo/getQueryParamsFor;->ICustomTabsCallback$Stub:Lo/getQueryParamsFor;

    return-object p0

    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final onPostMessage()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    .line 186
    :try_start_0
    iget-object v1, p0, Lo/getQueryParamsFor;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    .line 187
    iget-object v3, p0, Lo/getQueryParamsFor;->onPostMessage:Landroid/content/Context;

    .line 189
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 191
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method
