.class final Lo/onViewRecycled$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onViewRecycled;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/trophyroom/winnings/TrophyWinType1Holder$setWinSectionDisplayWithCopyView$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/checkAppCompatTheme;

.field private synthetic extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;

.field final synthetic onNavigationEvent:Lo/onViewRecycled;

.field private synthetic onPostMessage:Lo/RecyclerView$Adapter;


# direct methods
.method constructor <init>(Lo/checkAppCompatTheme;Lo/onViewRecycled;Lo/RecyclerView$Adapter;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;)V
    .locals 0

    iput-object p1, p0, Lo/onViewRecycled$onNavigationEvent;->ICustomTabsCallback:Lo/checkAppCompatTheme;

    iput-object p2, p0, Lo/onViewRecycled$onNavigationEvent;->onNavigationEvent:Lo/onViewRecycled;

    iput-object p3, p0, Lo/onViewRecycled$onNavigationEvent;->onPostMessage:Lo/RecyclerView$Adapter;

    iput-object p4, p0, Lo/onViewRecycled$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 32
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1156
    iget-object v0, p0, Lo/onViewRecycled$onNavigationEvent;->ICustomTabsCallback:Lo/checkAppCompatTheme;

    iget-object v0, v0, Lo/checkAppCompatTheme;->extraCallback:Lo/createFullSpanItemFromEnd;

    const-string v1, "buttonCopyCode"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copy_code"

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lo/onViewRecycled$onNavigationEvent;->onNavigationEvent:Lo/onViewRecycled;

    iget-object v1, p0, Lo/onViewRecycled$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;

    iget-object v2, p0, Lo/onViewRecycled$onNavigationEvent;->onPostMessage:Lo/RecyclerView$Adapter;

    invoke-static {v0, v1, v2, p1}, Lo/onViewRecycled;->onPostMessage(Lo/onViewRecycled;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinVoucherSection;Lo/RecyclerView$Adapter;Landroid/view/View;)V

    goto :goto_0

    .line 1159
    :cond_0
    iget-object p1, p0, Lo/onViewRecycled$onNavigationEvent;->onNavigationEvent:Lo/onViewRecycled;

    const-string v0, "cta"

    invoke-virtual {p1, v0}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    .line 1160
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance p1, Lo/onViewRecycled$onNavigationEvent$3;

    invoke-direct {p1, p0}, Lo/onViewRecycled$onNavigationEvent$3;-><init>(Lo/onViewRecycled$onNavigationEvent;)V

    check-cast p1, Lo/getServerTime;

    const-string v0, "command"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    .line 2018
    new-instance v2, Lo/updateItemAt$extraCallback;

    invoke-direct {v2, p1}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    .line 32
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
