.class public final Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EmiScreenResponse$BottomBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/EmiScreenResponse$BottomBanner;",
        "Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/EmiScreenResponse$BottomBanner;->ICustomTabsCallback$Stub()Lo/EmiScreenResponse$BottomBanner;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EmiSchedule_DetailsJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse$BottomBanner;

    invoke-static {v0, p1}, Lo/EmiScreenResponse$BottomBanner;->extraCallback(Lo/EmiScreenResponse$BottomBanner;Lo/LoanStatusResponse$Input;)V

    return-object p0
.end method

.method public final extraCallback(Lo/EmiScreenResponse$BottomBanner$extraCallback;)Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse$BottomBanner;

    invoke-static {v0, p1}, Lo/EmiScreenResponse$BottomBanner;->onPostMessage(Lo/EmiScreenResponse$BottomBanner;Lo/EmiScreenResponse$BottomBanner$extraCallback;)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiScreenResponse$BottomBanner$ICustomTabsCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse$BottomBanner;

    invoke-static {v0, p1}, Lo/EmiScreenResponse$BottomBanner;->onPostMessage(Lo/EmiScreenResponse$BottomBanner;Ljava/lang/String;)V

    return-object p0
.end method
