.class final Lo/shouldDeferAccessibilityEvent$updateVisuals;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldDeferAccessibilityEvent;->extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/RedemptionView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field private synthetic ICustomTabsCallback:Lo/shouldDeferAccessibilityEvent;

.field private synthetic onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/RedemptionView;


# direct methods
.method constructor <init>(Lo/shouldDeferAccessibilityEvent;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/RedemptionView;)V
    .locals 0

    iput-object p1, p0, Lo/shouldDeferAccessibilityEvent$updateVisuals;->ICustomTabsCallback:Lo/shouldDeferAccessibilityEvent;

    iput-object p2, p0, Lo/shouldDeferAccessibilityEvent$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/RedemptionView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 59
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1346
    iget-object p1, p0, Lo/shouldDeferAccessibilityEvent$updateVisuals;->ICustomTabsCallback:Lo/shouldDeferAccessibilityEvent;

    iget-object v0, p0, Lo/shouldDeferAccessibilityEvent$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/RedemptionView;

    .line 2081
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/RedemptionView;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    .line 1346
    invoke-static {p1, v0}, Lo/shouldDeferAccessibilityEvent;->onMessageChannelReady(Lo/shouldDeferAccessibilityEvent;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;)V

    .line 1348
    iget-object p1, p0, Lo/shouldDeferAccessibilityEvent$updateVisuals;->ICustomTabsCallback:Lo/shouldDeferAccessibilityEvent;

    invoke-virtual {p1}, Lo/shouldDeferAccessibilityEvent;->extraCallback()Ljava/util/Map;

    move-result-object p1

    .line 1349
    iget-object v0, p0, Lo/shouldDeferAccessibilityEvent$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/RedemptionView;

    .line 3080
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/RedemptionView;->onNavigationEvent:Ljava/lang/String;

    const-string v1, "bottom_header"

    .line 1349
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "win_details_cta_click"

    .line 1348
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 59
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
