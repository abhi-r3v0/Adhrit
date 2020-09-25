.class public final Lo/requestChildOnScreen$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/requestChildOnScreen$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/requestChildOnScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/store/StorePaymentFragment$statusListener$1",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentFragment$PaymentStatusListener;",
        "onFailure",
        "",
        "status",
        "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
        "onSuccess",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/requestChildOnScreen;


# direct methods
.method constructor <init>(Lo/requestChildOnScreen;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lo/requestChildOnScreen$onNavigationEvent;->onMessageChannelReady:Lo/requestChildOnScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V
    .locals 6

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lo/requestChildOnScreen$onNavigationEvent;->onMessageChannelReady:Lo/requestChildOnScreen;

    .line 2000
    iget-object v0, v0, Lo/requestChildOnScreen;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/removeOnItemTouchListener;

    .line 167
    iget-object v1, p0, Lo/requestChildOnScreen$onNavigationEvent;->onMessageChannelReady:Lo/requestChildOnScreen;

    .line 2039
    iget-object v1, v1, Lo/requestChildOnScreen;->onMessageChannelReady:Lo/requestChildOnScreen$extraCallback;

    const-string v2, "data"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2192
    :cond_0
    iget-object v1, v1, Lo/requestChildOnScreen$extraCallback;->onNavigationEvent:Ljava/lang/String;

    const-string/jumbo v3, "rewardUsageId"

    .line 167
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v0, v0, Lo/removeOnItemTouchListener;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isAttachedToWindow;

    .line 3046
    invoke-interface {v0, v1}, Lo/isAttachedToWindow;->extraCallback(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v0

    new-instance v1, Lo/removeOnItemTouchListener$onMessageChannelReady;

    invoke-direct {v1}, Lo/removeOnItemTouchListener$onMessageChannelReady;-><init>()V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 168
    sget-object v0, Lo/assertInLayoutOrScroll;->onPostMessage:Lo/assertInLayoutOrScroll;

    invoke-static {}, Lo/assertInLayoutOrScroll;->onMessageChannelReady()Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/getThumbTintList;

    new-instance v3, Lo/addFocusables$onNavigationEvent;

    iget-object v4, p0, Lo/requestChildOnScreen$onNavigationEvent;->onMessageChannelReady:Lo/requestChildOnScreen;

    .line 4039
    iget-object v4, v4, Lo/requestChildOnScreen;->onMessageChannelReady:Lo/requestChildOnScreen$extraCallback;

    if-nez v4, :cond_1

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4194
    :cond_1
    iget-wide v4, v4, Lo/requestChildOnScreen$extraCallback;->onMessageChannelReady:D

    .line 168
    invoke-direct {v3, v4, v5, p1}, Lo/addFocusables$onNavigationEvent;-><init>(DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    invoke-direct {v1, v3}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPostMessage(Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V
    .locals 5

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lo/assertInLayoutOrScroll;->onPostMessage:Lo/assertInLayoutOrScroll;

    invoke-static {}, Lo/assertInLayoutOrScroll;->onMessageChannelReady()Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/getThumbTintList;

    new-instance v2, Lo/addFocusables$extraCallback;

    iget-object v3, p0, Lo/requestChildOnScreen$onNavigationEvent;->onMessageChannelReady:Lo/requestChildOnScreen;

    .line 1039
    iget-object v3, v3, Lo/requestChildOnScreen;->onMessageChannelReady:Lo/requestChildOnScreen$extraCallback;

    if-nez v3, :cond_0

    const-string v4, "data"

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1194
    :cond_0
    iget-wide v3, v3, Lo/requestChildOnScreen$extraCallback;->onMessageChannelReady:D

    .line 163
    invoke-direct {v2, v3, v4, p1}, Lo/addFocusables$extraCallback;-><init>(DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    invoke-direct {v1, v2}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
