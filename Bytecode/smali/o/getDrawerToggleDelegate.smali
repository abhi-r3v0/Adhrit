.class public final Lo/getDrawerToggleDelegate;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDrawerToggleDelegate$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static ICustomTabsCallback$Stub$Proxy:Lo/getDrawerToggleDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getDrawerToggleDelegate<",
            "*>;"
        }
    .end annotation
.end field

.field public static final onMessageChannelReady:Ljava/util/concurrent/Executor;

.field private static volatile onNavigationEvent:Lo/getDrawerToggleDelegate$onNavigationEvent;


# instance fields
.field private ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getDelegate<",
            "TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private asInterface:Lo/onMenuOpened;

.field private final extraCallback:Ljava/lang/Object;

.field private onPostMessage:Z

.field private onRelationshipValidationResult:Ljava/lang/Exception;

.field private onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Lo/supportNavigateUpTo;->onMessageChannelReady()Ljava/util/concurrent/ExecutorService;

    .line 43
    invoke-static {}, Lo/supportNavigateUpTo;->ICustomTabsCallback()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lo/getDrawerToggleDelegate;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    .line 48
    invoke-static {}, Lo/onContentChanged;->extraCallback()Ljava/util/concurrent/Executor;

    .line 1027
    new-instance v0, Lo/getDrawerToggleDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getDrawerToggleDelegate;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lo/getDrawerToggleDelegate;->ICustomTabsCallback$Stub$Proxy:Lo/getDrawerToggleDelegate;

    .line 1028
    new-instance v0, Lo/getDrawerToggleDelegate;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lo/getDrawerToggleDelegate;-><init>(Ljava/lang/Object;)V

    .line 1029
    new-instance v0, Lo/getDrawerToggleDelegate;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lo/getDrawerToggleDelegate;-><init>(Ljava/lang/Object;)V

    .line 1030
    new-instance v0, Lo/getDrawerToggleDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getDrawerToggleDelegate;-><init>(B)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getDrawerToggleDelegate;->asBinder:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/getDrawerToggleDelegate;->asBinder:Ljava/util/List;

    .line 109
    invoke-virtual {p0}, Lo/getDrawerToggleDelegate;->asInterface()Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getDrawerToggleDelegate;->asBinder:Ljava/util/List;

    .line 104
    invoke-virtual {p0, p1}, Lo/getDrawerToggleDelegate;->ICustomTabsCallback(Ljava/lang/Object;)Z

    return-void
.end method

.method public static ICustomTabsCallback()Lo/getDrawerToggleDelegate$onNavigationEvent;
    .locals 1

    .line 79
    sget-object v0, Lo/getDrawerToggleDelegate;->onNavigationEvent:Lo/getDrawerToggleDelegate$onNavigationEvent;

    return-object v0
.end method

.method private asBinder()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-boolean v1, p0, Lo/getDrawerToggleDelegate;->onPostMessage:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 130
    monitor-exit v0

    throw v1
.end method

.method private static extraCallback(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lo/getDrawerToggleDelegate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/getDrawerToggleDelegate<",
            "TTResult;>;"
        }
    .end annotation

    .line 346
    new-instance v0, Lo/dispatchKeyEvent;

    invoke-direct {v0}, Lo/dispatchKeyEvent;-><init>()V

    .line 348
    :try_start_0
    new-instance v1, Lo/getDrawerToggleDelegate$3;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p0}, Lo/getDrawerToggleDelegate$3;-><init>(Lo/extraCallback$onMessageChannelReady;Lo/dispatchKeyEvent;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 366
    new-instance p1, Lbolts/ExecutorException;

    invoke-direct {p1, p0}, Lbolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    .line 6046
    iget-object p0, v0, Lo/dispatchKeyEvent;->ICustomTabsCallback:Lo/getDrawerToggleDelegate;

    invoke-virtual {p0, p1}, Lo/getDrawerToggleDelegate;->onPostMessage(Ljava/lang/Exception;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7025
    :goto_0
    iget-object p0, v0, Lo/dispatchKeyEvent;->ICustomTabsCallback:Lo/getDrawerToggleDelegate;

    return-object p0

    .line 5072
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot set the error on a completed task."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onMessageChannelReady(Ljava/lang/Exception;)Lo/getDrawerToggleDelegate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lo/getDrawerToggleDelegate<",
            "TTResult;>;"
        }
    .end annotation

    .line 221
    new-instance v0, Lo/dispatchKeyEvent;

    invoke-direct {v0}, Lo/dispatchKeyEvent;-><init>()V

    .line 4046
    iget-object v1, v0, Lo/dispatchKeyEvent;->ICustomTabsCallback:Lo/getDrawerToggleDelegate;

    invoke-virtual {v1, p0}, Lo/getDrawerToggleDelegate;->onPostMessage(Ljava/lang/Exception;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5025
    iget-object p0, v0, Lo/dispatchKeyEvent;->ICustomTabsCallback:Lo/getDrawerToggleDelegate;

    return-object p0

    .line 3072
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the error on a completed task."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onMessageChannelReady(Ljava/lang/Object;)Lo/getDrawerToggleDelegate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lo/getDrawerToggleDelegate<",
            "TTResult;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 207
    sget-object p0, Lo/getDrawerToggleDelegate;->ICustomTabsCallback$Stub$Proxy:Lo/getDrawerToggleDelegate;

    return-object p0

    .line 212
    :cond_0
    new-instance v0, Lo/dispatchKeyEvent;

    invoke-direct {v0}, Lo/dispatchKeyEvent;-><init>()V

    .line 2039
    iget-object v1, v0, Lo/dispatchKeyEvent;->ICustomTabsCallback:Lo/getDrawerToggleDelegate;

    invoke-virtual {v1, p0}, Lo/getDrawerToggleDelegate;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3025
    iget-object p0, v0, Lo/dispatchKeyEvent;->ICustomTabsCallback:Lo/getDrawerToggleDelegate;

    return-object p0

    .line 1063
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the result of a completed task."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onMessageChannelReady(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lo/getDrawerToggleDelegate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/getDrawerToggleDelegate<",
            "TTResult;>;"
        }
    .end annotation

    .line 338
    invoke-static {p0, p1}, Lo/getDrawerToggleDelegate;->extraCallback(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lo/getDrawerToggleDelegate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/dispatchKeyEvent;Lo/getDelegate;Lo/getDrawerToggleDelegate;Ljava/util/concurrent/Executor;Lo/extraCallback$onMessageChannelReady;)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Lo/getDrawerToggleDelegate;->onPostMessage(Lo/dispatchKeyEvent;Lo/getDelegate;Lo/getDrawerToggleDelegate;Ljava/util/concurrent/Executor;Lo/extraCallback$onMessageChannelReady;)V

    return-void
.end method

.method private static onPostMessage(Lo/dispatchKeyEvent;Lo/getDelegate;Lo/getDrawerToggleDelegate;Ljava/util/concurrent/Executor;Lo/extraCallback$onMessageChannelReady;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/dispatchKeyEvent<",
            "TTContinuationResult;>;",
            "Lo/getDelegate<",
            "TTResult;TTContinuationResult;>;",
            "Lo/getDrawerToggleDelegate<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lo/extraCallback$onMessageChannelReady;",
            ")V"
        }
    .end annotation

    .line 863
    :try_start_0
    new-instance v0, Lo/getDrawerToggleDelegate$2;

    invoke-direct {v0, p4, p0, p1, p2}, Lo/getDrawerToggleDelegate$2;-><init>(Lo/extraCallback$onMessageChannelReady;Lo/dispatchKeyEvent;Lo/getDelegate;Lo/getDrawerToggleDelegate;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 882
    new-instance p2, Lbolts/ExecutorException;

    invoke-direct {p2, p1}, Lbolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    .line 9046
    iget-object p0, p0, Lo/dispatchKeyEvent;->ICustomTabsCallback:Lo/getDrawerToggleDelegate;

    invoke-virtual {p0, p2}, Lo/getDrawerToggleDelegate;->onPostMessage(Ljava/lang/Exception;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 8072
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot set the error on a completed task."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private onRelationshipValidationResult()V
    .locals 3

    .line 953
    iget-object v0, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 954
    :try_start_0
    iget-object v1, p0, Lo/getDrawerToggleDelegate;->asBinder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    :try_start_1
    invoke-interface {v2, p0}, Lo/getDelegate;->onPostMessage(Lo/getDrawerToggleDelegate;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 960
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 958
    throw v1

    :cond_0
    const/4 v1, 0x0

    .line 963
    iput-object v1, p0, Lo/getDrawerToggleDelegate;->asBinder:Ljava/util/List;

    .line 964
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 988
    :try_start_0
    iget-boolean v1, p0, Lo/getDrawerToggleDelegate;->onPostMessage:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 989
    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 991
    iput-boolean v1, p0, Lo/getDrawerToggleDelegate;->onPostMessage:Z

    .line 992
    iput-object p1, p0, Lo/getDrawerToggleDelegate;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    .line 993
    iget-object p1, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 994
    invoke-direct {p0}, Lo/getDrawerToggleDelegate;->onRelationshipValidationResult()V

    .line 995
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    .line 996
    monitor-exit v0

    throw p1
.end method

.method final asInterface()Z
    .locals 3

    .line 971
    iget-object v0, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 972
    :try_start_0
    iget-boolean v1, p0, Lo/getDrawerToggleDelegate;->onPostMessage:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 973
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 975
    iput-boolean v1, p0, Lo/getDrawerToggleDelegate;->onPostMessage:Z

    .line 976
    iput-boolean v1, p0, Lo/getDrawerToggleDelegate;->ICustomTabsCallback:Z

    .line 977
    iget-object v2, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 978
    invoke-direct {p0}, Lo/getDrawerToggleDelegate;->onRelationshipValidationResult()V

    .line 979
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 980
    monitor-exit v0

    throw v1
.end method

.method public final extraCallback(Lo/getDelegate;Ljava/util/concurrent/Executor;)Lo/getDrawerToggleDelegate;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getDelegate<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/getDrawerToggleDelegate<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 647
    new-instance v0, Lo/dispatchKeyEvent;

    invoke-direct {v0}, Lo/dispatchKeyEvent;-><init>()V

    .line 648
    iget-object v1, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    monitor-enter v1

    .line 649
    :try_start_0
    invoke-direct {p0}, Lo/getDrawerToggleDelegate;->asBinder()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 651
    iget-object v4, p0, Lo/getDrawerToggleDelegate;->asBinder:Ljava/util/List;

    new-instance v5, Lo/getDrawerToggleDelegate$4;

    invoke-direct {v5, v0, p1, p2, v3}, Lo/getDrawerToggleDelegate$4;-><init>(Lo/dispatchKeyEvent;Lo/getDelegate;Ljava/util/concurrent/Executor;Lo/extraCallback$onMessageChannelReady;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 661
    invoke-static {v0, p1, p0, p2, v3}, Lo/getDrawerToggleDelegate;->onPostMessage(Lo/dispatchKeyEvent;Lo/getDelegate;Lo/getDrawerToggleDelegate;Ljava/util/concurrent/Executor;Lo/extraCallback$onMessageChannelReady;)V

    .line 8025
    :cond_1
    iget-object p1, v0, Lo/dispatchKeyEvent;->ICustomTabsCallback:Lo/getDrawerToggleDelegate;

    return-object p1

    :catchall_0
    move-exception p1

    .line 659
    monitor-exit v1

    throw p1
.end method

.method public final extraCallback()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lo/getDrawerToggleDelegate;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 148
    monitor-exit v0

    throw v1
.end method

.method public final onMessageChannelReady()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-boolean v1, p0, Lo/getDrawerToggleDelegate;->ICustomTabsCallback:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 139
    monitor-exit v0

    throw v1
.end method

.method public final onNavigationEvent()Ljava/lang/Exception;
    .locals 3

    .line 164
    iget-object v0, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lo/getDrawerToggleDelegate;->onRelationshipValidationResult:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 166
    iput-boolean v1, p0, Lo/getDrawerToggleDelegate;->onTransact:Z

    .line 167
    iget-object v1, p0, Lo/getDrawerToggleDelegate;->asInterface:Lo/onMenuOpened;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lo/getDrawerToggleDelegate;->asInterface:Lo/onMenuOpened;

    const/4 v2, 0x0

    .line 1031
    iput-object v2, v1, Lo/onMenuOpened;->extraCallback:Lo/getDrawerToggleDelegate;

    .line 169
    iput-object v2, p0, Lo/getDrawerToggleDelegate;->asInterface:Lo/onMenuOpened;

    .line 172
    :cond_0
    iget-object v1, p0, Lo/getDrawerToggleDelegate;->onRelationshipValidationResult:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 173
    monitor-exit v0

    throw v1
.end method

.method public final onPostMessage()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lo/getDrawerToggleDelegate;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 157
    monitor-exit v0

    throw v1
.end method

.method final onPostMessage(Ljava/lang/Exception;)Z
    .locals 3

    .line 1003
    iget-object v0, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_0
    iget-boolean v1, p0, Lo/getDrawerToggleDelegate;->onPostMessage:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1005
    monitor-exit v0

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 1007
    iput-boolean v1, p0, Lo/getDrawerToggleDelegate;->onPostMessage:Z

    .line 1008
    iput-object p1, p0, Lo/getDrawerToggleDelegate;->onRelationshipValidationResult:Ljava/lang/Exception;

    .line 1009
    iput-boolean v2, p0, Lo/getDrawerToggleDelegate;->onTransact:Z

    .line 1010
    iget-object p1, p0, Lo/getDrawerToggleDelegate;->extraCallback:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1011
    invoke-direct {p0}, Lo/getDrawerToggleDelegate;->onRelationshipValidationResult()V

    .line 1014
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    .line 1015
    monitor-exit v0

    throw p1
.end method
