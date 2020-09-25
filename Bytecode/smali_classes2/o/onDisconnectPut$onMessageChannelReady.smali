.class final Lo/onDisconnectPut$onMessageChannelReady;
.super Ljava/lang/ref/WeakReference;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onDisconnectPut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lo/onDisconnectPut;",
        ">;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Z

.field private static final onMessageChannelReady:Ljava/lang/RuntimeException;


# instance fields
.field private volatile asBinder:Z

.field private final extraCallback:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lo/onDisconnectPut$onMessageChannelReady;",
            "Lo/onDisconnectPut$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lo/onDisconnectPut;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "io.grpc.ManagedChannel.enableAllocationTracking"

    const-string v1, "true"

    .line 76
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lo/onDisconnectPut$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 2124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ManagedChannel allocation site not recorded.  Set -Dio.grpc.ManagedChannel.enableAllocationTracking=true to enable it"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    .line 2127
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 77
    sput-object v0, Lo/onDisconnectPut$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/RuntimeException;

    return-void
.end method

.method constructor <init>(Lo/onDisconnectPut;Lo/insert;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectPut;",
            "Lo/insert;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lo/onDisconnectPut;",
            ">;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lo/onDisconnectPut$onMessageChannelReady;",
            "Lo/onDisconnectPut$onMessageChannelReady;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 92
    new-instance p1, Ljava/lang/ref/SoftReference;

    .line 93
    sget-boolean v0, Lo/onDisconnectPut$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ManagedChannel allocation site"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    sget-object v0, Lo/onDisconnectPut$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/RuntimeException;

    :goto_0
    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lo/onDisconnectPut$onMessageChannelReady;->onTransact:Ljava/lang/ref/Reference;

    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/onDisconnectPut$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lo/onDisconnectPut$onMessageChannelReady;->onPostMessage:Ljava/lang/ref/ReferenceQueue;

    .line 98
    iput-object p4, p0, Lo/onDisconnectPut$onMessageChannelReady;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    .line 99
    invoke-interface {p4, p0, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p3}, Lo/onDisconnectPut$onMessageChannelReady;->onNavigationEvent(Ljava/lang/ref/ReferenceQueue;)I

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/onDisconnectPut$onMessageChannelReady;)Z
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lo/onDisconnectPut$onMessageChannelReady;->asBinder:Z

    return v0
.end method

.method private static onNavigationEvent(Ljava/lang/ref/ReferenceQueue;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lo/onDisconnectPut;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 135
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Lo/onDisconnectPut$onMessageChannelReady;

    if-eqz v2, :cond_1

    .line 136
    iget-object v3, v2, Lo/onDisconnectPut$onMessageChannelReady;->onTransact:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/RuntimeException;

    .line 2118
    invoke-super {v2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2119
    iget-object v4, v2, Lo/onDisconnectPut$onMessageChannelReady;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    iget-object v4, v2, Lo/onDisconnectPut$onMessageChannelReady;->onTransact:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->clear()V

    .line 138
    iget-boolean v4, v2, Lo/onDisconnectPut$onMessageChannelReady;->asBinder:Z

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 140
    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 141
    invoke-static {}, Lo/onDisconnectPut;->ICustomTabsCallback()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "*~*~*~ Channel {0} was not shutdown properly!!! ~*~*~*"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "line.separator"

    .line 144
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Make sure to call shutdown()/shutdownNow() and wait until awaitTermination() returns true."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 147
    new-instance v6, Ljava/util/logging/LogRecord;

    invoke-direct {v6, v4, v5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lo/onDisconnectPut;->ICustomTabsCallback()Ljava/util/logging/Logger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 149
    iget-object v2, v2, Lo/onDisconnectPut$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    aput-object v2, v4, v0

    invoke-virtual {v6, v4}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 150
    invoke-virtual {v6, v3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 151
    invoke-static {}, Lo/onDisconnectPut;->ICustomTabsCallback()Ljava/util/logging/Logger;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1118
    invoke-super {p0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1119
    iget-object v0, p0, Lo/onDisconnectPut$onMessageChannelReady;->extraCallback:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    iget-object v0, p0, Lo/onDisconnectPut$onMessageChannelReady;->onTransact:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 113
    iget-object v0, p0, Lo/onDisconnectPut$onMessageChannelReady;->onPostMessage:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v0}, Lo/onDisconnectPut$onMessageChannelReady;->onNavigationEvent(Ljava/lang/ref/ReferenceQueue;)I

    return-void
.end method
