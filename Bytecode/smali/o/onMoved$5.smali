.class final Lo/onMoved$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onMoved;-><init>(Lo/onSessionEvent;Lo/onMoved$onNavigationEvent;)V
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


# static fields
.field public static final onMessageChannelReady:Lo/onMoved$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/onMoved$5;

    invoke-direct {v0}, Lo/onMoved$5;-><init>()V

    sput-object v0, Lo/onMoved$5;->onMessageChannelReady:Lo/onMoved$5;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 36
    check-cast p1, Lo/createAbtInstance;

    const v0, 0x7f0b0274

    .line 38
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from(bottomSheet!!)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(Z)V

    .line 42
    sget-object v1, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    .line 2000
    sget-object v1, Lo/sortAndDedup;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sortAndDedup$ICustomTabsCallback;

    .line 2042
    iget v1, v1, Lo/sortAndDedup$ICustomTabsCallback;->extraCallback:I

    .line 2702
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(I)V

    .line 44
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f060034

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    return-void

    .line 36
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
