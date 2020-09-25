.class final Lo/resetAnimation$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/resetAnimation;-><init>(Landroid/content/Context;Lo/resetAnimation$onNavigationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "onShow"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/resetAnimation;


# direct methods
.method constructor <init>(Lo/resetAnimation;)V
    .locals 0

    iput-object p1, p0, Lo/resetAnimation$1;->onPostMessage:Lo/resetAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 52
    check-cast p1, Lo/createAbtInstance;

    const v0, 0x7f0b0274

    .line 53
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-nez p1, :cond_0

    .line 54
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const-string v0, "BottomSheetBehavior.from(bottomSheet!!)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 55
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 1838
    iput-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 58
    sget-object v0, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    .line 3000
    sget-object v0, Lo/sortAndDedup;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sortAndDedup$ICustomTabsCallback;

    .line 3042
    iget v0, v0, Lo/sortAndDedup$ICustomTabsCallback;->extraCallback:I

    .line 3702
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(I)V

    .line 60
    iget-object p1, p0, Lo/resetAnimation$1;->onPostMessage:Lo/resetAnimation;

    invoke-static {p1}, Lo/resetAnimation;->extraCallback(Lo/resetAnimation;)Lo/resetAnimation$onNavigationEvent;

    move-result-object p1

    invoke-interface {p1}, Lo/resetAnimation$onNavigationEvent;->onMessageChannelReady()V

    return-void

    .line 52
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
