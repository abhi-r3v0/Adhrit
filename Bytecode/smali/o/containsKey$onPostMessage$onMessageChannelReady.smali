.class Lo/containsKey$onPostMessage$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/containsKey$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# static fields
.field private static ICustomTabsCallback:Z

.field private static final extraCallback:Ljava/lang/Object;

.field private static onMessageChannelReady:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 492
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/containsKey$onPostMessage$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    return-void
.end method

.method static extraCallback(Landroid/content/res/Resources$Theme;)V
    .locals 6

    .line 498
    sget-object v0, Lo/containsKey$onPostMessage$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_0
    sget-boolean v1, Lo/containsKey$onPostMessage$onMessageChannelReady;->ICustomTabsCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 501
    :try_start_1
    const-class v3, Landroid/content/res/Resources$Theme;

    const-string v4, "rebase"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 502
    sput-object v3, Lo/containsKey$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "ResourcesCompat"

    const-string v5, "Failed to retrieve rebase() method"

    .line 504
    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    :goto_0
    sput-boolean v1, Lo/containsKey$onPostMessage$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 508
    :cond_0
    sget-object v1, Lo/containsKey$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 510
    :try_start_3
    sget-object v1, Lo/containsKey$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    :goto_1
    :try_start_4
    const-string v1, "ResourcesCompat"

    const-string v2, "Failed to invoke rebase() method via reflection"

    .line 512
    invoke-static {v1, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 513
    sput-object p0, Lo/containsKey$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/reflect/Method;

    .line 516
    :cond_1
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
