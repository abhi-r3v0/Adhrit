.class final Lo/Pitch_CtaJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/LoanSummary;


# instance fields
.field private final onMessageChannelReady:Lo/PollMessage;

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Lo/LoanSummary$Details;


# direct methods
.method constructor <init>(Lo/LoanSummary$Details;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Pitch_CtaJsonAdapter;->onPostMessage:Lo/LoanSummary$Details;

    iput-object p2, p0, Lo/Pitch_CtaJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    new-instance v0, Lo/PollMessage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lo/PollMessage;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lo/Pitch_CtaJsonAdapter;->onMessageChannelReady:Lo/PollMessage;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Lo/PollMessage;
    .locals 1

    iget-object v0, p0, Lo/Pitch_CtaJsonAdapter;->onMessageChannelReady:Lo/PollMessage;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()I
    .locals 1

    iget-object v0, p0, Lo/Pitch_CtaJsonAdapter;->onMessageChannelReady:Lo/PollMessage;

    invoke-static {v0}, Lo/PollMessage;->onPostMessage(Lo/PollMessage;)I

    move-result v0

    return v0
.end method

.method public final asBinder()I
    .locals 1

    iget-object v0, p0, Lo/Pitch_CtaJsonAdapter;->onMessageChannelReady:Lo/PollMessage;

    invoke-static {v0}, Lo/PollMessage;->ICustomTabsCallback$Stub(Lo/PollMessage;)I

    move-result v0

    return v0
.end method

.method final asInterface()[I
    .locals 1

    iget-object v0, p0, Lo/Pitch_CtaJsonAdapter;->onMessageChannelReady:Lo/PollMessage;

    invoke-static {v0}, Lo/PollMessage;->onTransact(Lo/PollMessage;)[I

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback()I
    .locals 2

    iget-object v0, p0, Lo/Pitch_CtaJsonAdapter;->onMessageChannelReady:Lo/PollMessage;

    invoke-static {v0}, Lo/PollMessage;->extraCallback(Lo/PollMessage;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    sget v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback$Stub:I

    return v0

    :cond_0
    sget v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$ICustomTabsCallback;->onRelationshipValidationResult:I

    return v0
.end method

.method public final getInterfaceDescriptor()I
    .locals 1

    iget-object v0, p0, Lo/Pitch_CtaJsonAdapter;->onMessageChannelReady:Lo/PollMessage;

    invoke-static {v0}, Lo/PollMessage;->asBinder(Lo/PollMessage;)I

    move-result v0

    return v0
.end method

.method public final newSession()I
    .locals 1

    iget-object v0, p0, Lo/Pitch_CtaJsonAdapter;->onMessageChannelReady:Lo/PollMessage;

    invoke-static {v0}, Lo/PollMessage;->onRelationshipValidationResult(Lo/PollMessage;)I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    iget-object v0, p0, Lo/Pitch_CtaJsonAdapter;->onMessageChannelReady:Lo/PollMessage;

    invoke-static {v0}, Lo/PollMessage;->onMessageChannelReady(Lo/PollMessage;)I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()Z
    .locals 2

    iget-object v0, p0, Lo/Pitch_CtaJsonAdapter;->onMessageChannelReady:Lo/PollMessage;

    invoke-static {v0}, Lo/PollMessage;->extraCallback(Lo/PollMessage;)I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Lo/LoanSummary$Details;
    .locals 1

    iget-object v0, p0, Lo/Pitch_CtaJsonAdapter;->onPostMessage:Lo/LoanSummary$Details;

    return-object v0
.end method

.method public final onRelationshipValidationResult()I
    .locals 1

    iget-object v0, p0, Lo/Pitch_CtaJsonAdapter;->onMessageChannelReady:Lo/PollMessage;

    invoke-static {v0}, Lo/PollMessage;->onNavigationEvent(Lo/PollMessage;)I

    move-result v0

    return v0
.end method

.method public final onTransact()I
    .locals 1

    iget-object v0, p0, Lo/Pitch_CtaJsonAdapter;->onMessageChannelReady:Lo/PollMessage;

    invoke-static {v0}, Lo/PollMessage;->ICustomTabsCallback(Lo/PollMessage;)I

    move-result v0

    return v0
.end method
