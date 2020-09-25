.class public final Lo/AssetJsonAdapter;
.super Lo/getRewardUsageId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getRewardUsageId<",
        "Lo/AssetJsonAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field private ICustomTabsCallback$Stub:Lo/StoreFarmResponseJsonAdapter;

.field private asBinder:Lo/ChildCard;

.field private asInterface:Lo/TimerConfigJsonAdapter;

.field public extraCallback:[J

.field public onMessageChannelReady:Lo/UserSelectionRequestModel;

.field public onNavigationEvent:Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;

.field private onPostMessage:Ljava/lang/Integer;

.field private onRelationshipValidationResult:Ljava/lang/Integer;

.field private onTransact:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lo/getRewardUsageId;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/AssetJsonAdapter;->onPostMessage:Ljava/lang/Integer;

    iput-object v0, p0, Lo/AssetJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    iput-object v0, p0, Lo/AssetJsonAdapter;->onTransact:Ljava/lang/Integer;

    iput-object v0, p0, Lo/AssetJsonAdapter;->onRelationshipValidationResult:Ljava/lang/Integer;

    iput-object v0, p0, Lo/AssetJsonAdapter;->asInterface:Lo/TimerConfigJsonAdapter;

    sget-object v1, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady:[J

    iput-object v1, p0, Lo/AssetJsonAdapter;->extraCallback:[J

    iput-object v0, p0, Lo/AssetJsonAdapter;->onMessageChannelReady:Lo/UserSelectionRequestModel;

    iput-object v0, p0, Lo/AssetJsonAdapter;->asBinder:Lo/ChildCard;

    iput-object v0, p0, Lo/AssetJsonAdapter;->ICustomTabsCallback$Stub:Lo/StoreFarmResponseJsonAdapter;

    iput-object v0, p0, Lo/AssetJsonAdapter;->onNavigationEvent:Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;

    iput-object v0, p0, Lo/AssetJsonAdapter;->search:Lo/UpcomingEmiDataJsonAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lo/AssetJsonAdapter;->subscribe:I

    return-void
.end method

.method private final onMessageChannelReady(Lo/TemplateDataJsonAdapter;)Lo/AssetJsonAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->extraCallback()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lo/getRewardUsageId;->onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    iget-object v0, p0, Lo/AssetJsonAdapter;->onNavigationEvent:Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;

    if-nez v0, :cond_1

    new-instance v0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v0}, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;-><init>()V

    iput-object v0, p0, Lo/AssetJsonAdapter;->onNavigationEvent:Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;

    :cond_1
    iget-object v0, p0, Lo/AssetJsonAdapter;->onNavigationEvent:Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;

    goto/16 :goto_6

    :sswitch_1
    iget-object v0, p0, Lo/AssetJsonAdapter;->ICustomTabsCallback$Stub:Lo/StoreFarmResponseJsonAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lo/StoreFarmResponseJsonAdapter;

    invoke-direct {v0}, Lo/StoreFarmResponseJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/AssetJsonAdapter;->ICustomTabsCallback$Stub:Lo/StoreFarmResponseJsonAdapter;

    :cond_2
    iget-object v0, p0, Lo/AssetJsonAdapter;->ICustomTabsCallback$Stub:Lo/StoreFarmResponseJsonAdapter;

    goto/16 :goto_6

    :sswitch_2
    iget-object v0, p0, Lo/AssetJsonAdapter;->asBinder:Lo/ChildCard;

    if-nez v0, :cond_3

    new-instance v0, Lo/ChildCard;

    invoke-direct {v0}, Lo/ChildCard;-><init>()V

    iput-object v0, p0, Lo/AssetJsonAdapter;->asBinder:Lo/ChildCard;

    :cond_3
    iget-object v0, p0, Lo/AssetJsonAdapter;->asBinder:Lo/ChildCard;

    goto/16 :goto_6

    :sswitch_3
    iget-object v0, p0, Lo/AssetJsonAdapter;->onMessageChannelReady:Lo/UserSelectionRequestModel;

    if-nez v0, :cond_4

    new-instance v0, Lo/UserSelectionRequestModel;

    invoke-direct {v0}, Lo/UserSelectionRequestModel;-><init>()V

    iput-object v0, p0, Lo/AssetJsonAdapter;->onMessageChannelReady:Lo/UserSelectionRequestModel;

    :cond_4
    iget-object v0, p0, Lo/AssetJsonAdapter;->onMessageChannelReady:Lo/UserSelectionRequestModel;

    goto/16 :goto_6

    :sswitch_4
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback(I)I

    move-result v0

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onTransact()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asBinder()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(I)V

    iget-object v2, p0, Lo/AssetJsonAdapter;->extraCallback:[J

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    array-length v2, v2

    :goto_2
    add-int/2addr v3, v2

    new-array v4, v3, [J

    if-eqz v2, :cond_7

    iget-object v5, p0, Lo/AssetJsonAdapter;->extraCallback:[J

    invoke-static {v5, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_3
    if-ge v2, v3, :cond_8

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asBinder()J

    move-result-wide v5

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    iput-object v4, p0, Lo/AssetJsonAdapter;->extraCallback:[J

    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->extraCallback(I)V

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x70

    invoke-static {p1, v0}, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/TemplateDataJsonAdapter;I)I

    move-result v0

    iget-object v2, p0, Lo/AssetJsonAdapter;->extraCallback:[J

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    array-length v2, v2

    :goto_4
    add-int/2addr v0, v2

    new-array v3, v0, [J

    if-eqz v2, :cond_a

    iget-object v4, p0, Lo/AssetJsonAdapter;->extraCallback:[J

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_5
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_b

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asBinder()J

    move-result-wide v4

    aput-wide v4, v3, v2

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->extraCallback()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asBinder()J

    move-result-wide v0

    aput-wide v0, v3, v2

    iput-object v3, p0, Lo/AssetJsonAdapter;->extraCallback:[J

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lo/AssetJsonAdapter;->asInterface:Lo/TimerConfigJsonAdapter;

    if-nez v0, :cond_c

    new-instance v0, Lo/TimerConfigJsonAdapter;

    invoke-direct {v0}, Lo/TimerConfigJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/AssetJsonAdapter;->asInterface:Lo/TimerConfigJsonAdapter;

    :cond_c
    iget-object v0, p0, Lo/AssetJsonAdapter;->asInterface:Lo/TimerConfigJsonAdapter;

    :goto_6
    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v2

    invoke-static {v2}, Lo/SectionsRequestModel;->extraCallback(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lo/AssetJsonAdapter;->onRelationshipValidationResult:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    invoke-virtual {p1, v1}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(I)V

    invoke-virtual {p0, p1, v0}, Lo/getRewardUsageId;->onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/AssetJsonAdapter;->onTransact:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/AssetJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/AssetJsonAdapter;->onPostMessage:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_b
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x48 -> :sswitch_a
        0x52 -> :sswitch_9
        0x58 -> :sswitch_8
        0x60 -> :sswitch_7
        0x6a -> :sswitch_6
        0x70 -> :sswitch_5
        0x72 -> :sswitch_4
        0x7a -> :sswitch_3
        0x82 -> :sswitch_2
        0x8a -> :sswitch_1
        0x92 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected final extraCallback()I
    .locals 6

    invoke-super {p0}, Lo/getRewardUsageId;->extraCallback()I

    move-result v0

    iget-object v1, p0, Lo/AssetJsonAdapter;->onPostMessage:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/16 v2, 0x9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lo/AssetJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lo/AssetJsonAdapter;->onTransact:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    invoke-static {v2}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(I)I

    move-result v2

    invoke-static {v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->extraCallback(I)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_2
    iget-object v1, p0, Lo/AssetJsonAdapter;->onRelationshipValidationResult:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/16 v2, 0xc

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lo/AssetJsonAdapter;->asInterface:Lo/TimerConfigJsonAdapter;

    if-eqz v1, :cond_4

    const/16 v2, 0xd

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lo/AssetJsonAdapter;->extraCallback:[J

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lo/AssetJsonAdapter;->extraCallback:[J

    array-length v4, v3

    if-ge v1, v4, :cond_5

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    add-int/2addr v0, v2

    array-length v1, v3

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lo/AssetJsonAdapter;->onMessageChannelReady:Lo/UserSelectionRequestModel;

    if-eqz v1, :cond_7

    const/16 v2, 0xf

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lo/AssetJsonAdapter;->asBinder:Lo/ChildCard;

    if-eqz v1, :cond_8

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lo/AssetJsonAdapter;->ICustomTabsCallback$Stub:Lo/StoreFarmResponseJsonAdapter;

    if-eqz v1, :cond_9

    const/16 v2, 0x11

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lo/AssetJsonAdapter;->onNavigationEvent:Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;

    if-eqz v1, :cond_a

    const/16 v2, 0x12

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public final synthetic onNavigationEvent(Lo/TemplateDataJsonAdapter;)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lo/AssetJsonAdapter;->onMessageChannelReady(Lo/TemplateDataJsonAdapter;)Lo/AssetJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/AssetJsonAdapter;->onPostMessage:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_0
    iget-object v0, p0, Lo/AssetJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->extraCallback(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lo/AssetJsonAdapter;->onTransact:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(II)V

    invoke-virtual {p1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(I)V

    :cond_2
    iget-object v0, p0, Lo/AssetJsonAdapter;->onRelationshipValidationResult:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/16 v2, 0xc

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_3
    iget-object v0, p0, Lo/AssetJsonAdapter;->asInterface:Lo/TimerConfigJsonAdapter;

    if-eqz v0, :cond_4

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_4
    iget-object v0, p0, Lo/AssetJsonAdapter;->extraCallback:[J

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    :goto_0
    iget-object v0, p0, Lo/AssetJsonAdapter;->extraCallback:[J

    array-length v2, v0

    if-ge v1, v2, :cond_5

    const/16 v2, 0xe

    aget-wide v3, v0, v1

    invoke-virtual {p1, v2, v3, v4}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->extraCallback(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lo/AssetJsonAdapter;->onMessageChannelReady:Lo/UserSelectionRequestModel;

    if-eqz v0, :cond_6

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_6
    iget-object v0, p0, Lo/AssetJsonAdapter;->asBinder:Lo/ChildCard;

    if-eqz v0, :cond_7

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_7
    iget-object v0, p0, Lo/AssetJsonAdapter;->ICustomTabsCallback$Stub:Lo/StoreFarmResponseJsonAdapter;

    if-eqz v0, :cond_8

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_8
    iget-object v0, p0, Lo/AssetJsonAdapter;->onNavigationEvent:Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;

    if-eqz v0, :cond_9

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_9
    invoke-super {p0, p1}, Lo/getRewardUsageId;->onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V

    return-void
.end method
