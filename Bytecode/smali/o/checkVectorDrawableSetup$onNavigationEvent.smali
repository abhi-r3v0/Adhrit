.class final Lo/checkVectorDrawableSetup$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/checkVectorDrawableSetup;->ICustomTabsCallback(Lo/isInputMethodNotNeeded;Landroid/view/View;Landroid/view/View;)V
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
        "view",
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
.field private synthetic ICustomTabsCallback:Lo/isInputMethodNotNeeded;

.field private synthetic onNavigationEvent:Lo/checkVectorDrawableSetup;


# direct methods
.method constructor <init>(Lo/checkVectorDrawableSetup;Lo/isInputMethodNotNeeded;)V
    .locals 0

    iput-object p1, p0, Lo/checkVectorDrawableSetup$onNavigationEvent;->onNavigationEvent:Lo/checkVectorDrawableSetup;

    iput-object p2, p0, Lo/checkVectorDrawableSetup$onNavigationEvent;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 30
    check-cast p1, Landroid/view/View;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1119
    iget-object p1, p0, Lo/checkVectorDrawableSetup$onNavigationEvent;->onNavigationEvent:Lo/checkVectorDrawableSetup;

    invoke-static {p1}, Lo/checkVectorDrawableSetup;->onPostMessage(Lo/checkVectorDrawableSetup;)Lo/hasGapsToFix$onMessageChannelReady;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lo/getTintMode;

    iget-object v1, p0, Lo/checkVectorDrawableSetup$onNavigationEvent;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    invoke-direct {v0, v1}, Lo/getTintMode;-><init>(Lo/isInputMethodNotNeeded;)V

    check-cast v0, Lo/StaggeredGridLayoutManager;

    iget-object v1, p0, Lo/checkVectorDrawableSetup$onNavigationEvent;->onNavigationEvent:Lo/checkVectorDrawableSetup;

    check-cast v1, Lo/createOrientationHelpers;

    const-string/jumbo v2, "select_instrument"

    invoke-interface {p1, v2, v0, v1}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    .line 30
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
