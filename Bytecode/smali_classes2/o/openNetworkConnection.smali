.class Lo/openNetworkConnection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final extraCallback:Ljava/util/logging/Logger;


# instance fields
.field private onNavigationEvent:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lo/openNetworkConnection;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/openNetworkConnection;->extraCallback:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onPostMessage()V
    .locals 5

    .line 65
    :goto_0
    iget-object v0, p0, Lo/openNetworkConnection;->onNavigationEvent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 70
    sget-object v2, Lo/openNetworkConnection;->extraCallback:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Exception while executing runnable "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 46
    iget-boolean v0, p0, Lo/openNetworkConnection;->onPostMessage:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lo/openNetworkConnection;->onPostMessage:Z

    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object p1, p0, Lo/openNetworkConnection;->onNavigationEvent:Ljava/util/ArrayDeque;

    if-eqz p1, :cond_0

    .line 54
    invoke-direct {p0}, Lo/openNetworkConnection;->onPostMessage()V

    .line 56
    :cond_0
    iput-boolean v0, p0, Lo/openNetworkConnection;->onPostMessage:Z

    return-void

    :catchall_0
    move-exception v1

    .line 51
    :try_start_1
    sget-object v2, Lo/openNetworkConnection;->extraCallback:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Exception while executing runnable "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    iget-object p1, p0, Lo/openNetworkConnection;->onNavigationEvent:Ljava/util/ArrayDeque;

    if-eqz p1, :cond_1

    .line 54
    invoke-direct {p0}, Lo/openNetworkConnection;->onPostMessage()V

    .line 56
    :cond_1
    iput-boolean v0, p0, Lo/openNetworkConnection;->onPostMessage:Z

    return-void

    :catchall_1
    move-exception p1

    .line 53
    iget-object v1, p0, Lo/openNetworkConnection;->onNavigationEvent:Ljava/util/ArrayDeque;

    if-eqz v1, :cond_2

    .line 54
    invoke-direct {p0}, Lo/openNetworkConnection;->onPostMessage()V

    .line 56
    :cond_2
    iput-boolean v0, p0, Lo/openNetworkConnection;->onPostMessage:Z

    throw p1

    .line 2076
    :cond_3
    iget-object v0, p0, Lo/openNetworkConnection;->onNavigationEvent:Ljava/util/ArrayDeque;

    if-nez v0, :cond_4

    .line 2077
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lo/openNetworkConnection;->onNavigationEvent:Ljava/util/ArrayDeque;

    .line 2079
    :cond_4
    iget-object v0, p0, Lo/openNetworkConnection;->onNavigationEvent:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    .line 1910
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'task\' must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
