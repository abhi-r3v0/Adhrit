.class public final Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BankScreenResponse$ScreenData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/BankScreenResponse$ScreenData;",
        "Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/BankScreenResponse$ScreenData;->onRelationshipValidationResult()Lo/BankScreenResponse$ScreenData;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/getExisting_accounts;)V
    .locals 0

    invoke-direct {p0}, Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object p1, p0, Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/BankScreenResponse$ScreenData;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/BankScreenResponse$ScreenData;->onPostMessage(Lo/BankScreenResponse$ScreenData;I)V

    return-object p0
.end method

.method public final onMessageChannelReady(Lo/getProvider_bank_code;)Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/BankScreenResponse$ScreenData;

    invoke-static {v0, p1}, Lo/BankScreenResponse$ScreenData;->ICustomTabsCallback(Lo/BankScreenResponse$ScreenData;Lo/getProvider_bank_code;)V

    return-object p0
.end method

.method public final onNavigationEvent(Lo/LoanStatusResponse$Input;)Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/BankScreenResponse$ScreenData$ICustomTabsCallback;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/BankScreenResponse$ScreenData;

    invoke-static {v0, p1}, Lo/BankScreenResponse$ScreenData;->onNavigationEvent(Lo/BankScreenResponse$ScreenData;Lo/LoanStatusResponse$Input;)V

    return-object p0
.end method