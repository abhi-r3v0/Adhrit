.class public Lo/userDataToJson;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FileBackedNativeSessionFile;


# static fields
.field private static defaultInstance:Lo/userDataToJson;


# instance fields
.field final globalEventRegistrations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lo/addDelayedShutdownHook;",
            "Ljava/util/List<",
            "Lo/addDelayedShutdownHook;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lo/userDataToJson;

    invoke-direct {v0}, Lo/userDataToJson;-><init>()V

    sput-object v0, Lo/userDataToJson;->defaultInstance:Lo/userDataToJson;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/userDataToJson;->globalEventRegistrations:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lo/userDataToJson;
    .locals 1

    .line 47
    sget-object v0, Lo/userDataToJson;->defaultInstance:Lo/userDataToJson;

    return-object v0
.end method

.method private unRecordEventRegistration(Lo/addDelayedShutdownHook;)V
    .locals 6

    .line 78
    iget-object v0, p0, Lo/userDataToJson;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lo/userDataToJson;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 83
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 84
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 86
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 90
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lo/userDataToJson;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v4, :cond_4

    .line 94
    invoke-virtual {p1}, Lo/addDelayedShutdownHook;->isUserInitiated()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    invoke-static {v2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 98
    invoke-virtual {p1}, Lo/addDelayedShutdownHook;->getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v1

    invoke-virtual {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->isDefault()Z

    move-result v1

    if-nez v1, :cond_7

    .line 101
    invoke-virtual {p1}, Lo/addDelayedShutdownHook;->getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v1

    invoke-virtual {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-static {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->defaultQueryAtPath(Lo/ExecutorUtils$2;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Lo/addDelayedShutdownHook;->clone(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/addDelayedShutdownHook;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lo/userDataToJson;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_7

    .line 105
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 106
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_5

    .line 107
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 111
    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 112
    iget-object p1, p0, Lo/userDataToJson;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public onZombied(Lo/addDelayedShutdownHook;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lo/userDataToJson;->unRecordEventRegistration(Lo/addDelayedShutdownHook;)V

    return-void
.end method

.method public recordEventRegistration(Lo/addDelayedShutdownHook;)V
    .locals 4

    .line 51
    iget-object v0, p0, Lo/userDataToJson;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lo/userDataToJson;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object v2, p0, Lo/userDataToJson;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p1}, Lo/addDelayedShutdownHook;->getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v1

    invoke-virtual {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->isDefault()Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    invoke-virtual {p1}, Lo/addDelayedShutdownHook;->getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v1

    invoke-virtual {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-static {v1}, Lo/lambda$awaitEvenIfOnMainThread$0;->defaultQueryAtPath(Lo/ExecutorUtils$2;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/addDelayedShutdownHook;->clone(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/addDelayedShutdownHook;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lo/userDataToJson;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v3, p0, Lo/userDataToJson;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x1

    .line 72
    invoke-virtual {p1, v1}, Lo/addDelayedShutdownHook;->setIsUserInitiated(Z)V

    .line 73
    invoke-virtual {p1, p0}, Lo/addDelayedShutdownHook;->setOnZombied(Lo/FileBackedNativeSessionFile;)V

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public zombifyForRemove(Lo/addDelayedShutdownHook;)V
    .locals 5

    .line 120
    iget-object v0, p0, Lo/userDataToJson;->globalEventRegistrations:Ljava/util/HashMap;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lo/userDataToJson;->globalEventRegistrations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 122
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    invoke-virtual {p1}, Lo/addDelayedShutdownHook;->getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object p1

    invoke-virtual {p1}, Lo/lambda$awaitEvenIfOnMainThread$0;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 138
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/addDelayedShutdownHook;

    .line 139
    invoke-virtual {v3}, Lo/addDelayedShutdownHook;->getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    invoke-virtual {v3}, Lo/addDelayedShutdownHook;->getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v3}, Lo/addDelayedShutdownHook;->zombify()V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 147
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/addDelayedShutdownHook;

    invoke-virtual {p1}, Lo/addDelayedShutdownHook;->zombify()V

    .line 150
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
