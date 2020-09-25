.class final Lo/getNewUser;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onNavigationEvent:Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;


# direct methods
.method private constructor <init>(Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/getNewUser;->onNavigationEvent:Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;Lo/getOtpId;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/getNewUser;-><init>(Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;)V

    return-void
.end method

.method private final varargs ICustomTabsCallback([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object p1, p0, Lo/getNewUser;->onNavigationEvent:Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    iget-object v0, p0, Lo/getNewUser;->onNavigationEvent:Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage(Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-object v1, Lo/WinningTypes;->getMediaMetadata:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GameCta;

    invoke-static {p1, v0}, Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage(Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;Lo/GameCta;)Lo/GameCta;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    const-string v0, ""

    invoke-static {v0, p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object p1, p0, Lo/getNewUser;->onNavigationEvent:Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {p1}, Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lo/getNewUser;->ICustomTabsCallback([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lo/getNewUser;->onNavigationEvent:Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onTransact(Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/getNewUser;->onNavigationEvent:Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onTransact(Lo/OnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
