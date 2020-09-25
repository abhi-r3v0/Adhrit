.class Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SuggestedPaymnetInstrumentJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# static fields
.field private static onMessageChannelReady:Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;


# instance fields
.field private final extraCallback:Landroid/os/Handler;

.field private final onPostMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lo/SuggestedPaymnetInstrumentJsonAdapter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 430
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 431
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->extraCallback:Landroid/os/Handler;

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->onPostMessage:Ljava/util/ArrayList;

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 2

    .line 463
    iget-object v0, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 464
    iget-object v1, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 465
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SuggestedPaymnetInstrumentJsonAdapter;

    if-nez v1, :cond_0

    .line 467
    iget-object v1, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized onNavigationEvent(Landroid/content/Context;)Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;
    .locals 3

    const-class v0, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;

    monitor-enter v0

    .line 421
    :try_start_0
    sget-object v1, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->onMessageChannelReady:Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;

    if-nez v1, :cond_0

    .line 422
    new-instance v1, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;

    invoke-direct {v1}, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;-><init>()V

    sput-object v1, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->onMessageChannelReady:Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;

    .line 423
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 424
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    sget-object v2, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->onMessageChannelReady:Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 427
    :cond_0
    sget-object p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->onMessageChannelReady:Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private onPostMessage(Lo/SuggestedPaymnetInstrumentJsonAdapter;)V
    .locals 0

    .line 459
    invoke-static {p1}, Lo/SuggestedPaymnetInstrumentJsonAdapter;->onMessageChannelReady(Lo/SuggestedPaymnetInstrumentJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized ICustomTabsCallback(Lo/SuggestedPaymnetInstrumentJsonAdapter;)V
    .locals 2

    monitor-enter p0

    .line 436
    :try_start_0
    invoke-direct {p0}, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->ICustomTabsCallback()V

    .line 437
    iget-object v0, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->onPostMessage:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v0, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->extraCallback:Landroid/os/Handler;

    new-instance v1, Lo/SuggestedPi;

    invoke-direct {v1, p0, p1}, Lo/SuggestedPi;-><init>(Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;Lo/SuggestedPaymnetInstrumentJsonAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic extraCallback(Lo/SuggestedPaymnetInstrumentJsonAdapter;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->onPostMessage(Lo/SuggestedPaymnetInstrumentJsonAdapter;)V

    return-void
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    monitor-enter p0

    .line 445
    :try_start_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 446
    monitor-exit p0

    return-void

    .line 448
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->ICustomTabsCallback()V

    const/4 p1, 0x0

    .line 449
    :goto_0
    iget-object p2, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 450
    iget-object p2, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 451
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/SuggestedPaymnetInstrumentJsonAdapter;

    if-eqz p2, :cond_1

    .line 453
    invoke-direct {p0, p2}, Lo/SuggestedPaymnetInstrumentJsonAdapter$onPostMessage;->onPostMessage(Lo/SuggestedPaymnetInstrumentJsonAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 456
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
