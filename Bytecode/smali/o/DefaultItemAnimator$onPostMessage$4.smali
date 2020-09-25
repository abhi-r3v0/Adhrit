.class public final Lo/DefaultItemAnimator$onPostMessage$4;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DefaultItemAnimator$onPostMessage;->run()V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/payments/statusV2/PaymentSuccessFabrikDialog$initViews$3$1",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "onSlide",
        "",
        "bottomSheet",
        "Landroid/view/View;",
        "slideOffset",
        "",
        "onStateChanged",
        "newState",
        "",
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
.field private synthetic ICustomTabsCallback:Lo/DefaultItemAnimator$onPostMessage;


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lo/DefaultItemAnimator$onPostMessage$4;->ICustomTabsCallback:Lo/DefaultItemAnimator$onPostMessage;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;F)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    add-float/2addr v0, p2

    .line 125
    :goto_0
    iget-object p1, p0, Lo/DefaultItemAnimator$onPostMessage$4;->ICustomTabsCallback:Lo/DefaultItemAnimator$onPostMessage;

    iget-object p1, p1, Lo/DefaultItemAnimator$onPostMessage;->ICustomTabsCallback:Lo/DefaultItemAnimator;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->background:I

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "background"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x3f7851ec    # 0.97f

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 126
    iget-object p1, p0, Lo/DefaultItemAnimator$onPostMessage$4;->ICustomTabsCallback:Lo/DefaultItemAnimator$onPostMessage;

    iget-object p1, p1, Lo/DefaultItemAnimator$onPostMessage;->ICustomTabsCallback:Lo/DefaultItemAnimator;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->coinCountContainer:I

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "coinCountContainer"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;I)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 131
    iget-object p1, p0, Lo/DefaultItemAnimator$onPostMessage$4;->ICustomTabsCallback:Lo/DefaultItemAnimator$onPostMessage;

    iget-object p1, p1, Lo/DefaultItemAnimator$onPostMessage;->ICustomTabsCallback:Lo/DefaultItemAnimator;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
