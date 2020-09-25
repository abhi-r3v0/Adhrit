.class final Lo/ScoreStreamItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

.field private final synthetic onMessageChannelReady:I

.field private final synthetic onPostMessage:Z


# direct methods
.method constructor <init>(Lo/SubmitScoreRequestJsonAdapter;IZ)V
    .locals 0

    iput-object p1, p0, Lo/ScoreStreamItem;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    iput p2, p0, Lo/ScoreStreamItem;->onMessageChannelReady:I

    iput-boolean p3, p0, Lo/ScoreStreamItem;->onPostMessage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/ScoreStreamItem;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    iget v1, p0, Lo/ScoreStreamItem;->onMessageChannelReady:I

    iget-boolean v2, p0, Lo/ScoreStreamItem;->onPostMessage:Z

    invoke-virtual {v0, v1, v2}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(IZ)Lo/LoanStatusResponse$CaptchaInput;

    move-result-object v0

    iget-object v1, p0, Lo/ScoreStreamItem;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    invoke-static {v1, v0}, Lo/SubmitScoreRequestJsonAdapter;->onPostMessage(Lo/SubmitScoreRequestJsonAdapter;Lo/LoanStatusResponse$CaptchaInput;)Lo/LoanStatusResponse$CaptchaInput;

    iget v1, p0, Lo/ScoreStreamItem;->onMessageChannelReady:I

    invoke-static {v1, v0}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(ILo/LoanStatusResponse$CaptchaInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ScoreStreamItem;->ICustomTabsCallback:Lo/SubmitScoreRequestJsonAdapter;

    iget v1, p0, Lo/ScoreStreamItem;->onMessageChannelReady:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Lo/ScoreStreamItem;->onPostMessage:Z

    invoke-virtual {v0, v1, v2}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(IZ)V

    :cond_0
    return-void
.end method
