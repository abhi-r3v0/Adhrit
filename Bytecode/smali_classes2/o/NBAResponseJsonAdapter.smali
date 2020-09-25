.class final Lo/NBAResponseJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final ICustomTabsCallback:F

.field private static final extraCallback:F

.field private static final onMessageChannelReady:J

.field private static final onNavigationEvent:Lo/TargetNavJsonAdapter;

.field private static final onPostMessage:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lo/TargetNavJsonAdapter;->extraCallback()Lo/TargetNavJsonAdapter;

    move-result-object v0

    sput-object v0, Lo/NBAResponseJsonAdapter;->onNavigationEvent:Lo/TargetNavJsonAdapter;

    sget-object v0, Lo/WinningTypes;->fromMediaItem:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lo/NBAResponseJsonAdapter;->extraCallback:F

    sget-object v0, Lo/WinningTypes;->MediaBrowserCompat$MediaItem:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lo/NBAResponseJsonAdapter;->onMessageChannelReady:J

    sget-object v0, Lo/WinningTypes;->getFlags:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lo/NBAResponseJsonAdapter;->ICustomTabsCallback:F

    sget-object v0, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserServiceCallbackImpl:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lo/NBAResponseJsonAdapter;->onPostMessage:J

    return-void
.end method

.method private static ICustomTabsCallback(JI)I
    .locals 2

    rem-int/lit8 p2, p2, 0x10

    mul-int/lit8 p2, p2, 0x4

    ushr-long/2addr p0, p2

    const-wide/16 v0, 0xf

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method static onNavigationEvent()Z
    .locals 12

    sget-object v0, Lo/NBAResponseJsonAdapter;->onNavigationEvent:Lo/TargetNavJsonAdapter;

    invoke-virtual {v0}, Lo/TargetNavJsonAdapter;->asBinder()I

    move-result v0

    sget-object v1, Lo/NBAResponseJsonAdapter;->onNavigationEvent:Lo/TargetNavJsonAdapter;

    invoke-virtual {v1}, Lo/TargetNavJsonAdapter;->onRelationshipValidationResult()I

    move-result v1

    sget-object v2, Lo/NBAResponseJsonAdapter;->onNavigationEvent:Lo/TargetNavJsonAdapter;

    invoke-virtual {v2}, Lo/TargetNavJsonAdapter;->asInterface()I

    move-result v2

    sget-object v3, Lo/NBAResponseJsonAdapter;->onNavigationEvent:Lo/TargetNavJsonAdapter;

    invoke-virtual {v3}, Lo/TargetNavJsonAdapter;->onTransact()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    const v4, 0x7fffffff

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    if-ge v0, v8, :cond_0

    sget-wide v9, Lo/NBAResponseJsonAdapter;->onPostMessage:J

    cmp-long v11, v9, v5

    if-eqz v11, :cond_0

    invoke-static {v9, v10, v0}, Lo/NBAResponseJsonAdapter;->ICustomTabsCallback(JI)I

    move-result v9

    goto :goto_0

    :cond_0
    sget v9, Lo/NBAResponseJsonAdapter;->ICustomTabsCallback:F

    cmpl-float v10, v9, v7

    if-eqz v10, :cond_1

    int-to-float v10, v0

    mul-float v9, v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v3

    goto :goto_0

    :cond_1
    const v9, 0x7fffffff

    :goto_0
    if-gt v1, v9, :cond_4

    if-ge v0, v8, :cond_2

    sget-wide v8, Lo/NBAResponseJsonAdapter;->onMessageChannelReady:J

    cmp-long v1, v8, v5

    if-eqz v1, :cond_2

    invoke-static {v8, v9, v0}, Lo/NBAResponseJsonAdapter;->ICustomTabsCallback(JI)I

    move-result v4

    goto :goto_1

    :cond_2
    sget v1, Lo/NBAResponseJsonAdapter;->extraCallback:F

    cmpl-float v5, v1, v7

    if-eqz v5, :cond_3

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v4, v1

    :cond_3
    :goto_1
    if-gt v2, v4, :cond_4

    return v3

    :cond_4
    const/4 v0, 0x0

    return v0
.end method
