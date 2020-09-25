.class final Lo/isLayoutHierarchical$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isLayoutHierarchical;->ICustomTabsCallback(Z)V
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
        "sendSmsByIntent",
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
.field private synthetic onMessageChannelReady:Z

.field private synthetic onPostMessage:Lo/isLayoutHierarchical;


# direct methods
.method constructor <init>(Lo/isLayoutHierarchical;Z)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutHierarchical$onRelationshipValidationResult;->onPostMessage:Lo/isLayoutHierarchical;

    iput-boolean p2, p0, Lo/isLayoutHierarchical$onRelationshipValidationResult;->onMessageChannelReady:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4

    .line 88
    iget-object v0, p0, Lo/isLayoutHierarchical$onRelationshipValidationResult;->onPostMessage:Lo/isLayoutHierarchical;

    invoke-static {v0}, Lo/isLayoutHierarchical;->extraCallback(Lo/isLayoutHierarchical;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lo/isLayoutHierarchical$onRelationshipValidationResult;->onMessageChannelReady:Z

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lo/isLayoutHierarchical$onRelationshipValidationResult;->onPostMessage:Lo/isLayoutHierarchical;

    invoke-static {v0}, Lo/isLayoutHierarchical;->ICustomTabsCallback(Lo/isLayoutHierarchical;)Lo/hasFlexibleChildInBothOrientations;

    move-result-object v1

    .line 1017
    iget-object v1, v1, Lo/hasFlexibleChildInBothOrientations;->onPostMessage:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "$this$getOrNull"

    .line 89
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$this$lastIndex"

    .line 1266
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2210
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    const/4 v3, 0x0

    .line 1266
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 89
    :goto_0
    check-cast v1, Lo/setExactMeasureSpecsFrom;

    if-eqz v1, :cond_1

    .line 3020
    iget v1, v1, Lo/setExactMeasureSpecsFrom;->ICustomTabsCallback:I

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    invoke-static {v0, v2}, Lo/isLayoutHierarchical;->onMessageChannelReady(Lo/isLayoutHierarchical;Ljava/lang/Integer;)V

    .line 91
    :cond_2
    iget-object v0, p0, Lo/isLayoutHierarchical$onRelationshipValidationResult;->onPostMessage:Lo/isLayoutHierarchical;

    .line 3036
    iget-object v0, v0, Lo/isLayoutHierarchical;->ICustomTabsCallback:Lo/setActive;

    .line 91
    sget-object v1, Lo/performAccessibilityActionForItem$onNavigationEvent;->onMessageChannelReady:Lo/performAccessibilityActionForItem$onNavigationEvent;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lo/isLayoutHierarchical$onRelationshipValidationResult;->onPostMessage:Lo/isLayoutHierarchical;

    new-instance v1, Lo/performAccessibilityActionForItem$asBinder;

    invoke-static {v0}, Lo/isLayoutHierarchical;->onMessageChannelReady(Lo/isLayoutHierarchical;)Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 4011
    :cond_3
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;->extraCallback:Ljava/lang/String;

    .line 92
    iget-object v3, p0, Lo/isLayoutHierarchical$onRelationshipValidationResult;->onPostMessage:Lo/isLayoutHierarchical;

    invoke-static {v3}, Lo/isLayoutHierarchical;->onMessageChannelReady(Lo/isLayoutHierarchical;)Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 4013
    :cond_4
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;->onMessageChannelReady:Ljava/lang/String;

    .line 92
    invoke-direct {v1, v2, v3}, Lo/performAccessibilityActionForItem$asBinder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lo/performAccessibilityActionForItem;

    invoke-static {v0, v1}, Lo/isLayoutHierarchical;->onMessageChannelReady(Lo/isLayoutHierarchical;Lo/performAccessibilityActionForItem;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lo/isLayoutHierarchical$onRelationshipValidationResult;->ICustomTabsCallback()V

    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
