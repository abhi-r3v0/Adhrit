.class final Lo/CarouselCardViewHolder$layoutManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getPrimaryButtonText$onMessageChannelReady;
.implements Lo/getPrimaryButtonText$ICustomTabsCallback;


# instance fields
.field private final ICustomTabsCallback:Landroid/os/HandlerThread;

.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Lo/ActiveLoanDataJsonAdapter;

.field private final onPostMessage:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lo/LoanStatusResponse$CaptchaInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/CarouselCardViewHolder$layoutManager$1;->extraCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/CarouselCardViewHolder$layoutManager$1;->onMessageChannelReady:Ljava/lang/String;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lo/CarouselCardViewHolder$layoutManager$1;->ICustomTabsCallback:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Lo/ActiveLoanDataJsonAdapter;

    iget-object p3, p0, Lo/CarouselCardViewHolder$layoutManager$1;->ICustomTabsCallback:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3, p0, p0}, Lo/ActiveLoanDataJsonAdapter;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/getPrimaryButtonText$onMessageChannelReady;Lo/getPrimaryButtonText$ICustomTabsCallback;)V

    iput-object p2, p0, Lo/CarouselCardViewHolder$layoutManager$1;->onNavigationEvent:Lo/ActiveLoanDataJsonAdapter;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lo/CarouselCardViewHolder$layoutManager$1;->onPostMessage:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object p1, p0, Lo/CarouselCardViewHolder$layoutManager$1;->onNavigationEvent:Lo/ActiveLoanDataJsonAdapter;

    invoke-virtual {p1}, Lo/ActiveLoanDataJsonAdapter;->checkAvailabilityAndConnect()V

    return-void
.end method

.method private final ICustomTabsCallback()Lo/getScreen_data;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lo/CarouselCardViewHolder$layoutManager$1;->onNavigationEvent:Lo/ActiveLoanDataJsonAdapter;

    invoke-virtual {v0}, Lo/ActiveLoanDataJsonAdapter;->onMessageChannelReady()Lo/getScreen_data;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/CarouselCardViewHolder$layoutManager$1;->onNavigationEvent:Lo/ActiveLoanDataJsonAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/ActiveLoanDataJsonAdapter;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CarouselCardViewHolder$layoutManager$1;->onNavigationEvent:Lo/ActiveLoanDataJsonAdapter;

    invoke-virtual {v0}, Lo/ActiveLoanDataJsonAdapter;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lo/CarouselCardViewHolder$layoutManager$1;->onNavigationEvent:Lo/ActiveLoanDataJsonAdapter;

    invoke-virtual {v0}, Lo/ActiveLoanDataJsonAdapter;->disconnect()V

    :cond_1
    return-void
.end method

.method private static onMessageChannelReady()Lo/LoanStatusResponse$CaptchaInput;
    .locals 3

    new-instance v0, Lo/LoanStatusResponse$CaptchaInput;

    invoke-direct {v0}, Lo/LoanStatusResponse$CaptchaInput;-><init>()V

    const-wide/32 v1, 0x8000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lo/LoanStatusResponse$CaptchaInput;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/LoanStatusResponse$CaptchaInput;
    .locals 3

    :try_start_0
    iget-object p1, p0, Lo/CarouselCardViewHolder$layoutManager$1;->onPostMessage:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v0, 0x1388

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse$CaptchaInput;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    invoke-static {}, Lo/CarouselCardViewHolder$layoutManager$1;->onMessageChannelReady()Lo/LoanStatusResponse$CaptchaInput;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final extraCallback(I)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lo/CarouselCardViewHolder$layoutManager$1;->onPostMessage:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lo/CarouselCardViewHolder$layoutManager$1;->onMessageChannelReady()Lo/LoanStatusResponse$CaptchaInput;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final extraCallback(Lo/setReferenceId;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lo/CarouselCardViewHolder$layoutManager$1;->onPostMessage:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lo/CarouselCardViewHolder$layoutManager$1;->onMessageChannelReady()Lo/LoanStatusResponse$CaptchaInput;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onPostMessage(Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Lo/CarouselCardViewHolder$layoutManager$1;->ICustomTabsCallback()Lo/getScreen_data;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lo/ActionsData;

    iget-object v1, p0, Lo/CarouselCardViewHolder$layoutManager$1;->extraCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/CarouselCardViewHolder$layoutManager$1;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lo/ActionsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lo/getScreen_data;->onPostMessage(Lo/ActionsData;)Lo/AmountScreenResponse$CardData;

    move-result-object p1

    invoke-virtual {p1}, Lo/AmountScreenResponse$CardData;->ICustomTabsCallback()Lo/LoanStatusResponse$CaptchaInput;

    move-result-object p1

    iget-object v0, p0, Lo/CarouselCardViewHolder$layoutManager$1;->onPostMessage:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    invoke-direct {p0}, Lo/CarouselCardViewHolder$layoutManager$1;->extraCallback()V

    iget-object p1, p0, Lo/CarouselCardViewHolder$layoutManager$1;->ICustomTabsCallback:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    :try_start_1
    iget-object p1, p0, Lo/CarouselCardViewHolder$layoutManager$1;->onPostMessage:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lo/CarouselCardViewHolder$layoutManager$1;->onMessageChannelReady()Lo/LoanStatusResponse$CaptchaInput;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-direct {p0}, Lo/CarouselCardViewHolder$layoutManager$1;->extraCallback()V

    iget-object v0, p0, Lo/CarouselCardViewHolder$layoutManager$1;->ICustomTabsCallback:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    throw p1

    :cond_0
    return-void
.end method
