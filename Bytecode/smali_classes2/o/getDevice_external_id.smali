.class public final Lo/getDevice_external_id;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getRefreshRate;
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/DataListJsonAdapter;

.field private extraCallback:Landroid/content/Context;

.field private onMessageChannelReady:Ljava/util/concurrent/CountDownLatch;

.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lo/getRefreshRate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lo/DataListJsonAdapter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lo/getDevice_external_id;->onNavigationEvent:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo/getDevice_external_id;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lo/getDevice_external_id;->onMessageChannelReady:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lo/getDevice_external_id;->extraCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/getDevice_external_id;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lo/AmexLoginStatus;->onNavigationEvent(Ljava/lang/Runnable;)Lo/PaymentModeListResponseJsonAdapter;

    return-void

    :cond_0
    invoke-virtual {p0}, Lo/getDevice_external_id;->run()V

    return-void
.end method

.method public constructor <init>(Lo/PaymentMode$$Parcelable;)V
    .locals 1

    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    invoke-direct {p0, v0, p1}, Lo/getDevice_external_id;-><init>(Landroid/content/Context;Lo/DataListJsonAdapter;)V

    return-void
.end method

.method private static onMessageChannelReady(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private final onMessageChannelReady()V
    .locals 6

    iget-object v0, p0, Lo/getDevice_external_id;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/getDevice_external_id;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lo/getDevice_external_id;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getRefreshRate;

    aget-object v1, v1, v3

    check-cast v1, Landroid/view/MotionEvent;

    invoke-interface {v2, v1}, Lo/getRefreshRate;->onMessageChannelReady(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    array-length v2, v1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lo/getDevice_external_id;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getRefreshRate;

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v3, v4, v1}, Lo/getRefreshRate;->extraCallback(III)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lo/getDevice_external_id;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final onPostMessage()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/getDevice_external_id;->onMessageChannelReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Interrupted during GADSignals creation."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lo/getDevice_external_id;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/getDevice_external_id;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRefreshRate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/getRefreshRate;->ICustomTabsCallback(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final extraCallback(III)V
    .locals 3

    iget-object v0, p0, Lo/getDevice_external_id;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRefreshRate;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/getDevice_external_id;->onMessageChannelReady()V

    invoke-interface {v0, p1, p2, p3}, Lo/getRefreshRate;->extraCallback(III)V

    return-void

    :cond_0
    iget-object v0, p0, Lo/getDevice_external_id;->onNavigationEvent:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onMessageChannelReady(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lo/getDevice_external_id;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRefreshRate;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/getDevice_external_id;->onMessageChannelReady()V

    invoke-interface {v0, p1}, Lo/getRefreshRate;->onMessageChannelReady(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    iget-object v0, p0, Lo/getDevice_external_id;->onNavigationEvent:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lo/getDevice_external_id;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getDevice_external_id;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRefreshRate;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/getDevice_external_id;->onMessageChannelReady()V

    invoke-static {p1}, Lo/getDevice_external_id;->onMessageChannelReady(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lo/getRefreshRate;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final onPostMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lo/getDevice_external_id;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getDevice_external_id;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRefreshRate;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/getDevice_external_id;->onMessageChannelReady()V

    invoke-static {p1}, Lo/getDevice_external_id;->onMessageChannelReady(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/getRefreshRate;->onPostMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lo/getDevice_external_id;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    iget-boolean v2, v2, Lo/DataListJsonAdapter;->ICustomTabsCallback:Z

    sget-object v3, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplApi23:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lo/getDevice_external_id;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    iget-object v2, v2, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v3, p0, Lo/getDevice_external_id;->extraCallback:Landroid/content/Context;

    invoke-static {v3}, Lo/getDevice_external_id;->onMessageChannelReady(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lo/DeductLifeRequest;->onPostMessage(Ljava/lang/String;Landroid/content/Context;Z)Lo/DeductLifeRequest;

    move-result-object v0

    iget-object v2, p0, Lo/getDevice_external_id;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lo/getDevice_external_id;->onMessageChannelReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v1, p0, Lo/getDevice_external_id;->extraCallback:Landroid/content/Context;

    iput-object v1, p0, Lo/getDevice_external_id;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lo/getDevice_external_id;->onMessageChannelReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v1, p0, Lo/getDevice_external_id;->extraCallback:Landroid/content/Context;

    iput-object v1, p0, Lo/getDevice_external_id;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    throw v0
.end method
