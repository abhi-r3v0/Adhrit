.class final Lo/getActionList$1;
.super Lo/onRemoveQueueItem;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getActionList;-><init>(Lo/setCurrentControllerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/onRemoveQueueItem<",
        "Lo/sendAccessibilityEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lo/onRemoveQueueItem;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `request` WHERE `id` = ?"

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/getDrawerToggleDelegate$onNavigationEvent;Ljava/lang/Object;)V
    .locals 4

    .line 91
    check-cast p2, Lo/sendAccessibilityEvent;

    .line 2011
    iget-object v0, p2, Lo/sendAccessibilityEvent;->onMessageChannelReady:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1100
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    return-void

    .line 3011
    :cond_0
    iget-object p2, p2, Lo/sendAccessibilityEvent;->onMessageChannelReady:Ljava/lang/Integer;

    .line 1102
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    int-to-long v2, p2

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    return-void
.end method
