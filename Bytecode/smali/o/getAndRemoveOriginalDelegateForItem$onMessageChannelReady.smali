.class final Lo/getAndRemoveOriginalDelegateForItem$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAndRemoveOriginalDelegateForItem;
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
.field private synthetic ICustomTabsCallback:Lo/onAddStarting;

.field private synthetic extraCallback:Lcom/cred/pay/repository/models/SimDetail;

.field private synthetic onPostMessage:Lo/getAndRemoveOriginalDelegateForItem;


# direct methods
.method constructor <init>(Lo/getAndRemoveOriginalDelegateForItem;Lo/onAddStarting;Lcom/cred/pay/repository/models/SimDetail;)V
    .locals 0

    iput-object p1, p0, Lo/getAndRemoveOriginalDelegateForItem$onMessageChannelReady;->onPostMessage:Lo/getAndRemoveOriginalDelegateForItem;

    iput-object p2, p0, Lo/getAndRemoveOriginalDelegateForItem$onMessageChannelReady;->ICustomTabsCallback:Lo/onAddStarting;

    iput-object p3, p0, Lo/getAndRemoveOriginalDelegateForItem$onMessageChannelReady;->extraCallback:Lcom/cred/pay/repository/models/SimDetail;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 7
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    iget-object p1, p0, Lo/getAndRemoveOriginalDelegateForItem$onMessageChannelReady;->onPostMessage:Lo/getAndRemoveOriginalDelegateForItem;

    .line 2007
    iget-object p1, p1, Lo/getAndRemoveOriginalDelegateForItem;->extraCallback:Lo/shouldBeKeptAsChild$onPostMessage;

    .line 1022
    new-instance v0, Lo/snapFromFling$asBinder;

    iget-object v1, p0, Lo/getAndRemoveOriginalDelegateForItem$onMessageChannelReady;->ICustomTabsCallback:Lo/onAddStarting;

    new-instance v2, Lo/snapFromFling$onMessageChannelReady;

    iget-object v3, p0, Lo/getAndRemoveOriginalDelegateForItem$onMessageChannelReady;->extraCallback:Lcom/cred/pay/repository/models/SimDetail;

    .line 2089
    iget-object v3, v3, Lcom/cred/pay/repository/models/SimDetail;->onNavigationEvent:Ljava/lang/String;

    .line 1022
    iget-object v4, p0, Lo/getAndRemoveOriginalDelegateForItem$onMessageChannelReady;->extraCallback:Lcom/cred/pay/repository/models/SimDetail;

    .line 2090
    iget-object v4, v4, Lcom/cred/pay/repository/models/SimDetail;->extraCallback:Ljava/lang/String;

    .line 1022
    invoke-direct {v2, v3, v4}, Lo/snapFromFling$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lo/postShow;

    invoke-direct {v0, v1, v2}, Lo/snapFromFling$asBinder;-><init>(Lo/onAddStarting;Lo/postShow;)V

    invoke-interface {p1, v0}, Lo/shouldBeKeptAsChild$onPostMessage;->onNavigationEvent(Lo/snapFromFling$asBinder;)V

    .line 7
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
