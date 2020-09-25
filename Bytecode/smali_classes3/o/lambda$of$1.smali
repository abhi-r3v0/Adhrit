.class public final Lo/lambda$of$1;
.super Ljava/lang/Object;


# static fields
.field private static final onPostMessage:Lo/addItemDecoration$onPostMessage;


# instance fields
.field private onMessageChannelReady:I

.field private final onNavigationEvent:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "PackageStateCache"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/lambda$of$1;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lo/lambda$of$1;->onMessageChannelReady:I

    iput-object p1, p0, Lo/lambda$of$1;->onNavigationEvent:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final declared-synchronized extraCallback()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lo/lambda$of$1;->onMessageChannelReady:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lo/lambda$of$1;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/lambda$of$1;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lo/lambda$of$1;->onMessageChannelReady:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v1, Lo/lambda$of$1;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const-string v2, "The current version of the app could not be retrieved"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget v0, p0, Lo/lambda$of$1;->onMessageChannelReady:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
