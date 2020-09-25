.class public Lio/grpc/StatusException;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public final onMessageChannelReady:Lo/emptyMap;

.field private final onNavigationEvent:Z


# direct methods
.method public constructor <init>(Lo/emptyMap;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lio/grpc/StatusException;-><init>(Lo/emptyMap;B)V

    return-void
.end method

.method private constructor <init>(Lo/emptyMap;B)V
    .locals 0

    const/4 p2, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lio/grpc/StatusException;-><init>(Lo/emptyMap;C)V

    return-void
.end method

.method private constructor <init>(Lo/emptyMap;C)V
    .locals 1

    .line 52
    invoke-static {p1}, Lo/emptyMap;->ICustomTabsCallback(Lo/emptyMap;)Ljava/lang/String;

    move-result-object p2

    .line 1509
    iget-object v0, p1, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    .line 52
    invoke-direct {p0, p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    iput-object p1, p0, Lio/grpc/StatusException;->onMessageChannelReady:Lo/emptyMap;

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lio/grpc/StatusException;->onNavigationEvent:Z

    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 66
    :try_start_0
    invoke-super {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
