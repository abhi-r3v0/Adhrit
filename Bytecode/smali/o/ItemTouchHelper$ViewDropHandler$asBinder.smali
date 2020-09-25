.class final Lo/ItemTouchHelper$ViewDropHandler$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ItemTouchHelper$ViewDropHandler;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/dreamplug/fabrik/ui/lending/okyc/dialog/AadharSingleSimSelector$onViewCreated$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/ItemTouchHelper$ViewDropHandler;


# direct methods
.method constructor <init>(Lo/ItemTouchHelper$ViewDropHandler;)V
    .locals 0

    iput-object p1, p0, Lo/ItemTouchHelper$ViewDropHandler$asBinder;->onMessageChannelReady:Lo/ItemTouchHelper$ViewDropHandler;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 37
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1074
    sget-object p1, Lo/setThumbTextPadding;->onPostMessage:Lo/setThumbTextPadding;

    invoke-static {}, Lo/setThumbTextPadding;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1075
    iget-object p1, p0, Lo/ItemTouchHelper$ViewDropHandler$asBinder;->onMessageChannelReady:Lo/ItemTouchHelper$ViewDropHandler;

    invoke-static {p1}, Lo/ItemTouchHelper$ViewDropHandler;->ICustomTabsCallback(Lo/ItemTouchHelper$ViewDropHandler;)V

    goto :goto_0

    .line 1077
    :cond_0
    iget-object p1, p0, Lo/ItemTouchHelper$ViewDropHandler$asBinder;->onMessageChannelReady:Lo/ItemTouchHelper$ViewDropHandler;

    const-string v0, "android.permission.RECEIVE_SMS"

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "android.permission.READ_SMS"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbc2

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 37
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
