.class public final Lo/getUsers;
.super Lo/ClaimedRewardResponse;


# instance fields
.field private final onMessageChannelReady:Landroid/app/Activity;

.field private final onPostMessage:Landroid/view/View;


# direct methods
.method public constructor <init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;IILandroid/view/View;Landroid/app/Activity;)V
    .locals 7

    const/16 v6, 0x3e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lo/ClaimedRewardResponse;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    iput-object p7, p0, Lo/getUsers;->onPostMessage:Landroid/view/View;

    iput-object p8, p0, Lo/getUsers;->onMessageChannelReady:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected final onNavigationEvent()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lo/getUsers;->onPostMessage:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lo/WinningTypes;->getCallback:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lo/getUsers;->onNavigationEvent:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lo/getUsers;->onPostMessage:Landroid/view/View;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lo/getUsers;->onMessageChannelReady:Landroid/app/Activity;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, p0, Lo/getUsers;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lo/getUsers;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    aget-object v4, v1, v5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lo/LoanStatusResponse$CaptchaInput;->AudioAttributesImplApi21Parcelizer:Ljava/lang/Long;

    iget-object v3, p0, Lo/getUsers;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    aget-object v4, v1, v6

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lo/LoanStatusResponse$CaptchaInput;->connect:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getUsers;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    aget-object v1, v1, v7

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lo/LoanStatusResponse$CaptchaInput;->MediaBrowserCompat:Ljava/lang/String;

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
