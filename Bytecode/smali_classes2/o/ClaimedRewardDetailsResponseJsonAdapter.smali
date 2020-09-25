.class public final Lo/ClaimedRewardDetailsResponseJsonAdapter;
.super Lo/ClaimedRewardResponse;


# direct methods
.method public constructor <init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V
    .locals 7

    const/16 v6, 0x30

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lo/ClaimedRewardDetailsResponseJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lo/LoanStatusResponse$CaptchaInput;->getDefaultImpl:Ljava/lang/Integer;

    iget-object v0, p0, Lo/ClaimedRewardDetailsResponseJsonAdapter;->onNavigationEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lo/ClaimedRewardDetailsResponseJsonAdapter;->extraCallback:Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {v3}, Lo/SubmitScoreRequestJsonAdapter;->onPostMessage()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lo/ClaimedRewardDetailsResponseJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    monitor-enter v2

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/ClaimedRewardDetailsResponseJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lo/LoanStatusResponse$CaptchaInput;->getDefaultImpl:Ljava/lang/Integer;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lo/ClaimedRewardDetailsResponseJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :goto_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
