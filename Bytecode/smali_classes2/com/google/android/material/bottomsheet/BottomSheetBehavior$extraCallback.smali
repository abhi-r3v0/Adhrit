.class final Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field private final extraCallback:Landroid/view/View;

.field onMessageChannelReady:Z

.field private synthetic onNavigationEvent:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    .line 1377
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;->onNavigationEvent:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1378
    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;->extraCallback:Landroid/view/View;

    .line 1379
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1384
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;->onNavigationEvent:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->newSession:Lo/rate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;->onNavigationEvent:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->newSession:Lo/rate;

    invoke-virtual {v0}, Lo/rate;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;->extraCallback:Landroid/view/View;

    invoke-static {v0, p0}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;->onNavigationEvent:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;->ICustomTabsCallback:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(I)V

    :goto_0
    const/4 v0, 0x0

    .line 1389
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$extraCallback;->onMessageChannelReady:Z

    return-void
.end method
