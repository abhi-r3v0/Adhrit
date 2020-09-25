.class public Lcom/squareup/picasso/Picasso;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/Picasso$extraCallback;,
        Lcom/squareup/picasso/Picasso$onNavigationEvent;,
        Lcom/squareup/picasso/Picasso$onPostMessage;,
        Lcom/squareup/picasso/Picasso$onMessageChannelReady;,
        Lcom/squareup/picasso/Picasso$asInterface;,
        Lcom/squareup/picasso/Picasso$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Landroid/os/Handler;

.field private static volatile newSession:Lcom/squareup/picasso/Picasso;


# instance fields
.field public volatile ICustomTabsCallback$Stub:Z

.field private final ICustomTabsCallback$Stub$Proxy:Lcom/squareup/picasso/Picasso$onPostMessage;

.field private final ICustomTabsService:Lcom/squareup/picasso/Picasso$asInterface;

.field public final asBinder:Lo/createPersistenceManager;

.field public asInterface:Z

.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/newLogger;",
            ">;"
        }
    .end annotation
.end field

.field private getInterfaceDescriptor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lo/limitToLast;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Landroid/content/Context;

.field public final onNavigationEvent:Lo/forUnauthenticatedAccess;

.field public final onPostMessage:Lo/doTransaction;

.field public final onRelationshipValidationResult:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final onTransact:Landroid/graphics/Bitmap$Config;

.field private warmup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Lo/success;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    new-instance v0, Lcom/squareup/picasso/Picasso$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/picasso/Picasso$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 143
    sput-object v0, Lcom/squareup/picasso/Picasso;->newSession:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo/forUnauthenticatedAccess;Lo/doTransaction;Lcom/squareup/picasso/Picasso$ICustomTabsCallback;Lcom/squareup/picasso/Picasso$asInterface;Ljava/util/List;Lo/createPersistenceManager;Landroid/graphics/Bitmap$Config;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/forUnauthenticatedAccess;",
            "Lo/doTransaction;",
            "Lcom/squareup/picasso/Picasso$ICustomTabsCallback;",
            "Lcom/squareup/picasso/Picasso$asInterface;",
            "Ljava/util/List<",
            "Lo/newLogger;",
            ">;",
            "Lo/createPersistenceManager;",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->onMessageChannelReady:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/squareup/picasso/Picasso;->onNavigationEvent:Lo/forUnauthenticatedAccess;

    .line 169
    iput-object p3, p0, Lcom/squareup/picasso/Picasso;->onPostMessage:Lo/doTransaction;

    .line 171
    iput-object p5, p0, Lcom/squareup/picasso/Picasso;->ICustomTabsService:Lcom/squareup/picasso/Picasso$asInterface;

    const/4 p3, 0x0

    .line 172
    iput-object p3, p0, Lcom/squareup/picasso/Picasso;->onTransact:Landroid/graphics/Bitmap$Config;

    .line 176
    new-instance p3, Ljava/util/ArrayList;

    const/4 p4, 0x7

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    new-instance p4, Lo/getUserAgent;

    invoke-direct {p4, p1}, Lo/getUserAgent;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance p4, Lo/getSpec;

    invoke-direct {p4, p1}, Lo/getSpec;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance p4, Lo/lambda$getToken$1;

    invoke-direct {p4, p1}, Lo/lambda$getToken$1;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance p4, Lo/onDataChange;

    invoke-direct {p4, p1}, Lo/onDataChange;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance p4, Lo/orderByKey;

    invoke-direct {p4, p1}, Lo/orderByKey;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance p4, Lo/addTokenChangeListener;

    invoke-direct {p4, p1}, Lo/addTokenChangeListener;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance p1, Lo/newEventTarget;

    iget-object p2, p2, Lo/forUnauthenticatedAccess;->onMessageChannelReady:Lcom/squareup/picasso/Downloader;

    invoke-direct {p1, p2, p7}, Lo/newEventTarget;-><init>(Lcom/squareup/picasso/Downloader;Lo/createPersistenceManager;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->extraCallback:Ljava/util/List;

    .line 194
    iput-object p7, p0, Lcom/squareup/picasso/Picasso;->asBinder:Lo/createPersistenceManager;

    .line 195
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->getInterfaceDescriptor:Ljava/util/Map;

    .line 196
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->warmup:Ljava/util/Map;

    const/4 p1, 0x0

    .line 197
    iput-boolean p1, p0, Lcom/squareup/picasso/Picasso;->asInterface:Z

    .line 198
    iput-boolean p1, p0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    .line 199
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->onRelationshipValidationResult:Ljava/lang/ref/ReferenceQueue;

    .line 200
    new-instance p1, Lcom/squareup/picasso/Picasso$onPostMessage;

    iget-object p2, p0, Lcom/squareup/picasso/Picasso;->onRelationshipValidationResult:Ljava/lang/ref/ReferenceQueue;

    sget-object p3, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback:Landroid/os/Handler;

    invoke-direct {p1, p2, p3}, Lcom/squareup/picasso/Picasso$onPostMessage;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub$Proxy:Lcom/squareup/picasso/Picasso$onPostMessage;

    .line 201
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;
    .locals 14

    .line 659
    sget-object v0, Lcom/squareup/picasso/Picasso;->newSession:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_5

    .line 660
    const-class v0, Lcom/squareup/picasso/Picasso;

    monitor-enter v0

    .line 661
    :try_start_0
    sget-object v1, Lcom/squareup/picasso/Picasso;->newSession:Lcom/squareup/picasso/Picasso;

    if-nez v1, :cond_4

    .line 662
    new-instance v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;

    invoke-direct {v1, p0}, Lcom/squareup/picasso/Picasso$onNavigationEvent;-><init>(Landroid/content/Context;)V

    .line 3829
    iget-object p0, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->extraCallback:Landroid/content/Context;

    .line 3831
    iget-object v2, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->onMessageChannelReady:Lcom/squareup/picasso/Downloader;

    if-nez v2, :cond_0

    .line 3832
    invoke-static {p0}, Lo/saveUserOverwrite;->onPostMessage(Landroid/content/Context;)Lcom/squareup/picasso/Downloader;

    move-result-object v2

    iput-object v2, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->onMessageChannelReady:Lcom/squareup/picasso/Downloader;

    .line 3834
    :cond_0
    iget-object v2, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->ICustomTabsCallback:Lo/doTransaction;

    if-nez v2, :cond_1

    .line 3835
    new-instance v2, Lo/lambda$addTokenChangeListener$3;

    invoke-direct {v2, p0}, Lo/lambda$addTokenChangeListener$3;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->ICustomTabsCallback:Lo/doTransaction;

    .line 3837
    :cond_1
    iget-object v2, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->onPostMessage:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_2

    .line 3838
    new-instance v2, Lo/restart;

    invoke-direct {v2}, Lo/restart;-><init>()V

    iput-object v2, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->onPostMessage:Ljava/util/concurrent/ExecutorService;

    .line 3840
    :cond_2
    iget-object v2, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->onNavigationEvent:Lcom/squareup/picasso/Picasso$asInterface;

    if-nez v2, :cond_3

    .line 3841
    sget-object v2, Lcom/squareup/picasso/Picasso$asInterface;->extraCallback:Lcom/squareup/picasso/Picasso$asInterface;

    iput-object v2, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->onNavigationEvent:Lcom/squareup/picasso/Picasso$asInterface;

    .line 3844
    :cond_3
    new-instance v9, Lo/createPersistenceManager;

    iget-object v2, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->ICustomTabsCallback:Lo/doTransaction;

    invoke-direct {v9, v2}, Lo/createPersistenceManager;-><init>(Lo/doTransaction;)V

    .line 3846
    new-instance v10, Lo/forUnauthenticatedAccess;

    iget-object v4, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->onPostMessage:Ljava/util/concurrent/ExecutorService;

    sget-object v5, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback:Landroid/os/Handler;

    iget-object v6, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->onMessageChannelReady:Lcom/squareup/picasso/Downloader;

    iget-object v7, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->ICustomTabsCallback:Lo/doTransaction;

    move-object v2, v10

    move-object v3, p0

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lo/forUnauthenticatedAccess;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/picasso/Downloader;Lo/doTransaction;Lo/createPersistenceManager;)V

    .line 3848
    new-instance v13, Lcom/squareup/picasso/Picasso;

    iget-object v5, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->ICustomTabsCallback:Lo/doTransaction;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/squareup/picasso/Picasso$onNavigationEvent;->onNavigationEvent:Lcom/squareup/picasso/Picasso$asInterface;

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v13

    move-object v3, p0

    move-object v4, v10

    move-object v10, v1

    invoke-direct/range {v2 .. v12}, Lcom/squareup/picasso/Picasso;-><init>(Landroid/content/Context;Lo/forUnauthenticatedAccess;Lo/doTransaction;Lcom/squareup/picasso/Picasso$ICustomTabsCallback;Lcom/squareup/picasso/Picasso$asInterface;Ljava/util/List;Lo/createPersistenceManager;Landroid/graphics/Bitmap$Config;ZZ)V

    .line 662
    sput-object v13, Lcom/squareup/picasso/Picasso;->newSession:Lcom/squareup/picasso/Picasso;

    .line 664
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 666
    :cond_5
    :goto_0
    sget-object p0, Lcom/squareup/picasso/Picasso;->newSession:Lcom/squareup/picasso/Picasso;

    return-object p0
.end method


# virtual methods
.method final ICustomTabsCallback(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$extraCallback;Lo/limitToLast;)V
    .locals 2

    .line 3085
    iget-boolean v0, p3, Lo/limitToLast;->newSession:Z

    if-eqz v0, :cond_0

    return-void

    .line 3089
    :cond_0
    iget-boolean v0, p3, Lo/limitToLast;->ICustomTabsService:Z

    if-nez v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-virtual {p3}, Lo/limitToLast;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "Main"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 558
    invoke-virtual {p3, p1, p2}, Lo/limitToLast;->onPostMessage(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$extraCallback;)V

    .line 559
    iget-boolean p1, p0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz p1, :cond_4

    .line 560
    iget-object p1, p3, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    invoke-virtual {p1}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "from "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "completed"

    invoke-static {v0, p3, p1, p2}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 556
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "LoadedFrom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 563
    :cond_3
    invoke-virtual {p3}, Lo/limitToLast;->onNavigationEvent()V

    .line 564
    iget-boolean p1, p0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz p1, :cond_4

    .line 565
    iget-object p1, p3, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    invoke-virtual {p1}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    const-string p2, "errored"

    invoke-static {v0, p2, p1}, Lo/saveUserOverwrite;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)V
    .locals 4

    .line 571
    invoke-static {}, Lo/saveUserOverwrite;->onNavigationEvent()V

    .line 572
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/limitToLast;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lo/limitToLast;->onPostMessage()V

    .line 575
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->onNavigationEvent:Lo/forUnauthenticatedAccess;

    .line 3142
    iget-object v2, v1, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    iget-object v1, v1, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 577
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 578
    check-cast p1, Landroid/widget/ImageView;

    .line 579
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->warmup:Ljava/util/Map;

    .line 580
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/success;

    if-eqz p1, :cond_1

    .line 582
    invoke-virtual {p1}, Lo/success;->onMessageChannelReady()V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(Lo/limitToLast;)V
    .locals 3

    .line 470
    invoke-virtual {p1}, Lo/limitToLast;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 473
    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 474
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->getInterfaceDescriptor:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->onNavigationEvent:Lo/forUnauthenticatedAccess;

    .line 2138
    iget-object v1, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    iget-object v0, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->onPostMessage:Lo/doTransaction;

    invoke-interface {v0, p1}, Lo/doTransaction;->onMessageChannelReady(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->asBinder:Lo/createPersistenceManager;

    .line 3072
    iget-object v0, v0, Lo/createPersistenceManager;->onPostMessage:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->asBinder:Lo/createPersistenceManager;

    .line 3076
    iget-object v0, v0, Lo/createPersistenceManager;->onPostMessage:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object p1
.end method

.method public final onPostMessage(Lo/newRunLoop;)Lo/newRunLoop;
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->ICustomTabsService:Lcom/squareup/picasso/Picasso$asInterface;

    invoke-interface {v0, p1}, Lcom/squareup/picasso/Picasso$asInterface;->onPostMessage(Lo/newRunLoop;)Lo/newRunLoop;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request transformer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/squareup/picasso/Picasso;->ICustomTabsService:Lcom/squareup/picasso/Picasso$asInterface;

    .line 458
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returned null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
