.class final Lo/setMinimumWidth$ICustomTabsCallback$Stub;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setMinimumWidth;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
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
        "<anonymous>",
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
.field private synthetic onPostMessage:Lo/setMinimumWidth;


# direct methods
.method constructor <init>(Lo/setMinimumWidth;)V
    .locals 0

    iput-object p1, p0, Lo/setMinimumWidth$ICustomTabsCallback$Stub;->onPostMessage:Lo/setMinimumWidth;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1094
    iget-object v0, p0, Lo/setMinimumWidth$ICustomTabsCallback$Stub;->onPostMessage:Lo/setMinimumWidth;

    .line 2034
    iget-object v0, v0, Lo/setMinimumWidth;->ICustomTabsCallback:Lo/onChildrenLoaded;

    if-nez v0, :cond_0

    const-string v1, "bottomSheetView"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 1094
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1095
    iget-object v0, p0, Lo/setMinimumWidth$ICustomTabsCallback$Stub;->onPostMessage:Lo/setMinimumWidth;

    .line 3031
    iget-object v0, v0, Lo/setMinimumWidth;->onNavigationEvent:Landroid/widget/EditText;

    const-string v1, "panCard"

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1095
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1096
    iget-object v0, p0, Lo/setMinimumWidth$ICustomTabsCallback$Stub;->onPostMessage:Lo/setMinimumWidth;

    .line 4031
    iget-object v0, v0, Lo/setMinimumWidth;->onNavigationEvent:Landroid/widget/EditText;

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1096
    :cond_2
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    .line 30
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
