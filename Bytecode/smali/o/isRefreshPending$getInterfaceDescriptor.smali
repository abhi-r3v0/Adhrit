.class final Lo/isRefreshPending$getInterfaceDescriptor;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isRefreshPending;
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
.field private synthetic extraCallback:Lo/isRefreshPending;

.field private synthetic onMessageChannelReady:D


# direct methods
.method constructor <init>(Lo/isRefreshPending;D)V
    .locals 0

    iput-object p1, p0, Lo/isRefreshPending$getInterfaceDescriptor;->extraCallback:Lo/isRefreshPending;

    iput-wide p2, p0, Lo/isRefreshPending$getInterfaceDescriptor;->onMessageChannelReady:D

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1137
    iget-object v0, p0, Lo/isRefreshPending$getInterfaceDescriptor;->extraCallback:Lo/isRefreshPending;

    invoke-static {v0}, Lo/isRefreshPending;->extraCallback(Lo/isRefreshPending;)Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    move-result-object v0

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130364

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->setPaymentAmountTitle(Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lo/isRefreshPending$getInterfaceDescriptor;->extraCallback:Lo/isRefreshPending;

    iget-wide v1, p0, Lo/isRefreshPending$getInterfaceDescriptor;->onMessageChannelReady:D

    invoke-static {v0, v1, v2}, Lo/isRefreshPending;->onMessageChannelReady(Lo/isRefreshPending;D)V

    .line 63
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
