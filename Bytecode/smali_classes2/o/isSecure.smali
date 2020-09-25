.class public Lo/isSecure;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback$Stub:Ljava/util/logging/Logger;


# instance fields
.field public ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/moveRedRight$onPostMessage;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/Onboarding$3;

.field public extraCallback:Z

.field public final onMessageChannelReady:J

.field public onNavigationEvent:Ljava/lang/Throwable;

.field public onPostMessage:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lo/isSecure;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/isSecure;->ICustomTabsCallback$Stub:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(JLo/Onboarding$3;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lo/isSecure;->ICustomTabsCallback:Ljava/util/Map;

    .line 82
    iput-wide p1, p0, Lo/isSecure;->onMessageChannelReady:J

    .line 83
    iput-object p3, p0, Lo/isSecure;->asBinder:Lo/Onboarding$3;

    return-void
.end method

.method public static ICustomTabsCallback(Lo/moveRedRight$onPostMessage;J)Ljava/lang/Runnable;
    .locals 1

    .line 192
    new-instance v0, Lo/isSecure$5;

    invoke-direct {v0, p0, p1, p2}, Lo/isSecure$5;-><init>(Lo/moveRedRight$onPostMessage;J)V

    return-object v0
.end method

.method public static ICustomTabsCallback(Lo/moveRedRight$onPostMessage;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;)V
    .locals 1

    .line 4207
    new-instance v0, Lo/isSecure$2;

    invoke-direct {v0, p0, p2}, Lo/isSecure$2;-><init>(Lo/moveRedRight$onPostMessage;Ljava/lang/Throwable;)V

    .line 5180
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 5182
    sget-object p1, Lo/isSecure;->ICustomTabsCallback$Stub:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v0, "Failed to execute PingCallback"

    invoke-virtual {p1, p2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static extraCallback(Lo/moveRedRight$onPostMessage;Ljava/lang/Throwable;)Ljava/lang/Runnable;
    .locals 1

    .line 207
    new-instance v0, Lo/isSecure$2;

    invoke-direct {v0, p0, p1}, Lo/isSecure$2;-><init>(Lo/moveRedRight$onPostMessage;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static onMessageChannelReady(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 2

    .line 180
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 182
    sget-object p1, Lo/isSecure;->ICustomTabsCallback$Stub:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "Failed to execute PingCallback"

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Throwable;)V
    .locals 5

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lo/isSecure;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 151
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lo/isSecure;->extraCallback:Z

    .line 154
    iput-object p1, p0, Lo/isSecure;->onNavigationEvent:Ljava/lang/Throwable;

    .line 155
    iget-object v0, p0, Lo/isSecure;->ICustomTabsCallback:Ljava/util/Map;

    const/4 v1, 0x0

    .line 156
    iput-object v1, p0, Lo/isSecure;->ICustomTabsCallback:Ljava/util/Map;

    .line 157
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/moveRedRight$onPostMessage;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 3207
    new-instance v3, Lo/isSecure$2;

    invoke-direct {v3, v2, p1}, Lo/isSecure$2;-><init>(Lo/moveRedRight$onPostMessage;Ljava/lang/Throwable;)V

    .line 4180
    :try_start_1
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4182
    sget-object v2, Lo/isSecure;->ICustomTabsCallback$Stub:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Failed to execute PingCallback"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    .line 157
    monitor-exit p0

    throw p1
.end method

.method public final onMessageChannelReady()Z
    .locals 8

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lo/isSecure;->extraCallback:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 128
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lo/isSecure;->extraCallback:Z

    .line 131
    iget-object v1, p0, Lo/isSecure;->asBinder:Lo/Onboarding$3;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lo/Onboarding$3;->onPostMessage(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iput-wide v1, p0, Lo/isSecure;->onPostMessage:J

    .line 132
    iget-object v3, p0, Lo/isSecure;->ICustomTabsCallback:Ljava/util/Map;

    const/4 v4, 0x0

    .line 133
    iput-object v4, p0, Lo/isSecure;->ICustomTabsCallback:Ljava/util/Map;

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/moveRedRight$onPostMessage;

    .line 1192
    new-instance v6, Lo/isSecure$5;

    invoke-direct {v6, v4, v1, v2}, Lo/isSecure$5;-><init>(Lo/moveRedRight$onPostMessage;J)V

    .line 2180
    :try_start_1
    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 2182
    sget-object v5, Lo/isSecure;->ICustomTabsCallback$Stub:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "Failed to execute PingCallback"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return v0

    :catchall_1
    move-exception v0

    .line 134
    monitor-exit p0

    throw v0
.end method
