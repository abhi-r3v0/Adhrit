.class public final Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;
.super Lo/getRewardUsageId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getRewardUsageId<",
        "Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile onNavigationEvent:[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;


# instance fields
.field private extraCallback:Lo/StoreAccessibility;

.field private onPostMessage:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/getRewardUsageId;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Integer;

    iput-object v0, p0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/StoreAccessibility;

    iput-object v0, p0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->search:Lo/UpcomingEmiDataJsonAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->subscribe:I

    return-void
.end method

.method private final onMessageChannelReady(Lo/TemplateDataJsonAdapter;)Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;
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

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lo/getRewardUsageId;->onNavigationEvent(Lo/TemplateDataJsonAdapter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/StoreAccessibility;

    if-nez v0, :cond_2

    new-instance v0, Lo/StoreAccessibility;

    invoke-direct {v0}, Lo/StoreAccessibility;-><init>()V

    iput-object v0, p0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/StoreAccessibility;

    :cond_2
    iget-object v0, p0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/StoreAccessibility;

    invoke-virtual {p1, v0}, Lo/TemplateDataJsonAdapter;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->onRelationshipValidationResult()I

    move-result v1

    :try_start_0
    invoke-virtual {p1}, Lo/TemplateDataJsonAdapter;->asInterface()I

    move-result v2

    if-ltz v2, :cond_4

    const/16 v3, 0xa

    if-gt v2, v3, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Integer;

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x2c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum AdFormatType"

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

    :cond_5
    return-object p0
.end method

.method public static onPostMessage()[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;
    .locals 2

    sget-object v0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    if-nez v0, :cond_1

    sget-object v0, Lo/MachinePullDownFragment$onViewCreated$3$$special$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    sput-object v1, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

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
    sget-object v0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent:[Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

    return-object v0
.end method


# virtual methods
.method protected final extraCallback()I
    .locals 3

    invoke-super {p0}, Lo/getRewardUsageId;->extraCallback()I

    move-result v0

    iget-object v1, p0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/StoreAccessibility;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final synthetic onNavigationEvent(Lo/TemplateDataJsonAdapter;)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/TemplateDataJsonAdapter;)Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;

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

    iget-object v0, p0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->onPostMessage:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onNavigationEvent(II)V

    :cond_0
    iget-object v0, p0, Lo/FabrikShareReferralFragment$onViewCreated$4$onStateChanged$$inlined$executeOnResume$1;->extraCallback:Lo/StoreAccessibility;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady(ILo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)V

    :cond_1
    invoke-super {p0, p1}, Lo/getRewardUsageId;->onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V

    return-void
.end method
