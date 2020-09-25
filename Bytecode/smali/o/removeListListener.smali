.class public final Lo/removeListListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/removeListListener$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeListListener$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/payments/AmountAdjustDetailsUseCase$1",
        "Lcom/dreamplug/fabrik/ui/control/payments/AmountAdjustDetailsUseCase$OnDismissRequestListener;",
        "onDismissRequested",
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
.field ICustomTabsCallback:Lo/log;

.field private final onMessageChannelReady:Landroid/content/Context;

.field private onPostMessage:Lo/createAbtInstance;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/removeListListener;->onMessageChannelReady:Landroid/content/Context;

    .line 13
    new-instance v0, Lo/log;

    invoke-direct {v0, p1}, Lo/log;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/removeListListener;->ICustomTabsCallback:Lo/log;

    .line 14
    new-instance p1, Lo/createAbtInstance;

    iget-object v0, p0, Lo/removeListListener;->onMessageChannelReady:Landroid/content/Context;

    invoke-direct {p1, v0}, Lo/createAbtInstance;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/removeListListener;->onPostMessage:Lo/createAbtInstance;

    .line 18
    iget-object p1, p0, Lo/removeListListener;->ICustomTabsCallback:Lo/log;

    .line 1025
    iget-object p1, p1, Lo/log;->extraCallback:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/removeListListener;->onPostMessage:Lo/createAbtInstance;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lo/removeListListener;->onMessageChannelReady:Landroid/content/Context;

    const v2, 0x7f060209

    invoke-static {v1, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iget-object p1, p0, Lo/removeListListener;->onPostMessage:Lo/createAbtInstance;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 27
    iget-object p1, p0, Lo/removeListListener;->onPostMessage:Lo/createAbtInstance;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 28
    iget-object p1, p0, Lo/removeListListener;->onPostMessage:Lo/createAbtInstance;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 30
    iget-object p1, p0, Lo/removeListListener;->ICustomTabsCallback:Lo/log;

    move-object v0, p0

    check-cast v0, Lo/removeListListener$onPostMessage;

    .line 1039
    iput-object v0, p1, Lo/log;->ICustomTabsCallback:Lo/removeListListener$onPostMessage;

    goto :goto_1

    .line 25
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 3011
    iget-object v0, p0, Lo/removeListListener;->onPostMessage:Lo/createAbtInstance;

    .line 2032
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
