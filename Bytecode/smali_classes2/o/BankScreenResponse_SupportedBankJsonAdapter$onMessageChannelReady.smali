.class public final Lo/BankScreenResponse_SupportedBankJsonAdapter$onMessageChannelReady;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BankScreenResponse_SupportedBankJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/BankScreenResponse_SupportedBankJsonAdapter;",
        "Lo/BankScreenResponse_SupportedBankJsonAdapter$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/BankScreenResponse_SupportedBankJsonAdapter;->onNavigationEvent()Lo/BankScreenResponse_SupportedBankJsonAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/ConfirmDetailsJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/BankScreenResponse_SupportedBankJsonAdapter$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)Lo/BankScreenResponse_SupportedBankJsonAdapter$onMessageChannelReady;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object p1, p0, Lo/BankScreenResponse_SupportedBankJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/BankScreenResponse_SupportedBankJsonAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/BankScreenResponse_SupportedBankJsonAdapter;->extraCallback(Lo/BankScreenResponse_SupportedBankJsonAdapter;I)V

    return-object p0
.end method

.method public final extraCallback(Lo/LoanStatusResponse$Input;)Lo/BankScreenResponse_SupportedBankJsonAdapter$onMessageChannelReady;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/BankScreenResponse_SupportedBankJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/BankScreenResponse_SupportedBankJsonAdapter;

    invoke-static {v0, p1}, Lo/BankScreenResponse_SupportedBankJsonAdapter;->onNavigationEvent(Lo/BankScreenResponse_SupportedBankJsonAdapter;Lo/LoanStatusResponse$Input;)V

    return-object p0
.end method
