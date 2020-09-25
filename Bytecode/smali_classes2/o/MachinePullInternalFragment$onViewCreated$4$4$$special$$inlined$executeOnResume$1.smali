.class public final Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;
.super Lo/getRewardUsageId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getRewardUsageId<",
        "Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation


# instance fields
.field private extraCallback:[B

.field private onMessageChannelReady:[B

.field private onPostMessage:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/getRewardUsageId;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;->onPostMessage:[B

    iput-object v0, p0, Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;->onMessageChannelReady:[B

    iput-object v0, p0, Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;->extraCallback:[B

    iput-object v0, p0, Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;->search:Lo/UpcomingEmiDataJsonAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;->subscribe:I

    return-void
.end method


# virtual methods
.method protected final extraCallback()I
    .locals 3

    invoke-super {p0}, Lo/getRewardUsageId;->extraCallback()I

    move-result v0

    iget-object v1, p0, Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;->onPostMessage:[B

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;->onMessageChannelReady:[B

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;->extraCallback:[B

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final synthetic onNavigationEvent(Lo/TemplateDataJsonAdapter;)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->extraCallback()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lo/getRewardUsageId;->onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback$Stub()[B

    move-result-object v0

    iput-object v0, p0, Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;->extraCallback:[B

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback$Stub()[B

    move-result-object v0

    iput-object v0, p0, Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;->onMessageChannelReady:[B

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback$Stub()[B

    move-result-object v0

    iput-object v0, p0, Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;->onPostMessage:[B

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;->onPostMessage:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->extraCallback(I[B)V

    :cond_0
    iget-object v0, p0, Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;->onMessageChannelReady:[B

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->extraCallback(I[B)V

    :cond_1
    iget-object v0, p0, Lo/MachinePullInternalFragment$onViewCreated$4$4$$special$$inlined$executeOnResume$1;->extraCallback:[B

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->extraCallback(I[B)V

    :cond_2
    invoke-super {p0, p1}, Lo/getRewardUsageId;->onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V

    return-void
.end method
