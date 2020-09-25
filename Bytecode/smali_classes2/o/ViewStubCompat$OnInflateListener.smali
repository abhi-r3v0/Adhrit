.class public final Lo/ViewStubCompat$OnInflateListener;
.super Lo/createAbtInstance;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ViewStubCompat$OnInflateListener$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/widget/BureauNotFoundDescBottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "context",
        "Landroid/content/Context;",
        "ctaListener",
        "Lcom/dreamplug/androidapp/ui/widget/BureauNotFoundDescBottomSheet$DialogInterface;",
        "(Landroid/content/Context;Lcom/dreamplug/androidapp/ui/widget/BureauNotFoundDescBottomSheet$DialogInterface;)V",
        "actionListener",
        "addMoreDetails",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "sheetView",
        "Landroid/view/View;",
        "show",
        "",
        "DialogInterface",
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

.field private extraCallback:Lo/ViewStubCompat$OnInflateListener$onMessageChannelReady;

.field private final onMessageChannelReady:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ViewStubCompat$OnInflateListener$onMessageChannelReady;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ctaListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lo/createAbtInstance;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01c6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "LayoutInflater.from(cont\u2026reu_not_found_desc, null)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/ViewStubCompat$OnInflateListener;->onMessageChannelReady:Landroid/view/View;

    .line 18
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->addMoreDetails:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ViewStubCompat$OnInflateListener;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 21
    iput-object p2, p0, Lo/ViewStubCompat$OnInflateListener;->extraCallback:Lo/ViewStubCompat$OnInflateListener$onMessageChannelReady;

    .line 22
    iget-object p2, p0, Lo/ViewStubCompat$OnInflateListener;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 23
    iget-object p2, p0, Lo/ViewStubCompat$OnInflateListener;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x7f060209

    invoke-static {p1, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object p1, p0, Lo/ViewStubCompat$OnInflateListener;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string p2, "addMoreDetails"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/ViewStubCompat$OnInflateListener$3;

    invoke-direct {p2, p0}, Lo/ViewStubCompat$OnInflateListener$3;-><init>(Lo/ViewStubCompat$OnInflateListener;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 23
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic onPostMessage(Lo/ViewStubCompat$OnInflateListener;)Lo/ViewStubCompat$OnInflateListener$onMessageChannelReady;
    .locals 0

    .line 13
    iget-object p0, p0, Lo/ViewStubCompat$OnInflateListener;->extraCallback:Lo/ViewStubCompat$OnInflateListener$onMessageChannelReady;

    return-object p0
.end method


# virtual methods
.method public final show()V
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 32
    invoke-super {p0}, Lo/createAbtInstance;->show()V

    return-void
.end method
