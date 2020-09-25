.class public final Lo/InstallException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static onNavigationEvent:Ljava/lang/reflect/Method;

.field private static final onPostMessage:Ljava/lang/Object;


# instance fields
.field private final arg$1:Ljava/util/concurrent/Callable;

.field private final arg$2:Ljava/util/concurrent/Executor;

.field private final arg$3:Lo/removeBackgroundStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/InstallException;->onPostMessage:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 46
    sput-object v0, Lo/InstallException;->onNavigationEvent:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 5000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/InstallException;->arg$1:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lo/InstallException;->arg$2:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lo/InstallException;->arg$3:Lo/removeBackgroundStateChangeListener;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    if-eqz p0, :cond_6

    const v0, 0xb5f608

    .line 2009
    invoke-static {p0, v0}, Lo/getTotalAmount;->ensurePlayServicesAvailable(Landroid/content/Context;I)V

    .line 4
    invoke-static {p0}, Lo/InstallException;->onNavigationEvent(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {p0}, Lo/InstallException;->extraCallback(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_5

    .line 10
    sget-object p0, Lo/InstallException;->onPostMessage:Ljava/lang/Object;

    monitor-enter p0

    .line 11
    :try_start_0
    sget-object v1, Lo/InstallException;->onNavigationEvent:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v4, "com.google.android.gms.common.security.ProviderInstallerImpl"

    .line 14
    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Class;

    .line 15
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    const-string v5, "insertProvider"

    .line 16
    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lo/InstallException;->onNavigationEvent:Ljava/lang/reflect/Method;

    .line 17
    :cond_1
    sget-object v1, Lo/InstallException;->onNavigationEvent:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "ProviderInstaller"

    const/4 v3, 0x6

    .line 21
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_2

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "ProviderInstaller"

    const-string v2, "Failed to install provider: "

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_4
    new-instance v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_2
    monitor-exit p0

    throw v0

    :cond_5
    const-string p0, "ProviderInstaller"

    const-string v0, "Failed to get remote context"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {p0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>()V

    throw p0

    .line 1011
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Context must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extraCallback(Landroid/content/Context;)Landroid/content/Context;
    .locals 4

    .line 38
    :try_start_0
    invoke-static {p0}, Lo/getTotalAmount;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Failed to load GMS Core context for providerinstaller: "

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    const-string v2, "ProviderInstaller"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    invoke-static {p0, v0}, Lo/component16;->extraCallback(Landroid/content/Context;Ljava/lang/Throwable;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public static lambdaFactory$(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lo/removeBackgroundStateChangeListener;)Ljava/lang/Runnable;
    .locals 1

    .line 7000
    new-instance v0, Lo/InstallException;

    invoke-direct {v0, p0, p1, p2}, Lo/InstallException;-><init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lo/removeBackgroundStateChangeListener;)V

    return-object v0
.end method

.method private static onNavigationEvent(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 32
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->onPostMessage:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

    const-string v1, "providerinstaller"

    .line 33
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    .line 2211
    iget-object p0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->extraCallback:Landroid/content/Context;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Failed to load providerinstaller module: "

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "ProviderInstaller"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 6000
    iget-object v0, p0, Lo/InstallException;->arg$1:Ljava/util/concurrent/Callable;

    iget-object v1, p0, Lo/InstallException;->arg$2:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lo/InstallException;->arg$3:Lo/removeBackgroundStateChangeListener;

    invoke-static {v0, v1, v2}, Lo/CrashlyticsReport$Type;->lambda$callTask$1(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lo/removeBackgroundStateChangeListener;)V

    return-void
.end method
