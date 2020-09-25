.class public final Lo/inflate$extraCallback$onPostMessage;
.super Lo/inflate$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/inflate$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\t\u001a\u00020\u0003H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$ChangePaymentMethod;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen;",
        "paymentMethodId",
        "",
        "selectedInstrumentId",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getPaymentMethodId",
        "()Ljava/lang/String;",
        "getSelectedInstrumentId",
        "getTag",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final extraCallback:Ljava/lang/String;

.field final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 900
    invoke-direct {p0, v0}, Lo/inflate$extraCallback;-><init>(B)V

    iput-object p1, p0, Lo/inflate$extraCallback$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    iput-object p2, p0, Lo/inflate$extraCallback$onPostMessage;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "change"

    return-object v0
.end method
