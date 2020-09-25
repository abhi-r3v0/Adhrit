.class final Lo/getChildViewHolderInt$ICustomTabsCallback$Stub$Proxy;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getChildViewHolderInt;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic ICustomTabsCallback:Lo/getChildViewHolderInt;


# direct methods
.method constructor <init>(Lo/getChildViewHolderInt;)V
    .locals 0

    iput-object p1, p0, Lo/getChildViewHolderInt$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/getChildViewHolderInt;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 54
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1162
    iget-object p1, p0, Lo/getChildViewHolderInt$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/getChildViewHolderInt;

    const-string/jumbo v0, "view_details"

    invoke-static {p1, v0}, Lo/getChildViewHolderInt;->extraCallback(Lo/getChildViewHolderInt;Ljava/lang/String;)V

    .line 1163
    iget-object p1, p0, Lo/getChildViewHolderInt$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/getChildViewHolderInt;

    invoke-static {p1}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;)Lo/findContainingItemView;

    move-result-object v0

    .line 2037
    iget-object v0, v0, Lo/findContainingItemView;->extraCallback:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1163
    :goto_0
    check-cast v0, Lo/findContainingItemView$onNavigationEvent;

    if-eqz v0, :cond_1

    .line 3302
    iget-object v0, v0, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    if-eqz v0, :cond_1

    .line 4033
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->extraCallback:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    .line 1163
    :cond_2
    invoke-static {p1, v0}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;Ljava/lang/String;)V

    .line 54
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
