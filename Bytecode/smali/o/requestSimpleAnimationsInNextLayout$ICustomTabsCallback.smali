.class public final Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/view/ViewKt$postDelayed$runnable$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/getSelectionModeForAccessibility;


# direct methods
.method public constructor <init>(Lo/getSelectionModeForAccessibility;)V
    .locals 0

    iput-object p1, p0, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;->onPostMessage:Lo/getSelectionModeForAccessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 337
    iget-object v0, p0, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;->onPostMessage:Lo/getSelectionModeForAccessibility;

    const/4 v1, 0x1

    .line 1040
    iput-boolean v1, v0, Lo/getSelectionModeForAccessibility;->extraCallback:Z

    .line 338
    iget-object v0, p0, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;->onPostMessage:Lo/getSelectionModeForAccessibility;

    .line 2038
    iget-object v0, v0, Lo/getSelectionModeForAccessibility;->onNavigationEvent:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v1, "consentSheetBehavior"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x4

    .line 338
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 339
    iget-object v0, p0, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;->onPostMessage:Lo/getSelectionModeForAccessibility;

    .line 3038
    iget-object v0, v0, Lo/getSelectionModeForAccessibility;->onNavigationEvent:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    .line 3838
    iput-boolean v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onTransact:Z

    .line 340
    iget-object v0, p0, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;->onPostMessage:Lo/getSelectionModeForAccessibility;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->consentSheet:I

    invoke-virtual {v0, v1}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string v1, "consentSheet"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 341
    new-instance v1, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback;

    invoke-direct {v1, p0}, Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback$extraCallback;-><init>(Lo/requestSimpleAnimationsInNextLayout$ICustomTabsCallback;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    .line 342
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
