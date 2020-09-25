.class public final Lo/getLifecycle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDefaultViewModelProviderFactory$onPostMessage;


# static fields
.field private static final extraCallback:Ljava/lang/String;


# instance fields
.field private final onMessageChannelReady:Ljava/lang/Object;

.field private final onNavigationEvent:[Lo/getDefaultViewModelProviderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lo/getDefaultViewModelProviderFactory<",
            "*>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/loadsAllData$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkConstraintsTracker"

    .line 46
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getLifecycle;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;Lo/loadsAllData$onPostMessage;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 70
    iput-object p3, p0, Lo/getLifecycle;->onPostMessage:Lo/loadsAllData$onPostMessage;

    const/4 p3, 0x7

    new-array p3, p3, [Lo/getDefaultViewModelProviderFactory;

    .line 71
    new-instance v0, Lo/onBackPressed;

    invoke-direct {v0, p1, p2}, Lo/onBackPressed;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V

    const/4 v1, 0x0

    aput-object v0, p3, v1

    new-instance v0, Lo/getViewModelStore;

    invoke-direct {v0, p1, p2}, Lo/getViewModelStore;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V

    const/4 v1, 0x1

    aput-object v0, p3, v1

    new-instance v0, Lo/getOnBackPressedDispatcher;

    invoke-direct {v0, p1, p2}, Lo/getOnBackPressedDispatcher;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V

    const/4 v1, 0x2

    aput-object v0, p3, v1

    new-instance v0, Lo/getLastCustomNonConfigurationInstance;

    invoke-direct {v0, p1, p2}, Lo/getLastCustomNonConfigurationInstance;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V

    const/4 v1, 0x3

    aput-object v0, p3, v1

    new-instance v0, Lo/ComponentActivity$2;

    invoke-direct {v0, p1, p2}, Lo/ComponentActivity$2;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V

    const/4 v1, 0x4

    aput-object v0, p3, v1

    new-instance v0, Lo/access$001;

    invoke-direct {v0, p1, p2}, Lo/access$001;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V

    const/4 v1, 0x5

    aput-object v0, p3, v1

    new-instance v0, Lo/getSavedStateRegistry;

    invoke-direct {v0, p1, p2}, Lo/getSavedStateRegistry;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V

    const/4 p1, 0x6

    aput-object v0, p3, p1

    iput-object p3, p0, Lo/getLifecycle;->onNavigationEvent:[Lo/getDefaultViewModelProviderFactory;

    .line 80
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getLifecycle;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lo/getLifecycle;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lo/getLifecycle;->onPostMessage:Lo/loadsAllData$onPostMessage;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lo/getLifecycle;->onPostMessage:Lo/loadsAllData$onPostMessage;

    invoke-interface {v1, p1}, Lo/loadsAllData$onPostMessage;->onMessageChannelReady(Ljava/util/List;)V

    .line 168
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)Z
    .locals 8

    .line 134
    iget-object v0, p0, Lo/getLifecycle;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lo/getLifecycle;->onNavigationEvent:[Lo/getDefaultViewModelProviderFactory;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    .line 2122
    iget-object v7, v6, Lo/getDefaultViewModelProviderFactory;->onPostMessage:Ljava/lang/Object;

    if-eqz v7, :cond_0

    iget-object v7, v6, Lo/getDefaultViewModelProviderFactory;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lo/getDefaultViewModelProviderFactory;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Lo/getDefaultViewModelProviderFactory;->extraCallback:Ljava/util/List;

    .line 2123
    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_1

    .line 137
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v1

    sget-object v2, Lo/getLifecycle;->extraCallback:Ljava/lang/String;

    const-string v4, "Work %s constrained by %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v3

    .line 138
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v5

    .line 137
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p1, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    :cond_2
    monitor-exit v0

    return v5

    :catchall_0
    move-exception p1

    .line 143
    monitor-exit v0

    throw p1
.end method

.method public final extraCallback(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lo/getLifecycle;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    invoke-virtual {p0, v2}, Lo/getLifecycle;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v3

    sget-object v4, Lo/getLifecycle;->extraCallback:Ljava/lang/String;

    const-string v5, "Constraints met for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 153
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_1
    iget-object p1, p0, Lo/getLifecycle;->onPostMessage:Lo/loadsAllData$onPostMessage;

    if-eqz p1, :cond_2

    .line 157
    iget-object p1, p0, Lo/getLifecycle;->onPostMessage:Lo/loadsAllData$onPostMessage;

    invoke-interface {p1, v1}, Lo/loadsAllData$onPostMessage;->onPostMessage(Ljava/util/List;)V

    .line 159
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

.method public final onNavigationEvent()V
    .locals 6

    .line 119
    iget-object v0, p0, Lo/getLifecycle;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lo/getLifecycle;->onNavigationEvent:[Lo/getDefaultViewModelProviderFactory;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2108
    iget-object v5, v4, Lo/getDefaultViewModelProviderFactory;->extraCallback:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2109
    iget-object v5, v4, Lo/getDefaultViewModelProviderFactory;->extraCallback:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 2110
    iget-object v5, v4, Lo/getDefaultViewModelProviderFactory;->onMessageChannelReady:Lo/ImmLeaksCleaner;

    invoke-virtual {v5, v4}, Lo/ImmLeaksCleaner;->onNavigationEvent(Lo/onSaveInstanceState;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onPostMessage(Ljava/lang/Iterable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/onDestroy;",
            ">;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lo/getLifecycle;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lo/getLifecycle;->onNavigationEvent:[Lo/getDefaultViewModelProviderFactory;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 1072
    iget-object v6, v5, Lo/getDefaultViewModelProviderFactory;->ICustomTabsCallback:Lo/getDefaultViewModelProviderFactory$onPostMessage;

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    .line 1073
    iput-object v6, v5, Lo/getDefaultViewModelProviderFactory;->ICustomTabsCallback:Lo/getDefaultViewModelProviderFactory$onPostMessage;

    .line 1074
    iget-object v6, v5, Lo/getDefaultViewModelProviderFactory;->ICustomTabsCallback:Lo/getDefaultViewModelProviderFactory$onPostMessage;

    iget-object v7, v5, Lo/getDefaultViewModelProviderFactory;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lo/getDefaultViewModelProviderFactory;->onNavigationEvent(Lo/getDefaultViewModelProviderFactory$onPostMessage;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, p0, Lo/getLifecycle;->onNavigationEvent:[Lo/getDefaultViewModelProviderFactory;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 106
    invoke-virtual {v5, p1}, Lo/getDefaultViewModelProviderFactory;->extraCallback(Ljava/lang/Iterable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 109
    :cond_2
    iget-object p1, p0, Lo/getLifecycle;->onNavigationEvent:[Lo/getDefaultViewModelProviderFactory;

    array-length v1, p1

    :goto_2
    if-ge v3, v1, :cond_4

    aget-object v2, p1, v3

    .line 2072
    iget-object v4, v2, Lo/getDefaultViewModelProviderFactory;->ICustomTabsCallback:Lo/getDefaultViewModelProviderFactory$onPostMessage;

    if-eq v4, p0, :cond_3

    .line 2073
    iput-object p0, v2, Lo/getDefaultViewModelProviderFactory;->ICustomTabsCallback:Lo/getDefaultViewModelProviderFactory$onPostMessage;

    .line 2074
    iget-object v4, v2, Lo/getDefaultViewModelProviderFactory;->ICustomTabsCallback:Lo/getDefaultViewModelProviderFactory$onPostMessage;

    iget-object v5, v2, Lo/getDefaultViewModelProviderFactory;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lo/getDefaultViewModelProviderFactory;->onNavigationEvent(Lo/getDefaultViewModelProviderFactory$onPostMessage;Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 112
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
