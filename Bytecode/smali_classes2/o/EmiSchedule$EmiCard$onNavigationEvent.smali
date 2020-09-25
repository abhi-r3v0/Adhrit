.class public final Lo/EmiSchedule$EmiCard$onNavigationEvent;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EmiSchedule$EmiCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/EmiSchedule$EmiCard;",
        "Lo/EmiSchedule$EmiCard$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/EmiSchedule$EmiCard;->onRelationshipValidationResult()Lo/EmiSchedule$EmiCard;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EmiScheduleJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/EmiSchedule$EmiCard$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/EmiSchedule;)Lo/EmiSchedule$EmiCard$onNavigationEvent;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiSchedule$EmiCard$onNavigationEvent;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiSchedule$EmiCard;

    invoke-static {v0, p1}, Lo/EmiSchedule$EmiCard;->onMessageChannelReady(Lo/EmiSchedule$EmiCard;Lo/EmiSchedule;)V

    return-object p0
.end method

.method public final onMessageChannelReady(I)Lo/EmiSchedule$EmiCard$onNavigationEvent;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object p1, p0, Lo/EmiSchedule$EmiCard$onNavigationEvent;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/EmiSchedule$EmiCard;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/EmiSchedule$EmiCard;->ICustomTabsCallback(Lo/EmiSchedule$EmiCard;I)V

    return-object p0
.end method

.method public final onMessageChannelReady(Lo/LoanStatusResponse$Input;)Lo/EmiSchedule$EmiCard$onNavigationEvent;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiSchedule$EmiCard$onNavigationEvent;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiSchedule$EmiCard;

    invoke-static {v0, p1}, Lo/EmiSchedule$EmiCard;->onNavigationEvent(Lo/EmiSchedule$EmiCard;Lo/LoanStatusResponse$Input;)V

    return-object p0
.end method
