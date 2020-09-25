.class final Lo/RewardDetails$$Parcelable;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile extraCallback:Lo/getBackgroundImage;

.field private static onNavigationEvent:Landroid/content/Context;

.field private static final onPostMessage:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/RewardDetails$$Parcelable;->onPostMessage:Ljava/lang/Object;

    return-void
.end method

.method static declared-synchronized ICustomTabsCallback(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lo/RewardDetails$$Parcelable;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lo/RewardDetails$$Parcelable;->onNavigationEvent:Landroid/content/Context;

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lo/RewardDetails$$Parcelable;->onNavigationEvent:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    .line 4
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static final synthetic extraCallback(ZLjava/lang/String;Lo/setDragState;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 39
    invoke-static {p1, p2, v0, v1}, Lo/RewardDetails$$Parcelable;->extraCallback(Ljava/lang/String;Lo/setDragState;ZZ)Lo/BackgroundJsonAdapter;

    move-result-object v2

    .line 40
    iget-boolean v2, v2, Lo/BackgroundJsonAdapter;->onPostMessage:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-static {p1, p2, p0, v0}, Lo/BackgroundJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;Lo/setDragState;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static extraCallback(Ljava/lang/String;Lo/setDragState;ZZ)Lo/BackgroundJsonAdapter;
    .locals 4

    .line 12
    :try_start_0
    sget-object v0, Lo/RewardDetails$$Parcelable;->extraCallback:Lo/getBackgroundImage;

    if-nez v0, :cond_1

    .line 13
    sget-object v0, Lo/RewardDetails$$Parcelable;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lo/RewardDetails$$Parcelable;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    :try_start_1
    sget-object v1, Lo/RewardDetails$$Parcelable;->extraCallback:Lo/getBackgroundImage;

    if-nez v1, :cond_0

    .line 16
    sget-object v1, Lo/RewardDetails$$Parcelable;->onNavigationEvent:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->onPostMessage:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

    const-string v3, "com.google.android.gms.googlecertificates"

    .line 17
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->extraCallback(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 20
    invoke-static {v1}, Lo/getLogoUrl;->onPostMessage(Landroid/os/IBinder;)Lo/getBackgroundImage;

    move-result-object v1

    sput-object v1, Lo/RewardDetails$$Parcelable;->extraCallback:Lo/getBackgroundImage;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lo/RewardDetails$$Parcelable;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lo/EventsMapping;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/EventsMapping;-><init>(Ljava/lang/String;Lo/setDragState;ZZ)V

    .line 28
    :try_start_3
    sget-object p3, Lo/RewardDetails$$Parcelable;->extraCallback:Lo/getBackgroundImage;

    sget-object v1, Lo/RewardDetails$$Parcelable;->onNavigationEvent:Landroid/content/Context;

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v1

    .line 30
    invoke-interface {p3, v0, v1}, Lo/getBackgroundImage;->onMessageChannelReady(Lo/EventsMapping;Lo/getEventName;)Z

    move-result p3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz p3, :cond_2

    .line 36
    invoke-static {}, Lo/BackgroundJsonAdapter;->onPostMessage()Lo/BackgroundJsonAdapter;

    move-result-object p0

    return-object p0

    .line 37
    :cond_2
    new-instance p3, Lo/setSlideFractionListener;

    invoke-direct {p3, p2, p0, p1}, Lo/setSlideFractionListener;-><init>(ZLjava/lang/String;Lo/setDragState;)V

    invoke-static {p3}, Lo/BackgroundJsonAdapter;->onPostMessage(Ljava/util/concurrent/Callable;)Lo/BackgroundJsonAdapter;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    .line 33
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "module call"

    .line 34
    invoke-static {p1, p0}, Lo/BackgroundJsonAdapter;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)Lo/BackgroundJsonAdapter;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    .line 24
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "module init: "

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_1
    invoke-static {p1, p0}, Lo/BackgroundJsonAdapter;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)Lo/BackgroundJsonAdapter;

    move-result-object p0

    return-object p0
.end method

.method static onNavigationEvent(Ljava/lang/String;Lo/setDragState;ZZ)Lo/BackgroundJsonAdapter;
    .locals 1

    .line 6
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 7
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lo/RewardDetails$$Parcelable;->extraCallback(Ljava/lang/String;Lo/setDragState;ZZ)Lo/BackgroundJsonAdapter;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 11
    throw p0
.end method
