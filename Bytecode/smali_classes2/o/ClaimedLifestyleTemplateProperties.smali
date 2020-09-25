.class public final Lo/ClaimedLifestyleTemplateProperties;
.super Lo/ClaimedRewardResponse;


# instance fields
.field private final onMessageChannelReady:Lo/LeaderBoardDetailsResponse;

.field private onPostMessage:J


# direct methods
.method public constructor <init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;IILo/LeaderBoardDetailsResponse;)V
    .locals 7

    const/16 v6, 0x35

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lo/ClaimedRewardResponse;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    iput-object p7, p0, Lo/ClaimedLifestyleTemplateProperties;->onMessageChannelReady:Lo/LeaderBoardDetailsResponse;

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback()J

    move-result-wide p1

    iput-wide p1, p0, Lo/ClaimedLifestyleTemplateProperties;->onPostMessage:J

    :cond_0
    return-void
.end method


# virtual methods
.method protected final onNavigationEvent()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lo/ClaimedLifestyleTemplateProperties;->onMessageChannelReady:Lo/LeaderBoardDetailsResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ClaimedLifestyleTemplateProperties;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    iget-object v1, p0, Lo/ClaimedLifestyleTemplateProperties;->onNavigationEvent:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lo/ClaimedLifestyleTemplateProperties;->onPostMessage:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v0, Lo/LoanStatusResponse$CaptchaInput;->INotificationSideChannel$Stub$Proxy:Ljava/lang/Long;

    :cond_0
    return-void
.end method
