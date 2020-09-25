.class final Lo/isAnimating$extraCommand;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isAnimating;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onNavigationEvent:Lo/isAnimating;


# direct methods
.method constructor <init>(Lo/isAnimating;)V
    .locals 0

    iput-object p1, p0, Lo/isAnimating$extraCommand;->onNavigationEvent:Lo/isAnimating;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 60
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1329
    iget-object p1, p0, Lo/isAnimating$extraCommand;->onNavigationEvent:Lo/isAnimating;

    invoke-static {p1}, Lo/isAnimating;->asInterface(Lo/isAnimating;)Lo/requestLayout;

    .line 2142
    invoke-static {}, Lo/requestLayout;->ICustomTabsCallback()Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    move-result-object p1

    sget-object v0, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1330
    iget-object p1, p0, Lo/isAnimating$extraCommand;->onNavigationEvent:Lo/isAnimating;

    invoke-static {p1}, Lo/isAnimating;->ICustomTabsCallback$Stub(Lo/isAnimating;)Lo/getMoveDuration;

    move-result-object p1

    .line 2269
    new-instance v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$4;

    invoke-direct {v0}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$MediaBrowserImplApi21$4;-><init>()V

    check-cast v0, Lo/getRemoveDuration;

    invoke-virtual {p1, v0}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    goto :goto_1

    .line 1332
    :cond_1
    iget-object p1, p0, Lo/isAnimating$extraCommand;->onNavigationEvent:Lo/isAnimating;

    invoke-static {p1}, Lo/isAnimating;->ICustomTabsCallback$Stub(Lo/isAnimating;)Lo/getMoveDuration;

    move-result-object p1

    const-string v0, "farm"

    invoke-static {p1, v0}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;)V

    .line 60
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
