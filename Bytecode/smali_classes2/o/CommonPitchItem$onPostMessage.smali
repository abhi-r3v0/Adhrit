.class public final Lo/CommonPitchItem$onPostMessage;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CommonPitchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/CommonPitchItem;",
        "Lo/CommonPitchItem$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/CommonPitchItem;->onMessageChannelReady()Lo/CommonPitchItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/BankScreenResponse_ScreenDataJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Lo/CommonPitchItem$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/LoanStatusResponse$Input;)Lo/CommonPitchItem$onPostMessage;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/CommonPitchItem$onPostMessage;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/CommonPitchItem;

    invoke-static {v0, p1}, Lo/CommonPitchItem;->onMessageChannelReady(Lo/CommonPitchItem;Lo/LoanStatusResponse$Input;)V

    return-object p0
.end method

.method public final onPostMessage(I)Lo/CommonPitchItem$onPostMessage;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object p1, p0, Lo/CommonPitchItem$onPostMessage;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/CommonPitchItem;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/CommonPitchItem;->onMessageChannelReady(Lo/CommonPitchItem;I)V

    return-object p0
.end method
