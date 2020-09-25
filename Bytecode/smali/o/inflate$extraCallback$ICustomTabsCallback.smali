.class public final Lo/inflate$extraCallback$ICustomTabsCallback;
.super Lo/inflate$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/inflate$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$AbortPayment;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen;",
        "reason",
        "",
        "(I)V",
        "getReason",
        "()I",
        "getTag",
        "",
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
.field final onMessageChannelReady:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 904
    invoke-direct {p0, v0}, Lo/inflate$extraCallback;-><init>(B)V

    iput p1, p0, Lo/inflate$extraCallback$ICustomTabsCallback;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "abort"

    return-object v0
.end method
