.class final Lo/findLastVisibleItemPositions$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findLastVisibleItemPositions;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/findLastVisibleItemPositions;


# direct methods
.method constructor <init>(Lo/findLastVisibleItemPositions;)V
    .locals 0

    iput-object p1, p0, Lo/findLastVisibleItemPositions$onTransact;->ICustomTabsCallback:Lo/findLastVisibleItemPositions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 122
    iget-object v0, p0, Lo/findLastVisibleItemPositions$onTransact;->ICustomTabsCallback:Lo/findLastVisibleItemPositions;

    .line 1025
    iget-object v0, v0, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v1, "bottomSheetBehavior"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x3

    .line 122
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 123
    iget-object v0, p0, Lo/findLastVisibleItemPositions$onTransact;->ICustomTabsCallback:Lo/findLastVisibleItemPositions;

    .line 2025
    iget-object v0, v0, Lo/findLastVisibleItemPositions;->onRelationshipValidationResult:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 123
    :cond_1
    new-instance v1, Lo/findLastVisibleItemPositions$onTransact$1;

    invoke-direct {v1, p0}, Lo/findLastVisibleItemPositions$onTransact$1;-><init>(Lo/findLastVisibleItemPositions$onTransact;)V

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;

    const-string v2, "BottomSheetBehavior"

    const-string v3, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    .line 2884
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    iget-object v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    .line 2893
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method