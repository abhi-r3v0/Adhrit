.class public final Lo/onRemoveStarting;
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
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008JF\u0010\u0012\u001a\u00020\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/upi/UpiGenericBottomSheetPresenter;",
        "",
        "parent",
        "Landroid/view/View;",
        "viewModel",
        "Lcom/dreamplug/upi/UpiViewModel;",
        "communicationInterface",
        "Lcom/dreamplug/upi/CredUpiPresenter$ICredUpiBottomSheetListener;",
        "(Landroid/view/View;Lcom/dreamplug/upi/UpiViewModel;Lcom/dreamplug/upi/CredUpiPresenter$ICredUpiBottomSheetListener;)V",
        "description",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "primaryCtaButton",
        "Lcom/dreamplug/widget/ProgressButton;",
        "secondaryCtaButton",
        "title",
        "getViewModel",
        "()Lcom/dreamplug/upi/UpiViewModel;",
        "setData",
        "",
        "header",
        "",
        "primaryCta",
        "secondaryCta",
        "cta1State",
        "Lcom/dreamplug/widget/ButtonState;",
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
.field final ICustomTabsCallback:Landroid/widget/TextView;

.field final extraCallback:Lo/shouldBeKeptAsChild$onPostMessage;

.field final onMessageChannelReady:Landroid/widget/TextView;

.field final onNavigationEvent:Lo/recycleFromEnd;

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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lo/onRemoveStarting;->extraCallback:Lo/shouldBeKeptAsChild$onPostMessage;

    .line 12
    sget p2, Lo/getItemDelegate$onMessageChannelReady;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/onRemoveStarting;->onPostMessage:Landroid/widget/TextView;

    .line 13
    sget p2, Lo/getItemDelegate$onMessageChannelReady;->desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/onRemoveStarting;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 14
    sget p2, Lo/getItemDelegate$onMessageChannelReady;->submit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/recycleFromEnd;

    iput-object p2, p0, Lo/onRemoveStarting;->onNavigationEvent:Lo/recycleFromEnd;

    .line 15
    sget p2, Lo/getItemDelegate$onMessageChannelReady;->cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/onRemoveStarting;->onMessageChannelReady:Landroid/widget/TextView;

    return-void
.end method
