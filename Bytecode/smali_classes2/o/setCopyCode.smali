.class public final Lo/setCopyCode;
.super Lo/getRewardUsageId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getRewardUsageId<",
        "Lo/setCopyCode;",
        ">;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/TimerConfigJsonAdapter;

.field private extraCallback:Ljava/lang/Integer;

.field private onMessageChannelReady:Lo/StoreItemJsonAdapter;

.field private onNavigationEvent:Lo/WinTncResponseJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/getRewardUsageId;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/setCopyCode;->ICustomTabsCallback:Lo/TimerConfigJsonAdapter;

    iput-object v0, p0, Lo/setCopyCode;->extraCallback:Ljava/lang/Integer;

    iput-object v0, p0, Lo/setCopyCode;->onNavigationEvent:Lo/WinTncResponseJsonAdapter;

    iput-object v0, p0, Lo/setCopyCode;->onMessageChannelReady:Lo/StoreItemJsonAdapter;

    iput-object v0, p0, Lo/setCopyCode;->search:Lo/UpcomingEmiDataJsonAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lo/setCopyCode;->subscribe:I

    return-void
.end method

.method private final onMessageChannelReady(Lo/TemplateDataJsonAdapter;)Lo/setCopyCode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->extraCallback()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lo/getRewardUsageId;->onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lo/setCopyCode;->onMessageChannelReady:Lo/StoreItemJsonAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lo/StoreItemJsonAdapter;

    invoke-direct {v0}, Lo/StoreItemJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/setCopyCode;->onMessageChannelReady:Lo/StoreItemJsonAdapter;

    :cond_2
    iget-object v0, p0, Lo/setCopyCode;->onMessageChannelReady:Lo/StoreItemJsonAdapter;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lo/setCopyCode;->onNavigationEvent:Lo/WinTncResponseJsonAdapter;

    if-nez v0, :cond_4

    new-instance v0, Lo/WinTncResponseJsonAdapter;

    invoke-direct {v0}, Lo/WinTncResponseJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/setCopyCode;->onNavigationEvent:Lo/WinTncResponseJsonAdapter;

    :cond_4
    iget-object v0, p0, Lo/setCopyCode;->onNavigationEvent:Lo/WinTncResponseJsonAdapter;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v2

    invoke-static {v2}, Lo/SectionsRequestModel;->extraCallback(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lo/setCopyCode;->extraCallback:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1, v1}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(I)V

    invoke-virtual {p0, p1, v0}, Lo/getRewardUsageId;->onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lo/setCopyCode;->ICustomTabsCallback:Lo/TimerConfigJsonAdapter;

    if-nez v0, :cond_7

    new-instance v0, Lo/TimerConfigJsonAdapter;

    invoke-direct {v0}, Lo/TimerConfigJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/setCopyCode;->ICustomTabsCallback:Lo/TimerConfigJsonAdapter;

    :cond_7
    iget-object v0, p0, Lo/setCopyCode;->ICustomTabsCallback:Lo/TimerConfigJsonAdapter;

    :goto_1
    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    goto :goto_0

    :cond_8
    return-object p0
.end method


# virtual methods
.method protected final extraCallback()I
    .locals 3

    invoke-super {p0}, Lo/getRewardUsageId;->extraCallback()I

    move-result v0

    iget-object v1, p0, Lo/setCopyCode;->ICustomTabsCallback:Lo/TimerConfigJsonAdapter;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lo/setCopyCode;->extraCallback:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lo/setCopyCode;->onNavigationEvent:Lo/WinTncResponseJsonAdapter;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lo/setCopyCode;->onMessageChannelReady:Lo/StoreItemJsonAdapter;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final synthetic onNavigationEvent(Lo/TemplateDataJsonAdapter;)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lo/setCopyCode;->onMessageChannelReady(Lo/TemplateDataJsonAdapter;)Lo/setCopyCode;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/setCopyCode;->ICustomTabsCallback:Lo/TimerConfigJsonAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_0
    iget-object v0, p0, Lo/setCopyCode;->extraCallback:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_1
    iget-object v0, p0, Lo/setCopyCode;->onNavigationEvent:Lo/WinTncResponseJsonAdapter;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_2
    iget-object v0, p0, Lo/setCopyCode;->onMessageChannelReady:Lo/StoreItemJsonAdapter;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_3
    invoke-super {p0, p1}, Lo/getRewardUsageId;->onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V

    return-void
.end method
