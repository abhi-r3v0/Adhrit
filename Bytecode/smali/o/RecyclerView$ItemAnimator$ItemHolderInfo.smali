.class public final Lo/RecyclerView$ItemAnimator$ItemHolderInfo;
.super Lo/createAbtInstance;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RecyclerView$ItemAnimator$ItemHolderInfo$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u001aBE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\n \u0012*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0013R\u0016\u0010\u0014\u001a\n \u0012*\u0004\u0018\u00010\u00150\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\n \u0012*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\n \u0012*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/widget/FabrikBottomSheetAlertDialogUtil;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "context",
        "Landroid/content/Context;",
        "title",
        "",
        "buttonTitle",
        "",
        "ctaClickListener",
        "Lcom/dreamplug/fabrik/ui/main/widget/FabrikBottomSheetAlertDialogUtil$OnBottomSheetCtaClicked;",
        "description",
        "isGem",
        "",
        "(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/main/widget/FabrikBottomSheetAlertDialogUtil$OnBottomSheetCtaClicked;Ljava/lang/String;Z)V",
        "getCtaClickListener",
        "()Lcom/dreamplug/fabrik/ui/main/widget/FabrikBottomSheetAlertDialogUtil$OnBottomSheetCtaClicked;",
        "descriptionView",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "()Z",
        "lottieView",
        "Landroid/widget/ImageView;",
        "sheetView",
        "Landroid/view/View;",
        "submitButton",
        "titleTv",
        "OnBottomSheetCtaClicked",
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

.field private final extraCallback:Landroid/widget/TextView;

.field private final onMessageChannelReady:Landroid/widget/TextView;

.field final onNavigationEvent:Lo/RecyclerView$ItemAnimator$ItemHolderInfo$onMessageChannelReady;

.field private final onPostMessage:Landroid/widget/TextView;

.field private final onRelationshipValidationResult:Landroid/widget/ImageView;

.field private final warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lo/RecyclerView$ItemAnimator$ItemHolderInfo$onMessageChannelReady;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonTitle"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f140105

    .line 16
    invoke-direct {p0, p1, v0}, Lo/createAbtInstance;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->onNavigationEvent:Lo/RecyclerView$ItemAnimator$ItemHolderInfo$onMessageChannelReady;

    iput-boolean p6, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->warmup:Z

    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    const p6, 0x7f0e0083

    const/4 v0, 0x0

    invoke-virtual {p4, p6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    const-string p6, "LayoutInflater.from(cont\u2026msheet_util_dialog, null)"

    invoke-static {p4, p6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->ICustomTabsCallback:Landroid/view/View;

    .line 19
    sget p6, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p4, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->onPostMessage:Landroid/widget/TextView;

    .line 20
    iget-object p4, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->ICustomTabsCallback:Landroid/view/View;

    sget p6, Lo/getSwitchMinWidth$onPostMessage;->text:I

    invoke-virtual {p4, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->extraCallback:Landroid/widget/TextView;

    .line 21
    iget-object p4, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->ICustomTabsCallback:Landroid/view/View;

    sget p6, Lo/getSwitchMinWidth$onPostMessage;->description:I

    invoke-virtual {p4, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->onMessageChannelReady:Landroid/widget/TextView;

    .line 22
    iget-object p4, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->ICustomTabsCallback:Landroid/view/View;

    sget p6, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p4, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->onRelationshipValidationResult:Landroid/widget/ImageView;

    .line 25
    iget-object p4, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->extraCallback:Landroid/widget/TextView;

    const-string/jumbo p6, "titleTv"

    invoke-static {p4, p6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "descriptionView"

    if-eqz p5, :cond_0

    .line 27
    iget-object p4, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-static {p4, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x0

    invoke-virtual {p4, p6}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object p4, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-static {p4, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Ljava/lang/CharSequence;

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 30
    :cond_0
    iget-object p4, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-static {p4, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p4, p2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :goto_0
    iget-object p2, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->onPostMessage:Landroid/widget/TextView;

    const-string/jumbo p4, "submitButton"

    invoke-static {p2, p4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p2, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 34
    iget-object p2, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Landroid/view/View;

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const p5, 0x7f060209

    invoke-static {p1, p5}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget-boolean p1, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->warmup:Z

    if-eqz p1, :cond_1

    .line 36
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->onRelationshipValidationResult:Landroid/widget/ImageView;

    const p2, 0x7f080359

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 38
    :cond_1
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->onRelationshipValidationResult:Landroid/widget/ImageView;

    const p2, 0x7f08031d

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    :goto_1
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->onPostMessage:Landroid/widget/TextView;

    invoke-static {p1, p4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/RecyclerView$ItemAnimator$ItemHolderInfo$2;

    invoke-direct {p2, p0}, Lo/RecyclerView$ItemAnimator$ItemHolderInfo$2;-><init>(Lo/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 34
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
