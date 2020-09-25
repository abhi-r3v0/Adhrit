.class final Lo/getSwipeDirs$ICustomTabsCallback$1$1$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSwipeDirs$ICustomTabsCallback$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/addWrite;

.field private synthetic onPostMessage:Lo/getSwipeDirs$ICustomTabsCallback$1$1;


# direct methods
.method constructor <init>(Lo/getSwipeDirs$ICustomTabsCallback$1$1;Lo/addWrite;)V
    .locals 0

    iput-object p1, p0, Lo/getSwipeDirs$ICustomTabsCallback$1$1$1;->onPostMessage:Lo/getSwipeDirs$ICustomTabsCallback$1$1;

    iput-object p2, p0, Lo/getSwipeDirs$ICustomTabsCallback$1$1$1;->ICustomTabsCallback:Lo/addWrite;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 7

    .line 1120
    iget-object v0, p0, Lo/getSwipeDirs$ICustomTabsCallback$1$1$1;->onPostMessage:Lo/getSwipeDirs$ICustomTabsCallback$1$1;

    iget-object v0, v0, Lo/getSwipeDirs$ICustomTabsCallback$1$1;->onNavigationEvent:Lo/getSwipeDirs$ICustomTabsCallback$1;

    iget-object v0, v0, Lo/getSwipeDirs$ICustomTabsCallback$1;->extraCallback:Lo/getSwipeDirs$ICustomTabsCallback;

    iget-object v0, v0, Lo/getSwipeDirs$ICustomTabsCallback;->onNavigationEvent:Lo/getSwipeDirs;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/cachePreLayoutSpanMapping;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/cachePreLayoutSpanMapping;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;

    const/4 v2, 0x5

    new-array v2, v2, [Lo/addWrite;

    const/4 v3, 0x0

    .line 1122
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "user_consent"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v3, 0x1

    .line 1123
    iget-object v4, p0, Lo/getSwipeDirs$ICustomTabsCallback$1$1$1;->ICustomTabsCallback:Lo/addWrite;

    .line 3027
    iget-object v4, v4, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 3043
    new-instance v5, Lo/addWrite;

    const-string v6, "aadhar_identifier"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 1124
    iget-object v4, p0, Lo/getSwipeDirs$ICustomTabsCallback$1$1$1;->ICustomTabsCallback:Lo/addWrite;

    .line 4028
    iget-object v4, v4, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 4043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "type"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 1125
    iget-object v4, p0, Lo/getSwipeDirs$ICustomTabsCallback$1$1$1;->onPostMessage:Lo/getSwipeDirs$ICustomTabsCallback$1$1;

    iget-object v4, v4, Lo/getSwipeDirs$ICustomTabsCallback$1$1;->onNavigationEvent:Lo/getSwipeDirs$ICustomTabsCallback$1;

    iget-object v4, v4, Lo/getSwipeDirs$ICustomTabsCallback$1;->extraCallback:Lo/getSwipeDirs$ICustomTabsCallback;

    iget-object v4, v4, Lo/getSwipeDirs$ICustomTabsCallback;->onNavigationEvent:Lo/getSwipeDirs;

    invoke-static {v4}, Lo/getSwipeDirs;->onNavigationEvent(Lo/getSwipeDirs;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/setInflatedId;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/setInflatedId;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5043
    new-instance v5, Lo/addWrite;

    const-string v6, "masked_aadhar_identifier"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v3, 0x4

    .line 1126
    iget-object v4, p0, Lo/getSwipeDirs$ICustomTabsCallback$1$1$1;->onPostMessage:Lo/getSwipeDirs$ICustomTabsCallback$1$1;

    iget-object v4, v4, Lo/getSwipeDirs$ICustomTabsCallback$1$1;->onNavigationEvent:Lo/getSwipeDirs$ICustomTabsCallback$1;

    iget-object v4, v4, Lo/getSwipeDirs$ICustomTabsCallback$1;->extraCallback:Lo/getSwipeDirs$ICustomTabsCallback;

    iget-object v4, v4, Lo/getSwipeDirs$ICustomTabsCallback;->onNavigationEvent:Lo/getSwipeDirs;

    invoke-static {v4}, Lo/getSwipeDirs;->ICustomTabsCallback(Lo/getSwipeDirs;)Ljava/lang/String;

    move-result-object v4

    .line 6043
    new-instance v5, Lo/addWrite;

    const-string v6, "aadhar_type"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    .line 1121
    invoke-static {v2}, Lo/lambda$onError$1;->onMessageChannelReady([Lo/addWrite;)Ljava/util/Map;

    move-result-object v2

    .line 1127
    iget-object v3, p0, Lo/getSwipeDirs$ICustomTabsCallback$1$1$1;->onPostMessage:Lo/getSwipeDirs$ICustomTabsCallback$1$1;

    iget-object v3, v3, Lo/getSwipeDirs$ICustomTabsCallback$1$1;->onNavigationEvent:Lo/getSwipeDirs$ICustomTabsCallback$1;

    iget-object v3, v3, Lo/getSwipeDirs$ICustomTabsCallback$1;->extraCallback:Lo/getSwipeDirs$ICustomTabsCallback;

    iget-object v3, v3, Lo/getSwipeDirs$ICustomTabsCallback;->onNavigationEvent:Lo/getSwipeDirs;

    invoke-static {v3}, Lo/getSwipeDirs;->extraCallback(Lo/getSwipeDirs;)Lo/setRecycleChildrenOnDetach;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 6061
    :cond_1
    iget-object v4, v3, Lo/setRecycleChildrenOnDetach;->getInterfaceDescriptor:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, v3, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    :cond_2
    if-nez v4, :cond_3

    .line 1127
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    iget-object v3, p0, Lo/getSwipeDirs$ICustomTabsCallback$1$1$1;->onPostMessage:Lo/getSwipeDirs$ICustomTabsCallback$1$1;

    iget-object v3, v3, Lo/getSwipeDirs$ICustomTabsCallback$1$1;->onNavigationEvent:Lo/getSwipeDirs$ICustomTabsCallback$1;

    iget-object v3, v3, Lo/getSwipeDirs$ICustomTabsCallback$1;->extraCallback:Lo/getSwipeDirs$ICustomTabsCallback;

    iget-object v3, v3, Lo/getSwipeDirs$ICustomTabsCallback;->onNavigationEvent:Lo/getSwipeDirs;

    invoke-static {v3}, Lo/getSwipeDirs;->extraCallback(Lo/getSwipeDirs;)Lo/setRecycleChildrenOnDetach;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    const-string v3, ""

    .line 1120
    :cond_5
    invoke-direct {v1, v2, v4, v3}, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/cachePreLayoutSpanMapping;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;)V

    .line 45
    :cond_6
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
