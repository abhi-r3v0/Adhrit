.class public final Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;
.super Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EmiScreenResponse$ChildCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback<",
        "Lo/EmiScreenResponse$ChildCard;",
        "Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lo/EmiScreenResponse$ChildCard;->onTransact()Lo/EmiScreenResponse$ChildCard;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;-><init>(Lo/LoanStatusResponse_EmiScheduleJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EmiScreenResponse$Data;)V
    .locals 0

    invoke-direct {p0}, Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse$ChildCard;

    invoke-static {v0, p1}, Lo/EmiScreenResponse$ChildCard;->onMessageChannelReady(Lo/EmiScreenResponse$ChildCard;Ljava/lang/String;)V

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse$ChildCard;

    invoke-static {v0, p1}, Lo/EmiScreenResponse$ChildCard;->onPostMessage(Lo/EmiScreenResponse$ChildCard;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object v0, p0, Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast v0, Lo/EmiScreenResponse$ChildCard;

    invoke-static {v0, p1}, Lo/EmiScreenResponse$ChildCard;->onNavigationEvent(Lo/EmiScreenResponse$ChildCard;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onNavigationEvent(Z)Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object p1, p0, Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/EmiScreenResponse$ChildCard;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/EmiScreenResponse$ChildCard;->onNavigationEvent(Lo/EmiScreenResponse$ChildCard;Z)V

    return-object p0
.end method

.method public final onPostMessage(I)Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;
    .locals 1

    invoke-virtual {p0}, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$extraCallback;->ICustomTabsCallback()V

    iget-object p1, p0, Lo/EmiScreenResponse$ChildCard$onMessageChannelReady;->ICustomTabsCallback:Lo/LoanStatusResponse_EmiScheduleJsonAdapter;

    check-cast p1, Lo/EmiScreenResponse$ChildCard;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/EmiScreenResponse$ChildCard;->onMessageChannelReady(Lo/EmiScreenResponse$ChildCard;I)V

    return-object p0
.end method
