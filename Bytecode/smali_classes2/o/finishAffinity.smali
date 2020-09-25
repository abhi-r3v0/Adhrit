.class public final Lo/finishAffinity;
.super Lo/setPaymentDueDateWeaklyTyped;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lo/setCustomAmount$onPostMessage;",
        ">",
        "Lo/setPaymentDueDateWeaklyTyped<",
        "TO;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/getPanMismatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setCustomAmount<",
            "TO;>;TO;",
            "Lo/getPanMismatch;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lo/setPaymentDueDateWeaklyTyped;-><init>(Landroid/content/Context;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/getPanMismatch;)V

    return-void
.end method
