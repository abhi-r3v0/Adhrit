.class public final Lo/RefundAccount;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RefundAccount$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/RefundAccount;


# instance fields
.field private ICustomTabsCallback:Z

.field final onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final onNavigationEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/RefundAccount$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lo/RefundAccount;

    invoke-direct {v0}, Lo/RefundAccount;-><init>()V

    sput-object v0, Lo/RefundAccount;->extraCallback:Lo/RefundAccount;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lo/RefundAccount;->onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lo/RefundAccount;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/RefundAccount;->onNavigationEvent:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lo/RefundAccount;->ICustomTabsCallback:Z

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/app/Application;)V
    .locals 2

    .line 8
    sget-object v0, Lo/RefundAccount;->extraCallback:Lo/RefundAccount;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lo/RefundAccount;->extraCallback:Lo/RefundAccount;

    iget-boolean v1, v1, Lo/RefundAccount;->ICustomTabsCallback:Z

    if-nez v1, :cond_0

    .line 10
    sget-object v1, Lo/RefundAccount;->extraCallback:Lo/RefundAccount;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 11
    sget-object v1, Lo/RefundAccount;->extraCallback:Lo/RefundAccount;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 12
    sget-object p0, Lo/RefundAccount;->extraCallback:Lo/RefundAccount;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/RefundAccount;->ICustomTabsCallback:Z

    .line 13
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final extraCallback(Z)V
    .locals 5

    .line 43
    sget-object v0, Lo/RefundAccount;->extraCallback:Lo/RefundAccount;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lo/RefundAccount;->onNavigationEvent:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lo/RefundAccount$ICustomTabsCallback;

    .line 45
    invoke-interface {v4, p1}, Lo/RefundAccount$ICustomTabsCallback;->onBackgroundStateChanged(Z)V

    goto :goto_0

    .line 47
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


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 27
    iget-object p1, p0, Lo/RefundAccount;->onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    .line 28
    iget-object v1, p0, Lo/RefundAccount;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    .line 30
    invoke-direct {p0, p2}, Lo/RefundAccount;->extraCallback(Z)V

    :cond_0
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 32
    iget-object p1, p0, Lo/RefundAccount;->onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    .line 33
    iget-object v2, p0, Lo/RefundAccount;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    .line 35
    invoke-direct {p0, v0}, Lo/RefundAccount;->extraCallback(Z)V

    :cond_0
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 2

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 38
    iget-object p1, p0, Lo/RefundAccount;->onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lo/RefundAccount;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    invoke-direct {p0, v1}, Lo/RefundAccount;->extraCallback(Z)V

    :cond_0
    return-void
.end method
