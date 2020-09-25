.class public final Lo/EmiScreenResponse$StashDetails$onMessageChannelReady;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EmiScreenResponse$StashDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/EmiScreenResponse$StashDetails;",
        "Lo/EmiScreenResponse$StashDetails$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/EmiScreenResponse$StashDetails;->onPostMessage()Lo/EmiScreenResponse$StashDetails;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EmiScreenResponse$ItemDetails;)V
    .locals 0

    invoke-direct {p0}, Lo/EmiScreenResponse$StashDetails$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)Lo/EmiScreenResponse$StashDetails$onMessageChannelReady;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiScreenResponse$StashDetails$onMessageChannelReady;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse$StashDetails;

    invoke-static {v0, p1}, Lo/EmiScreenResponse$StashDetails;->onMessageChannelReady(Lo/EmiScreenResponse$StashDetails;I)V

    return-object p0
.end method

.method public final onMessageChannelReady(Lo/EmiScreenResponse$StashDetails$onPostMessage;)Lo/EmiScreenResponse$StashDetails$onMessageChannelReady;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiScreenResponse$StashDetails$onMessageChannelReady;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse$StashDetails;

    invoke-static {v0, p1}, Lo/EmiScreenResponse$StashDetails;->onPostMessage(Lo/EmiScreenResponse$StashDetails;Lo/EmiScreenResponse$StashDetails$onPostMessage;)V

    return-object p0
.end method
