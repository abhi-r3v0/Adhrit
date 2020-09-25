.class public final Lo/getInstrument_source_type$onNavigationEvent;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInstrument_source_type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/getInstrument_source_type;",
        "Lo/getInstrument_source_type$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/getInstrument_source_type;->onNavigationEvent()Lo/getInstrument_source_type;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/getLending_verification_status;)V
    .locals 0

    invoke-direct {p0}, Lo/getInstrument_source_type$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/BankScreenResponse$ScreenData;)Lo/getInstrument_source_type$onNavigationEvent;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/getInstrument_source_type$onNavigationEvent;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/getInstrument_source_type;

    invoke-static {v0, p1}, Lo/getInstrument_source_type;->extraCallback(Lo/getInstrument_source_type;Lo/BankScreenResponse$ScreenData;)V

    return-object p0
.end method

.method public final extraCallback(I)Lo/getInstrument_source_type$onNavigationEvent;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/getInstrument_source_type$onNavigationEvent;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/getInstrument_source_type;

    invoke-static {v0, p1}, Lo/getInstrument_source_type;->onPostMessage(Lo/getInstrument_source_type;I)V

    return-object p0
.end method

.method public final onMessageChannelReady(Lo/EmiSchedule$EmiCard;)Lo/getInstrument_source_type$onNavigationEvent;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/getInstrument_source_type$onNavigationEvent;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/getInstrument_source_type;

    invoke-static {v0, p1}, Lo/getInstrument_source_type;->onMessageChannelReady(Lo/getInstrument_source_type;Lo/EmiSchedule$EmiCard;)V

    return-object p0
.end method
