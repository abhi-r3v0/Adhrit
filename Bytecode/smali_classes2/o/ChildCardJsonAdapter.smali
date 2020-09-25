.class public final Lo/ChildCardJsonAdapter;
.super Lo/getRewardUsageId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getRewardUsageId<",
        "Lo/ChildCardJsonAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private onNavigationEvent:Ljava/lang/Integer;

.field private onPostMessage:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lo/getRewardUsageId;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ChildCardJsonAdapter;->onNavigationEvent:Ljava/lang/Integer;

    sget-object v1, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->extraCallback:[I

    iput-object v1, p0, Lo/ChildCardJsonAdapter;->onPostMessage:[I

    iput-object v0, p0, Lo/ChildCardJsonAdapter;->search:Lo/UpcomingEmiDataJsonAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lo/ChildCardJsonAdapter;->subscribe:I

    return-void
.end method

.method private final ICustomTabsCallback(Lo/TemplateDataJsonAdapter;)Lo/ChildCardJsonAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->extraCallback()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lo/getRewardUsageId;->onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback(I)I

    move-result v0

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onTransact()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(I)V

    iget-object v1, p0, Lo/ChildCardJsonAdapter;->onPostMessage:[I

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    array-length v1, v1

    :goto_2
    add-int/2addr v3, v1

    new-array v4, v3, [I

    if-eqz v1, :cond_4

    iget-object v5, p0, Lo/ChildCardJsonAdapter;->onPostMessage:[I

    invoke-static {v5, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_3
    if-ge v1, v3, :cond_5

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v2

    aput v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iput-object v4, p0, Lo/ChildCardJsonAdapter;->onPostMessage:[I

    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->extraCallback(I)V

    goto :goto_0

    :cond_6
    invoke-static {p1, v1}, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/TemplateDataJsonAdapter;I)I

    move-result v0

    iget-object v1, p0, Lo/ChildCardJsonAdapter;->onPostMessage:[I

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    array-length v1, v1

    :goto_4
    add-int/2addr v0, v1

    new-array v3, v0, [I

    if-eqz v1, :cond_8

    iget-object v4, p0, Lo/ChildCardJsonAdapter;->onPostMessage:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_5
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_9

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v2

    aput v2, v3, v1

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->extraCallback()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    aput v0, v3, v1

    iput-object v3, p0, Lo/ChildCardJsonAdapter;->onPostMessage:[I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v2

    invoke-static {v2}, Lo/SectionsRequestModel;->extraCallback(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lo/ChildCardJsonAdapter;->onNavigationEvent:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    invoke-virtual {p1, v1}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(I)V

    invoke-virtual {p0, p1, v0}, Lo/getRewardUsageId;->onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z

    goto/16 :goto_0

    :cond_b
    return-object p0
.end method


# virtual methods
.method protected final extraCallback()I
    .locals 6

    invoke-super {p0}, Lo/getRewardUsageId;->extraCallback()I

    move-result v0

    iget-object v1, p0, Lo/ChildCardJsonAdapter;->onNavigationEvent:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lo/ChildCardJsonAdapter;->onPostMessage:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lo/ChildCardJsonAdapter;->onPostMessage:[I

    array-length v5, v4

    if-ge v1, v5, :cond_1

    aget v4, v4, v1

    invoke-static {v4}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->ICustomTabsCallback(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v3

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final synthetic onNavigationEvent(Lo/TemplateDataJsonAdapter;)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lo/ChildCardJsonAdapter;->ICustomTabsCallback(Lo/TemplateDataJsonAdapter;)Lo/ChildCardJsonAdapter;

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

    iget-object v0, p0, Lo/ChildCardJsonAdapter;->onNavigationEvent:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_0
    iget-object v0, p0, Lo/ChildCardJsonAdapter;->onPostMessage:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/ChildCardJsonAdapter;->onPostMessage:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    const/4 v2, 0x2

    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lo/getRewardUsageId;->onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V

    return-void
.end method
