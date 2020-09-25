.class final Lo/FlowJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/ParentEntity;

.field asBinder:Lo/CredProtectResponseJsonAdapter;

.field extraCallback:Lo/StatisticsItemJsonAdapter;

.field onMessageChannelReady:Lo/setStartingAngle;

.field onNavigationEvent:Lo/SpinTheWheelResponseJsonAdapter;

.field onPostMessage:Lo/PendingUsers;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final onNavigationEvent(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)V
    .locals 2

    iget-object v0, p0, Lo/FlowJsonAdapter;->onPostMessage:Lo/PendingUsers;

    if-eqz v0, :cond_0

    new-instance v0, Lo/GetProfilePicResponse;

    iget-object v1, p0, Lo/FlowJsonAdapter;->onPostMessage:Lo/PendingUsers;

    invoke-direct {v0, v1}, Lo/GetProfilePicResponse;-><init>(Lo/PendingUsers;)V

    invoke-virtual {p1, v0}, Lo/DeviceAttrResponse;->onPostMessage(Lo/PendingUsers;)V

    :cond_0
    iget-object v0, p0, Lo/FlowJsonAdapter;->onNavigationEvent:Lo/SpinTheWheelResponseJsonAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lo/DeviceAttrResponse;->onPostMessage(Lo/SpinTheWheelResponseJsonAdapter;)V

    :cond_1
    iget-object v0, p0, Lo/FlowJsonAdapter;->extraCallback:Lo/StatisticsItemJsonAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lo/DeviceAttrResponse;->extraCallback(Lo/StatisticsItemJsonAdapter;)V

    :cond_2
    iget-object v0, p0, Lo/FlowJsonAdapter;->onMessageChannelReady:Lo/setStartingAngle;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lo/DeviceAttrResponse;->extraCallback(Lo/setStartingAngle;)V

    :cond_3
    iget-object v0, p0, Lo/FlowJsonAdapter;->ICustomTabsCallback:Lo/ParentEntity;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Lo/ParentEntity;)V

    :cond_4
    iget-object v0, p0, Lo/FlowJsonAdapter;->asBinder:Lo/CredProtectResponseJsonAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lo/DeviceAttrResponse;->extraCallback(Lo/CredProtectResponseJsonAdapter;)V

    :cond_5
    return-void
.end method
