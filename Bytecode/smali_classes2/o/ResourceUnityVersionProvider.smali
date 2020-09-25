.class final Lo/ResourceUnityVersionProvider;
.super Lo/writeSessionJsonFile;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ResourceUnityVersionProvider$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/writeSessionJsonFile<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/FirebaseCrashlyticsNdk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ResourceUnityVersionProvider$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lo/writeSessionJsonFile;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/ResourceUnityVersionProvider;->onPostMessage:Landroid/os/Handler;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ResourceUnityVersionProvider;->ICustomTabsCallback:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ResourceUnityVersionProvider;->extraCallback:Ljava/util/Set;

    return-void
.end method

.method private extraCallback(Landroid/view/View;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lo/FirebaseCrashlyticsNdk;",
            ">;)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lo/ResourceUnityVersionProvider;->extraCallback:Ljava/util/Set;

    monitor-enter v0

    .line 120
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 122
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/FirebaseCrashlyticsNdk;

    .line 123
    new-instance v4, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;

    iget-object v5, p0, Lo/ResourceUnityVersionProvider;->onPostMessage:Landroid/os/Handler;

    invoke-direct {v4, p1, v3, v5}, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;-><init>(Landroid/view/View;Lo/FirebaseCrashlyticsNdk;Landroid/os/Handler;)V

    .line 124
    iget-object v3, p0, Lo/ResourceUnityVersionProvider;->extraCallback:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
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

.method private onPostMessage()V
    .locals 2

    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lo/ResourceUnityVersionProvider;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lo/ResourceUnityVersionProvider;->onNavigationEvent()V

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lo/ResourceUnityVersionProvider;->onPostMessage:Landroid/os/Handler;

    new-instance v1, Lo/ResourceUnityVersionProvider$5;

    invoke-direct {v1, p0}, Lo/ResourceUnityVersionProvider$5;-><init>(Lo/ResourceUnityVersionProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Landroid/app/Activity;

    .line 2045
    invoke-super {p0, p1}, Lo/writeSessionJsonFile;->ICustomTabsCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/FirebaseCrashlyticsNdk;",
            ">;>;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lo/ResourceUnityVersionProvider;->extraCallback:Ljava/util/Set;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lo/ResourceUnityVersionProvider;->extraCallback:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;

    const/4 v3, 0x1

    .line 1169
    iput-boolean v3, v2, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 1170
    iget-object v3, v2, Lo/ResourceUnityVersionProvider$ICustomTabsCallback;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Lo/ResourceUnityVersionProvider;->extraCallback:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    iget-object v0, p0, Lo/ResourceUnityVersionProvider;->ICustomTabsCallback:Ljava/util/Map;

    monitor-enter v0

    .line 74
    :try_start_1
    iget-object v1, p0, Lo/ResourceUnityVersionProvider;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 75
    iget-object v1, p0, Lo/ResourceUnityVersionProvider;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 76
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-direct {p0}, Lo/ResourceUnityVersionProvider;->onPostMessage()V

    return-void

    :catchall_0
    move-exception p1

    .line 76
    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 71
    monitor-exit v0

    throw p1
.end method

.method final onNavigationEvent()V
    .locals 6

    .line 2033
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 2036
    iget-object v0, p0, Lo/writeSessionJsonFile;->onNavigationEvent:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 102
    iget-object v3, p0, Lo/ResourceUnityVersionProvider;->ICustomTabsCallback:Ljava/util/Map;

    monitor-enter v3

    .line 103
    :try_start_0
    iget-object v4, p0, Lo/ResourceUnityVersionProvider;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 104
    iget-object v4, p0, Lo/ResourceUnityVersionProvider;->ICustomTabsCallback:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 105
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 108
    invoke-direct {p0, v1, v2}, Lo/ResourceUnityVersionProvider;->extraCallback(Landroid/view/View;Ljava/util/List;)V

    :cond_1
    if-eqz v4, :cond_0

    .line 112
    invoke-direct {p0, v1, v4}, Lo/ResourceUnityVersionProvider;->extraCallback(Landroid/view/View;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 105
    monitor-exit v3

    throw v0

    :cond_2
    return-void

    .line 2034
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t remove an activity when not on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onNavigationEvent(Landroid/app/Activity;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lo/writeSessionJsonFile;->ICustomTabsCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Landroid/app/Activity;

    .line 3036
    invoke-super {p0, p1}, Lo/writeSessionJsonFile;->onNavigationEvent(Ljava/lang/Object;)V

    .line 3037
    invoke-direct {p0}, Lo/ResourceUnityVersionProvider;->onPostMessage()V

    return-void
.end method

.method public final onPostMessage(Landroid/app/Activity;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lo/writeSessionJsonFile;->onNavigationEvent(Ljava/lang/Object;)V

    .line 37
    invoke-direct {p0}, Lo/ResourceUnityVersionProvider;->onPostMessage()V

    return-void
.end method
