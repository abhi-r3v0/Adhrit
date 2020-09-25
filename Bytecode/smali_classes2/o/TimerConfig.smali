.class public final Lo/TimerConfig;
.super Lo/getRewardUsageId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getRewardUsageId<",
        "Lo/TimerConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile onMessageChannelReady:[Lo/TimerConfig;


# instance fields
.field private ICustomTabsCallback:Lo/setVoucherCodeText;

.field private ICustomTabsCallback$Stub:Lo/setCopyCode;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

.field private ICustomTabsService:Lo/StoreItemJsonAdapter;

.field private asBinder:Lo/WinTncResponse;

.field private asInterface:Ljava/lang/Integer;

.field private extraCallback:Lo/WinLandingFragment$onViewCreated$3$onScrollStateChanged$$inlined$executeOnResume$1;

.field private getInterfaceDescriptor:Ljava/lang/Integer;

.field private mayLaunchUrl:Ljava/lang/Long;

.field private newSession:Ljava/lang/Integer;

.field private onNavigationEvent:Lo/setSecondaryCta;

.field private onPostMessage:Lo/setDisplayCopy;

.field private onRelationshipValidationResult:Lo/WinDetailsFragment$enterAnim$$inlined$apply$lambda$2$1;

.field private onTransact:Ljava/lang/Integer;

.field private postMessage:Ljava/lang/Integer;

.field private warmup:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/getRewardUsageId;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/TimerConfig;->ICustomTabsCallback:Lo/setVoucherCodeText;

    iput-object v0, p0, Lo/TimerConfig;->onPostMessage:Lo/setDisplayCopy;

    iput-object v0, p0, Lo/TimerConfig;->extraCallback:Lo/WinLandingFragment$onViewCreated$3$onScrollStateChanged$$inlined$executeOnResume$1;

    iput-object v0, p0, Lo/TimerConfig;->onNavigationEvent:Lo/setSecondaryCta;

    iput-object v0, p0, Lo/TimerConfig;->onRelationshipValidationResult:Lo/WinDetailsFragment$enterAnim$$inlined$apply$lambda$2$1;

    iput-object v0, p0, Lo/TimerConfig;->asBinder:Lo/WinTncResponse;

    iput-object v0, p0, Lo/TimerConfig;->ICustomTabsCallback$Stub:Lo/setCopyCode;

    iput-object v0, p0, Lo/TimerConfig;->onTransact:Ljava/lang/Integer;

    iput-object v0, p0, Lo/TimerConfig;->asInterface:Ljava/lang/Integer;

    iput-object v0, p0, Lo/TimerConfig;->ICustomTabsService:Lo/StoreItemJsonAdapter;

    iput-object v0, p0, Lo/TimerConfig;->getInterfaceDescriptor:Ljava/lang/Integer;

    iput-object v0, p0, Lo/TimerConfig;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    iput-object v0, p0, Lo/TimerConfig;->warmup:Ljava/lang/Integer;

    iput-object v0, p0, Lo/TimerConfig;->newSession:Ljava/lang/Integer;

    iput-object v0, p0, Lo/TimerConfig;->postMessage:Ljava/lang/Integer;

    iput-object v0, p0, Lo/TimerConfig;->mayLaunchUrl:Ljava/lang/Long;

    iput-object v0, p0, Lo/TimerConfig;->search:Lo/UpcomingEmiDataJsonAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lo/TimerConfig;->subscribe:I

    return-void
.end method

.method public static ICustomTabsCallback()[Lo/TimerConfig;
    .locals 2

    sget-object v0, Lo/TimerConfig;->onMessageChannelReady:[Lo/TimerConfig;

    if-nez v0, :cond_1

    sget-object v0, Lo/MachinePullDownFragment$onViewCreated$3$$special$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/TimerConfig;->onMessageChannelReady:[Lo/TimerConfig;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lo/TimerConfig;

    sput-object v1, Lo/TimerConfig;->onMessageChannelReady:[Lo/TimerConfig;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lo/TimerConfig;->onMessageChannelReady:[Lo/TimerConfig;

    return-object v0
.end method


# virtual methods
.method protected final extraCallback()I
    .locals 5

    invoke-super {p0}, Lo/getRewardUsageId;->extraCallback()I

    move-result v0

    iget-object v1, p0, Lo/TimerConfig;->ICustomTabsCallback:Lo/setVoucherCodeText;

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lo/TimerConfig;->onPostMessage:Lo/setDisplayCopy;

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lo/TimerConfig;->extraCallback:Lo/WinLandingFragment$onViewCreated$3$onScrollStateChanged$$inlined$executeOnResume$1;

    if-eqz v1, :cond_2

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lo/TimerConfig;->onNavigationEvent:Lo/setSecondaryCta;

    if-eqz v1, :cond_3

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lo/TimerConfig;->onRelationshipValidationResult:Lo/WinDetailsFragment$enterAnim$$inlined$apply$lambda$2$1;

    if-eqz v1, :cond_4

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lo/TimerConfig;->asBinder:Lo/WinTncResponse;

    if-eqz v1, :cond_5

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lo/TimerConfig;->ICustomTabsCallback$Stub:Lo/setCopyCode;

    if-eqz v1, :cond_6

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lo/TimerConfig;->onTransact:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v2, 0xc

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lo/TimerConfig;->asInterface:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const/16 v2, 0xd

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lo/TimerConfig;->ICustomTabsService:Lo/StoreItemJsonAdapter;

    if-eqz v1, :cond_9

    const/16 v2, 0xe

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lo/TimerConfig;->getInterfaceDescriptor:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const/16 v2, 0xf

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lo/TimerConfig;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    const/16 v2, 0x10

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lo/TimerConfig;->warmup:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const/16 v2, 0x11

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lo/TimerConfig;->newSession:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const/16 v2, 0x12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lo/TimerConfig;->postMessage:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    const/16 v2, 0x13

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lo/TimerConfig;->mayLaunchUrl:Ljava/lang/Long;

    if-eqz v1, :cond_f

    const/16 v2, 0x14

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->ICustomTabsCallback(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
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

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lo/getRewardUsageId;->onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asBinder()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/TimerConfig;->mayLaunchUrl:Ljava/lang/Long;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/TimerConfig;->postMessage:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/TimerConfig;->newSession:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/TimerConfig;->warmup:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/TimerConfig;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/TimerConfig;->getInterfaceDescriptor:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lo/TimerConfig;->ICustomTabsService:Lo/StoreItemJsonAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lo/StoreItemJsonAdapter;

    invoke-direct {v0}, Lo/StoreItemJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/TimerConfig;->ICustomTabsService:Lo/StoreItemJsonAdapter;

    :cond_1
    iget-object v0, p0, Lo/TimerConfig;->ICustomTabsService:Lo/StoreItemJsonAdapter;

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/TimerConfig;->asInterface:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/TimerConfig;->onTransact:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lo/TimerConfig;->ICustomTabsCallback$Stub:Lo/setCopyCode;

    if-nez v0, :cond_2

    new-instance v0, Lo/setCopyCode;

    invoke-direct {v0}, Lo/setCopyCode;-><init>()V

    iput-object v0, p0, Lo/TimerConfig;->ICustomTabsCallback$Stub:Lo/setCopyCode;

    :cond_2
    iget-object v0, p0, Lo/TimerConfig;->ICustomTabsCallback$Stub:Lo/setCopyCode;

    goto :goto_1

    :sswitch_a
    iget-object v0, p0, Lo/TimerConfig;->asBinder:Lo/WinTncResponse;

    if-nez v0, :cond_3

    new-instance v0, Lo/WinTncResponse;

    invoke-direct {v0}, Lo/WinTncResponse;-><init>()V

    iput-object v0, p0, Lo/TimerConfig;->asBinder:Lo/WinTncResponse;

    :cond_3
    iget-object v0, p0, Lo/TimerConfig;->asBinder:Lo/WinTncResponse;

    goto :goto_1

    :sswitch_b
    iget-object v0, p0, Lo/TimerConfig;->onRelationshipValidationResult:Lo/WinDetailsFragment$enterAnim$$inlined$apply$lambda$2$1;

    if-nez v0, :cond_4

    new-instance v0, Lo/WinDetailsFragment$enterAnim$$inlined$apply$lambda$2$1;

    invoke-direct {v0}, Lo/WinDetailsFragment$enterAnim$$inlined$apply$lambda$2$1;-><init>()V

    iput-object v0, p0, Lo/TimerConfig;->onRelationshipValidationResult:Lo/WinDetailsFragment$enterAnim$$inlined$apply$lambda$2$1;

    :cond_4
    iget-object v0, p0, Lo/TimerConfig;->onRelationshipValidationResult:Lo/WinDetailsFragment$enterAnim$$inlined$apply$lambda$2$1;

    goto :goto_1

    :sswitch_c
    iget-object v0, p0, Lo/TimerConfig;->onNavigationEvent:Lo/setSecondaryCta;

    if-nez v0, :cond_5

    new-instance v0, Lo/setSecondaryCta;

    invoke-direct {v0}, Lo/setSecondaryCta;-><init>()V

    iput-object v0, p0, Lo/TimerConfig;->onNavigationEvent:Lo/setSecondaryCta;

    :cond_5
    iget-object v0, p0, Lo/TimerConfig;->onNavigationEvent:Lo/setSecondaryCta;

    goto :goto_1

    :sswitch_d
    iget-object v0, p0, Lo/TimerConfig;->extraCallback:Lo/WinLandingFragment$onViewCreated$3$onScrollStateChanged$$inlined$executeOnResume$1;

    if-nez v0, :cond_6

    new-instance v0, Lo/WinLandingFragment$onViewCreated$3$onScrollStateChanged$$inlined$executeOnResume$1;

    invoke-direct {v0}, Lo/WinLandingFragment$onViewCreated$3$onScrollStateChanged$$inlined$executeOnResume$1;-><init>()V

    iput-object v0, p0, Lo/TimerConfig;->extraCallback:Lo/WinLandingFragment$onViewCreated$3$onScrollStateChanged$$inlined$executeOnResume$1;

    :cond_6
    iget-object v0, p0, Lo/TimerConfig;->extraCallback:Lo/WinLandingFragment$onViewCreated$3$onScrollStateChanged$$inlined$executeOnResume$1;

    goto :goto_1

    :sswitch_e
    iget-object v0, p0, Lo/TimerConfig;->onPostMessage:Lo/setDisplayCopy;

    if-nez v0, :cond_7

    new-instance v0, Lo/setDisplayCopy;

    invoke-direct {v0}, Lo/setDisplayCopy;-><init>()V

    iput-object v0, p0, Lo/TimerConfig;->onPostMessage:Lo/setDisplayCopy;

    :cond_7
    iget-object v0, p0, Lo/TimerConfig;->onPostMessage:Lo/setDisplayCopy;

    goto :goto_1

    :sswitch_f
    iget-object v0, p0, Lo/TimerConfig;->ICustomTabsCallback:Lo/setVoucherCodeText;

    if-nez v0, :cond_8

    new-instance v0, Lo/setVoucherCodeText;

    invoke-direct {v0}, Lo/setVoucherCodeText;-><init>()V

    iput-object v0, p0, Lo/TimerConfig;->ICustomTabsCallback:Lo/setVoucherCodeText;

    :cond_8
    iget-object v0, p0, Lo/TimerConfig;->ICustomTabsCallback:Lo/setVoucherCodeText;

    :goto_1
    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    goto/16 :goto_0

    :sswitch_10
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x2a -> :sswitch_f
        0x32 -> :sswitch_e
        0x3a -> :sswitch_d
        0x42 -> :sswitch_c
        0x4a -> :sswitch_b
        0x52 -> :sswitch_a
        0x5a -> :sswitch_9
        0x60 -> :sswitch_8
        0x68 -> :sswitch_7
        0x72 -> :sswitch_6
        0x78 -> :sswitch_5
        0x80 -> :sswitch_4
        0x88 -> :sswitch_3
        0x90 -> :sswitch_2
        0x98 -> :sswitch_1
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/TimerConfig;->ICustomTabsCallback:Lo/setVoucherCodeText;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_0
    iget-object v0, p0, Lo/TimerConfig;->onPostMessage:Lo/setDisplayCopy;

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_1
    iget-object v0, p0, Lo/TimerConfig;->extraCallback:Lo/WinLandingFragment$onViewCreated$3$onScrollStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_2

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_2
    iget-object v0, p0, Lo/TimerConfig;->onNavigationEvent:Lo/setSecondaryCta;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_3
    iget-object v0, p0, Lo/TimerConfig;->onRelationshipValidationResult:Lo/WinDetailsFragment$enterAnim$$inlined$apply$lambda$2$1;

    if-eqz v0, :cond_4

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_4
    iget-object v0, p0, Lo/TimerConfig;->asBinder:Lo/WinTncResponse;

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_5
    iget-object v0, p0, Lo/TimerConfig;->ICustomTabsCallback$Stub:Lo/setCopyCode;

    if-eqz v0, :cond_6

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_6
    iget-object v0, p0, Lo/TimerConfig;->onTransact:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    const/16 v1, 0xc

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_7
    iget-object v0, p0, Lo/TimerConfig;->asInterface:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    const/16 v1, 0xd

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_8
    iget-object v0, p0, Lo/TimerConfig;->ICustomTabsService:Lo/StoreItemJsonAdapter;

    if-eqz v0, :cond_9

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_9
    iget-object v0, p0, Lo/TimerConfig;->getInterfaceDescriptor:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    const/16 v1, 0xf

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_a
    iget-object v0, p0, Lo/TimerConfig;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const/16 v1, 0x10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_b
    iget-object v0, p0, Lo/TimerConfig;->warmup:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/16 v1, 0x11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_c
    iget-object v0, p0, Lo/TimerConfig;->newSession:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    const/16 v1, 0x12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_d
    iget-object v0, p0, Lo/TimerConfig;->postMessage:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/16 v1, 0x13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_e
    iget-object v0, p0, Lo/TimerConfig;->mayLaunchUrl:Ljava/lang/Long;

    if-eqz v0, :cond_f

    const/16 v1, 0x14

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->extraCallback(IJ)V

    :cond_f
    invoke-super {p0, p1}, Lo/getRewardUsageId;->onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V

    return-void
.end method
