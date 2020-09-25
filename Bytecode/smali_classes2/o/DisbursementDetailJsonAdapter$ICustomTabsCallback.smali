.class public final Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DisbursementDetailJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/DisbursementDetailJsonAdapter;",
        "Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/DisbursementDetailJsonAdapter;->asInterface()Lo/DisbursementDetailJsonAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/DisbursementDetail;)V
    .locals 0

    invoke-direct {p0}, Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/DisbursementDetailJsonAdapter;

    invoke-static {v0, p1}, Lo/DisbursementDetailJsonAdapter;->onNavigationEvent(Lo/DisbursementDetailJsonAdapter;Lo/LoanStatusResponse$Input;)V

    return-object p0
.end method

.method public final onMessageChannelReady(I)Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object p1, p0, Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/DisbursementDetailJsonAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/DisbursementDetailJsonAdapter;->onMessageChannelReady(Lo/DisbursementDetailJsonAdapter;I)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/Detail;)Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/DisbursementDetailJsonAdapter;

    invoke-static {v0, p1}, Lo/DisbursementDetailJsonAdapter;->onMessageChannelReady(Lo/DisbursementDetailJsonAdapter;Lo/Detail;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/DisbursementDetailJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/DisbursementDetailJsonAdapter;

    invoke-static {v0, p1}, Lo/DisbursementDetailJsonAdapter;->onMessageChannelReady(Lo/DisbursementDetailJsonAdapter;Lo/LoanStatusResponse$Input;)V

    return-object p0
.end method
