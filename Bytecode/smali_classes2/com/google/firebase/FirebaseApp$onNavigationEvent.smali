.class final Lcom/google/firebase/FirebaseApp$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RefundAccount$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/FirebaseApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# static fields
.field private static INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/FirebaseApp$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 663
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/firebase/FirebaseApp$onNavigationEvent;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .line 660
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp$onNavigationEvent;->ensureBackgroundStateListenerRegistered(Landroid/content/Context;)V

    return-void
.end method

.method private static ensureBackgroundStateListenerRegistered(Landroid/content/Context;)V
    .locals 3

    .line 668
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-nez v0, :cond_0

    return-void

    .line 671
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 672
    sget-object v0, Lcom/google/firebase/FirebaseApp$onNavigationEvent;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 673
    new-instance v0, Lcom/google/firebase/FirebaseApp$onNavigationEvent;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseApp$onNavigationEvent;-><init>()V

    .line 674
    sget-object v1, Lcom/google/firebase/FirebaseApp$onNavigationEvent;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 675
    invoke-static {p0}, Lo/RefundAccount;->ICustomTabsCallback(Landroid/app/Application;)V

    .line 1007
    sget-object p0, Lo/RefundAccount;->extraCallback:Lo/RefundAccount;

    .line 1024
    sget-object v1, Lo/RefundAccount;->extraCallback:Lo/RefundAccount;

    monitor-enter v1

    .line 1025
    :try_start_0
    iget-object p0, p0, Lo/RefundAccount;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1026
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public final onBackgroundStateChanged(Z)V
    .locals 4

    .line 683
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->access$300()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 684
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/FirebaseApp;

    .line 685
    invoke-static {v2}, Lcom/google/firebase/FirebaseApp;->access$500(Lcom/google/firebase/FirebaseApp;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 686
    invoke-static {v2, p1}, Lcom/google/firebase/FirebaseApp;->access$600(Lcom/google/firebase/FirebaseApp;Z)V

    goto :goto_0

    .line 689
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
