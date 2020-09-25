.class final Lo/onSelected$asBinder$2$4;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSelected$asBinder$2;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lending/okyc/dialog/OkycSmsDetectionDialog$onOTPReceived$1$1$1$1"
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

.field private synthetic onNavigationEvent:Lo/onSelected$asBinder$2;


# direct methods
.method constructor <init>(Lo/onSelected$asBinder$2;Lo/addWrite;)V
    .locals 0

    iput-object p1, p0, Lo/onSelected$asBinder$2$4;->onNavigationEvent:Lo/onSelected$asBinder$2;

    iput-object p2, p0, Lo/onSelected$asBinder$2$4;->ICustomTabsCallback:Lo/addWrite;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 7

    .line 1271
    iget-object v0, p0, Lo/onSelected$asBinder$2$4;->onNavigationEvent:Lo/onSelected$asBinder$2;

    iget-object v0, v0, Lo/onSelected$asBinder$2;->extraCallback:Lo/onSelected$asBinder;

    iget-object v0, v0, Lo/onSelected$asBinder;->onNavigationEvent:Lo/onSelected;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/cachePreLayoutSpanMapping;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/cachePreLayoutSpanMapping;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;

    const/4 v2, 0x5

    new-array v2, v2, [Lo/addWrite;

    const/4 v3, 0x0

    .line 1273
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "user_consent"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v3, 0x1

    .line 1274
    iget-object v4, p0, Lo/onSelected$asBinder$2$4;->ICustomTabsCallback:Lo/addWrite;

    .line 3027
    iget-object v4, v4, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 3043
    new-instance v5, Lo/addWrite;

    const-string v6, "aadhar_identifier"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 1275
    iget-object v4, p0, Lo/onSelected$asBinder$2$4;->ICustomTabsCallback:Lo/addWrite;

    .line 4028
    iget-object v4, v4, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 4043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "type"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 1276
    iget-object v4, p0, Lo/onSelected$asBinder$2$4;->onNavigationEvent:Lo/onSelected$asBinder$2;

    iget-object v4, v4, Lo/onSelected$asBinder$2;->extraCallback:Lo/onSelected$asBinder;

    iget-object v4, v4, Lo/onSelected$asBinder;->onPostMessage:Ljava/lang/String;

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

    .line 6043
    new-instance v4, Lo/addWrite;

    const-string v5, "aadhar_type"

    const-string v6, "VID"

    invoke-direct {v4, v5, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    .line 1272
    invoke-static {v2}, Lo/lambda$onError$1;->onMessageChannelReady([Lo/addWrite;)Ljava/util/Map;

    move-result-object v2

    .line 1278
    iget-object v3, p0, Lo/onSelected$asBinder$2$4;->onNavigationEvent:Lo/onSelected$asBinder$2;

    iget-object v3, v3, Lo/onSelected$asBinder$2;->extraCallback:Lo/onSelected$asBinder;

    iget-object v3, v3, Lo/onSelected$asBinder;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v4, p0, Lo/onSelected$asBinder$2$4;->onNavigationEvent:Lo/onSelected$asBinder$2;

    iget-object v4, v4, Lo/onSelected$asBinder$2;->extraCallback:Lo/onSelected$asBinder;

    iget-object v4, v4, Lo/onSelected$asBinder;->onNavigationEvent:Lo/onSelected;

    invoke-static {v4}, Lo/onSelected;->onMessageChannelReady(Lo/onSelected;)Lo/setRecycleChildrenOnDetach;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    const-string v4, ""

    .line 1271
    :cond_2
    invoke-direct {v1, v2, v3, v4}, Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/cachePreLayoutSpanMapping;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/lending/WorkFlowUpdateRequest;)V

    .line 54
    :cond_3
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
