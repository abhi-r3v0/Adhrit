.class public final Lo/Asset;
.super Lo/getRewardUsageId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getRewardUsageId<",
        "Lo/Asset;",
        ">;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Integer;

.field private onMessageChannelReady:Lo/StoreItemJsonAdapter;

.field private onNavigationEvent:Lo/StackCount;

.field private onPostMessage:[Lo/StoreItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lo/getRewardUsageId;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/Asset;->onNavigationEvent:Lo/StackCount;

    invoke-static {}, Lo/StoreItem;->onPostMessage()[Lo/StoreItem;

    move-result-object v1

    iput-object v1, p0, Lo/Asset;->onPostMessage:[Lo/StoreItem;

    iput-object v0, p0, Lo/Asset;->ICustomTabsCallback:Ljava/lang/Integer;

    iput-object v0, p0, Lo/Asset;->onMessageChannelReady:Lo/StoreItemJsonAdapter;

    iput-object v0, p0, Lo/Asset;->search:Lo/UpcomingEmiDataJsonAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lo/Asset;->subscribe:I

    return-void
.end method

.method private final onPostMessage(Lo/TemplateDataJsonAdapter;)Lo/Asset;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->extraCallback()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lo/getRewardUsageId;->onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lo/Asset;->onMessageChannelReady:Lo/StoreItemJsonAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lo/StoreItemJsonAdapter;

    invoke-direct {v0}, Lo/StoreItemJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/Asset;->onMessageChannelReady:Lo/StoreItemJsonAdapter;

    :cond_2
    iget-object v0, p0, Lo/Asset;->onMessageChannelReady:Lo/StoreItemJsonAdapter;

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v2

    invoke-static {v2}, Lo/SectionsRequestModel;->extraCallback(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lo/Asset;->ICustomTabsCallback:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1, v1}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(I)V

    invoke-virtual {p0, p1, v0}, Lo/getRewardUsageId;->onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z

    goto :goto_0

    :cond_4
    invoke-static {p1, v1}, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/TemplateDataJsonAdapter;I)I

    move-result v0

    iget-object v1, p0, Lo/Asset;->onPostMessage:[Lo/StoreItem;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v3, v0, [Lo/StoreItem;

    if-eqz v1, :cond_6

    iget-object v4, p0, Lo/Asset;->onPostMessage:[Lo/StoreItem;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_7

    new-instance v2, Lo/StoreItem;

    invoke-direct {v2}, Lo/StoreItem;-><init>()V

    aput-object v2, v3, v1

    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->extraCallback()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    new-instance v0, Lo/StoreItem;

    invoke-direct {v0}, Lo/StoreItem;-><init>()V

    aput-object v0, v3, v1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    iput-object v3, p0, Lo/Asset;->onPostMessage:[Lo/StoreItem;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lo/Asset;->onNavigationEvent:Lo/StackCount;

    if-nez v0, :cond_9

    new-instance v0, Lo/StackCount;

    invoke-direct {v0}, Lo/StackCount;-><init>()V

    iput-object v0, p0, Lo/Asset;->onNavigationEvent:Lo/StackCount;

    :cond_9
    iget-object v0, p0, Lo/Asset;->onNavigationEvent:Lo/StackCount;

    :goto_3
    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    goto/16 :goto_0

    :cond_a
    return-object p0
.end method


# virtual methods
.method protected final extraCallback()I
    .locals 4

    invoke-super {p0}, Lo/getRewardUsageId;->extraCallback()I

    move-result v0

    iget-object v1, p0, Lo/Asset;->onNavigationEvent:Lo/StackCount;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lo/Asset;->onPostMessage:[Lo/StoreItem;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo/Asset;->onPostMessage:[Lo/StoreItem;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lo/Asset;->ICustomTabsCallback:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lo/Asset;->onMessageChannelReady:Lo/StoreItemJsonAdapter;

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public final synthetic onNavigationEvent(Lo/TemplateDataJsonAdapter;)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lo/Asset;->onPostMessage(Lo/TemplateDataJsonAdapter;)Lo/Asset;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/Asset;->onNavigationEvent:Lo/StackCount;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_0
    iget-object v0, p0, Lo/Asset;->onPostMessage:[Lo/StoreItem;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/Asset;->onPostMessage:[Lo/StoreItem;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/Asset;->ICustomTabsCallback:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_3
    iget-object v0, p0, Lo/Asset;->onMessageChannelReady:Lo/StoreItemJsonAdapter;

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_4
    invoke-super {p0, p1}, Lo/getRewardUsageId;->onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V

    return-void
.end method
