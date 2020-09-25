.class public final Lo/requestSimpleAnimationsInNextLayout$onMessageChannelReady;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestSimpleAnimationsInNextLayout;
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/sms/BankSmsFragmentUiHelperKt$setupSheet$1",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "onSlide",
        "",
        "bottomSheet",
        "Landroid/view/View;",
        "slideOffset",
        "",
        "onStateChanged",
        "newState",
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
.field private synthetic ICustomTabsCallback:Lo/getSelectionModeForAccessibility;


# direct methods
.method constructor <init>(Lo/getSelectionModeForAccessibility;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lo/requestSimpleAnimationsInNextLayout$onMessageChannelReady;->ICustomTabsCallback:Lo/getSelectionModeForAccessibility;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;F)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    add-float/2addr v0, p2

    .line 114
    :goto_0
    iget-object p1, p0, Lo/requestSimpleAnimationsInNextLayout$onMessageChannelReady;->ICustomTabsCallback:Lo/getSelectionModeForAccessibility;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->darkBackgroundView:I

    invoke-virtual {p1, p2}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "darkBackgroundView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p2, 0x40000000    # 2.0f

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;I)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 119
    iget-object p1, p0, Lo/requestSimpleAnimationsInNextLayout$onMessageChannelReady;->ICustomTabsCallback:Lo/getSelectionModeForAccessibility;

    .line 1004
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    const-string/jumbo v0, "send_sms_bs_dismissed"

    invoke-interface {p1, v0, p2}, Lo/setThumbResource;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 120
    iget-object p1, p0, Lo/requestSimpleAnimationsInNextLayout$onMessageChannelReady;->ICustomTabsCallback:Lo/getSelectionModeForAccessibility;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method
