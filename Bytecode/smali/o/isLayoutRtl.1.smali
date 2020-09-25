.class public final Lo/isLayoutRtl;
.super Lo/createAbtInstance;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isLayoutRtl$onPostMessage;,
        Lo/isLayoutRtl$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eBQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\n \u0014*\u0004\u0018\u00010\u00130\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n \u0014*\u0004\u0018\u00010\u00160\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\n \u0014*\u0004\u0018\u00010\u00130\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\n \u0014*\u0004\u0018\u00010\u00130\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/widget/BottomSheetAlertDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "context",
        "Landroid/content/Context;",
        "title",
        "",
        "buttonTitle",
        "",
        "ctaClickListener",
        "Lcom/dreamplug/androidapp/ui/widget/BottomSheetAlertDialog$OnBottomSheetCtaClicked;",
        "description",
        "theme",
        "",
        "logoImageConfig",
        "Lcom/dreamplug/androidapp/ui/widget/ImageConfig;",
        "(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/dreamplug/androidapp/ui/widget/BottomSheetAlertDialog$OnBottomSheetCtaClicked;Ljava/lang/String;ILcom/dreamplug/androidapp/ui/widget/ImageConfig;)V",
        "getCtaClickListener",
        "()Lcom/dreamplug/androidapp/ui/widget/BottomSheetAlertDialog$OnBottomSheetCtaClicked;",
        "descriptionView",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "logoImage",
        "Landroid/widget/ImageView;",
        "getLogoImageConfig",
        "()Lcom/dreamplug/androidapp/ui/widget/ImageConfig;",
        "sheetView",
        "Landroid/view/View;",
        "submitButton",
        "titleTv",
        "Companion",
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
.field final ICustomTabsCallback:Lo/isLayoutRtl$onPostMessage;

.field private final extraCallback:Landroid/widget/TextView;

.field private final getInterfaceDescriptor:Lo/CardView;

.field private final onMessageChannelReady:Landroid/view/View;

.field private final onNavigationEvent:Landroid/widget/TextView;

.field private final onPostMessage:Landroid/widget/TextView;

.field private final onRelationshipValidationResult:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lo/isLayoutRtl$onPostMessage;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 17
    invoke-direct/range {v0 .. v7}, Lo/isLayoutRtl;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lo/isLayoutRtl$onPostMessage;Ljava/lang/String;ILo/CardView;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lo/isLayoutRtl$onPostMessage;Ljava/lang/String;ILo/CardView;)V
    .locals 0

    const-string p5, "context"

    invoke-static {p1, p5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "buttonTitle"

    invoke-static {p3, p5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lo/createAbtInstance;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lo/isLayoutRtl;->ICustomTabsCallback:Lo/isLayoutRtl$onPostMessage;

    const/4 p4, 0x0

    iput-object p4, p0, Lo/isLayoutRtl;->getInterfaceDescriptor:Lo/CardView;

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    const p6, 0x7f0e0036

    invoke-virtual {p5, p6, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    const-string p6, "LayoutInflater.from(cont\u2026et_util_view_light, null)"

    invoke-static {p5, p6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p5, p0, Lo/isLayoutRtl;->onMessageChannelReady:Landroid/view/View;

    .line 20
    sget p6, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p5, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lo/isLayoutRtl;->extraCallback:Landroid/widget/TextView;

    .line 21
    iget-object p5, p0, Lo/isLayoutRtl;->onMessageChannelReady:Landroid/view/View;

    sget p6, Lo/getSwitchMinWidth$onPostMessage;->text:I

    invoke-virtual {p5, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lo/isLayoutRtl;->onNavigationEvent:Landroid/widget/TextView;

    .line 22
    iget-object p5, p0, Lo/isLayoutRtl;->onMessageChannelReady:Landroid/view/View;

    sget p6, Lo/getSwitchMinWidth$onPostMessage;->description:I

    invoke-virtual {p5, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p0, Lo/isLayoutRtl;->onPostMessage:Landroid/widget/TextView;

    .line 23
    iget-object p5, p0, Lo/isLayoutRtl;->onMessageChannelReady:Landroid/view/View;

    sget p6, Lo/getSwitchMinWidth$onPostMessage;->logoImage:I

    invoke-virtual {p5, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/ImageView;

    iput-object p5, p0, Lo/isLayoutRtl;->onRelationshipValidationResult:Landroid/widget/ImageView;

    .line 26
    iget-object p5, p0, Lo/isLayoutRtl;->onNavigationEvent:Landroid/widget/TextView;

    const-string/jumbo p6, "titleTv"

    invoke-static {p5, p6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p2, p0, Lo/isLayoutRtl;->onPostMessage:Landroid/widget/TextView;

    const-string p5, "descriptionView"

    invoke-static {p2, p5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p5, 0x8

    invoke-virtual {p2, p5}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object p2, p0, Lo/isLayoutRtl;->extraCallback:Landroid/widget/TextView;

    const-string/jumbo p6, "submitButton"

    invoke-static {p2, p6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p2, p0, Lo/isLayoutRtl;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 35
    iget-object p2, p0, Lo/isLayoutRtl;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Landroid/view/View;

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const p7, 0x7f060209

    invoke-static {p1, p7}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    iget-object p1, p0, Lo/isLayoutRtl;->getInterfaceDescriptor:Lo/CardView;

    const-string p2, "logoImage"

    if-eqz p1, :cond_2

    .line 37
    iget-object p1, p0, Lo/isLayoutRtl;->onRelationshipValidationResult:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/isLayoutRtl;->getInterfaceDescriptor:Lo/CardView;

    const-string p3, "$this$present"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "imageConfig"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2056
    iget p3, p2, Lo/CardView;->onMessageChannelReady:I

    if-eqz p3, :cond_0

    .line 3056
    iget p3, p2, Lo/CardView;->onMessageChannelReady:I

    .line 1065
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1067
    :cond_0
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3058
    :goto_0
    iget-object p3, p2, Lo/CardView;->ICustomTabsCallback:Landroid/content/res/ColorStateList;

    .line 1070
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 4057
    iget p3, p2, Lo/CardView;->onNavigationEvent:I

    if-eqz p3, :cond_1

    .line 1073
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 5057
    iget p4, p2, Lo/CardView;->onNavigationEvent:I

    .line 1073
    invoke-static {p3, p4}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1075
    :cond_1
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5059
    :goto_1
    iget p3, p2, Lo/CardView;->extraCallback:I

    .line 1077
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1079
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 5061
    iget p4, p2, Lo/CardView;->asInterface:I

    .line 1080
    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6060
    iget p2, p2, Lo/CardView;->onPostMessage:I

    .line 1081
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1079
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 39
    :cond_2
    iget-object p1, p0, Lo/isLayoutRtl;->onRelationshipValidationResult:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    :goto_2
    iget-object p1, p0, Lo/isLayoutRtl;->extraCallback:Landroid/widget/TextView;

    invoke-static {p1, p6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/isLayoutRtl$4;

    invoke-direct {p2, p0}, Lo/isLayoutRtl$4;-><init>(Lo/isLayoutRtl;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 35
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
