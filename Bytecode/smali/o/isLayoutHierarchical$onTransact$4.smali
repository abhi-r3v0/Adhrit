.class final Lo/isLayoutHierarchical$onTransact$4;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isLayoutHierarchical$onTransact;
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
        "com/dreamplug/fabrik/ui/sms/BankSmsViewModel$sendSms$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/isLayoutHierarchical$onTransact;


# direct methods
.method constructor <init>(Lo/isLayoutHierarchical$onTransact;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutHierarchical$onTransact$4;->ICustomTabsCallback:Lo/isLayoutHierarchical$onTransact;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 6

    .line 1143
    iget-object v0, p0, Lo/isLayoutHierarchical$onTransact$4;->ICustomTabsCallback:Lo/isLayoutHierarchical$onTransact;

    iget-object v0, v0, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    .line 2036
    iget-object v0, v0, Lo/isLayoutHierarchical;->ICustomTabsCallback:Lo/setActive;

    .line 1143
    sget-object v1, Lo/performAccessibilityActionForItem$onNavigationEvent;->onMessageChannelReady:Lo/performAccessibilityActionForItem$onNavigationEvent;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1144
    iget-object v0, p0, Lo/isLayoutHierarchical$onTransact$4;->ICustomTabsCallback:Lo/isLayoutHierarchical$onTransact;

    iget-object v0, v0, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    const/4 v1, 0x1

    new-array v2, v1, [Lo/addWrite;

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v4, "cta_type"

    const-string/jumbo v5, "send_manual"

    invoke-direct {v3, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "pairs"

    .line 1144
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v1, "send_sms_attempt_2_failure_CTA_click"

    const-string v2, "eventName"

    .line 1144
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3030
    invoke-static {v0, v1, v3}, Lo/setThumbResource$onPostMessage;->extraCallback(Lo/setThumbResource;Ljava/lang/String;Ljava/util/Map;)V

    .line 1145
    iget-object v0, p0, Lo/isLayoutHierarchical$onTransact$4;->ICustomTabsCallback:Lo/isLayoutHierarchical$onTransact;

    iget-object v0, v0, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    new-instance v1, Lo/performAccessibilityActionForItem$asBinder;

    iget-object v2, p0, Lo/isLayoutHierarchical$onTransact$4;->ICustomTabsCallback:Lo/isLayoutHierarchical$onTransact;

    iget-object v2, v2, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    invoke-static {v2}, Lo/isLayoutHierarchical;->onMessageChannelReady(Lo/isLayoutHierarchical;)Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 4011
    :cond_0
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;->extraCallback:Ljava/lang/String;

    .line 1145
    iget-object v3, p0, Lo/isLayoutHierarchical$onTransact$4;->ICustomTabsCallback:Lo/isLayoutHierarchical$onTransact;

    iget-object v3, v3, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    invoke-static {v3}, Lo/isLayoutHierarchical;->onMessageChannelReady(Lo/isLayoutHierarchical;)Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 4013
    :cond_1
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;->onMessageChannelReady:Ljava/lang/String;

    .line 1145
    invoke-direct {v1, v2, v3}, Lo/performAccessibilityActionForItem$asBinder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lo/performAccessibilityActionForItem;

    invoke-static {v0, v1}, Lo/isLayoutHierarchical;->onMessageChannelReady(Lo/isLayoutHierarchical;Lo/performAccessibilityActionForItem;)V

    .line 30
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
