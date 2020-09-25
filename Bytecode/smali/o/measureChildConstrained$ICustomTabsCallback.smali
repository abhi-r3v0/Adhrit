.class public final Lo/measureChildConstrained$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/measureChildConstrained;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/androidapp/payments/checkout/paymentstatus/CheckoutSuccessFragment$onClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/measureChildConstrained;


# direct methods
.method constructor <init>(Lo/measureChildConstrained;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lo/measureChildConstrained$ICustomTabsCallback;->ICustomTabsCallback:Lo/measureChildConstrained;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 0

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    instance-of p1, p2, Lo/ensureCollapseButtonView$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lo/measureChildConstrained$ICustomTabsCallback;->ICustomTabsCallback:Lo/measureChildConstrained;

    invoke-virtual {p1}, Lo/findLastVisibleItemPositions;->onTransact()V

    .line 68
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    check-cast p2, Lo/ensureCollapseButtonView$ICustomTabsCallback;

    .line 1054
    iget-object p2, p2, Lo/ensureCollapseButtonView$ICustomTabsCallback;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/OrderStatusView;

    .line 1061
    iget-object p2, p2, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->asInterface:Lcom/cred/pay/repository/models/checkout/PaymentCta;

    if-eqz p2, :cond_0

    .line 1087
    iget-object p2, p2, Lcom/cred/pay/repository/models/checkout/PaymentCta;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 68
    :goto_0
    invoke-virtual {p1, p2}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
