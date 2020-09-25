.class public final Lo/getAndRemoveOriginalDelegateForItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \u000b*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u000b*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/upi/MultipleSimPresenter;",
        "",
        "parent",
        "Landroid/view/View;",
        "viewModel",
        "Lcom/dreamplug/upi/UpiViewModel;",
        "communicationInterface",
        "Lcom/dreamplug/upi/CredUpiPresenter$ICredUpiBottomSheetListener;",
        "(Landroid/view/View;Lcom/dreamplug/upi/UpiViewModel;Lcom/dreamplug/upi/CredUpiPresenter$ICredUpiBottomSheetListener;)V",
        "network1",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "network2",
        "sim1View",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "sim2View",
        "escapeString",
        "",
        "string",
        "setData",
        "",
        "sim1",
        "Lcom/cred/pay/repository/models/SimDetail;",
        "sim2",
        "state",
        "Lcom/dreamplug/upi/UpiPaymentState;",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/onChildrenLoaded;

.field final extraCallback:Lo/shouldBeKeptAsChild$onPostMessage;

.field final onMessageChannelReady:Landroid/widget/TextView;

.field final onNavigationEvent:Lo/onChildrenLoaded;

.field final onPostMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/snapFromFling;Lo/shouldBeKeptAsChild$onPostMessage;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewModel"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "communicationInterface"

    invoke-static {p3, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lo/getAndRemoveOriginalDelegateForItem;->extraCallback:Lo/shouldBeKeptAsChild$onPostMessage;

    .line 9
    sget p2, Lo/getItemDelegate$onMessageChannelReady;->network1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/getAndRemoveOriginalDelegateForItem;->onMessageChannelReady:Landroid/widget/TextView;

    .line 10
    sget p2, Lo/getItemDelegate$onMessageChannelReady;->network2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/getAndRemoveOriginalDelegateForItem;->onPostMessage:Landroid/widget/TextView;

    .line 11
    sget p2, Lo/getItemDelegate$onMessageChannelReady;->sim1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    iput-object p2, p0, Lo/getAndRemoveOriginalDelegateForItem;->onNavigationEvent:Lo/onChildrenLoaded;

    .line 12
    sget p2, Lo/getItemDelegate$onMessageChannelReady;->sim2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/getAndRemoveOriginalDelegateForItem;->ICustomTabsCallback:Lo/onChildrenLoaded;

    return-void
.end method
