.class public final Lo/InvalidPaymentAmount$$Parcelable;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public static ICustomTabsCallback(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Futures.resolveFuture"

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p0, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string p0, "Error waiting for future."

    invoke-static {p0, p2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object p1

    :catch_1
    move-exception p2

    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string p0, "InterruptedException caught while resolving future."

    invoke-static {p0, p2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public static extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lo/PayNowBottomSheetResponseJsonAdapter<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lo/PayNowBottomSheetResponseJsonAdapter;

    invoke-direct {v0, p0}, Lo/PayNowBottomSheetResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static extraCallback(Lo/PaymentModeListResponseJsonAdapter;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lo/SuggestedAmount;

    invoke-direct {v0}, Lo/SuggestedAmount;-><init>()V

    invoke-static {v0, p0}, Lo/InvalidPaymentAmount$$Parcelable;->onMessageChannelReady(Lo/PaymentModeListResponseJsonAdapter;Ljava/util/concurrent/Future;)V

    new-instance v1, Lo/InstructionsJsonAdapter;

    invoke-direct {v1, v0}, Lo/InstructionsJsonAdapter;-><init>(Lo/SuggestedAmount;)V

    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-static {p0, v0}, Lo/InvalidPaymentAmount$$Parcelable;->onNavigationEvent(Lo/PaymentModeListResponseJsonAdapter;Lo/SuggestedAmount;)V

    new-instance p0, Lo/InvalidPaymentAmountJsonAdapter;

    invoke-direct {p0, p1}, Lo/InvalidPaymentAmountJsonAdapter;-><init>(Ljava/util/concurrent/Future;)V

    sget-object p1, Lo/Properties;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0, p1}, Lo/SuggestedAmount;->onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static extraCallback(Lo/PaymentModeListResponseJsonAdapter;Lo/getText2;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "TV;>;",
            "Lo/getText2<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    new-instance v0, Lo/InvalidPaymentAmount;

    invoke-direct {v0, p1, p0}, Lo/InvalidPaymentAmount;-><init>(Lo/getText2;Lo/PaymentModeListResponseJsonAdapter;)V

    invoke-interface {p0, v0, p2}, Lo/PaymentModeListResponseJsonAdapter;->onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static onMessageChannelReady(Lo/PaymentModeListResponseJsonAdapter;Lo/getText3;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "TA;>;",
            "Lo/getText3<",
            "TA;TB;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "TB;>;"
        }
    .end annotation

    new-instance v0, Lo/SuggestedAmount;

    invoke-direct {v0}, Lo/SuggestedAmount;-><init>()V

    new-instance v1, Lo/Instructions;

    invoke-direct {v1, v0, p1, p0}, Lo/Instructions;-><init>(Lo/SuggestedAmount;Lo/getText3;Lo/PaymentModeListResponseJsonAdapter;)V

    invoke-interface {p0, v1, p2}, Lo/PaymentModeListResponseJsonAdapter;->onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {v0, p0}, Lo/InvalidPaymentAmount$$Parcelable;->onMessageChannelReady(Lo/PaymentModeListResponseJsonAdapter;Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method private static onMessageChannelReady(Lo/PaymentModeListResponseJsonAdapter;Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "TA;>;",
            "Ljava/util/concurrent/Future<",
            "TB;>;)V"
        }
    .end annotation

    new-instance v0, Lo/MetaJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/MetaJsonAdapter;-><init>(Lo/PaymentModeListResponseJsonAdapter;Ljava/util/concurrent/Future;)V

    sget-object p1, Lo/Properties;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0, p1}, Lo/PaymentModeListResponseJsonAdapter;->onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static final synthetic onMessageChannelReady(Lo/SuggestedAmount;Lo/PaymentModeListResponseJsonAdapter;Ljava/lang/Class;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lo/PaymentModeListResponseJsonAdapter;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lo/InvalidPaymentAmount$$Parcelable;->onPostMessage(Lo/PaymentModeListResponseJsonAdapter;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    invoke-static {p1, p0}, Lo/InvalidPaymentAmount$$Parcelable;->onNavigationEvent(Lo/PaymentModeListResponseJsonAdapter;Lo/SuggestedAmount;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lo/SuggestedAmount;->onMessageChannelReady(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static onNavigationEvent(Lo/PaymentModeListResponseJsonAdapter;Lo/SuggestedAmount;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "+TV;>;",
            "Lo/SuggestedAmount<",
            "TV;>;)V"
        }
    .end annotation

    invoke-static {p1, p0}, Lo/InvalidPaymentAmount$$Parcelable;->onMessageChannelReady(Lo/PaymentModeListResponseJsonAdapter;Ljava/util/concurrent/Future;)V

    new-instance v0, Lo/Overlay;

    invoke-direct {v0, p1, p0}, Lo/Overlay;-><init>(Lo/SuggestedAmount;Lo/PaymentModeListResponseJsonAdapter;)V

    sget-object p1, Lo/Properties;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0, p1}, Lo/PaymentModeListResponseJsonAdapter;->onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static final synthetic onNavigationEvent(Lo/SuggestedAmount;Lo/Footer$$Parcelable;Lo/PaymentModeListResponseJsonAdapter;)V
    .locals 1

    invoke-virtual {p0}, Lo/SuggestedAmount;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lo/PaymentModeListResponseJsonAdapter;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/Footer$$Parcelable;->ICustomTabsCallback(Ljava/lang/Object;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    invoke-static {p1, p0}, Lo/InvalidPaymentAmount$$Parcelable;->onNavigationEvent(Lo/PaymentModeListResponseJsonAdapter;Lo/SuggestedAmount;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lo/SuggestedAmount;->onMessageChannelReady(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p0, p1}, Lo/SuggestedAmount;->onMessageChannelReady(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/SuggestedAmount;->onMessageChannelReady(Ljava/lang/Throwable;)V

    return-void

    :catch_3
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lo/SuggestedAmount;->cancel(Z)Z

    return-void
.end method

.method public static onPostMessage(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "Futures.resolveFuture"

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lo/WinningTypes;->getMediaItem:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string p0, "Error waiting for future."

    invoke-static {p0, v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object p1

    :catch_1
    move-exception v2

    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string p0, "InterruptedException caught while resolving future."

    invoke-static {p0, v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public static onPostMessage(Ljava/lang/Throwable;)Lo/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lo/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lo/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;

    invoke-direct {v0, p0}, Lo/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static onPostMessage(Lo/PaymentModeListResponseJsonAdapter;Ljava/lang/Class;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lo/Footer$$Parcelable<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "TV;>;"
        }
    .end annotation

    new-instance v6, Lo/SuggestedAmount;

    invoke-direct {v6}, Lo/SuggestedAmount;-><init>()V

    invoke-static {v6, p0}, Lo/InvalidPaymentAmount$$Parcelable;->onMessageChannelReady(Lo/PaymentModeListResponseJsonAdapter;Ljava/util/concurrent/Future;)V

    new-instance v7, Lo/Meta;

    move-object v0, v7

    move-object v1, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/Meta;-><init>(Lo/SuggestedAmount;Lo/PaymentModeListResponseJsonAdapter;Ljava/lang/Class;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)V

    sget-object p1, Lo/Properties;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v7, p1}, Lo/PaymentModeListResponseJsonAdapter;->onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v6
.end method

.method public static onPostMessage(Lo/PaymentModeListResponseJsonAdapter;Lo/Footer$$Parcelable;Ljava/util/concurrent/Executor;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "TA;>;",
            "Lo/Footer$$Parcelable<",
            "-TA;+TB;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "TB;>;"
        }
    .end annotation

    new-instance v0, Lo/SuggestedAmount;

    invoke-direct {v0}, Lo/SuggestedAmount;-><init>()V

    new-instance v1, Lo/getMinInvalidPaymentAmount;

    invoke-direct {v1, v0, p1, p0}, Lo/getMinInvalidPaymentAmount;-><init>(Lo/SuggestedAmount;Lo/Footer$$Parcelable;Lo/PaymentModeListResponseJsonAdapter;)V

    invoke-interface {p0, v1, p2}, Lo/PaymentModeListResponseJsonAdapter;->onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {v0, p0}, Lo/InvalidPaymentAmount$$Parcelable;->onMessageChannelReady(Lo/PaymentModeListResponseJsonAdapter;Ljava/util/concurrent/Future;)V

    return-object v0
.end method
