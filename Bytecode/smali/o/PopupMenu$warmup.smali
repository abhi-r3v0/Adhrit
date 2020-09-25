.class public final Lo/PopupMenu$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "hasfocus",
        "",
        "onFocusChange",
        "com/cred/pay/ui/checkout/card/cvv/CheckoutCvvFragment$setupCvvEditText$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/PopupMenu;


# direct methods
.method public constructor <init>(Lo/PopupMenu;)V
    .locals 0

    iput-object p1, p0, Lo/PopupMenu$warmup;->onNavigationEvent:Lo/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1312
    iget-object p1, p0, Lo/PopupMenu$warmup;->onNavigationEvent:Lo/PopupMenu;

    invoke-static {p1}, Lo/PopupMenu;->onRelationshipValidationResult(Lo/PopupMenu;)V

    if-eqz p2, :cond_0

    .line 1314
    iget-object p1, p0, Lo/PopupMenu$warmup;->onNavigationEvent:Lo/PopupMenu;

    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->etCvv:I

    invoke-virtual {p1, p2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object p2, p0, Lo/PopupMenu$warmup;->onNavigationEvent:Lo/PopupMenu;

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->etCvv:I

    invoke-virtual {p2, v0}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const-string v0, "etCvv"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1315
    iget-object p1, p0, Lo/PopupMenu$warmup;->onNavigationEvent:Lo/PopupMenu;

    sget p2, Lo/onItemHoverEnter$onNavigationEvent;->etCvv:I

    invoke-virtual {p1, p2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    invoke-static {p1, p2}, Lo/PopupMenu;->onPostMessage(Lo/PopupMenu;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 2

    .line 337
    iget-object v0, p0, Lo/PopupMenu$warmup;->onNavigationEvent:Lo/PopupMenu;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->etCvv:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method
