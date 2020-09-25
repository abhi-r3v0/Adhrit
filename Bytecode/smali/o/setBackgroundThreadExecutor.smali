.class public final Lo/setBackgroundThreadExecutor;
.super Lo/createAbtInstance;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setBackgroundThreadExecutor$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u0011B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/link/CardLinkReasonDescriptionBottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "sheetListener",
        "Lcom/dreamplug/fabrik/ui/control/link/CardLinkReasonDescriptionBottomSheet$BottomSheetInterface;",
        "reason",
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;",
        "(Landroidx/fragment/app/FragmentActivity;Lcom/dreamplug/fabrik/ui/control/link/CardLinkReasonDescriptionBottomSheet$BottomSheetInterface;Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;)V",
        "cancelButton",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "description",
        "proceedButton",
        "sheetView",
        "Landroid/view/View;",
        "title",
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
.field private final ICustomTabsCallback:Landroid/widget/TextView;

.field private final extraCallback:Landroid/view/View;

.field private final onMessageChannelReady:Landroid/widget/TextView;

.field private final onNavigationEvent:Landroid/widget/TextView;

.field private final onPostMessage:Landroid/widget/TextView;

.field private final onRelationshipValidationResult:Lo/setBackgroundThreadExecutor$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Lo/onSessionEvent;Lo/setBackgroundThreadExecutor$ICustomTabsCallback;Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lo/createAbtInstance;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/setBackgroundThreadExecutor;->onRelationshipValidationResult:Lo/setBackgroundThreadExecutor$ICustomTabsCallback;

    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x7f0e01d3

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026reason_description, null)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/setBackgroundThreadExecutor;->extraCallback:Landroid/view/View;

    .line 20
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/setBackgroundThreadExecutor;->onNavigationEvent:Landroid/widget/TextView;

    .line 21
    iget-object p1, p0, Lo/setBackgroundThreadExecutor;->extraCallback:Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/setBackgroundThreadExecutor;->onPostMessage:Landroid/widget/TextView;

    .line 22
    iget-object p1, p0, Lo/setBackgroundThreadExecutor;->extraCallback:Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/setBackgroundThreadExecutor;->onMessageChannelReady:Landroid/widget/TextView;

    .line 23
    iget-object p1, p0, Lo/setBackgroundThreadExecutor;->extraCallback:Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/setBackgroundThreadExecutor;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 26
    iget-object p1, p0, Lo/setBackgroundThreadExecutor;->extraCallback:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 27
    iget-object p1, p0, Lo/setBackgroundThreadExecutor;->extraCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060209

    invoke-static {v1, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object p1, p0, Lo/setBackgroundThreadExecutor;->onMessageChannelReady:Landroid/widget/TextView;

    const-string v0, "proceedButton"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/setBackgroundThreadExecutor$4;

    invoke-direct {v0, p0}, Lo/setBackgroundThreadExecutor$4;-><init>(Lo/setBackgroundThreadExecutor;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 33
    iget-object p1, p0, Lo/setBackgroundThreadExecutor;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string v0, "cancelButton"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/setBackgroundThreadExecutor$3;

    invoke-direct {v0, p0}, Lo/setBackgroundThreadExecutor$3;-><init>(Lo/setBackgroundThreadExecutor;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 37
    iget-object p1, p0, Lo/setBackgroundThreadExecutor;->onNavigationEvent:Landroid/widget/TextView;

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->getText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p0, Lo/setBackgroundThreadExecutor;->onPostMessage:Landroid/widget/TextView;

    const-string v0, "description"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->getMessage()Lo/getTargetScrollPosition;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1000
    iget-object p2, p3, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 38
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    sget-object p1, Lo/setBackgroundThreadExecutor$5;->onNavigationEvent:Lo/setBackgroundThreadExecutor$5;

    check-cast p1, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p0, p1}, Lo/setBackgroundThreadExecutor;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void

    .line 27
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic extraCallback(Lo/setBackgroundThreadExecutor;)Lo/setBackgroundThreadExecutor$ICustomTabsCallback;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/setBackgroundThreadExecutor;->onRelationshipValidationResult:Lo/setBackgroundThreadExecutor$ICustomTabsCallback;

    return-object p0
.end method
