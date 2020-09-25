.class public final Lo/onAbandon;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0008\u0012\u00060\u0006R\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u0010\u001a\u00020\u0008R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/addcard/ChooseBankUseCase;",
        "",
        "context",
        "Landroid/content/Context;",
        "onSelection",
        "Lkotlin/Function1;",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse;",
        "",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V",
        "chooseBankBottomSheet",
        "Lcom/dreamplug/fabrik/ui/control/addcard/NewChooseBankBottomSheet;",
        "getContext",
        "()Landroid/content/Context;",
        "mBottomSheetDialog",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "dismissBottomSheet",
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
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private onNavigationEvent:Lo/AudioAttributesCompat;

.field onPostMessage:Lo/createAbtInstance;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/onDisconnectSetValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSelection"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onAbandon;->ICustomTabsCallback:Landroid/content/Context;

    .line 15
    new-instance v0, Lo/AudioAttributesCompat;

    new-instance v1, Lo/onAbandon$onNavigationEvent;

    invoke-direct {v1, p0, p2}, Lo/onAbandon$onNavigationEvent;-><init>(Lo/onAbandon;Lo/onDisconnectSetValue;)V

    check-cast v1, Lo/abandon$onPostMessage;

    invoke-direct {v0, p1, v1}, Lo/AudioAttributesCompat;-><init>(Landroid/content/Context;Lo/abandon$onPostMessage;)V

    iput-object v0, p0, Lo/onAbandon;->onNavigationEvent:Lo/AudioAttributesCompat;

    .line 19
    new-instance p1, Lo/createAbtInstance;

    iget-object p2, p0, Lo/onAbandon;->ICustomTabsCallback:Landroid/content/Context;

    invoke-direct {p1, p2}, Lo/createAbtInstance;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/onAbandon;->onPostMessage:Lo/createAbtInstance;

    .line 23
    iget-object p1, p0, Lo/onAbandon;->onNavigationEvent:Lo/AudioAttributesCompat;

    sget-object p2, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->extraCallback()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/AudioAttributesCompat;->onMessageChannelReady(Ljava/util/List;)V

    .line 24
    iget-object p1, p0, Lo/onAbandon;->onNavigationEvent:Lo/AudioAttributesCompat;

    .line 1031
    iget-object p1, p1, Lo/AudioAttributesCompat;->onMessageChannelReady:Landroid/view/View;

    if-eqz p1, :cond_3

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
    iget-object p2, p0, Lo/onAbandon;->onPostMessage:Lo/createAbtInstance;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/view/View;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lo/onAbandon;->ICustomTabsCallback:Landroid/content/Context;

    const v1, 0x7f060209

    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object p1, p0, Lo/onAbandon;->onPostMessage:Lo/createAbtInstance;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    iget-object p1, p0, Lo/onAbandon;->onPostMessage:Lo/createAbtInstance;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 34
    iget-object p1, p0, Lo/onAbandon;->onPostMessage:Lo/createAbtInstance;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 31
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method
