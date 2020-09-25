.class public final Lo/inOrderTraversal;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/inOrderTraversal$onNavigationEvent;
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Lo/inOrderTraversal;

.field private static final onMessageChannelReady:Ljava/util/logging/Logger;

.field private static final onNavigationEvent:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final extraCallback:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lo/iteratorFrom;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lo/iteratorFrom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lo/inOrderTraversal;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/inOrderTraversal;->onMessageChannelReady:Ljava/util/logging/Logger;

    .line 45
    invoke-static {}, Lo/inOrderTraversal;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/inOrderTraversal;->onNavigationEvent:Ljava/lang/Iterable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lo/inOrderTraversal;->onPostMessage:Ljava/util/LinkedHashSet;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lo/inOrderTraversal;->extraCallback:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private static ICustomTabsCallback()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "o.onRangeMergeUpdate"

    .line 144
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 146
    sget-object v2, Lo/inOrderTraversal;->onMessageChannelReady:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to find pick-first LoadBalancer"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    const-string v1, "o.onClosed$ICustomTabsCallback"

    .line 149
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 153
    sget-object v2, Lo/inOrderTraversal;->onMessageChannelReady:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find round-robin LoadBalancer"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized extraCallback(Lo/iteratorFrom;)V
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lo/inOrderTraversal;->onPostMessage:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onMessageChannelReady()V
    .locals 4

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lo/inOrderTraversal;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    .line 88
    iget-object v0, p0, Lo/inOrderTraversal;->onPostMessage:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/iteratorFrom;

    .line 89
    invoke-virtual {v1}, Lo/iteratorFrom;->extraCallback()Ljava/lang/String;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lo/inOrderTraversal;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/iteratorFrom;

    if-nez v3, :cond_0

    .line 92
    iget-object v3, p0, Lo/inOrderTraversal;->extraCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized onPostMessage()Lo/inOrderTraversal;
    .locals 6

    const-class v0, Lo/inOrderTraversal;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lo/inOrderTraversal;->ICustomTabsCallback:Lo/inOrderTraversal;

    if-nez v1, :cond_1

    .line 102
    const-class v1, Lo/iteratorFrom;

    sget-object v2, Lo/inOrderTraversal;->onNavigationEvent:Ljava/lang/Iterable;

    const-class v3, Lo/iteratorFrom;

    .line 105
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lo/inOrderTraversal$onNavigationEvent;

    invoke-direct {v4}, Lo/inOrderTraversal$onNavigationEvent;-><init>()V

    .line 102
    invoke-static {v1, v2, v3, v4}, Lo/translate;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lo/translate$extraCallback;)Ljava/util/List;

    move-result-object v1

    .line 107
    new-instance v2, Lo/inOrderTraversal;

    invoke-direct {v2}, Lo/inOrderTraversal;-><init>()V

    sput-object v2, Lo/inOrderTraversal;->ICustomTabsCallback:Lo/inOrderTraversal;

    .line 108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/iteratorFrom;

    .line 109
    sget-object v3, Lo/inOrderTraversal;->onMessageChannelReady:Ljava/util/logging/Logger;

    const-string v4, "Service loader found "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 111
    sget-object v3, Lo/inOrderTraversal;->ICustomTabsCallback:Lo/inOrderTraversal;

    invoke-direct {v3, v2}, Lo/inOrderTraversal;->extraCallback(Lo/iteratorFrom;)V

    goto :goto_0

    .line 114
    :cond_0
    sget-object v1, Lo/inOrderTraversal;->ICustomTabsCallback:Lo/inOrderTraversal;

    invoke-direct {v1}, Lo/inOrderTraversal;->onMessageChannelReady()V

    .line 116
    :cond_1
    sget-object v1, Lo/inOrderTraversal;->ICustomTabsCallback:Lo/inOrderTraversal;
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
.method public final declared-synchronized onNavigationEvent(Ljava/lang/String;)Lo/iteratorFrom;
    .locals 2

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lo/inOrderTraversal;->extraCallback:Ljava/util/LinkedHashMap;

    const-string v1, "policy"

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/iteratorFrom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1910
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
