.class public final Lo/UsersJsonAdapter;
.super Lo/ClaimedRewardResponse;


# instance fields
.field private onMessageChannelReady:J


# direct methods
.method public constructor <init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V
    .locals 7

    const/16 v6, 0xc

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lo/ClaimedRewardResponse;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lo/UsersJsonAdapter;->onMessageChannelReady:J

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

    iget-object v0, p0, Lo/UsersJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lo/LoanStatusResponse$CaptchaInput;->asInterface:Ljava/lang/Long;

    iget-object v0, p0, Lo/UsersJsonAdapter;->ICustomTabsCallback:Lo/LoanStatusResponse$CaptchaInput;

    iget-object v1, p0, Lo/UsersJsonAdapter;->onNavigationEvent:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lo/UsersJsonAdapter;->extraCallback:Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {v3}, Lo/SubmitScoreRequestJsonAdapter;->onPostMessage()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v0, Lo/LoanStatusResponse$CaptchaInput;->asInterface:Ljava/lang/Long;

    return-void
.end method
