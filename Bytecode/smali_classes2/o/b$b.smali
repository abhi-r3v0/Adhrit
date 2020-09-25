.class public final Lo/b$b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onPostMessage:Lo/b$b;


# instance fields
.field private extraCallback:Z

.field private onMessageChannelReady:Lo/aO;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lo/b$b;-><init>(Lo/aO;)V

    return-void
.end method

.method private constructor <init>(Lo/aO;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lo/b$b;->extraCallback:Z

    .line 6
    invoke-static {}, Lo/aO;->onNavigationEvent()Lo/aO;

    move-result-object p1

    iput-object p1, p0, Lo/b$b;->onMessageChannelReady:Lo/aO;

    return-void
.end method

.method public static declared-synchronized ICustomTabsCallback()Lo/b$b;
    .locals 2

    const-class v0, Lo/b$b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lo/b$b;->onPostMessage:Lo/b$b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lo/b$b;

    invoke-direct {v1}, Lo/b$b;-><init>()V

    sput-object v1, Lo/b$b;->onPostMessage:Lo/b$b;

    .line 3
    :cond_0
    sget-object v1, Lo/b$b;->onPostMessage:Lo/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/b$b;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p1}, Lo/aO;->ICustomTabsCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-boolean v0, p0, Lo/b$b;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p1}, Lo/aO;->extraCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    .line 18
    iget-boolean v0, p0, Lo/b$b;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p1}, Lo/aO;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lo/b$b;->extraCallback:Z

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-boolean v0, p0, Lo/b$b;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p1}, Lo/aO;->onPostMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
