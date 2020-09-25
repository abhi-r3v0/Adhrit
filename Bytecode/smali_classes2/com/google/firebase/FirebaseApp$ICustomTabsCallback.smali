.class final Lcom/google/firebase/FirebaseApp$ICustomTabsCallback;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/FirebaseApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field private static INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/FirebaseApp$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 625
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/firebase/FirebaseApp$ICustomTabsCallback;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 628
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 629
    iput-object p1, p0, Lcom/google/firebase/FirebaseApp$ICustomTabsCallback;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0

    .line 623
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp$ICustomTabsCallback;->ensureReceiverRegistered(Landroid/content/Context;)V

    return-void
.end method

.method private static ensureReceiverRegistered(Landroid/content/Context;)V
    .locals 3

    .line 633
    sget-object v0, Lcom/google/firebase/FirebaseApp$ICustomTabsCallback;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Lcom/google/firebase/FirebaseApp$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lcom/google/firebase/FirebaseApp$ICustomTabsCallback;-><init>(Landroid/content/Context;)V

    .line 635
    sget-object v1, Lcom/google/firebase/FirebaseApp$ICustomTabsCallback;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 645
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->access$300()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 646
    :try_start_0
    sget-object p2, Lcom/google/firebase/FirebaseApp;->INSTANCES:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/FirebaseApp;

    .line 647
    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->access$400(Lcom/google/firebase/FirebaseApp;)V

    goto :goto_0

    .line 649
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp$ICustomTabsCallback;->unregister()V

    return-void

    :catchall_0
    move-exception p2

    .line 649
    monitor-exit p1

    throw p2
.end method

.method public final unregister()V
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp$ICustomTabsCallback;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
