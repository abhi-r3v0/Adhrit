.class public final Lo/onMoved;
.super Lo/createAbtInstance;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onMoved$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/link/CardLinkFailureBottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "sheetListener",
        "Lcom/dreamplug/fabrik/ui/control/link/CardLinkFailureBottomSheet$BottomSheetInterface;",
        "(Landroidx/fragment/app/FragmentActivity;Lcom/dreamplug/fabrik/ui/control/link/CardLinkFailureBottomSheet$BottomSheetInterface;)V",
        "laterButton",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "retryButton",
        "sheetView",
        "Landroid/view/View;",
        "BottomSheetInterface",
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
.field private final ICustomTabsCallback:Lo/onMoved$onNavigationEvent;

.field private final extraCallback:Landroid/widget/TextView;

.field private final onNavigationEvent:Landroid/widget/TextView;

.field private final onPostMessage:Landroid/view/View;


# direct methods
.method public constructor <init>(Lo/onSessionEvent;Lo/onMoved$onNavigationEvent;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lo/createAbtInstance;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/onMoved;->ICustomTabsCallback:Lo/onMoved$onNavigationEvent;

    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e01d6

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "LayoutInflater.from(cont\u2026ink_result_failure, null)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/onMoved;->onPostMessage:Landroid/view/View;

    .line 21
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->retry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/onMoved;->onNavigationEvent:Landroid/widget/TextView;

    .line 22
    iget-object p1, p0, Lo/onMoved;->onPostMessage:Landroid/view/View;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->later:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/onMoved;->extraCallback:Landroid/widget/TextView;

    .line 25
    iget-object p1, p0, Lo/onMoved;->onPostMessage:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 26
    iget-object p1, p0, Lo/onMoved;->onPostMessage:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/View;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060209

    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 28
    iget-object p1, p0, Lo/onMoved;->onNavigationEvent:Landroid/widget/TextView;

    const-string/jumbo p2, "retryButton"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/onMoved$3;

    invoke-direct {p2, p0}, Lo/onMoved$3;-><init>(Lo/onMoved;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 32
    iget-object p1, p0, Lo/onMoved;->extraCallback:Landroid/widget/TextView;

    const-string p2, "laterButton"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/onMoved$4;

    invoke-direct {p2, p0}, Lo/onMoved$4;-><init>(Lo/onMoved;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 35
    sget-object p1, Lo/onMoved$5;->onMessageChannelReady:Lo/onMoved$5;

    check-cast p1, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p0, p1}, Lo/onMoved;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void

    .line 26
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic onMessageChannelReady(Lo/onMoved;)Lo/onMoved$onNavigationEvent;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/onMoved;->ICustomTabsCallback:Lo/onMoved$onNavigationEvent;

    return-object p0
.end method
