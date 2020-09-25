.class public final Lo/WinnerStatusResponse;
.super Lo/ClaimedRewardResponse;


# direct methods
.method public constructor <init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V
    .locals 7

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lo/ClaimedRewardResponse;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    return-void
.end method


# virtual methods
.method protected final onNavigationEvent()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lo/WinnerStatusResponse;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/WinnerStatusResponse;->onNavigationEvent:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lo/WinnerStatusResponse;->extraCallback:Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {v5}, Lo/SubmitScoreRequestJsonAdapter;->onPostMessage()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lo/GameDetailsJsonAdapter;

    invoke-direct {v2, v1}, Lo/GameDetailsJsonAdapter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/WinnerStatusResponse;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lo/WinnerStatusResponse;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    iget-wide v4, v2, Lo/GameDetailsJsonAdapter;->extraCallback:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lo/LoanStatusResponse$CaptchaInput;->onPostMessage:Ljava/lang/Long;

    iget-object v3, p0, Lo/WinnerStatusResponse;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    iget-wide v4, v2, Lo/GameDetailsJsonAdapter;->onNavigationEvent:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lo/LoanStatusResponse$CaptchaInput;->disconnect:Ljava/lang/Long;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
