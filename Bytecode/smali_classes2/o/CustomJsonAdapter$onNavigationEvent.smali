.class public final Lo/CustomJsonAdapter$onNavigationEvent;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CustomJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/CustomJsonAdapter;",
        "Lo/CustomJsonAdapter$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/CustomJsonAdapter;->onPostMessage()Lo/CustomJsonAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/DetailsJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/CustomJsonAdapter$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/CustomJsonAdapter$onNavigationEvent;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/CustomJsonAdapter$onNavigationEvent;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/CustomJsonAdapter;

    invoke-static {v0, p1}, Lo/CustomJsonAdapter;->ICustomTabsCallback(Lo/CustomJsonAdapter;Lo/LoanStatusResponse$Input;)V

    return-object p0
.end method

.method public final extraCallback(I)Lo/CustomJsonAdapter$onNavigationEvent;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object p1, p0, Lo/CustomJsonAdapter$onNavigationEvent;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/CustomJsonAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/CustomJsonAdapter;->onPostMessage(Lo/CustomJsonAdapter;I)V

    return-object p0
.end method

.method public final extraCallback(Lo/DisbursementDetailJsonAdapter;)Lo/CustomJsonAdapter$onNavigationEvent;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/CustomJsonAdapter$onNavigationEvent;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/CustomJsonAdapter;

    invoke-static {v0, p1}, Lo/CustomJsonAdapter;->onNavigationEvent(Lo/CustomJsonAdapter;Lo/DisbursementDetailJsonAdapter;)V

    return-object p0
.end method
