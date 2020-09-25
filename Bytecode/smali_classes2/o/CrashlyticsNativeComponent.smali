.class public abstract Lo/CrashlyticsNativeComponent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/openSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/openSession;"
        }
    .end annotation
.end field

.field private final extraCallback:Landroid/content/Context;

.field private final onMessageChannelReady:Landroid/content/IntentFilter;

.field public final onNavigationEvent:Lo/addItemDecoration$onPostMessage;

.field private onPostMessage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/hasCrashDataForSession<",
            "TStateT;>;>;"
        }
    .end annotation
.end field

.field private volatile onRelationshipValidationResult:Z


# direct methods
.method public constructor <init>(Lo/addItemDecoration$onPostMessage;Landroid/content/IntentFilter;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/CrashlyticsNativeComponent;->onPostMessage:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/CrashlyticsNativeComponent;->ICustomTabsCallback:Lo/openSession;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/CrashlyticsNativeComponent;->onRelationshipValidationResult:Z

    iput-object p1, p0, Lo/CrashlyticsNativeComponent;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    iput-object p2, p0, Lo/CrashlyticsNativeComponent;->onMessageChannelReady:Landroid/content/IntentFilter;

    .line 1000
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p3, p1

    :cond_0
    iput-object p3, p0, Lo/CrashlyticsNativeComponent;->extraCallback:Landroid/content/Context;

    return-void
.end method

.method private final ICustomTabsCallback()V
    .locals 3

    iget-boolean v0, p0, Lo/CrashlyticsNativeComponent;->onRelationshipValidationResult:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsNativeComponent;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/CrashlyticsNativeComponent;->ICustomTabsCallback:Lo/openSession;

    if-nez v0, :cond_1

    new-instance v0, Lo/openSession;

    invoke-direct {v0, p0}, Lo/openSession;-><init>(Lo/CrashlyticsNativeComponent;)V

    iput-object v0, p0, Lo/CrashlyticsNativeComponent;->ICustomTabsCallback:Lo/openSession;

    iget-object v1, p0, Lo/CrashlyticsNativeComponent;->extraCallback:Landroid/content/Context;

    iget-object v2, p0, Lo/CrashlyticsNativeComponent;->onMessageChannelReady:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-boolean v0, p0, Lo/CrashlyticsNativeComponent;->onRelationshipValidationResult:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/CrashlyticsNativeComponent;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/CrashlyticsNativeComponent;->ICustomTabsCallback:Lo/openSession;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lo/CrashlyticsNativeComponent;->extraCallback:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/CrashlyticsNativeComponent;->ICustomTabsCallback:Lo/openSession;

    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized extraCallback(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TStateT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lo/CrashlyticsNativeComponent;->onPostMessage:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/hasCrashDataForSession;

    invoke-interface {v1, p1}, Lo/hasCrashDataForSession;->ICustomTabsCallback(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady(Lo/hasCrashDataForSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/hasCrashDataForSession<",
            "TStateT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/CrashlyticsNativeComponent;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    const-string v1, "unregisterListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Unregistered Play Core listener should not be null."

    if-eqz p1, :cond_0

    .line 3000
    iget-object v0, p0, Lo/CrashlyticsNativeComponent;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lo/CrashlyticsNativeComponent;->ICustomTabsCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lo/CrashlyticsNativeComponent;->onRelationshipValidationResult:Z

    invoke-direct {p0}, Lo/CrashlyticsNativeComponent;->ICustomTabsCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(Lo/hasCrashDataForSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/hasCrashDataForSession<",
            "TStateT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/CrashlyticsNativeComponent;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    const-string v1, "registerListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Registered Play Core listener should not be null."

    if-eqz p1, :cond_0

    .line 2000
    iget-object v0, p0, Lo/CrashlyticsNativeComponent;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lo/CrashlyticsNativeComponent;->ICustomTabsCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract onPostMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public final declared-synchronized onPostMessage()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/CrashlyticsNativeComponent;->ICustomTabsCallback:Lo/openSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
