.class final Lo/isLayoutHierarchical$ICustomTabsCallback$Stub;
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
        "onPermissionGranted",
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
.field private synthetic extraCallback:Lo/isLayoutHierarchical;


# direct methods
.method constructor <init>(Lo/isLayoutHierarchical;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutHierarchical$ICustomTabsCallback$Stub;->extraCallback:Lo/isLayoutHierarchical;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 6

    .line 99
    iget-object v0, p0, Lo/isLayoutHierarchical$ICustomTabsCallback$Stub;->extraCallback:Lo/isLayoutHierarchical;

    invoke-static {v0}, Lo/isLayoutHierarchical;->extraCallback(Lo/isLayoutHierarchical;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lo/isLayoutHierarchical$ICustomTabsCallback$Stub;->extraCallback:Lo/isLayoutHierarchical;

    .line 1036
    iget-object v0, v0, Lo/isLayoutHierarchical;->ICustomTabsCallback:Lo/setActive;

    .line 100
    new-instance v3, Lo/performAccessibilityActionForItem$ICustomTabsCallback$Stub;

    iget-object v4, p0, Lo/isLayoutHierarchical$ICustomTabsCallback$Stub;->extraCallback:Lo/isLayoutHierarchical;

    invoke-static {v4}, Lo/isLayoutHierarchical;->onPostMessage(Lo/isLayoutHierarchical;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setExactMeasureSpecsFrom;

    iget-object v4, p0, Lo/isLayoutHierarchical$ICustomTabsCallback$Stub;->extraCallback:Lo/isLayoutHierarchical;

    invoke-static {v4}, Lo/isLayoutHierarchical;->onPostMessage(Lo/isLayoutHierarchical;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setExactMeasureSpecsFrom;

    invoke-direct {v3, v1, v2}, Lo/performAccessibilityActionForItem$ICustomTabsCallback$Stub;-><init>(Lo/setExactMeasureSpecsFrom;Lo/setExactMeasureSpecsFrom;)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lo/isLayoutHierarchical$ICustomTabsCallback$Stub;->extraCallback:Lo/isLayoutHierarchical;

    invoke-static {v0}, Lo/isLayoutHierarchical;->onPostMessage(Lo/isLayoutHierarchical;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const-string v5, "$this$getOrNull"

    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$this$lastIndex"

    .line 1266
    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2210
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-ltz v5, :cond_2

    .line 1266
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 102
    :goto_0
    check-cast v1, Lo/setExactMeasureSpecsFrom;

    if-eqz v1, :cond_3

    .line 3020
    iget v1, v1, Lo/setExactMeasureSpecsFrom;->ICustomTabsCallback:I

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_3
    invoke-virtual {v0, v4}, Lo/isLayoutHierarchical;->onNavigationEvent(Ljava/lang/Integer;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lo/isLayoutHierarchical$ICustomTabsCallback$Stub;->ICustomTabsCallback()V

    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
