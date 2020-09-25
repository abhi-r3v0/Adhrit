.class public Lo/getCsatResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCsatResponse$onPostMessage;,
        Lo/getCsatResponse$onNavigationEvent;,
        Lo/getCsatResponse$extraCallback;,
        Lo/getCsatResponse$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static ICustomTabsCallback$Stub:Ljava/lang/Boolean; = null

.field private static asBinder:Z = false

.field private static volatile onNavigationEvent:Lo/getCsatResponse; = null

.field private static onRelationshipValidationResult:Ljava/lang/String; = "allow_remote_dynamite"


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

.field private ICustomTabsService:Z

.field private asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lo/setChipIconTint;",
            "Lo/getCsatResponse$extraCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final extraCallback:Lo/component15;

.field private final onMessageChannelReady:Lo/zzcw;

.field private final onPostMessage:Ljava/lang/String;

.field private onTransact:I

.field private warmup:Lo/setControllerHideOnTouch;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 11
    invoke-static {p3, p4}, Lo/getCsatResponse;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iput-object p2, p0, Lo/getCsatResponse;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "FA"

    .line 12
    iput-object p2, p0, Lo/getCsatResponse;->onPostMessage:Ljava/lang/String;

    .line 15
    :goto_1
    invoke-static {}, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->extraCallback()Lo/component15;

    move-result-object p2

    .line 16
    iput-object p2, p0, Lo/getCsatResponse;->extraCallback:Lo/component15;

    .line 18
    invoke-static {}, Lo/fH;->onNavigationEvent()Lo/gy;

    move-result-object p2

    new-instance v0, Lo/setImage;

    invoke-direct {v0, p0}, Lo/setImage;-><init>(Lo/getCsatResponse;)V

    sget v1, Lo/setShutterBackgroundColor;->onMessageChannelReady:I

    .line 19
    invoke-interface {p2, v0, v1}, Lo/gy;->onNavigationEvent(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    .line 20
    iput-object p2, p0, Lo/getCsatResponse;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    .line 21
    new-instance p2, Lo/zzcw;

    invoke-direct {p2, p0}, Lo/zzcw;-><init>(Lo/getCsatResponse;)V

    iput-object p2, p0, Lo/getCsatResponse;->onMessageChannelReady:Lo/zzcw;

    .line 23
    invoke-static {p1}, Lo/getCsatResponse;->onPostMessage(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-static {}, Lo/getCsatResponse;->ICustomTabsCallback$Stub()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p2, 0x1

    :goto_3
    if-nez p2, :cond_4

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lo/getCsatResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lo/getCsatResponse;->ICustomTabsService:Z

    .line 27
    iget-object p1, p0, Lo/getCsatResponse;->onPostMessage:Ljava/lang/String;

    const-string p2, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 29
    :cond_4
    invoke-static {p3, p4}, Lo/getCsatResponse;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "fa"

    .line 30
    iput-object p2, p0, Lo/getCsatResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 32
    iget-object p2, p0, Lo/getCsatResponse;->onPostMessage:Ljava/lang/String;

    const-string v0, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    if-nez p3, :cond_6

    const/4 p2, 0x1

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    :goto_4
    if-nez p4, :cond_7

    const/4 v0, 0x1

    :cond_7
    xor-int/2addr p2, v0

    if-eqz p2, :cond_9

    .line 34
    iget-object p2, p0, Lo/getCsatResponse;->onPostMessage:Ljava/lang/String;

    const-string v0, "Specified origin or custom app id is null. Both parameters will be ignored."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 35
    :cond_8
    iput-object p3, p0, Lo/getCsatResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 36
    :cond_9
    :goto_5
    new-instance p2, Lo/UploadImageResponse;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lo/UploadImageResponse;-><init>(Lo/getCsatResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-nez p1, :cond_a

    .line 39
    iget-object p1, p0, Lo/getCsatResponse;->onPostMessage:Ljava/lang/String;

    const-string p2, "Unable to register lifecycle notifications. Application null."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 41
    :cond_a
    new-instance p2, Lo/getCsatResponse$onPostMessage;

    invoke-direct {p2, p0}, Lo/getCsatResponse$onPostMessage;-><init>(Lo/getCsatResponse;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/getCsatResponse;)Ljava/lang/String;
    .locals 0

    .line 219
    iget-object p0, p0, Lo/getCsatResponse;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;)Lo/getCsatResponse;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0, v0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lo/getCsatResponse;

    move-result-object p0

    return-object p0
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lo/getCsatResponse;
    .locals 8

    .line 2
    invoke-static {p0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lo/getCsatResponse;->onNavigationEvent:Lo/getCsatResponse;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lo/getCsatResponse;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lo/getCsatResponse;->onNavigationEvent:Lo/getCsatResponse;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lo/getCsatResponse;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lo/getCsatResponse;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v1, Lo/getCsatResponse;->onNavigationEvent:Lo/getCsatResponse;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lo/getCsatResponse;->onNavigationEvent:Lo/getCsatResponse;

    return-object p0
.end method

.method private final ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lo/getCsatResponse;->ICustomTabsCallback:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/getCsatResponse;Ljava/lang/Exception;ZZ)V
    .locals 0

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lo/getCsatResponse;->onPostMessage(Ljava/lang/Exception;ZZ)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/getCsatResponse;Lo/getCsatResponse$ICustomTabsCallback;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method private static ICustomTabsCallback$Stub(Landroid/content/Context;)I
    .locals 1

    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 62
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->extraCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static ICustomTabsCallback$Stub()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 72
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic asBinder()Ljava/lang/Boolean;
    .locals 1

    .line 221
    sget-object v0, Lo/getCsatResponse;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static asBinder(Landroid/content/Context;)V
    .locals 4

    .line 188
    const-class v0, Lo/getCsatResponse;

    monitor-enter v0

    const/4 v1, 0x0

    .line 189
    :try_start_0
    sget-object v2, Lo/getCsatResponse;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 190
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    const-string v2, "app_measurement_internal_disable_startup_flags"

    .line 191
    invoke-static {p0, v2}, Lo/getCsatResponse;->onPostMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lo/getCsatResponse;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_1
    :try_start_4
    const-string v2, "com.google.android.gms.measurement.prefs"

    .line 195
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 196
    sget-object v2, Lo/getCsatResponse;->onRelationshipValidationResult:Ljava/lang/String;

    .line 197
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lo/getCsatResponse;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    .line 198
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 199
    sget-object v2, Lo/getCsatResponse;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_5
    const-string v2, "FA"

    const-string v3, "Exception reading flag from SharedPreferences."

    .line 203
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lo/getCsatResponse;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    .line 205
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method static synthetic extraCallback(Lo/getCsatResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 217
    iput-object p1, p0, Lo/getCsatResponse;->asInterface:Ljava/util/List;

    return-object p1
.end method

.method static synthetic extraCallback(Landroid/content/Context;)V
    .locals 0

    .line 220
    invoke-static {p0}, Lo/getCsatResponse;->asBinder(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Landroid/content/Context;)I
    .locals 0

    .line 225
    invoke-static {p0}, Lo/getCsatResponse;->ICustomTabsCallback$Stub(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 48
    invoke-static {}, Lo/getCsatResponse;->ICustomTabsCallback$Stub()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/getCsatResponse;)Z
    .locals 0

    .line 215
    iget-boolean p0, p0, Lo/getCsatResponse;->ICustomTabsService:Z

    return p0
.end method

.method static synthetic onNavigationEvent(Landroid/content/Context;)I
    .locals 0

    .line 224
    invoke-static {p0}, Lo/getCsatResponse;->onRelationshipValidationResult(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/getCsatResponse;)Ljava/util/List;
    .locals 0

    .line 226
    iget-object p0, p0, Lo/getCsatResponse;->asInterface:Ljava/util/List;

    return-object p0
.end method

.method private final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    .line 96
    new-instance v6, Lo/cs;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lo/cs;-><init>(Lo/getCsatResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, v6}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;
    .locals 0

    .line 223
    iget-object p0, p0, Lo/getCsatResponse;->warmup:Lo/setControllerHideOnTouch;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/getCsatResponse;Lo/setControllerHideOnTouch;)Lo/setControllerHideOnTouch;
    .locals 0

    .line 222
    iput-object p1, p0, Lo/getCsatResponse;->warmup:Lo/setControllerHideOnTouch;

    return-object p1
.end method

.method private final onPostMessage(Ljava/lang/Exception;ZZ)V
    .locals 6

    .line 64
    iget-boolean v0, p0, Lo/getCsatResponse;->ICustomTabsService:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lo/getCsatResponse;->ICustomTabsService:Z

    if-eqz p2, :cond_0

    .line 66
    iget-object p2, p0, Lo/getCsatResponse;->onPostMessage:Ljava/lang/String;

    const-string p3, "Data collection startup failed. No data will be collected."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string p2, "Error with data collection. Data lost."

    if-eqz p3, :cond_1

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    .line 69
    invoke-virtual/range {v0 .. v5}, Lo/getCsatResponse;->onNavigationEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    :cond_1
    iget-object p3, p0, Lo/getCsatResponse;->onPostMessage:Ljava/lang/String;

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final onPostMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V
    .locals 9

    .line 90
    new-instance v8, Lo/onConfigure;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lo/onConfigure;-><init>(Lo/getCsatResponse;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-direct {p0, v8}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method private static onPostMessage(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "google_app_id"

    .line 44
    invoke-static {p0, v1}, Lo/setDividerDrawableHorizontal;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private static onPostMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 206
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 208
    :try_start_0
    invoke-static {p0}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object v1

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Lo/component28;->onPostMessage(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 210
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic onPostMessage(Lo/getCsatResponse;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 218
    invoke-static {p1, p2}, Lo/getCsatResponse;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static onRelationshipValidationResult(Landroid/content/Context;)I
    .locals 1

    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 63
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Lo/setErrorMessageProvider;

    invoke-direct {v0}, Lo/setErrorMessageProvider;-><init>()V

    .line 103
    new-instance v1, Lo/getIntVal;

    invoke-direct {v1, p0, p1, p2, v0}, Lo/getIntVal;-><init>(Lo/getCsatResponse;Ljava/lang/String;Ljava/lang/String;Lo/setErrorMessageProvider;)V

    invoke-direct {p0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    const-wide/16 p1, 0x1388

    .line 105
    invoke-virtual {v0, p1, p2}, Lo/setErrorMessageProvider;->onPostMessage(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/util/List;

    invoke-static {p1, p2}, Lo/setErrorMessageProvider;->onNavigationEvent(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected final ICustomTabsCallback(Landroid/content/Context;Z)Lo/setControllerHideOnTouch;
    .locals 1

    if-eqz p2, :cond_0

    .line 53
    :try_start_0
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsCallback:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

    goto :goto_0

    .line 54
    :cond_0
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

    :goto_0
    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 55
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    const-string p2, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    .line 57
    invoke-virtual {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->extraCallback(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 58
    invoke-static {p1}, Lo/setCustomErrorMessage;->asInterface(Landroid/os/IBinder;)Lo/setControllerHideOnTouch;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lo/getCsatResponse;->onPostMessage(Ljava/lang/Exception;ZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final ICustomTabsCallback()V
    .locals 1

    .line 118
    new-instance v0, Lo/ValidateJwtIdTokenResponse;

    invoke-direct {v0, p0}, Lo/ValidateJwtIdTokenResponse;-><init>(Lo/getCsatResponse;)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final ICustomTabsCallback(J)V
    .locals 1

    .line 122
    new-instance v0, Lo/isValidToken;

    invoke-direct {v0, p0, p1, p2}, Lo/isValidToken;-><init>(Lo/getCsatResponse;J)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final ICustomTabsCallback(Landroid/os/Bundle;)V
    .locals 1

    .line 186
    new-instance v0, Lo/fM;

    invoke-direct {v0, p0, p1}, Lo/fM;-><init>(Lo/getCsatResponse;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    .line 126
    new-instance v0, Lo/setValidToken;

    invoke-direct {v0, p0, p1}, Lo/setValidToken;-><init>(Lo/getCsatResponse;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 94
    invoke-direct {p0, p1, p2, p3, v0}, Lo/getCsatResponse;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final asInterface()Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Lo/setErrorMessageProvider;

    invoke-direct {v0}, Lo/setErrorMessageProvider;-><init>()V

    .line 143
    new-instance v1, Lo/cp;

    invoke-direct {v1, p0, v0}, Lo/cp;-><init>(Lo/getCsatResponse;Lo/setErrorMessageProvider;)V

    invoke-direct {p0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    const-wide/16 v1, 0x1f4

    .line 144
    invoke-virtual {v0, v1, v2}, Lo/setErrorMessageProvider;->onMessageChannelReady(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 3

    .line 131
    new-instance v0, Lo/setErrorMessageProvider;

    invoke-direct {v0}, Lo/setErrorMessageProvider;-><init>()V

    .line 132
    new-instance v1, Lo/setUserAliasExists;

    invoke-direct {v1, p0, v0}, Lo/setUserAliasExists;-><init>(Lo/getCsatResponse;Lo/setErrorMessageProvider;)V

    invoke-direct {p0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    const-wide/16 v1, 0x32

    .line 133
    invoke-virtual {v0, v1, v2}, Lo/setErrorMessageProvider;->onMessageChannelReady(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 112
    new-instance v0, Lo/setErrorCode;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/setErrorCode;-><init>(Lo/getCsatResponse;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 124
    new-instance v0, Lo/isUserAliasExists;

    invoke-direct {v0, p0, p1}, Lo/isUserAliasExists;-><init>(Lo/getCsatResponse;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, v0, p1, p2, v1}, Lo/getCsatResponse;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final extraCallback(Lo/setChipIconTint;)V
    .locals 1

    .line 78
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Lo/onOpen;

    invoke-direct {v0, p0, p1}, Lo/onOpen;-><init>(Lo/getCsatResponse;Lo/setChipIconTint;)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onMessageChannelReady(I)Ljava/lang/Object;
    .locals 3

    .line 181
    new-instance v0, Lo/setErrorMessageProvider;

    invoke-direct {v0}, Lo/setErrorMessageProvider;-><init>()V

    .line 182
    new-instance v1, Lo/cr;

    invoke-direct {v1, p0, v0, p1}, Lo/cr;-><init>(Lo/getCsatResponse;Lo/setErrorMessageProvider;I)V

    invoke-direct {p0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    const-wide/16 v1, 0x3a98

    .line 183
    invoke-virtual {v0, v1, v2}, Lo/setErrorMessageProvider;->onPostMessage(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Object;

    invoke-static {p1, v0}, Lo/setErrorMessageProvider;->onNavigationEvent(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 3

    .line 128
    new-instance v0, Lo/setErrorMessageProvider;

    invoke-direct {v0}, Lo/setErrorMessageProvider;-><init>()V

    .line 129
    new-instance v1, Lo/cq;

    invoke-direct {v1, p0, v0}, Lo/cq;-><init>(Lo/getCsatResponse;Lo/setErrorMessageProvider;)V

    invoke-direct {p0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    const-wide/16 v1, 0x1f4

    .line 130
    invoke-virtual {v0, v1, v2}, Lo/setErrorMessageProvider;->onMessageChannelReady(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v6, Lo/setErrorMessageProvider;

    invoke-direct {v6}, Lo/setErrorMessageProvider;-><init>()V

    .line 149
    new-instance v7, Lo/cR;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lo/cR;-><init>(Lo/getCsatResponse;Ljava/lang/String;Ljava/lang/String;ZLo/setErrorMessageProvider;)V

    invoke-direct {p0, v7}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    const-wide/16 p1, 0x1388

    .line 151
    invoke-virtual {v6, p1, p2}, Lo/setErrorMessageProvider;->onPostMessage(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 153
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 156
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 158
    instance-of v2, v1, Ljava/lang/Double;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 159
    :cond_2
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p2

    .line 154
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/lang/Boolean;)V
    .locals 1

    .line 114
    new-instance v0, Lo/UserResponse;

    invoke-direct {v0, p0, p1}, Lo/UserResponse;-><init>(Lo/getCsatResponse;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    .line 110
    new-instance v0, Lo/ErrorResponse$ServerErrorCodes;

    invoke-direct {v0, p0, p1}, Lo/ErrorResponse$ServerErrorCodes;-><init>(Lo/getCsatResponse;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 84
    invoke-direct/range {v0 .. v6}, Lo/getCsatResponse;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 100
    new-instance v0, Lo/getStrVal;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/getStrVal;-><init>(Lo/getCsatResponse;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 7

    .line 88
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lo/getCsatResponse;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/setChipIconTint;)V
    .locals 1

    .line 81
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Lo/ct;

    invoke-direct {v0, p0, p1}, Lo/ct;-><init>(Lo/getCsatResponse;Lo/setChipIconTint;)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)I
    .locals 3

    .line 171
    new-instance v0, Lo/setErrorMessageProvider;

    invoke-direct {v0}, Lo/setErrorMessageProvider;-><init>()V

    .line 172
    new-instance v1, Lo/fL;

    invoke-direct {v1, p0, p1, v0}, Lo/fL;-><init>(Lo/getCsatResponse;Ljava/lang/String;Lo/setErrorMessageProvider;)V

    invoke-direct {p0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    const-wide/16 v1, 0x2710

    .line 174
    invoke-virtual {v0, v1, v2}, Lo/setErrorMessageProvider;->onPostMessage(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lo/setErrorMessageProvider;->onNavigationEvent(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/16 p1, 0x19

    return p1

    .line 176
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent()Lo/zzcw;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/getCsatResponse;->onMessageChannelReady:Lo/zzcw;

    return-object v0
.end method

.method public final onNavigationEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 162
    new-instance p1, Lo/cP;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lo/cP;-><init>(Lo/getCsatResponse;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onPostMessage()J
    .locals 5

    .line 134
    new-instance v0, Lo/setErrorMessageProvider;

    invoke-direct {v0}, Lo/setErrorMessageProvider;-><init>()V

    .line 135
    new-instance v1, Lo/cO;

    invoke-direct {v1, p0, v0}, Lo/cO;-><init>(Lo/getCsatResponse;Lo/setErrorMessageProvider;)V

    invoke-direct {p0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    const-wide/16 v1, 0x1f4

    .line 137
    invoke-virtual {v0, v1, v2}, Lo/setErrorMessageProvider;->onPostMessage(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lo/setErrorMessageProvider;->onNavigationEvent(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lo/getCsatResponse;->extraCallback:Lo/component15;

    invoke-interface {v3}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lo/getCsatResponse;->onTransact:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lo/getCsatResponse;->onTransact:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onPostMessage(J)V
    .locals 1

    .line 120
    new-instance v0, Lo/UserRequest;

    invoke-direct {v0, p0, p1, p2}, Lo/UserRequest;-><init>(Lo/getCsatResponse;J)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onPostMessage(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    new-instance v0, Lo/ErrorResponse;

    invoke-direct {v0, p0, p1}, Lo/ErrorResponse;-><init>(Lo/getCsatResponse;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 86
    invoke-direct/range {v0 .. v6}, Lo/getCsatResponse;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final onPostMessage(Lo/setChipIconTintResource;)V
    .locals 1

    .line 76
    new-instance v0, Lo/fN;

    invoke-direct {v0, p0, p1}, Lo/fN;-><init>(Lo/getCsatResponse;Lo/setChipIconTintResource;)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 1

    .line 184
    new-instance v0, Lo/onUpgrade;

    invoke-direct {v0, p0, p1}, Lo/onUpgrade;-><init>(Lo/getCsatResponse;Z)V

    invoke-direct {p0, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onRelationshipValidationResult()Ljava/lang/String;
    .locals 3

    .line 177
    new-instance v0, Lo/setErrorMessageProvider;

    invoke-direct {v0}, Lo/setErrorMessageProvider;-><init>()V

    .line 178
    new-instance v1, Lo/cU;

    invoke-direct {v1, p0, v0}, Lo/cU;-><init>(Lo/getCsatResponse;Lo/setErrorMessageProvider;)V

    invoke-direct {p0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    const-wide/32 v1, 0x1d4c0

    .line 179
    invoke-virtual {v0, v1, v2}, Lo/setErrorMessageProvider;->onMessageChannelReady(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 3

    .line 145
    new-instance v0, Lo/setErrorMessageProvider;

    invoke-direct {v0}, Lo/setErrorMessageProvider;-><init>()V

    .line 146
    new-instance v1, Lo/cT;

    invoke-direct {v1, p0, v0}, Lo/cT;-><init>(Lo/getCsatResponse;Lo/setErrorMessageProvider;)V

    invoke-direct {p0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse$ICustomTabsCallback;)V

    const-wide/16 v1, 0x1f4

    .line 147
    invoke-virtual {v0, v1, v2}, Lo/setErrorMessageProvider;->onMessageChannelReady(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
