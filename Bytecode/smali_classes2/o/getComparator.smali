.class public final Lo/getComparator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getComparator$ICustomTabsCallback;,
        Lo/getComparator$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Ljava/util/logging/Logger;

.field private static onPostMessage:Lo/getComparator;


# instance fields
.field private ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getSuccessorKey;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Lo/reverseIteratorFrom$extraCallback;

.field private final onMessageChannelReady:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lo/getSuccessorKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lo/getComparator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/getComparator;->onNavigationEvent:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lo/getComparator$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getComparator$onNavigationEvent;-><init>(Lo/getComparator;B)V

    iput-object v0, p0, Lo/getComparator;->extraCallback:Lo/reverseIteratorFrom$extraCallback;

    .line 48
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lo/getComparator;->onMessageChannelReady:Ljava/util/LinkedHashSet;

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/getComparator;->ICustomTabsCallback:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized ICustomTabsCallback()Lo/getComparator;
    .locals 6

    const-class v0, Lo/getComparator;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lo/getComparator;->onPostMessage:Lo/getComparator;

    if-nez v1, :cond_2

    .line 101
    const-class v1, Lo/getSuccessorKey;

    .line 103
    invoke-static {}, Lo/getComparator;->onMessageChannelReady()Ljava/util/List;

    move-result-object v2

    const-class v3, Lo/getSuccessorKey;

    .line 104
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lo/getComparator$ICustomTabsCallback;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lo/getComparator$ICustomTabsCallback;-><init>(B)V

    .line 101
    invoke-static {v1, v2, v3, v4}, Lo/translate;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lo/translate$extraCallback;)Ljava/util/List;

    move-result-object v1

    .line 106
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    sget-object v2, Lo/getComparator;->onNavigationEvent:Ljava/util/logging/Logger;

    const-string v3, "No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 110
    :cond_0
    new-instance v2, Lo/getComparator;

    invoke-direct {v2}, Lo/getComparator;-><init>()V

    sput-object v2, Lo/getComparator;->onPostMessage:Lo/getComparator;

    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getSuccessorKey;

    .line 112
    sget-object v3, Lo/getComparator;->onNavigationEvent:Ljava/util/logging/Logger;

    const-string v4, "Service loader found "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 114
    sget-object v3, Lo/getComparator;->onPostMessage:Lo/getComparator;

    invoke-direct {v3, v2}, Lo/getComparator;->onMessageChannelReady(Lo/getSuccessorKey;)V

    goto :goto_0

    .line 117
    :cond_1
    sget-object v1, Lo/getComparator;->onPostMessage:Lo/getComparator;

    invoke-direct {v1}, Lo/getComparator;->onPostMessage()V

    .line 119
    :cond_2
    sget-object v1, Lo/getComparator;->onPostMessage:Lo/getComparator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static onMessageChannelReady()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "o.onConnectionReady"

    .line 141
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 143
    sget-object v2, Lo/getComparator;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find DNS NameResolver"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized onMessageChannelReady(Lo/getSuccessorKey;)V
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lo/getComparator;->onMessageChannelReady:Ljava/util/LinkedHashSet;

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

.method private declared-synchronized onPostMessage()V
    .locals 2

    monitor-enter p0

    .line 84
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/getComparator;->onMessageChannelReady:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    new-instance v1, Lo/getComparator$4;

    invoke-direct {v1}, Lo/getComparator$4;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 93
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/getComparator;->ICustomTabsCallback:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized extraCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getSuccessorKey;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lo/getComparator;->ICustomTabsCallback:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
