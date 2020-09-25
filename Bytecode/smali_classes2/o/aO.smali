.class final Lo/aO;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:Lo/aO; = null

.field private static extraCallback:Ljava/lang/String; = "FirebasePerformance"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    .line 6
    sget-object v0, Lo/aO;->extraCallback:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 10
    sget-object v0, Lo/aO;->extraCallback:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    .line 8
    sget-object v0, Lo/aO;->extraCallback:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized onNavigationEvent()Lo/aO;
    .locals 2

    const-class v0, Lo/aO;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lo/aO;->ICustomTabsCallback:Lo/aO;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lo/aO;

    invoke-direct {v1}, Lo/aO;-><init>()V

    sput-object v1, Lo/aO;->ICustomTabsCallback:Lo/aO;

    .line 3
    :cond_0
    sget-object v1, Lo/aO;->ICustomTabsCallback:Lo/aO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static onPostMessage(Ljava/lang/String;)V
    .locals 1

    .line 4
    sget-object v0, Lo/aO;->extraCallback:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
