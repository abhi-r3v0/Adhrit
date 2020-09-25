.class final Lo/findAnimation$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findAnimation;->onTransact()V
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
.field final synthetic extraCallback:Lo/findAnimation;


# direct methods
.method constructor <init>(Lo/findAnimation;)V
    .locals 0

    iput-object p1, p0, Lo/findAnimation$onRelationshipValidationResult;->extraCallback:Lo/findAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 225
    iget-object v0, p0, Lo/findAnimation$onRelationshipValidationResult;->extraCallback:Lo/findAnimation;

    invoke-static {v0}, Lo/findAnimation;->ICustomTabsCallback$Stub(Lo/findAnimation;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 226
    iget-object v0, p0, Lo/findAnimation$onRelationshipValidationResult;->extraCallback:Lo/findAnimation;

    invoke-static {v0}, Lo/findAnimation;->asBinder(Lo/findAnimation;)Lo/onChildrenLoaded;

    move-result-object v0

    new-instance v1, Lo/findAnimation$onRelationshipValidationResult$4;

    invoke-direct {v1, p0}, Lo/findAnimation$onRelationshipValidationResult$4;-><init>(Lo/findAnimation$onRelationshipValidationResult;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    iget-object v0, p0, Lo/findAnimation$onRelationshipValidationResult;->extraCallback:Lo/findAnimation;

    invoke-static {v0}, Lo/findAnimation;->ICustomTabsCallback$Stub(Lo/findAnimation;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    new-instance v1, Lo/findAnimation$onRelationshipValidationResult$2;

    invoke-direct {v1, p0}, Lo/findAnimation$onRelationshipValidationResult$2;-><init>(Lo/findAnimation$onRelationshipValidationResult;)V

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;

    const-string v2, "BottomSheetBehavior"

    const-string v3, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    .line 1884
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget-object v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    .line 1893
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->postMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
