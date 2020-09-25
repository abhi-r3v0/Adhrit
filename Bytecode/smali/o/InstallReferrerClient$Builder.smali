.class public final Lo/InstallReferrerClient$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private extraCallback:I

.field private final onMessageChannelReady:Lo/InstallReferrerCommons;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstallReferrerCommons<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/InstallReferrerCommons;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InstallReferrerCommons<",
            "TV;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lo/InstallReferrerClient$Builder;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lo/InstallReferrerClient$Builder;->extraCallback:I

    .line 32
    iput-object p1, p0, Lo/InstallReferrerClient$Builder;->onMessageChannelReady:Lo/InstallReferrerCommons;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lo/InstallReferrerClient$Builder;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback()I
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    iget v0, p0, Lo/InstallReferrerClient$Builder;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lo/InstallReferrerClient$Builder;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/InstallReferrerClient$Builder;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lo/InstallReferrerClient$Builder;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    iget v1, p0, Lo/InstallReferrerClient$Builder;->extraCallback:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 1128
    :cond_0
    iget-object v3, p0, Lo/InstallReferrerClient$Builder;->onMessageChannelReady:Lo/InstallReferrerCommons;

    invoke-interface {v3, v0}, Lo/InstallReferrerCommons;->onPostMessage(Ljava/lang/Object;)I

    move-result v3

    :goto_0
    sub-int/2addr v1, v3

    .line 90
    iput v1, p0, Lo/InstallReferrerClient$Builder;->extraCallback:I

    .line 91
    iget-object v1, p0, Lo/InstallReferrerClient$Builder;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget p1, p0, Lo/InstallReferrerClient$Builder;->extraCallback:I

    if-nez p2, :cond_1

    goto :goto_1

    .line 2128
    :cond_1
    iget-object v1, p0, Lo/InstallReferrerClient$Builder;->onMessageChannelReady:Lo/InstallReferrerCommons;

    invoke-interface {v1, p2}, Lo/InstallReferrerCommons;->onPostMessage(Ljava/lang/Object;)I

    move-result v2

    :goto_1
    add-int/2addr p1, v2

    .line 92
    iput p1, p0, Lo/InstallReferrerClient$Builder;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent()I
    .locals 1

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lo/InstallReferrerClient$Builder;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lo/InstallReferrerClient$Builder;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lo/InstallReferrerClient$Builder;->ICustomTabsCallback:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 100
    iget v0, p0, Lo/InstallReferrerClient$Builder;->extraCallback:I

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3128
    :cond_0
    iget-object v1, p0, Lo/InstallReferrerClient$Builder;->onMessageChannelReady:Lo/InstallReferrerCommons;

    invoke-interface {v1, p1}, Lo/InstallReferrerCommons;->onPostMessage(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    .line 100
    iput v0, p0, Lo/InstallReferrerClient$Builder;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
