.class final Lo/removeTabAt$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeTabAt;
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
.field private synthetic ICustomTabsCallback:Lo/removeTabAt;


# direct methods
.method constructor <init>(Lo/removeTabAt;)V
    .locals 0

    iput-object p1, p0, Lo/removeTabAt$onNavigationEvent;->ICustomTabsCallback:Lo/removeTabAt;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 42
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1156
    iget-object p1, p0, Lo/removeTabAt$onNavigationEvent;->ICustomTabsCallback:Lo/removeTabAt;

    invoke-static {p1}, Lo/removeTabAt;->onMessageChannelReady(Lo/removeTabAt;)Lo/removeAllTabs;

    move-result-object p1

    .line 2022
    iget-object p1, p1, Lo/removeAllTabs;->onMessageChannelReady:Lo/setActive;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1156
    :goto_0
    check-cast p1, Lo/isInputMethodNotNeeded;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    .line 1158
    invoke-virtual {p1}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v3

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "selected_instrument"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 1158
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "pi_recommendation_screen_pay_now_click"

    .line 1158
    invoke-static {v0, v2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1159
    iget-object v0, p0, Lo/removeTabAt$onNavigationEvent;->ICustomTabsCallback:Lo/removeTabAt;

    invoke-static {v0}, Lo/removeTabAt;->onTransact(Lo/removeTabAt;)Lo/MenuItemHoverListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "payment recommendations"

    invoke-virtual {v0, p1, v1}, Lo/MenuItemHoverListener;->onPostMessage(Lo/isInputMethodNotNeeded;Ljava/lang/String;)V

    .line 42
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
