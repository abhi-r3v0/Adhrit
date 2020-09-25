.class abstract Lo/getCard_number;
.super Lo/getAccountReference$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lo/PaymentRequestItem;",
        ">",
        "Lo/getAccountReference$onPostMessage<",
        "TR;",
        "Lo/getReference_id;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/getPaymentMode;)V
    .locals 1

    .line 1
    sget-object v0, Lo/setUpdatedAt;->extraCallback:Lo/setCustomAmount;

    invoke-direct {p0, v0, p1}, Lo/getAccountReference$onPostMessage;-><init>(Lo/setCustomAmount;Lo/getPaymentMode;)V

    return-void
.end method
