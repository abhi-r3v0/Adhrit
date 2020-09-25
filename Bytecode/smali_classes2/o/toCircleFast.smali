.class public final Lo/toCircleFast;
.super Lo/setPaymentDueDateWeaklyTyped;

# interfaces
.implements Lo/getRefundAccount;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setPaymentDueDateWeaklyTyped<",
        "Lo/setCustomAmount$onPostMessage$onMessageChannelReady;",
        ">;",
        "Lo/getRefundAccount;"
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lo/getReferenceId;->onPostMessage:Lo/setCustomAmount;

    new-instance v1, Lo/getItemDelegate$ICustomTabsCallback$Stub;

    invoke-direct {v1}, Lo/getItemDelegate$ICustomTabsCallback$Stub;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lo/setPaymentDueDateWeaklyTyped;-><init>(Landroid/content/Context;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/getPanMismatch;)V

    return-void
.end method

.method public static onNavigationEvent(Landroid/content/Context;)Lo/getRefundAccount;
    .locals 1

    new-instance v0, Lo/toCircleFast;

    invoke-direct {v0, p0}, Lo/toCircleFast;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/setCurrency;)Lo/getPaymentDueDateWeaklyTyped;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCurrency;",
            ")",
            "Lo/getPaymentDueDateWeaklyTyped<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo/getAppKey;

    invoke-virtual {p0}, Lo/toCircleFast;->asGoogleApiClient()Lo/getPaymentMode;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lo/getAppKey;-><init>(Lo/setCurrency;Lo/getPaymentMode;)V

    invoke-virtual {p0, v0}, Lo/toCircleFast;->doBestEffortWrite(Lo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;

    move-result-object p1

    return-object p1
.end method
