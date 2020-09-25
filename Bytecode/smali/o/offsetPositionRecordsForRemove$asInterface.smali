.class final Lo/offsetPositionRecordsForRemove$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/offsetPositionRecordsForRemove;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/WinLuckyNumberFragment$setCtaActions$2$1$2",
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/WinLuckyNumberFragment$$special$$inlined$with$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

.field private synthetic onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Lo/offsetPositionRecordsForRemove;)V
    .locals 0

    iput-object p1, p0, Lo/offsetPositionRecordsForRemove$asInterface;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    iput-object p2, p0, Lo/offsetPositionRecordsForRemove$asInterface;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 56
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1548
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$asInterface;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove;

    iget-object v1, p0, Lo/offsetPositionRecordsForRemove$asInterface;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    invoke-static {v0, v1}, Lo/offsetPositionRecordsForRemove;->onMessageChannelReady(Lo/offsetPositionRecordsForRemove;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;)V

    const/4 v0, 0x0

    .line 1549
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
