.class public final Lo/recycleData;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0018\u001a\u00020\u0013R\"\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/payments/InvalidPaymentAmountDialog;",
        "",
        "context",
        "Landroid/content/Context;",
        "text",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "<set-?>",
        "Landroid/view/View;",
        "contentView",
        "getContentView",
        "()Landroid/view/View;",
        "cta",
        "Landroid/widget/TextView;",
        "description",
        "mBottomSheetDialog",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "onEditClick",
        "Lkotlin/Function0;",
        "",
        "getOnEditClick",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnEditClick",
        "(Lkotlin/jvm/functions/Function0;)V",
        "create",
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
.field ICustomTabsCallback:Lo/createAbtInstance;

.field private final ICustomTabsCallback$Stub:Landroid/content/Context;

.field private final asInterface:Ljava/lang/String;

.field private extraCallback:Landroid/view/View;

.field private onMessageChannelReady:Landroid/widget/TextView;

.field private onNavigationEvent:Landroid/widget/TextView;

.field onPostMessage:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/recycleData;->ICustomTabsCallback$Stub:Landroid/content/Context;

    iput-object p2, p0, Lo/recycleData;->asInterface:Ljava/lang/String;

    .line 20
    new-instance p1, Lo/createAbtInstance;

    iget-object p2, p0, Lo/recycleData;->ICustomTabsCallback$Stub:Landroid/content/Context;

    invoke-direct {p1, p2}, Lo/createAbtInstance;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/recycleData;->ICustomTabsCallback:Lo/createAbtInstance;

    .line 1028
    iget-object p1, p0, Lo/recycleData;->ICustomTabsCallback$Stub:Landroid/content/Context;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0e0214

    const/4 v0, 0x0

    .line 1029
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/recycleData;->extraCallback:Landroid/view/View;

    if-nez p1, :cond_0

    .line 1030
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const p2, 0x7f0b026d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/recycleData;->onMessageChannelReady:Landroid/widget/TextView;

    .line 1031
    iget-object p1, p0, Lo/recycleData;->extraCallback:Landroid/view/View;

    if-nez p1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const p2, 0x7f0b0230

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/recycleData;->onNavigationEvent:Landroid/widget/TextView;

    .line 1032
    iget-object p1, p0, Lo/recycleData;->onMessageChannelReady:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lo/recycleData;->asInterface:Ljava/lang/String;

    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "something went wrong Please try later"

    .line 1033
    check-cast p2, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    :cond_3
    iget-object p1, p0, Lo/recycleData;->extraCallback:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 1036
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1037
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1039
    :cond_5
    :goto_1
    iget-object p2, p0, Lo/recycleData;->ICustomTabsCallback:Lo/createAbtInstance;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1040
    iget-object p2, p0, Lo/recycleData;->ICustomTabsCallback:Lo/createAbtInstance;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 1041
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lo/recycleData$extraCallback;

    invoke-direct {v1, p2}, Lo/recycleData$extraCallback;-><init>(Landroid/view/Window;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1045
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Landroid/view/View;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lo/recycleData;->ICustomTabsCallback$Stub:Landroid/content/Context;

    const v1, 0x7f060209

    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1046
    iget-object p1, p0, Lo/recycleData;->ICustomTabsCallback:Lo/createAbtInstance;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1047
    iget-object p1, p0, Lo/recycleData;->ICustomTabsCallback:Lo/createAbtInstance;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1048
    iget-object p1, p0, Lo/recycleData;->ICustomTabsCallback:Lo/createAbtInstance;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 1045
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1050
    :cond_7
    :goto_2
    iget-object p1, p0, Lo/recycleData;->onNavigationEvent:Landroid/widget/TextView;

    if-nez p1, :cond_8

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_8
    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/recycleData$onNavigationEvent;

    invoke-direct {p2, p0}, Lo/recycleData$onNavigationEvent;-><init>(Lo/recycleData;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 1028
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
