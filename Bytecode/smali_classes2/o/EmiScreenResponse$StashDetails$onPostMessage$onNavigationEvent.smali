.class public final Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EmiScreenResponse$StashDetails$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/EmiScreenResponse$StashDetails$onPostMessage;",
        "Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/EmiScreenResponse$StashDetails$onPostMessage;->onMessageChannelReady()Lo/EmiScreenResponse$StashDetails$onPostMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EmiScreenResponse$ItemDetails;)V
    .locals 0

    invoke-direct {p0}, Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/EmiScreenResponse;)Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse$StashDetails$onPostMessage;

    invoke-static {v0, p1}, Lo/EmiScreenResponse$StashDetails$onPostMessage;->onNavigationEvent(Lo/EmiScreenResponse$StashDetails$onPostMessage;Lo/EmiScreenResponse;)V

    return-object p0
.end method

.method public final extraCallback(Lo/EmiScreenResponse_ItemDetailsJsonAdapter;)Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse$StashDetails$onPostMessage;

    invoke-static {v0, p1}, Lo/EmiScreenResponse$StashDetails$onPostMessage;->onNavigationEvent(Lo/EmiScreenResponse$StashDetails$onPostMessage;Lo/EmiScreenResponse_ItemDetailsJsonAdapter;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse$StashDetails$onPostMessage;

    invoke-static {v0, p1}, Lo/EmiScreenResponse$StashDetails$onPostMessage;->onMessageChannelReady(Lo/EmiScreenResponse$StashDetails$onPostMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onPostMessage(I)Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiScreenResponse$StashDetails$onPostMessage$onNavigationEvent;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse$StashDetails$onPostMessage;

    invoke-static {v0, p1}, Lo/EmiScreenResponse$StashDetails$onPostMessage;->onNavigationEvent(Lo/EmiScreenResponse$StashDetails$onPostMessage;I)V

    return-object p0
.end method
