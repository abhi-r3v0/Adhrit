.class final Lo/addOnItemTouchListener$updateVisuals;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addOnItemTouchListener;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic ICustomTabsCallback:Lo/addOnItemTouchListener;


# direct methods
.method constructor <init>(Lo/addOnItemTouchListener;)V
    .locals 0

    iput-object p1, p0, Lo/addOnItemTouchListener$updateVisuals;->ICustomTabsCallback:Lo/addOnItemTouchListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 50
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1270
    iget-object p1, p0, Lo/addOnItemTouchListener$updateVisuals;->ICustomTabsCallback:Lo/addOnItemTouchListener;

    invoke-static {p1}, Lo/addOnItemTouchListener;->onMessageChannelReady(Lo/addOnItemTouchListener;)Lo/resetScroll;

    .line 2147
    invoke-static {}, Lo/resetScroll;->onPostMessage()Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    move-result-object p1

    sget-object v0, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1271
    iget-object p1, p0, Lo/addOnItemTouchListener$updateVisuals;->ICustomTabsCallback:Lo/addOnItemTouchListener;

    invoke-static {p1}, Lo/addOnItemTouchListener;->onNavigationEvent(Lo/addOnItemTouchListener;)Lo/getMoveDuration;

    move-result-object p1

    .line 2269
    new-instance v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$4;

    invoke-direct {v0}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$4;-><init>()V

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {p1, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto :goto_1

    .line 1273
    :cond_1
    iget-object p1, p0, Lo/addOnItemTouchListener$updateVisuals;->ICustomTabsCallback:Lo/addOnItemTouchListener;

    invoke-static {p1}, Lo/addOnItemTouchListener;->onNavigationEvent(Lo/addOnItemTouchListener;)Lo/getMoveDuration;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x6

    const-string v2, "discover_farm"

    invoke-static {p1, v2, v0, v1}, Lo/getMoveDuration;->ICustomTabsCallback(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
