.class public Lo/setCircleProgressColors;
.super Ljava/lang/Object;


# static fields
.field private static volatile ICustomTabsCallback:Landroid/os/UserManager;

.field private static volatile onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lo/setCircleProgressColors;->extraCallback()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/setCircleProgressColors;->onPostMessage:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lo/setCircleProgressColors;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lo/setCircleProgressColors;->onPostMessage(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static extraCallback()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static onPostMessage(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Lo/setCircleProgressColors;->onPostMessage:Z

    if-nez v0, :cond_3

    sget-object v0, Lo/setCircleProgressColors;->ICustomTabsCallback:Landroid/os/UserManager;

    if-nez v0, :cond_2

    const-class v1, Lo/setCircleProgressColors;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lo/setCircleProgressColors;->ICustomTabsCallback:Landroid/os/UserManager;

    if-nez v0, :cond_1

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    sput-object p0, Lo/setCircleProgressColors;->ICustomTabsCallback:Landroid/os/UserManager;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    sput-boolean p0, Lo/setCircleProgressColors;->onPostMessage:Z

    monitor-exit v1

    return p0

    :cond_0
    move-object v0, p0

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    sput-boolean v0, Lo/setCircleProgressColors;->onPostMessage:Z

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    sput-object p0, Lo/setCircleProgressColors;->ICustomTabsCallback:Landroid/os/UserManager;

    :cond_3
    return v0
.end method
