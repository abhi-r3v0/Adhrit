.class final Lo/getMenuListView$getInterfaceDescriptor;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMenuListView;->onNavigationEvent(Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;)V
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
        "dispatchSuccess",
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
.field final synthetic onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

.field final synthetic onPostMessage:Lo/getMenuListView;


# direct methods
.method constructor <init>(Lo/getMenuListView;Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;)V
    .locals 0

    iput-object p1, p0, Lo/getMenuListView$getInterfaceDescriptor;->onPostMessage:Lo/getMenuListView;

    iput-object p2, p0, Lo/getMenuListView$getInterfaceDescriptor;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1231
    iget-object v0, p0, Lo/getMenuListView$getInterfaceDescriptor;->onPostMessage:Lo/getMenuListView;

    invoke-static {v0}, Lo/getMenuListView;->onPostMessage(Lo/getMenuListView;)Lo/getMenuListView$onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/getMenuListView$getInterfaceDescriptor;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;

    invoke-interface {v0, v1}, Lo/getMenuListView$onPostMessage;->onNavigationEvent(Lcom/cred/pay/repository/models/checkout/OrderStatusResponse;)V

    .line 38
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
