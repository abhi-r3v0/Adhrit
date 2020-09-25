.class public final Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;
.super Lo/getRewardUsageId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getRewardUsageId<",
        "Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile onRelationshipValidationResult:[Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field private ICustomTabsCallback$Stub:Ljava/lang/String;

.field private asBinder:Ljava/lang/Integer;

.field private asInterface:[I

.field public extraCallback:Lo/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;

.field public onMessageChannelReady:[Ljava/lang/String;

.field public onNavigationEvent:Ljava/lang/Integer;

.field public onPostMessage:Ljava/lang/Integer;

.field private onTransact:Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lo/getRewardUsageId;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onNavigationEvent:Ljava/lang/Integer;

    iput-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->ICustomTabsCallback:Ljava/lang/String;

    iput-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->extraCallback:Lo/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;

    iput-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onTransact:Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    iput-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asBinder:Ljava/lang/Integer;

    sget-object v1, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->extraCallback:[I

    iput-object v1, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asInterface:[I

    iput-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onPostMessage:Ljava/lang/Integer;

    sget-object v1, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:[Ljava/lang/String;

    iput-object v1, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onMessageChannelReady:[Ljava/lang/String;

    iput-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->search:Lo/UpcomingEmiDataJsonAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->subscribe:I

    return-void
.end method

.method private final ICustomTabsCallback(Lo/TemplateDataJsonAdapter;)Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;
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
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/TemplateDataJsonAdapter;I)I

    move-result v0

    iget-object v2, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onMessageChannelReady:[Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onMessageChannelReady:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_3

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->extraCallback()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    iput-object v3, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onMessageChannelReady:[Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onMessageChannelReady()I

    move-result v2

    if-ltz v2, :cond_4

    const/4 v3, 0x3

    if-gt v2, v3, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onPostMessage:Ljava/lang/Integer;

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum AdResourceType"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1, v1}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(I)V

    invoke-virtual {p0, p1, v0}, Lo/getRewardUsageId;->onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->ICustomTabsCallback$Stub:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback(I)I

    move-result v0

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onTransact()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onMessageChannelReady()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v2}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(I)V

    iget-object v2, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asInterface:[I

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    array-length v2, v2

    :goto_4
    add-int/2addr v3, v2

    new-array v4, v3, [I

    if-eqz v2, :cond_7

    iget-object v5, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asInterface:[I

    invoke-static {v5, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_5
    if-ge v2, v3, :cond_8

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onMessageChannelReady()I

    move-result v1

    aput v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    iput-object v4, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asInterface:[I

    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->extraCallback(I)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lo/MachinePullInternalFragment$onViewCreated$4$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/TemplateDataJsonAdapter;I)I

    move-result v0

    iget-object v2, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asInterface:[I

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    array-length v2, v2

    :goto_6
    add-int/2addr v0, v2

    new-array v3, v0, [I

    if-eqz v2, :cond_a

    iget-object v4, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asInterface:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_7
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_b

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onMessageChannelReady()I

    move-result v1

    aput v1, v3, v2

    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->extraCallback()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onMessageChannelReady()I

    move-result v0

    aput v0, v3, v2

    iput-object v3, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asInterface:[I

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onMessageChannelReady()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asBinder:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onTransact:Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    if-nez v0, :cond_c

    new-instance v0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v0}, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;-><init>()V

    iput-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onTransact:Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    :cond_c
    iget-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onTransact:Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    goto :goto_8

    :sswitch_7
    iget-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->extraCallback:Lo/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;

    if-nez v0, :cond_d

    new-instance v0, Lo/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v0}, Lo/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;-><init>()V

    iput-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->extraCallback:Lo/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;

    :cond_d
    iget-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->extraCallback:Lo/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;

    :goto_8
    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->ICustomTabsCallback:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onMessageChannelReady()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onNavigationEvent:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_a
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x28 -> :sswitch_5
        0x30 -> :sswitch_4
        0x32 -> :sswitch_3
        0x3a -> :sswitch_2
        0x40 -> :sswitch_1
        0x4a -> :sswitch_0
    .end sparse-switch
.end method

.method public static ICustomTabsCallback()[Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;
    .locals 2

    sget-object v0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onRelationshipValidationResult:[Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;

    if-nez v0, :cond_1

    sget-object v0, Lo/MachinePullDownFragment$onViewCreated$3$$special$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onRelationshipValidationResult:[Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;

    sput-object v1, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onRelationshipValidationResult:[Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;

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
    sget-object v0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onRelationshipValidationResult:[Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;

    return-object v0
.end method


# virtual methods
.method protected final extraCallback()I
    .locals 7

    invoke-super {p0}, Lo/getRewardUsageId;->extraCallback()I

    move-result v0

    iget-object v1, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onNavigationEvent:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->extraCallback:Lo/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onTransact:Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    if-eqz v1, :cond_2

    const/4 v3, 0x4

    invoke-static {v3, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asBinder:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v3, 0x5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asInterface:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asInterface:[I

    array-length v6, v5

    if-ge v1, v6, :cond_4

    aget v5, v5, v1

    invoke-static {v5}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->ICustomTabsCallback(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v0, v4

    array-length v1, v5

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v4, 0x7

    invoke-static {v4, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onPostMessage:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v4, 0x8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onMessageChannelReady:[Ljava/lang/String;

    if-eqz v1, :cond_a

    array-length v1, v1

    if-lez v1, :cond_a

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onMessageChannelReady:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_9

    aget-object v5, v5, v3

    if-eqz v5, :cond_8

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    add-int/2addr v0, v1

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

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

    invoke-direct {p0, p1}, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->ICustomTabsCallback(Lo/TemplateDataJsonAdapter;)Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;

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

    iget-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onNavigationEvent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    iget-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->extraCallback(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->extraCallback:Lo/MachinePullInternalFragment$machineUpdateListener$1$$special$$inlined$executeOnResume$1;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_1
    iget-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onTransact:Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$1;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_2
    iget-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asBinder:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_3
    iget-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asInterface:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->asInterface:[I

    array-length v3, v2

    if-ge v0, v3, :cond_4

    const/4 v3, 0x6

    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->extraCallback(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onPostMessage:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_6
    iget-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onMessageChannelReady:[Ljava/lang/String;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    :goto_1
    iget-object v0, p0, Lo/MachinePullInternalFragment$stateChange$1$$special$$inlined$executeOnResume$lambda$1$2;->onMessageChannelReady:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_8

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->extraCallback(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-super {p0, p1}, Lo/getRewardUsageId;->onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V

    return-void
.end method
