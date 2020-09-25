.class public Lo/setPasswordVisibilityToggleTintList;
.super Lo/setPaymentDueDateWeaklyTyped;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setPaymentDueDateWeaklyTyped<",
        "Lo/setCustomAmount$onPostMessage$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lo/setPasswordVisibilityToggleEnabled;->onMessageChannelReady:Lo/setCustomAmount;

    new-instance v1, Lo/getItemDelegate$ICustomTabsCallback$Stub;

    invoke-direct {v1}, Lo/getItemDelegate$ICustomTabsCallback$Stub;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lo/setPaymentDueDateWeaklyTyped;-><init>(Landroid/app/Activity;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/getPanMismatch;)V

    return-void
.end method
