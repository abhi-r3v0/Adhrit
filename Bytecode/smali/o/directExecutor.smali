.class public final Lo/directExecutor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/auth/internals/AuthUpdater;",
        "",
        "()V",
        "update",
        "",
        "oldAccessToken",
        "",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/directExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lo/directExecutor;

    invoke-direct {v0}, Lo/directExecutor;-><init>()V

    sput-object v0, Lo/directExecutor;->onPostMessage:Lo/directExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic onPostMessage(Lo/directExecutor;)V
    .locals 1

    .line 2097
    sget-object v0, Lo/OperationCanceledException;->onNavigationEvent:Lo/checkCompatWrapper;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lo/checkCompatWrapper;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lo/directExecutor;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onPostMessage(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    invoke-static {}, Lo/getBridge;->ICustomTabsCallback()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 15
    monitor-exit p0

    return-void

    .line 1097
    :cond_0
    :try_start_1
    sget-object v0, Lo/OperationCanceledException;->onNavigationEvent:Lo/checkCompatWrapper;

    if-eqz v0, :cond_2

    .line 18
    invoke-interface {v0}, Lo/checkCompatWrapper;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v1}, Lo/getBridge;->onPostMessage(I)V

    .line 1101
    sget-object p1, Lo/OperationCanceledException;->onPostMessage:Lo/instantiateProvider;

    .line 25
    new-instance v0, Lo/directExecutor$extraCallback;

    invoke-direct {v0}, Lo/directExecutor$extraCallback;-><init>()V

    check-cast v0, Lo/RemoteActionCompat;

    invoke-interface {p1, v0}, Lo/instantiateProvider;->extraCallback(Lo/RemoteActionCompat;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 21
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
