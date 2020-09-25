.class final Lo/StashLandingResponseJsonAdapter;
.super Lo/StashDataResponseJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/StashDataResponseJsonAdapter<",
        "Lo/StashDataResponse$ScreenData;",
        "Lo/StashDataResponse$ScreenData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/StashDataResponseJsonAdapter;-><init>()V

    return-void
.end method

.method private static extraCallback(Ljava/lang/Object;Lo/StashDataResponse$ScreenData;)V
    .locals 0

    check-cast p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    iput-object p1, p0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtt:Lo/StashDataResponse$ScreenData;

    return-void
.end method


# virtual methods
.method final synthetic ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo/StashDataResponse$ScreenData;

    invoke-virtual {p1}, Lo/StashDataResponse$ScreenData;->onMessageChannelReady()I

    move-result p1

    return p1
.end method

.method final synthetic ICustomTabsCallback(Ljava/lang/Object;Lo/UpcomingEmiData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lo/StashDataResponse$ScreenData;

    invoke-virtual {p1, p2}, Lo/StashDataResponse$ScreenData;->extraCallback(Lo/UpcomingEmiData;)V

    return-void
.end method

.method final synthetic asInterface(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo/StashDataResponse$ScreenData;

    invoke-virtual {p1}, Lo/StashDataResponse$ScreenData;->extraCallback()I

    move-result p1

    return p1
.end method

.method final synthetic extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    iget-object v0, v0, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtt:Lo/StashDataResponse$ScreenData;

    invoke-static {}, Lo/StashDataResponse$ScreenData;->onNavigationEvent()Lo/StashDataResponse$ScreenData;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lo/StashDataResponse$ScreenData;->ICustomTabsCallback()Lo/StashDataResponse$ScreenData;

    move-result-object v0

    invoke-static {p1, v0}, Lo/StashLandingResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Lo/StashDataResponse$ScreenData;)V

    :cond_0
    return-object v0
.end method

.method final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lo/StashDataResponse$ScreenData;

    invoke-static {p1, p2}, Lo/StashLandingResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Lo/StashDataResponse$ScreenData;)V

    return-void
.end method

.method final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lo/StashDataResponse$ScreenData;->ICustomTabsCallback()Lo/StashDataResponse$ScreenData;

    move-result-object v0

    return-object v0
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    iget-object p1, p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtt:Lo/StashDataResponse$ScreenData;

    return-object p1
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;II)V
    .locals 0

    check-cast p1, Lo/StashDataResponse$ScreenData;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/StashDataResponse$ScreenData;->onPostMessage(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lo/StashDataResponse$ScreenData;

    check-cast p3, Lo/StashDataResponse$ScreenData;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lo/StashDataResponse$ScreenData;->onPostMessage(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lo/StashDataResponse$ScreenData;

    invoke-static {p1, p2}, Lo/StashLandingResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Lo/StashDataResponse$ScreenData;)V

    return-void
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;Lo/UpcomingEmiData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lo/StashDataResponse$ScreenData;

    invoke-virtual {p1, p2}, Lo/StashDataResponse$ScreenData;->onPostMessage(Lo/UpcomingEmiData;)V

    return-void
.end method

.method final synthetic onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lo/StashDataResponse$ScreenData;

    invoke-virtual {p1}, Lo/StashDataResponse$ScreenData;->onPostMessage()V

    return-object p1
.end method

.method final synthetic onNavigationEvent(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lo/StashDataResponse$ScreenData;

    shl-int/lit8 p2, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/StashDataResponse$ScreenData;->onPostMessage(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic onNavigationEvent(Ljava/lang/Object;ILo/LoanStatusResponse$Input;)V
    .locals 0

    check-cast p1, Lo/StashDataResponse$ScreenData;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2, p3}, Lo/StashDataResponse$ScreenData;->onPostMessage(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lo/StashDataResponse$ScreenData;

    check-cast p2, Lo/StashDataResponse$ScreenData;

    invoke-static {}, Lo/StashDataResponse$ScreenData;->onNavigationEvent()Lo/StashDataResponse$ScreenData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/StashDataResponse$ScreenData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lo/StashDataResponse$ScreenData;->onMessageChannelReady(Lo/StashDataResponse$ScreenData;Lo/StashDataResponse$ScreenData;)Lo/StashDataResponse$ScreenData;

    move-result-object p1

    return-object p1
.end method

.method final onPostMessage(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    iget-object p1, p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter;->zzdtt:Lo/StashDataResponse$ScreenData;

    invoke-virtual {p1}, Lo/StashDataResponse$ScreenData;->onPostMessage()V

    return-void
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lo/StashDataResponse$ScreenData;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/StashDataResponse$ScreenData;->onPostMessage(ILjava/lang/Object;)V

    return-void
.end method

.method final onPostMessage(Lo/Pitch;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
