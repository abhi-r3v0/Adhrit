.class public final Lo/forUnauthenticatedAccess;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/forUnauthenticatedAccess$onPostMessage;,
        Lo/forUnauthenticatedAccess$onNavigationEvent;,
        Lo/forUnauthenticatedAccess$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lo/limitToLast;",
            ">;"
        }
    .end annotation
.end field

.field final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getRepo;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub$Proxy:Lo/forUnauthenticatedAccess$onNavigationEvent;

.field private ICustomTabsService:Lo/createPersistenceManager;

.field asBinder:Z

.field public final asInterface:Landroid/os/Handler;

.field final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lo/limitToLast;",
            ">;"
        }
    .end annotation
.end field

.field private getInterfaceDescriptor:Landroid/content/Context;

.field private newSession:Lo/forUnauthenticatedAccess$onPostMessage;

.field public final onMessageChannelReady:Lcom/squareup/picasso/Downloader;

.field final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/getRepo;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final onRelationshipValidationResult:Landroid/os/Handler;

.field final onTransact:Lo/doTransaction;

.field private requestPostMessageChannel:Z

.field private warmup:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/picasso/Downloader;Lo/doTransaction;Lo/createPersistenceManager;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lo/forUnauthenticatedAccess$onNavigationEvent;

    invoke-direct {v0}, Lo/forUnauthenticatedAccess$onNavigationEvent;-><init>()V

    iput-object v0, p0, Lo/forUnauthenticatedAccess;->ICustomTabsCallback$Stub$Proxy:Lo/forUnauthenticatedAccess$onNavigationEvent;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    iget-object v0, p0, Lo/forUnauthenticatedAccess;->ICustomTabsCallback$Stub$Proxy:Lo/forUnauthenticatedAccess$onNavigationEvent;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lo/saveUserOverwrite;->extraCallback(Landroid/os/Looper;)V

    .line 104
    iput-object p1, p0, Lo/forUnauthenticatedAccess;->getInterfaceDescriptor:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lo/forUnauthenticatedAccess;->warmup:Ljava/util/concurrent/ExecutorService;

    .line 106
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lo/forUnauthenticatedAccess;->onNavigationEvent:Ljava/util/Map;

    .line 107
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lo/forUnauthenticatedAccess;->extraCallback:Ljava/util/Map;

    .line 108
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lo/forUnauthenticatedAccess;->ICustomTabsCallback:Ljava/util/Map;

    .line 109
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lo/forUnauthenticatedAccess;->onPostMessage:Ljava/util/Set;

    .line 110
    new-instance p2, Lo/forUnauthenticatedAccess$ICustomTabsCallback;

    iget-object v0, p0, Lo/forUnauthenticatedAccess;->ICustomTabsCallback$Stub$Proxy:Lo/forUnauthenticatedAccess$onNavigationEvent;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lo/forUnauthenticatedAccess$ICustomTabsCallback;-><init>(Landroid/os/Looper;Lo/forUnauthenticatedAccess;)V

    iput-object p2, p0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    .line 111
    iput-object p4, p0, Lo/forUnauthenticatedAccess;->onMessageChannelReady:Lcom/squareup/picasso/Downloader;

    .line 112
    iput-object p3, p0, Lo/forUnauthenticatedAccess;->onRelationshipValidationResult:Landroid/os/Handler;

    .line 113
    iput-object p5, p0, Lo/forUnauthenticatedAccess;->onTransact:Lo/doTransaction;

    .line 114
    iput-object p6, p0, Lo/forUnauthenticatedAccess;->ICustomTabsService:Lo/createPersistenceManager;

    .line 115
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lo/forUnauthenticatedAccess;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 116
    iget-object p2, p0, Lo/forUnauthenticatedAccess;->getInterfaceDescriptor:Landroid/content/Context;

    invoke-static {p2}, Lo/saveUserOverwrite;->onMessageChannelReady(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lo/forUnauthenticatedAccess;->asBinder:Z

    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    .line 117
    invoke-static {p1, p2}, Lo/saveUserOverwrite;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lo/forUnauthenticatedAccess;->requestPostMessageChannel:Z

    .line 118
    new-instance p1, Lo/forUnauthenticatedAccess$onPostMessage;

    invoke-direct {p1, p0}, Lo/forUnauthenticatedAccess$onPostMessage;-><init>(Lo/forUnauthenticatedAccess;)V

    iput-object p1, p0, Lo/forUnauthenticatedAccess;->newSession:Lo/forUnauthenticatedAccess$onPostMessage;

    .line 1554
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.AIRPLANE_MODE"

    .line 1555
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1556
    iget-object p3, p1, Lo/forUnauthenticatedAccess$onPostMessage;->onNavigationEvent:Lo/forUnauthenticatedAccess;

    iget-boolean p3, p3, Lo/forUnauthenticatedAccess;->requestPostMessageChannel:Z

    if-eqz p3, :cond_0

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 1557
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1559
    :cond_0
    iget-object p3, p1, Lo/forUnauthenticatedAccess$onPostMessage;->onNavigationEvent:Lo/forUnauthenticatedAccess;

    iget-object p3, p3, Lo/forUnauthenticatedAccess;->getInterfaceDescriptor:Landroid/content/Context;

    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static onMessageChannelReady(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getRepo;",
            ">;)V"
        }
    .end annotation

    .line 457
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 458
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRepo;

    .line 21378
    iget-object v0, v0, Lo/getRepo;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    .line 460
    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_3

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getRepo;

    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_1
    invoke-static {v1}, Lo/saveUserOverwrite;->ICustomTabsCallback(Lo/getRepo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 466
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Dispatcher"

    const-string v1, "delivered"

    invoke-static {v0, v1, p0}, Lo/saveUserOverwrite;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private onMessageChannelReady(Lo/getRepo;)V
    .locals 6

    .line 19374
    iget-object v0, p1, Lo/getRepo;->onTransact:Lo/limitToLast;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 19439
    invoke-virtual {v0}, Lo/limitToLast;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 19441
    iput-boolean v1, v0, Lo/limitToLast;->ICustomTabsService:Z

    .line 19442
    iget-object v3, p0, Lo/forUnauthenticatedAccess;->extraCallback:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20382
    :cond_0
    iget-object p1, p1, Lo/getRepo;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 431
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 432
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/limitToLast;

    .line 20439
    invoke-virtual {v3}, Lo/limitToLast;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 20441
    iput-boolean v1, v3, Lo/limitToLast;->ICustomTabsService:Z

    .line 20442
    iget-object v5, p0, Lo/forUnauthenticatedAccess;->extraCallback:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/getRepo;)V
    .locals 5

    .line 8341
    iget-object v0, p1, Lo/getRepo;->newSession:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lo/getRepo;->newSession:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lo/forUnauthenticatedAccess;->warmup:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {p0, p1, v2}, Lo/forUnauthenticatedAccess;->onMessageChannelReady(Lo/getRepo;Z)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 329
    iget-boolean v3, p0, Lo/forUnauthenticatedAccess;->requestPostMessageChannel:Z

    if-eqz v3, :cond_3

    .line 330
    iget-object v0, p0, Lo/forUnauthenticatedAccess;->getInterfaceDescriptor:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-static {v0, v3}, Lo/saveUserOverwrite;->extraCallback(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 331
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 334
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 8345
    :goto_1
    iget v4, p1, Lo/getRepo;->ICustomTabsService:I

    if-lez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    .line 8349
    :cond_6
    iget v4, p1, Lo/getRepo;->ICustomTabsService:I

    sub-int/2addr v4, v1

    iput v4, p1, Lo/getRepo;->ICustomTabsService:I

    .line 8350
    iget-object v4, p1, Lo/getRepo;->ICustomTabsCallback$Stub:Lo/newLogger;

    invoke-virtual {v4, v0}, Lo/newLogger;->onNavigationEvent(Landroid/net/NetworkInfo;)Z

    move-result v0

    .line 8354
    :goto_3
    iget-object v4, p1, Lo/getRepo;->ICustomTabsCallback$Stub:Lo/newLogger;

    invoke-virtual {v4}, Lo/newLogger;->ICustomTabsCallback()Z

    move-result v4

    if-nez v0, :cond_9

    .line 340
    iget-boolean v0, p0, Lo/forUnauthenticatedAccess;->requestPostMessageChannel:Z

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 341
    :goto_4
    invoke-virtual {p0, p1, v1}, Lo/forUnauthenticatedAccess;->onMessageChannelReady(Lo/getRepo;Z)V

    if-eqz v1, :cond_8

    .line 343
    invoke-direct {p0, p1}, Lo/forUnauthenticatedAccess;->onMessageChannelReady(Lo/getRepo;)V

    :cond_8
    return-void

    .line 349
    :cond_9
    iget-boolean v0, p0, Lo/forUnauthenticatedAccess;->requestPostMessageChannel:Z

    if-eqz v0, :cond_c

    if-eqz v3, :cond_a

    goto :goto_5

    .line 361
    :cond_a
    invoke-virtual {p0, p1, v4}, Lo/forUnauthenticatedAccess;->onMessageChannelReady(Lo/getRepo;Z)V

    if-eqz v4, :cond_b

    .line 364
    invoke-direct {p0, p1}, Lo/forUnauthenticatedAccess;->onMessageChannelReady(Lo/getRepo;)V

    :cond_b
    return-void

    .line 8378
    :cond_c
    :goto_5
    iget-object v0, p1, Lo/getRepo;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    .line 350
    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_d

    .line 351
    invoke-static {p1}, Lo/saveUserOverwrite;->ICustomTabsCallback(Lo/getRepo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dispatcher"

    const-string v2, "retrying"

    invoke-static {v1, v2, v0}, Lo/saveUserOverwrite;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8386
    :cond_d
    iget-object v0, p1, Lo/getRepo;->getInterfaceDescriptor:Ljava/lang/Exception;

    .line 354
    instance-of v0, v0, Lo/newEventTarget$onNavigationEvent;

    if-eqz v0, :cond_e

    .line 355
    iget v0, p1, Lo/getRepo;->asInterface:I

    sget-object v1, Lo/lambda$addTokenChangeListener$2;->onNavigationEvent:Lo/lambda$addTokenChangeListener$2;

    iget v1, v1, Lo/lambda$addTokenChangeListener$2;->extraCallback:I

    or-int/2addr v0, v1

    iput v0, p1, Lo/getRepo;->asInterface:I

    .line 357
    :cond_e
    iget-object v0, p0, Lo/forUnauthenticatedAccess;->warmup:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lo/getRepo;->newSession:Ljava/util/concurrent/Future;

    return-void
.end method

.method final extraCallback(Lo/limitToLast;Z)V
    .locals 7

    .line 179
    iget-object v0, p0, Lo/forUnauthenticatedAccess;->onPostMessage:Ljava/util/Set;

    .line 2109
    iget-object v1, p1, Lo/limitToLast;->onTransact:Ljava/lang/Object;

    .line 179
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Dispatcher"

    if-eqz v0, :cond_1

    .line 180
    iget-object p2, p0, Lo/forUnauthenticatedAccess;->ICustomTabsCallback:Ljava/util/Map;

    invoke-virtual {p1}, Lo/limitToLast;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3101
    iget-object p2, p1, Lo/limitToLast;->onNavigationEvent:Lcom/squareup/picasso/Picasso;

    .line 181
    iget-boolean p2, p2, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz p2, :cond_0

    .line 182
    iget-object p2, p1, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    invoke-virtual {p2}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "because tag \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3109
    iget-object p1, p1, Lo/limitToLast;->onTransact:Ljava/lang/Object;

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is paused"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "paused"

    .line 182
    invoke-static {v1, v0, p2, p1}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lo/forUnauthenticatedAccess;->onNavigationEvent:Ljava/util/Map;

    .line 4081
    iget-object v2, p1, Lo/limitToLast;->asInterface:Ljava/lang/String;

    .line 188
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRepo;

    if-eqz v0, :cond_9

    .line 4254
    iget-object p2, v0, Lo/getRepo;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-boolean p2, p2, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    .line 4255
    iget-object v1, p1, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    .line 4257
    iget-object v2, v0, Lo/getRepo;->onTransact:Lo/limitToLast;

    const-string v3, "to "

    const-string v4, "joined"

    const-string v5, "Hunter"

    if-nez v2, :cond_5

    .line 4258
    iput-object p1, v0, Lo/getRepo;->onTransact:Lo/limitToLast;

    if-eqz p2, :cond_4

    .line 4260
    iget-object p1, v0, Lo/getRepo;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, v0, Lo/getRepo;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 4263
    :cond_2
    invoke-virtual {v1}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3}, Lo/saveUserOverwrite;->ICustomTabsCallback(Lo/getRepo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, v4, p1, p2}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4261
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    const-string p2, "to empty hunter"

    invoke-static {v5, v4, p1, p2}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    .line 4269
    :cond_5
    iget-object v2, v0, Lo/getRepo;->onRelationshipValidationResult:Ljava/util/List;

    if-nez v2, :cond_6

    .line 4270
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lo/getRepo;->onRelationshipValidationResult:Ljava/util/List;

    .line 4273
    :cond_6
    iget-object v2, v0, Lo/getRepo;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_7

    .line 4276
    invoke-virtual {v1}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v3}, Lo/saveUserOverwrite;->ICustomTabsCallback(Lo/getRepo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, p2, v1}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5105
    :cond_7
    iget-object p1, p1, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    iget-object p1, p1, Lo/newRunLoop;->updateVisuals:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    .line 4280
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iget-object v1, v0, Lo/getRepo;->warmup:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le p2, v1, :cond_8

    .line 4281
    iput-object p1, v0, Lo/getRepo;->warmup:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    :cond_8
    return-void

    .line 194
    :cond_9
    iget-object v0, p0, Lo/forUnauthenticatedAccess;->warmup:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6101
    iget-object p2, p1, Lo/limitToLast;->onNavigationEvent:Lcom/squareup/picasso/Picasso;

    .line 195
    iget-boolean p2, p2, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz p2, :cond_a

    .line 196
    iget-object p1, p1, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    invoke-virtual {p1}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ignored"

    const-string v0, "because shut down"

    invoke-static {v1, p2, p1, v0}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void

    .line 7101
    :cond_b
    iget-object v0, p1, Lo/limitToLast;->onNavigationEvent:Lcom/squareup/picasso/Picasso;

    .line 201
    iget-object v2, p0, Lo/forUnauthenticatedAccess;->onTransact:Lo/doTransaction;

    iget-object v3, p0, Lo/forUnauthenticatedAccess;->ICustomTabsService:Lo/createPersistenceManager;

    invoke-static {v0, p0, v2, v3, p1}, Lo/getRepo;->onPostMessage(Lcom/squareup/picasso/Picasso;Lo/forUnauthenticatedAccess;Lo/doTransaction;Lo/createPersistenceManager;Lo/limitToLast;)Lo/getRepo;

    move-result-object v0

    .line 202
    iget-object v2, p0, Lo/forUnauthenticatedAccess;->warmup:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Lo/getRepo;->newSession:Ljava/util/concurrent/Future;

    .line 203
    iget-object v2, p0, Lo/forUnauthenticatedAccess;->onNavigationEvent:Ljava/util/Map;

    .line 8081
    iget-object v3, p1, Lo/limitToLast;->asInterface:Ljava/lang/String;

    .line 203
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_c

    .line 205
    iget-object p2, p0, Lo/forUnauthenticatedAccess;->extraCallback:Ljava/util/Map;

    invoke-virtual {p1}, Lo/limitToLast;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8101
    :cond_c
    iget-object p2, p1, Lo/limitToLast;->onNavigationEvent:Lcom/squareup/picasso/Picasso;

    .line 208
    iget-boolean p2, p2, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz p2, :cond_d

    .line 209
    iget-object p1, p1, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    invoke-virtual {p1}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    const-string p2, "enqueued"

    invoke-static {v1, p2, p1}, Lo/saveUserOverwrite;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method final onMessageChannelReady(Lo/getRepo;Z)V
    .locals 3

    .line 9378
    iget-object v0, p1, Lo/getRepo;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    .line 387
    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_1

    .line 388
    invoke-static {p1}, Lo/saveUserOverwrite;->ICustomTabsCallback(Lo/getRepo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "for error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, " (will replay)"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {v1, v2, v0, p2}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_1
    iget-object p2, p0, Lo/forUnauthenticatedAccess;->onNavigationEvent:Ljava/util/Map;

    .line 10362
    iget-object v0, p1, Lo/getRepo;->extraCallback:Ljava/lang/String;

    .line 391
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-virtual {p0, p1}, Lo/forUnauthenticatedAccess;->onNavigationEvent(Lo/getRepo;)V

    return-void
.end method

.method final onNavigationEvent(Landroid/net/NetworkInfo;)V
    .locals 4

    .line 400
    iget-object v0, p0, Lo/forUnauthenticatedAccess;->warmup:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v0, Lo/restart;

    if-eqz v1, :cond_4

    .line 401
    check-cast v0, Lo/restart;

    const/4 v1, 0x3

    if-eqz p1, :cond_3

    .line 11043
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 11047
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    .line 17081
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 17082
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    .line 12081
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 12082
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_1

    .line 11054
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 16081
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 16082
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_1

    .line 13081
    :pswitch_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 13082
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x2

    .line 14081
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 14082
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_1

    .line 15081
    :pswitch_2
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 15082
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_1

    .line 11081
    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 11082
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    :cond_4
    :goto_1
    if-eqz p1, :cond_6

    .line 404
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17410
    iget-object p1, p0, Lo/forUnauthenticatedAccess;->extraCallback:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 17411
    iget-object p1, p0, Lo/forUnauthenticatedAccess;->extraCallback:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 17412
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17413
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/limitToLast;

    .line 17414
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 18101
    iget-object v1, v0, Lo/limitToLast;->onNavigationEvent:Lcom/squareup/picasso/Picasso;

    .line 17415
    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v1, :cond_5

    .line 19073
    iget-object v1, v0, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    .line 17416
    invoke-virtual {v1}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dispatcher"

    const-string v3, "replaying"

    invoke-static {v2, v3, v1}, Lo/saveUserOverwrite;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v1, 0x0

    .line 17418
    invoke-virtual {p0, v0, v1}, Lo/forUnauthenticatedAccess;->extraCallback(Lo/limitToLast;Z)V

    goto :goto_2

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 299
    iget-object v0, p0, Lo/forUnauthenticatedAccess;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 304
    iget-object v1, p0, Lo/forUnauthenticatedAccess;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 305
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/limitToLast;

    .line 8109
    iget-object v3, v2, Lo/limitToLast;->onTransact:Ljava/lang/Object;

    .line 306
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 316
    iget-object p1, p0, Lo/forUnauthenticatedAccess;->onRelationshipValidationResult:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method

.method final onNavigationEvent(Lo/getRepo;)V
    .locals 3

    .line 21341
    iget-object v0, p1, Lo/getRepo;->newSession:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lo/getRepo;->newSession:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lo/forUnauthenticatedAccess;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object p1, p0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 452
    iget-object p1, p0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
