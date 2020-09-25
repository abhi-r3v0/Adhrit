.class final Lo/getChildPosition$requestPostMessageChannel;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildPosition;
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
        "com/dreamplug/fabrik/ui/lifestyle/win/slotmachine/SlotMachineFragment$setUiState$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getChildPosition;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/getChildPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getChildPosition$requestPostMessageChannel;->onPostMessage:Ljava/lang/String;

    iput-object p2, p0, Lo/getChildPosition$requestPostMessageChannel;->onNavigationEvent:Lo/getChildPosition;

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

    .line 1323
    iget-object p1, p0, Lo/getChildPosition$requestPostMessageChannel;->onNavigationEvent:Lo/getChildPosition;

    const-string/jumbo v0, "view_details"

    invoke-static {p1, v0}, Lo/getChildPosition;->onNavigationEvent(Lo/getChildPosition;Ljava/lang/String;)V

    .line 1324
    iget-object p1, p0, Lo/getChildPosition$requestPostMessageChannel;->onNavigationEvent:Lo/getChildPosition;

    iget-object v0, p0, Lo/getChildPosition$requestPostMessageChannel;->onPostMessage:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/getChildPosition;->onPostMessage(Lo/getChildPosition;Ljava/lang/String;)V

    .line 60
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
