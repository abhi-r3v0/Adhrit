.class public abstract Lo/getRewardUsageId;
.super Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lo/getRewardUsageId<",
        "TM;>;>",
        "Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;"
    }
.end annotation


# instance fields
.field protected search:Lo/UpcomingEmiDataJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onMessageChannelReady()Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    move-result-object v0

    check-cast v0, Lo/getRewardUsageId;

    invoke-static {p0, v0}, Lo/MachinePullDownFragment$onViewCreated$3$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/getRewardUsageId;Lo/getRewardUsageId;)V

    return-object v0
.end method

.method protected extraCallback()I
    .locals 3

    iget-object v0, p0, Lo/getRewardUsageId;->search:Lo/UpcomingEmiDataJsonAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lo/getRewardUsageId;->search:Lo/UpcomingEmiDataJsonAdapter;

    invoke-virtual {v2}, Lo/UpcomingEmiDataJsonAdapter;->onNavigationEvent()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lo/getRewardUsageId;->search:Lo/UpcomingEmiDataJsonAdapter;

    invoke-virtual {v2, v1}, Lo/UpcomingEmiDataJsonAdapter;->onPostMessage(I)Lo/LifestyleFragment$onViewCreated$2$onScrolled$$inlined$executeOnResume$1;

    move-result-object v2

    invoke-virtual {v2}, Lo/LifestyleFragment$onViewCreated$2$onScrolled$$inlined$executeOnResume$1;->extraCallback()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public final synthetic onMessageChannelReady()Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRewardUsageId;

    return-object v0
.end method

.method protected final onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult()I

    move-result v0

    invoke-virtual {p1, p2}, Lo/TemplateDataJsonAdapter;->onMessageChannelReady(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(II)[B

    move-result-object p1

    new-instance v0, Lo/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v0, p2, p1}, Lo/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;-><init>(I[B)V

    const/4 p1, 0x0

    iget-object p2, p0, Lo/getRewardUsageId;->search:Lo/UpcomingEmiDataJsonAdapter;

    if-nez p2, :cond_1

    new-instance p2, Lo/UpcomingEmiDataJsonAdapter;

    invoke-direct {p2}, Lo/UpcomingEmiDataJsonAdapter;-><init>()V

    iput-object p2, p0, Lo/getRewardUsageId;->search:Lo/UpcomingEmiDataJsonAdapter;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Lo/UpcomingEmiDataJsonAdapter;->ICustomTabsCallback(I)Lo/LifestyleFragment$onViewCreated$2$onScrolled$$inlined$executeOnResume$1;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Lo/LifestyleFragment$onViewCreated$2$onScrolled$$inlined$executeOnResume$1;

    invoke-direct {p1}, Lo/LifestyleFragment$onViewCreated$2$onScrolled$$inlined$executeOnResume$1;-><init>()V

    iget-object p2, p0, Lo/getRewardUsageId;->search:Lo/UpcomingEmiDataJsonAdapter;

    invoke-virtual {p2, v1, p1}, Lo/UpcomingEmiDataJsonAdapter;->onNavigationEvent(ILo/LifestyleFragment$onViewCreated$2$onScrolled$$inlined$executeOnResume$1;)V

    :cond_2
    invoke-virtual {p1, v0}, Lo/LifestyleFragment$onViewCreated$2$onScrolled$$inlined$executeOnResume$1;->onPostMessage(Lo/LifestyleFragment$scrollToItemUpdateCallback$1$$special$$inlined$executeOnResume$1;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/getRewardUsageId;->search:Lo/UpcomingEmiDataJsonAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/getRewardUsageId;->search:Lo/UpcomingEmiDataJsonAdapter;

    invoke-virtual {v1}, Lo/UpcomingEmiDataJsonAdapter;->onNavigationEvent()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lo/getRewardUsageId;->search:Lo/UpcomingEmiDataJsonAdapter;

    invoke-virtual {v1, v0}, Lo/UpcomingEmiDataJsonAdapter;->onPostMessage(I)Lo/LifestyleFragment$onViewCreated$2$onScrolled$$inlined$executeOnResume$1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/LifestyleFragment$onViewCreated$2$onScrolled$$inlined$executeOnResume$1;->onNavigationEvent(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
