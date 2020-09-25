.class public final Lo/getRank;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

.field private final onNavigationEvent:Lo/LoanStatusResponse$CaptchaInput;


# direct methods
.method public constructor <init>(Lo/SubmitScoreRequestJsonAdapter;Lo/LoanStatusResponse$CaptchaInput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getRank;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    iput-object p2, p0, Lo/getRank;->onNavigationEvent:Lo/LoanStatusResponse$CaptchaInput;

    return-void
.end method

.method private final ICustomTabsCallback()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lo/getRank;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {v0}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback$Stub$Proxy()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getRank;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {v0}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback$Stub$Proxy()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lo/getRank;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {v0}, Lo/SubmitScoreRequestJsonAdapter;->newSession()Lo/LoanStatusResponse$CaptchaInput;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lo/getRank;->onNavigationEvent:Lo/LoanStatusResponse$CaptchaInput;

    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbfh; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lo/getRank;->onNavigationEvent:Lo/LoanStatusResponse$CaptchaInput;

    invoke-static {v0}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;[B)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzbfh; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lo/getRank;->ICustomTabsCallback()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
