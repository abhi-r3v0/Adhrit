.class public Lcom/axis/axismerchantsdk/analytics/AxisTracker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask;
    }
.end annotation


# static fields
.field public static ICustomTabsCallback:J

.field private static ICustomTabsService:I

.field private static asBinder:Z

.field public static extraCallback:J

.field private static extraCommand:Lcom/axis/axismerchantsdk/analytics/AxisTracker;

.field private static getInterfaceDescriptor:Z

.field public static final onPostMessage:Ljava/lang/String;

.field private static onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static onTransact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ICustomTabsCallback$Stub:Ljava/lang/String;

.field private ICustomTabsCallback$Stub$Proxy:I

.field public asInterface:Landroid/content/Context;

.field private newSession:Ljava/lang/String;

.field public onMessageChannelReady:Ljava/util/Timer;

.field public onNavigationEvent:Ljava/util/TimerTask;

.field private updateVisuals:Ljava/lang/String;

.field private warmup:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-class v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage:Ljava/lang/String;

    const-wide/16 v0, 0xbb8

    .line 35
    sput-wide v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback:J

    const-wide/16 v0, 0x3a98

    .line 36
    sput-wide v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback:J

    const/4 v0, 0x1

    .line 37
    sput-boolean v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asBinder:Z

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onRelationshipValidationResult:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onTransact:Ljava/util/Map;

    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->getInterfaceDescriptor:Z

    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCommand:Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback$Stub$Proxy:I

    const-string v0, "https://upisdklogs.axisbank.co.in/logs"

    .line 48
    iput-object v0, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->newSession:Ljava/lang/String;

    .line 81
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Axis Session Id - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 84
    new-instance v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask;

    invoke-direct {v0, p0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker$DataSenderTask;-><init>(Lcom/axis/axismerchantsdk/analytics/AxisTracker;)V

    iput-object v0, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onNavigationEvent:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->getInterfaceDescriptor:Z

    return v0
.end method

.method private ICustomTabsCallback$Stub()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "brand"

    .line 181
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    .line 182
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "manufacturer"

    .line 183
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "at"

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "os"

    const-string v2, "android"

    .line 186
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "os_version"

    .line 187
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "locale"

    .line 188
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "client_id"

    const-string v2, "CREDAPP_android"

    .line 3069
    iput-object v2, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->updateVisuals:Ljava/lang/String;

    .line 190
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "godel_version"

    .line 191
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage()Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "godel_build_version"

    .line 192
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage()Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    if-eqz v1, :cond_5

    const-string v1, "app_name"

    .line 4469
    iget-object v3, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->warmup:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 4470
    iget-object v3, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->warmup:Ljava/lang/String;

    .line 4472
    :cond_0
    iget-object v3, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->warmup:Ljava/lang/String;

    .line 196
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "screen_width"

    .line 197
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage()Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    .line 5167
    invoke-virtual {v3, v4}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5169
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 197
    :goto_0
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "screen_height"

    .line 198
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage()Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    .line 6159
    invoke-virtual {v3, v4}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6161
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 198
    :goto_1
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "screen_ppi"

    .line 199
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage()Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    .line 6175
    invoke-virtual {v3, v4}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6177
    iget v2, v3, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 199
    :cond_3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "network_info"

    .line 200
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage()Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    iget-object v2, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    invoke-static {v2}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onNavigationEvent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "network_type"

    .line 201
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage()Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    iget-object v2, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    invoke-static {v2}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->extraCallback(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_version"

    .line 202
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage()Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    iget-object v2, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    invoke-static {v2}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->ICustomTabsCallback(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    const-string v2, "app_debuggable"

    .line 204
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dev_options_enabled"

    .line 205
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onPostMessage()Lcom/axis/axismerchantsdk/analytics/SessionInfo;

    iget-object v2, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    invoke-static {v2}, Lcom/axis/axismerchantsdk/analytics/SessionInfo;->onMessageChannelReady(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "upi_sdk_version"

    .line 206
    iget-object v2, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    sget v3, Lo/onSupportContentChanged$onMessageChannelReady;->axis_version:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 209
    sget-object v2, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage:Ljava/lang/String;

    const-string v3, "Exception while creatingSession Data Map"

    invoke-static {v2, v3, v1}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-object v0
.end method

.method static synthetic asBinder()I
    .locals 1

    .line 32
    sget v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsService:I

    return v0
.end method

.method static synthetic asInterface()Z
    .locals 1

    const/4 v0, 0x0

    .line 32
    sput-boolean v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asBinder:Z

    return v0
.end method

.method static synthetic extraCallback(I)I
    .locals 0

    .line 32
    sput p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsService:I

    return p0
.end method

.method public static extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;
    .locals 2

    .line 102
    const-class v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCommand:Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    invoke-direct {v1}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;-><init>()V

    sput-object v1, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCommand:Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    .line 105
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onRelationshipValidationResult()V

    .line 107
    :cond_0
    sget-object v1, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCommand:Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 108
    monitor-exit v0

    throw v1
.end method

.method static synthetic extraCallback(Lcom/axis/axismerchantsdk/analytics/AxisTracker;)Ljava/util/Timer;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onMessageChannelReady:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic extraCallback(Z)Z
    .locals 0

    .line 32
    sput-boolean p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->getInterfaceDescriptor:Z

    return p0
.end method

.method public static onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 313
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCommand:Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    if-nez v0, :cond_0

    .line 314
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onTransact:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 317
    :cond_0
    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event;

    invoke-direct {v0}, Lcom/axis/axismerchantsdk/analytics/Event;-><init>()V

    sget-object v1, Lcom/axis/axismerchantsdk/analytics/Event$Category;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Category;

    .line 7048
    invoke-static {v1}, Lcom/axis/axismerchantsdk/analytics/Event$Category;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event$Category;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/axis/axismerchantsdk/analytics/Event;->extraCallback:Ljava/lang/String;

    .line 317
    sget-object v1, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    .line 8017
    iget-object v1, v1, Lcom/axis/axismerchantsdk/analytics/Event$Action;->extraCallback:Ljava/lang/String;

    .line 8057
    iput-object v1, v0, Lcom/axis/axismerchantsdk/analytics/Event;->ICustomTabsCallback:Ljava/lang/String;

    .line 8066
    iput-object p0, v0, Lcom/axis/axismerchantsdk/analytics/Event;->onNavigationEvent:Ljava/lang/String;

    .line 8075
    iput-object p1, v0, Lcom/axis/axismerchantsdk/analytics/Event;->onMessageChannelReady:Ljava/lang/String;

    .line 321
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event;)V

    return-void
.end method

.method public static onNavigationEvent()V
    .locals 2

    .line 95
    const-class v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    monitor-enter v0

    .line 96
    :try_start_0
    new-instance v1, Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    invoke-direct {v1}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;-><init>()V

    sput-object v1, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCommand:Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    .line 97
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onRelationshipValidationResult()V

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic onPostMessage(Lcom/axis/axismerchantsdk/analytics/AxisTracker;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->newSession:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic onPostMessage()Ljava/util/List;
    .locals 1

    .line 32
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onRelationshipValidationResult:Ljava/util/List;

    return-object v0
.end method

.method private static onRelationshipValidationResult()V
    .locals 4

    .line 116
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCommand:Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onTransact:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    new-instance v2, Lcom/axis/axismerchantsdk/analytics/Event;

    invoke-direct {v2}, Lcom/axis/axismerchantsdk/analytics/Event;-><init>()V

    sget-object v3, Lcom/axis/axismerchantsdk/analytics/Event$Category;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Category;

    .line 1048
    invoke-static {v3}, Lcom/axis/axismerchantsdk/analytics/Event$Category;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event$Category;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/axis/axismerchantsdk/analytics/Event;->extraCallback:Ljava/lang/String;

    .line 118
    sget-object v3, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    .line 2017
    iget-object v3, v3, Lcom/axis/axismerchantsdk/analytics/Event$Action;->extraCallback:Ljava/lang/String;

    .line 2057
    iput-object v3, v2, Lcom/axis/axismerchantsdk/analytics/Event;->ICustomTabsCallback:Ljava/lang/String;

    .line 120
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2066
    iput-object v3, v2, Lcom/axis/axismerchantsdk/analytics/Event;->onNavigationEvent:Ljava/lang/String;

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2075
    iput-object v1, v2, Lcom/axis/axismerchantsdk/analytics/Event;->onMessageChannelReady:Ljava/lang/String;

    .line 122
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event;)V

    goto :goto_0

    .line 124
    :cond_0
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onTransact:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method static synthetic onTransact()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event;)V
    .locals 3

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "type"

    const-string v2, "event"

    .line 302
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v1, p1, Lcom/axis/axismerchantsdk/analytics/Event;->onPostMessage:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "at"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v1, p1, Lcom/axis/axismerchantsdk/analytics/Event;->extraCallback:Ljava/lang/String;

    const-string v2, "category"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, p1, Lcom/axis/axismerchantsdk/analytics/Event;->ICustomTabsCallback:Ljava/lang/String;

    const-string v2, "action"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v1, p1, Lcom/axis/axismerchantsdk/analytics/Event;->onNavigationEvent:Ljava/lang/String;

    const-string v2, "label"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object p1, p1, Lcom/axis/axismerchantsdk/analytics/Event;->onMessageChannelReady:Ljava/lang/String;

    const-string/jumbo v1, "value"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->extraCallback()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "apiId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {p0, v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onNavigationEvent(Ljava/util/Map;)V

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "type"

    const-string v2, "Exception"

    .line 338
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "at"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    .line 340
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "stackTrace"

    .line 341
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "description"

    .line 342
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->extraCallback()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "apiId"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {p0, v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onNavigationEvent(Ljava/util/Map;)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 5

    .line 159
    :try_start_0
    invoke-direct {p0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback$Stub()Ljava/util/Map;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 162
    iget-object v2, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v3, "dir_name"

    .line 163
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_name"

    .line 164
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "axisupisdk"

    .line 165
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    invoke-static {v1}, Lcom/axis/axismerchantsdk/util/Util;->extraCallback(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sim_operators"

    .line 167
    iget-object v2, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asInterface:Landroid/content/Context;

    invoke-static {v2}, Lcom/axis/axismerchantsdk/util/Util;->extraCallback(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    invoke-virtual {p0, v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onNavigationEvent(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 172
    sget-object v1, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage:Ljava/lang/String;

    const-string v2, "Exception while trying to trackSession"

    invoke-static {v1, v2, v0}, Lcom/axis/axismerchantsdk/analytics/AxisLogger;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 348
    sget-boolean v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->asBinder:Z

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const-string/jumbo v1, "session_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "bank"

    .line 350
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget v0, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback$Stub$Proxy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback$Stub$Proxy:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sn"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;)V
    .locals 3

    .line 326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "type"

    const-string v2, "Exception"

    .line 327
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9035
    iget-object v1, p1, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;->onNavigationEvent:Ljava/util/Date;

    .line 328
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "at"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10026
    iget-object v1, p1, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;->extraCallback:Ljava/lang/Throwable;

    .line 329
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11026
    iget-object v1, p1, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;->extraCallback:Ljava/lang/Throwable;

    .line 330
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stackTrace"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12017
    iget-object p1, p1, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;->onPostMessage:Ljava/lang/String;

    const-string v1, "description"

    .line 331
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/ApiTracker;->extraCallback()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "apiId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual {p0, v0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onNavigationEvent(Ljava/util/Map;)V

    return-void
.end method
