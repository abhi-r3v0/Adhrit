.class public final Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BankScreenResponse$ScreenData$$Parcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/BankScreenResponse$ScreenData$$Parcelable;",
        "Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/BankScreenResponse$ScreenData$$Parcelable;->extraCallback()Lo/BankScreenResponse$ScreenData$$Parcelable;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/BankScreenResponse$ScreenData$Cta;)V
    .locals 0

    invoke-direct {p0}, Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object p1, p0, Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/BankScreenResponse$ScreenData$$Parcelable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/BankScreenResponse$ScreenData$$Parcelable;->onMessageChannelReady(Lo/BankScreenResponse$ScreenData$$Parcelable;I)V

    return-object p0
.end method

.method public final ICustomTabsCallback(Lo/LoanStatusResponse$Input;)Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/BankScreenResponse$ScreenData$$Parcelable;

    invoke-static {v0, p1}, Lo/BankScreenResponse$ScreenData$$Parcelable;->extraCallback(Lo/BankScreenResponse$ScreenData$$Parcelable;Lo/LoanStatusResponse$Input;)V

    return-object p0
.end method

.method public final extraCallback(Lo/BankScreenResponseJsonAdapter;)Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/BankScreenResponse$ScreenData$$Parcelable$onPostMessage;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/BankScreenResponse$ScreenData$$Parcelable;

    invoke-static {v0, p1}, Lo/BankScreenResponse$ScreenData$$Parcelable;->onNavigationEvent(Lo/BankScreenResponse$ScreenData$$Parcelable;Lo/BankScreenResponseJsonAdapter;)V

    return-object p0
.end method
