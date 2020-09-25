.class public final Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;
.super Lo/getRewardUsageId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getRewardUsageId<",
        "Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Integer;

.field private ICustomTabsCallback$Stub:Lo/ChildCardJsonAdapter;

.field private asBinder:Lo/StackCountJsonAdapter;

.field private asInterface:Lo/Asset;

.field private extraCallback:Lo/SectionsRequestModelJsonAdapter;

.field public onMessageChannelReady:Lo/FabrikReferralIntroDialogFragment$onViewCreated$6$onStateChanged$$inlined$executeOnResume$1;

.field private onNavigationEvent:[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

.field public onPostMessage:Ljava/lang/Integer;

.field private onRelationshipValidationResult:Lo/StoreFarmResponse;

.field private onTransact:Lo/UserSelectionRequestModelJsonAdapter;

.field private warmup:[Lo/TimerConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lo/getRewardUsageId;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Integer;

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Integer;

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/SectionsRequestModelJsonAdapter;

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/FabrikReferralIntroDialogFragment$onViewCreated$6$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {}, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->onPostMessage()[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v1

    iput-object v1, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onTransact:Lo/UserSelectionRequestModelJsonAdapter;

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/StoreFarmResponse;

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->asBinder:Lo/StackCountJsonAdapter;

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/ChildCardJsonAdapter;

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->asInterface:Lo/Asset;

    invoke-static {}, Lo/TimerConfig;->ICustomTabsCallback()[Lo/TimerConfig;

    move-result-object v1

    iput-object v1, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->warmup:[Lo/TimerConfig;

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->search:Lo/UpcomingEmiDataJsonAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->subscribe:I

    return-void
.end method

.method private final onMessageChannelReady(Lo/TemplateDataJsonAdapter;)Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;
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

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lo/getRewardUsageId;->onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0x8a

    invoke-static {p1, v0}, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/TemplateDataJsonAdapter;I)I

    move-result v0

    iget-object v2, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->warmup:[Lo/TimerConfig;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    new-array v3, v0, [Lo/TimerConfig;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->warmup:[Lo/TimerConfig;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_3

    new-instance v1, Lo/TimerConfig;

    invoke-direct {v1}, Lo/TimerConfig;-><init>()V

    aput-object v1, v3, v2

    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->extraCallback()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Lo/TimerConfig;

    invoke-direct {v0}, Lo/TimerConfig;-><init>()V

    aput-object v0, v3, v2

    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    iput-object v3, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->warmup:[Lo/TimerConfig;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->asInterface:Lo/Asset;

    if-nez v0, :cond_4

    new-instance v0, Lo/Asset;

    invoke-direct {v0}, Lo/Asset;-><init>()V

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->asInterface:Lo/Asset;

    :cond_4
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->asInterface:Lo/Asset;

    goto/16 :goto_5

    :sswitch_2
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/ChildCardJsonAdapter;

    if-nez v0, :cond_5

    new-instance v0, Lo/ChildCardJsonAdapter;

    invoke-direct {v0}, Lo/ChildCardJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/ChildCardJsonAdapter;

    :cond_5
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/ChildCardJsonAdapter;

    goto/16 :goto_5

    :sswitch_3
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->asBinder:Lo/StackCountJsonAdapter;

    if-nez v0, :cond_6

    new-instance v0, Lo/StackCountJsonAdapter;

    invoke-direct {v0}, Lo/StackCountJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->asBinder:Lo/StackCountJsonAdapter;

    :cond_6
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->asBinder:Lo/StackCountJsonAdapter;

    goto/16 :goto_5

    :sswitch_4
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/StoreFarmResponse;

    if-nez v0, :cond_7

    new-instance v0, Lo/StoreFarmResponse;

    invoke-direct {v0}, Lo/StoreFarmResponse;-><init>()V

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/StoreFarmResponse;

    :cond_7
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/StoreFarmResponse;

    goto :goto_5

    :sswitch_5
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onTransact:Lo/UserSelectionRequestModelJsonAdapter;

    if-nez v0, :cond_8

    new-instance v0, Lo/UserSelectionRequestModelJsonAdapter;

    invoke-direct {v0}, Lo/UserSelectionRequestModelJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onTransact:Lo/UserSelectionRequestModelJsonAdapter;

    :cond_8
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onTransact:Lo/UserSelectionRequestModelJsonAdapter;

    goto :goto_5

    :sswitch_6
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/TemplateDataJsonAdapter;I)I

    move-result v0

    iget-object v2, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    array-length v2, v2

    :goto_3
    add-int/2addr v0, v2

    new-array v3, v0, [Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v2, :cond_a

    iget-object v4, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_b

    new-instance v1, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    invoke-direct {v1}, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;-><init>()V

    aput-object v1, v3, v2

    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->extraCallback()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    new-instance v0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    invoke-direct {v0}, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;-><init>()V

    aput-object v0, v3, v2

    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    iput-object v3, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/FabrikReferralIntroDialogFragment$onViewCreated$6$onStateChanged$$inlined$executeOnResume$1;

    if-nez v0, :cond_c

    new-instance v0, Lo/FabrikReferralIntroDialogFragment$onViewCreated$6$onStateChanged$$inlined$executeOnResume$1;

    invoke-direct {v0}, Lo/FabrikReferralIntroDialogFragment$onViewCreated$6$onStateChanged$$inlined$executeOnResume$1;-><init>()V

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/FabrikReferralIntroDialogFragment$onViewCreated$6$onStateChanged$$inlined$executeOnResume$1;

    :cond_c
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/FabrikReferralIntroDialogFragment$onViewCreated$6$onStateChanged$$inlined$executeOnResume$1;

    goto :goto_5

    :sswitch_8
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/SectionsRequestModelJsonAdapter;

    if-nez v0, :cond_d

    new-instance v0, Lo/SectionsRequestModelJsonAdapter;

    invoke-direct {v0}, Lo/SectionsRequestModelJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/SectionsRequestModelJsonAdapter;

    :cond_d
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/SectionsRequestModelJsonAdapter;

    :goto_5
    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v2

    invoke-static {v2}, Lo/SectionsRequestModel;->extraCallback(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult()I

    move-result v1

    :try_start_1
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v2

    if-ltz v2, :cond_e

    const/16 v3, 0x9

    if-gt v2, v3, :cond_e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum AdInitiater"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p1, v1}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(I)V

    invoke-virtual {p0, p1, v0}, Lo/getRewardUsageId;->onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z

    goto/16 :goto_0

    :sswitch_b
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x38 -> :sswitch_a
        0x40 -> :sswitch_9
        0x4a -> :sswitch_8
        0x52 -> :sswitch_7
        0x5a -> :sswitch_6
        0x62 -> :sswitch_5
        0x6a -> :sswitch_4
        0x72 -> :sswitch_3
        0x7a -> :sswitch_2
        0x82 -> :sswitch_1
        0x8a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected final extraCallback()I
    .locals 5

    invoke-super {p0}, Lo/getRewardUsageId;->extraCallback()I

    move-result v0

    iget-object v1, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/SectionsRequestModelJsonAdapter;

    if-eqz v1, :cond_2

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/FabrikReferralIntroDialogFragment$onViewCreated$6$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v1, :cond_3

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    array-length v4, v3

    if-ge v1, v4, :cond_5

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    const/16 v4, 0xb

    invoke-static {v4, v3}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onTransact:Lo/UserSelectionRequestModelJsonAdapter;

    if-eqz v1, :cond_6

    const/16 v3, 0xc

    invoke-static {v3, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/StoreFarmResponse;

    if-eqz v1, :cond_7

    const/16 v3, 0xd

    invoke-static {v3, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->asBinder:Lo/StackCountJsonAdapter;

    if-eqz v1, :cond_8

    const/16 v3, 0xe

    invoke-static {v3, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/ChildCardJsonAdapter;

    if-eqz v1, :cond_9

    const/16 v3, 0xf

    invoke-static {v3, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->asInterface:Lo/Asset;

    if-eqz v1, :cond_a

    const/16 v3, 0x10

    invoke-static {v3, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->warmup:[Lo/TimerConfig;

    if-eqz v1, :cond_c

    array-length v1, v1

    if-lez v1, :cond_c

    :goto_1
    iget-object v1, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->warmup:[Lo/TimerConfig;

    array-length v3, v1

    if-ge v2, v3, :cond_c

    aget-object v1, v1, v2

    if-eqz v1, :cond_b

    const/16 v3, 0x11

    invoke-static {v3, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_c
    return v0
.end method

.method public final synthetic onNavigationEvent(Lo/TemplateDataJsonAdapter;)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/TemplateDataJsonAdapter;)Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_0
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_1
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/SectionsRequestModelJsonAdapter;

    if-eqz v0, :cond_2

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_2
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/FabrikReferralIntroDialogFragment$onViewCreated$6$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_3
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    array-length v3, v2

    if-ge v0, v3, :cond_5

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onTransact:Lo/UserSelectionRequestModelJsonAdapter;

    if-eqz v0, :cond_6

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_6
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/StoreFarmResponse;

    if-eqz v0, :cond_7

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_7
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->asBinder:Lo/StackCountJsonAdapter;

    if-eqz v0, :cond_8

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_8
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Lo/ChildCardJsonAdapter;

    if-eqz v0, :cond_9

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_9
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->asInterface:Lo/Asset;

    if-eqz v0, :cond_a

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_a
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->warmup:[Lo/TimerConfig;

    if-eqz v0, :cond_c

    array-length v0, v0

    if-lez v0, :cond_c

    :goto_1
    iget-object v0, p0, Lo/RewardRedeemDialogFragment$onViewCreated$1$$special$$inlined$executeOnResume$1;->warmup:[Lo/TimerConfig;

    array-length v2, v0

    if-ge v1, v2, :cond_c

    aget-object v0, v0, v1

    if-eqz v0, :cond_b

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    invoke-super {p0, p1}, Lo/getRewardUsageId;->onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V

    return-void
.end method
