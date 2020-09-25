.class public final Lo/requestChildRectangleOnScreen;
.super Lo/attachViewToSpans;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/requestChildRectangleOnScreen$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u0017B)\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0014J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \u0013*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentFailureFabrikDialog;",
        "Lcom/dreamplug/widget/FullScreenAlertDialog;",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "amount",
        "",
        "orderStatusResponse",
        "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
        "listener",
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentFailureFabrikDialog$FailureSheetListener;",
        "(Landroidx/fragment/app/Fragment;DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentFailureFabrikDialog$FailureSheetListener;)V",
        "navigator",
        "Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "getNavigator",
        "()Lcom/dreamplug/fabrik/ui/main/navigation/Navigator;",
        "navigator$delegate",
        "Lkotlin/Lazy;",
        "view",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onStart",
        "",
        "setFailureUI",
        "FailureSheetListener",
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
.field private final ICustomTabsCallback:Landroid/view/View;

.field private final extraCallback:Landroidx/fragment/app/Fragment;

.field private final onMessageChannelReady:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

.field private final onNavigationEvent:D

.field private final onPostMessage:Lo/requestChildRectangleOnScreen$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;DLcom/dreamplug/androidapp/payments/model/OrderStatusResponse;Lo/requestChildRectangleOnScreen$ICustomTabsCallback;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v1, "fragment.context!!"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/attachViewToSpans;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/requestChildRectangleOnScreen;->extraCallback:Landroidx/fragment/app/Fragment;

    iput-wide p2, p0, Lo/requestChildRectangleOnScreen;->onNavigationEvent:D

    iput-object p4, p0, Lo/requestChildRectangleOnScreen;->onMessageChannelReady:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    iput-object p5, p0, Lo/requestChildRectangleOnScreen;->onPostMessage:Lo/requestChildRectangleOnScreen$ICustomTabsCallback;

    .line 32
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e0318

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/requestChildRectangleOnScreen;->ICustomTabsCallback:Landroid/view/View;

    .line 33
    new-instance p1, Lo/requestChildRectangleOnScreen$onPostMessage;

    invoke-direct {p1, p0}, Lo/requestChildRectangleOnScreen$onPostMessage;-><init>(Lo/requestChildRectangleOnScreen;)V

    check-cast p1, Lo/getServerTime;

    const-string p2, "initializer"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance p2, Lo/fromChildMerge;

    invoke-direct {p2, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    .line 36
    iget-object p1, p0, Lo/requestChildRectangleOnScreen;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 37
    iget-object p1, p0, Lo/requestChildRectangleOnScreen;->ICustomTabsCallback:Landroid/view/View;

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/view/View;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p4

    const p5, 0x7f060209

    invoke-static {p4, p5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p4

    invoke-direct {p2, p4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1082
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->titleTv:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p2, "titleTv"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p2, 0x7f130373

    const/4 p4, 0x1

    new-array p5, p4, [Ljava/lang/Object;

    iget-wide v0, p0, Lo/requestChildRectangleOnScreen;->onNavigationEvent:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const/16 v1, 0x3c

    invoke-static {v0, p4, p3, p3, v1}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/Number;ZLjava/lang/String;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p5, v1

    invoke-static {p2, p5}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->topCard:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    const-string/jumbo p2, "topCard"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p5

    const v0, 0x7f0601e9

    invoke-static {p5, v0}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p5

    aput p5, p2, v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5, v0}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p5

    aput p5, p2, p4

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p5

    const-string v0, "Resources.getSystem()"

    invoke-static {p5, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    const/high16 v0, 0x41800000    # 16.0f

    .line 2010
    invoke-static {p4, v0, p5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p5

    .line 1083
    invoke-static {p1, p2, p5}, Lo/missCount;->ICustomTabsCallback(Landroid/view/View;[IF)V

    .line 1084
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->transactionId:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string/jumbo p2, "transactionId"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/requestChildRectangleOnScreen;->onMessageChannelReady:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getId()Ljava/lang/String;

    move-result-object p3

    :cond_1
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->statusImage:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p2, 0x7f080350

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1087
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->retry:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo p2, "retry"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->retry:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    const/16 p3, 0x9

    sget-object p5, Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;

    check-cast p5, Lo/calculateScrollDirectionForPosition;

    invoke-static {p1, p3, p5}, Lo/extraCallback;->onPostMessage(Landroid/widget/TextView;ILo/calculateScrollDirectionForPosition;)V

    .line 40
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->faq:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string p3, "faq"

    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p3, Lo/requestChildRectangleOnScreen$3;

    invoke-direct {p3, p0}, Lo/requestChildRectangleOnScreen$3;-><init>(Lo/requestChildRectangleOnScreen;)V

    check-cast p3, Lo/onDisconnectSetValue;

    invoke-static {p1, p3}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 44
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->retry:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/requestChildRectangleOnScreen$2;

    invoke-direct {p2, p0}, Lo/requestChildRectangleOnScreen$2;-><init>(Lo/requestChildRectangleOnScreen;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 49
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->paymentStatusHeaderTop:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const-string p2, "BottomSheetBehavior.from(paymentStatusHeaderTop)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2838
    iput-boolean v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 52
    invoke-virtual {p1, p4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    const/4 p2, 0x5

    .line 53
    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 54
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->paymentStatusHeaderTop:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/onChildrenLoaded;

    new-instance p3, Lo/requestChildRectangleOnScreen$5;

    invoke-direct {p3, p0, p1}, Lo/requestChildRectangleOnScreen$5;-><init>(Lo/requestChildRectangleOnScreen;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    check-cast p3, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, p3}, Lo/onChildrenLoaded;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 59
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->sheetView:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance p3, Lo/requestChildRectangleOnScreen$4;

    invoke-direct {p3, p0, p1}, Lo/requestChildRectangleOnScreen$4;-><init>(Lo/requestChildRectangleOnScreen;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    check-cast p3, Ljava/lang/Runnable;

    const-wide/16 p4, 0x64

    invoke-virtual {p2, p3, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 37
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic onNavigationEvent(Lo/requestChildRectangleOnScreen;)Lo/requestChildRectangleOnScreen$ICustomTabsCallback;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/requestChildRectangleOnScreen;->onPostMessage:Lo/requestChildRectangleOnScreen$ICustomTabsCallback;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/requestChildRectangleOnScreen;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/requestChildRectangleOnScreen;->extraCallback:Landroidx/fragment/app/Fragment;

    return-object p0
.end method


# virtual methods
.method public final onStart()V
    .locals 3

    .line 91
    invoke-super {p0}, Lo/attachViewToSpans;->onStart()V

    .line 92
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    new-instance v1, Landroid/transition/Fade;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/transition/Fade;-><init>(I)V

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    new-instance v1, Landroid/transition/Fade;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/transition/Fade;-><init>(I)V

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 94
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_2
    return-void
.end method
