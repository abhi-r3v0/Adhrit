.class public final Lo/setSupportsChangeAnimations;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u001a\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/upi/SetMPinUseCase;",
        "",
        "context",
        "Landroidx/fragment/app/FragmentActivity;",
        "onSelection",
        "Lcom/dreamplug/upi/CredUpiPresenter$ICredUpiBottomSheetListener;",
        "(Landroidx/fragment/app/FragmentActivity;Lcom/dreamplug/upi/CredUpiPresenter$ICredUpiBottomSheetListener;)V",
        "chooseBankBottomSheet",
        "Lcom/dreamplug/upi/SetMPinDialog;",
        "getContext",
        "()Landroidx/fragment/app/FragmentActivity;",
        "mBottomSheetDialog",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "dismissBottomSheet",
        "",
        "show",
        "data",
        "Lcom/dreamplug/upi/UpiViewModel$SetupMpin;",
        "pinData",
        "Lcom/dreamplug/upi/UpiViewModel$SetMPinItem;",
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
.field private onMessageChannelReady:Lo/saveOriginalDelegate;

.field private final onNavigationEvent:Lo/onSessionEvent;

.field onPostMessage:Lo/createAbtInstance;


# direct methods
.method public constructor <init>(Lo/onSessionEvent;Lo/shouldBeKeptAsChild$onPostMessage;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSelection"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setSupportsChangeAnimations;->onNavigationEvent:Lo/onSessionEvent;

    .line 17
    new-instance v0, Lo/saveOriginalDelegate;

    new-instance v1, Lo/setSupportsChangeAnimations$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/setSupportsChangeAnimations$ICustomTabsCallback;-><init>(Lo/setSupportsChangeAnimations;)V

    check-cast v1, Lo/getServerTime;

    invoke-direct {v0, p1, p2, v1}, Lo/saveOriginalDelegate;-><init>(Lo/onSessionEvent;Lo/shouldBeKeptAsChild$onPostMessage;Lo/getServerTime;)V

    iput-object v0, p0, Lo/setSupportsChangeAnimations;->onMessageChannelReady:Lo/saveOriginalDelegate;

    .line 21
    new-instance p1, Lo/createAbtInstance;

    iget-object p2, p0, Lo/setSupportsChangeAnimations;->onNavigationEvent:Lo/onSessionEvent;

    check-cast p2, Landroid/content/Context;

    sget v0, Lo/getItemDelegate$ICustomTabsCallback$Stub;->FabrikBottomSheetDialogTheme:I

    invoke-direct {p1, p2, v0}, Lo/createAbtInstance;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lo/setSupportsChangeAnimations;->onPostMessage:Lo/createAbtInstance;

    .line 25
    iget-object p1, p0, Lo/setSupportsChangeAnimations;->onMessageChannelReady:Lo/saveOriginalDelegate;

    .line 2047
    iget-object p1, p1, Lo/saveOriginalDelegate;->extraCallback:Landroid/view/View;

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_1
    :goto_0
    iget-object p2, p0, Lo/setSupportsChangeAnimations;->onPostMessage:Lo/createAbtInstance;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/view/View;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lo/setSupportsChangeAnimations;->onNavigationEvent:Lo/onSessionEvent;

    check-cast v0, Landroid/content/Context;

    sget v1, Lo/getItemDelegate$onPostMessage;->transparent:I

    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object p1, p0, Lo/setSupportsChangeAnimations;->onPostMessage:Lo/createAbtInstance;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    iget-object p1, p0, Lo/setSupportsChangeAnimations;->onPostMessage:Lo/createAbtInstance;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 34
    iget-object p1, p0, Lo/setSupportsChangeAnimations;->onPostMessage:Lo/createAbtInstance;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    const/16 p2, 0x15

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    .line 31
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final extraCallback(Lo/snapFromFling$onNavigationEvent;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lo/setSupportsChangeAnimations;->onMessageChannelReady:Lo/saveOriginalDelegate;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
    iput-object p1, v1, Lo/saveOriginalDelegate;->onRelationshipValidationResult:Lo/snapFromFling$onNavigationEvent;

    .line 1053
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    iget-object p1, p0, Lo/setSupportsChangeAnimations;->onPostMessage:Lo/createAbtInstance;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 41
    iget-object p1, p0, Lo/setSupportsChangeAnimations;->onPostMessage:Lo/createAbtInstance;

    sget v0, Lo/getItemDelegate$onMessageChannelReady;->design_bottom_sheet:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/FrameLayout;

    .line 42
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const-string v0, "BottomSheetBehavior.from(bottomSheet)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 43
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void

    .line 41
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
