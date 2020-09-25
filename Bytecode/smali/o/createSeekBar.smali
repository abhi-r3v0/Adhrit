.class public Lo/createSeekBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/createSeekBar$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Ljava/util/concurrent/Executor;


# instance fields
.field private final extraCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/createMultiAutoCompleteTextView<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile onMessageChannelReady:Lo/verifyNotNull;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/verifyNotNull<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Landroid/os/Handler;

.field private final onPostMessage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/createMultiAutoCompleteTextView<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lo/createSeekBar;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lo/verifyNotNull<",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lo/createSeekBar;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lo/verifyNotNull<",
            "TT;>;>;Z)V"
        }
    .end annotation

    const-string v0, "A task may only be set once."

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Ljava/util/LinkedHashSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v1, p0, Lo/createSeekBar;->onPostMessage:Ljava/util/Set;

    .line 40
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v1, p0, Lo/createSeekBar;->extraCallback:Ljava/util/Set;

    .line 41
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lo/createSeekBar;->onNavigationEvent:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lo/createSeekBar;->onMessageChannelReady:Lo/verifyNotNull;

    if-eqz p2, :cond_2

    .line 57
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/verifyNotNull;

    .line 1067
    iget-object p2, p0, Lo/createSeekBar;->onMessageChannelReady:Lo/verifyNotNull;

    if-nez p2, :cond_0

    .line 1070
    iput-object p1, p0, Lo/createSeekBar;->onMessageChannelReady:Lo/verifyNotNull;

    .line 1123
    iget-object p1, p0, Lo/createSeekBar;->onNavigationEvent:Landroid/os/Handler;

    new-instance p2, Lo/createSeekBar$1;

    invoke-direct {p2, p0}, Lo/createSeekBar$1;-><init>(Lo/createSeekBar;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1068
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 59
    new-instance p2, Lo/verifyNotNull;

    invoke-direct {p2, p1}, Lo/verifyNotNull;-><init>(Ljava/lang/Throwable;)V

    .line 2067
    iget-object p1, p0, Lo/createSeekBar;->onMessageChannelReady:Lo/verifyNotNull;

    if-nez p1, :cond_1

    .line 2070
    iput-object p2, p0, Lo/createSeekBar;->onMessageChannelReady:Lo/verifyNotNull;

    .line 2123
    iget-object p1, p0, Lo/createSeekBar;->onNavigationEvent:Landroid/os/Handler;

    new-instance p2, Lo/createSeekBar$1;

    invoke-direct {p2, p0}, Lo/createSeekBar$1;-><init>(Lo/createSeekBar;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2068
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_2
    sget-object p2, Lo/createSeekBar;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    new-instance v0, Lo/createSeekBar$onNavigationEvent;

    invoke-direct {v0, p0, p1}, Lo/createSeekBar$onNavigationEvent;-><init>(Lo/createSeekBar;Ljava/util/concurrent/Callable;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/createSeekBar;)Lo/verifyNotNull;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/createSeekBar;->onMessageChannelReady:Lo/verifyNotNull;

    return-object p0
.end method

.method private declared-synchronized ICustomTabsCallback(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    .line 151
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/createSeekBar;->extraCallback:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Lottie encountered an error but no failure listener was added:"

    .line 153
    invoke-static {v0, p1}, Lo/onContentScrollStarted;->onPostMessage(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 157
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/createMultiAutoCompleteTextView;

    .line 158
    invoke-interface {v1, p1}, Lo/createMultiAutoCompleteTextView;->onPostMessage(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/createSeekBar;Ljava/lang/Object;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lo/createSeekBar;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized extraCallback(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/createSeekBar;->onPostMessage:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/createMultiAutoCompleteTextView;

    .line 144
    invoke-interface {v1, p1}, Lo/createMultiAutoCompleteTextView;->onPostMessage(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic onNavigationEvent(Lo/createSeekBar;Lo/verifyNotNull;)V
    .locals 1

    .line 5067
    iget-object v0, p0, Lo/createSeekBar;->onMessageChannelReady:Lo/verifyNotNull;

    if-nez v0, :cond_0

    .line 5070
    iput-object p1, p0, Lo/createSeekBar;->onMessageChannelReady:Lo/verifyNotNull;

    .line 5123
    iget-object p1, p0, Lo/createSeekBar;->onNavigationEvent:Landroid/os/Handler;

    new-instance v0, Lo/createSeekBar$1;

    invoke-direct {v0, p0}, Lo/createSeekBar$1;-><init>(Lo/createSeekBar;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 5068
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A task may only be set once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic onPostMessage(Lo/createSeekBar;Ljava/lang/Throwable;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lo/createSeekBar;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback(Lo/createMultiAutoCompleteTextView;)Lo/createSeekBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/createMultiAutoCompleteTextView<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lo/createSeekBar<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lo/createSeekBar;->onMessageChannelReady:Lo/verifyNotNull;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/createSeekBar;->onMessageChannelReady:Lo/verifyNotNull;

    .line 4032
    iget-object v0, v0, Lo/verifyNotNull;->ICustomTabsCallback:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lo/createSeekBar;->onMessageChannelReady:Lo/verifyNotNull;

    .line 5032
    iget-object v0, v0, Lo/verifyNotNull;->ICustomTabsCallback:Ljava/lang/Throwable;

    .line 104
    invoke-interface {p1, v0}, Lo/createMultiAutoCompleteTextView;->onPostMessage(Ljava/lang/Object;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lo/createSeekBar;->extraCallback:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback(Lo/createMultiAutoCompleteTextView;)Lo/createSeekBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/createMultiAutoCompleteTextView<",
            "TT;>;)",
            "Lo/createSeekBar<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lo/createSeekBar;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(Lo/createMultiAutoCompleteTextView;)Lo/createSeekBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/createMultiAutoCompleteTextView<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lo/createSeekBar<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lo/createSeekBar;->extraCallback:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage(Lo/createMultiAutoCompleteTextView;)Lo/createSeekBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/createMultiAutoCompleteTextView<",
            "TT;>;)",
            "Lo/createSeekBar<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lo/createSeekBar;->onMessageChannelReady:Lo/verifyNotNull;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/createSeekBar;->onMessageChannelReady:Lo/verifyNotNull;

    .line 3028
    iget-object v0, v0, Lo/verifyNotNull;->onPostMessage:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lo/createSeekBar;->onMessageChannelReady:Lo/verifyNotNull;

    .line 4028
    iget-object v0, v0, Lo/verifyNotNull;->onPostMessage:Ljava/lang/Object;

    .line 80
    invoke-interface {p1, v0}, Lo/createMultiAutoCompleteTextView;->onPostMessage(Ljava/lang/Object;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lo/createSeekBar;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
