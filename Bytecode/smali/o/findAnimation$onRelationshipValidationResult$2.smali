.class public final Lo/findAnimation$onRelationshipValidationResult$2;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findAnimation$onRelationshipValidationResult;->run()V
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
        "com/dreamplug/fabrik/ui/lending/dialog/StashAuthDialog$showOtpDialog$2$2",
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
.field private synthetic onNavigationEvent:Lo/findAnimation$onRelationshipValidationResult;


# direct methods
.method constructor <init>(Lo/findAnimation$onRelationshipValidationResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lo/findAnimation$onRelationshipValidationResult$2;->onNavigationEvent:Lo/findAnimation$onRelationshipValidationResult;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;F)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 238
    :goto_0
    iget-object p1, p0, Lo/findAnimation$onRelationshipValidationResult$2;->onNavigationEvent:Lo/findAnimation$onRelationshipValidationResult;

    iget-object p1, p1, Lo/findAnimation$onRelationshipValidationResult;->extraCallback:Lo/findAnimation;

    invoke-static {p1}, Lo/findAnimation;->getInterfaceDescriptor(Lo/findAnimation;)Landroid/view/View;

    move-result-object p1

    const p2, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;I)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 243
    iget-object p1, p0, Lo/findAnimation$onRelationshipValidationResult$2;->onNavigationEvent:Lo/findAnimation$onRelationshipValidationResult;

    iget-object p1, p1, Lo/findAnimation$onRelationshipValidationResult;->extraCallback:Lo/findAnimation;

    invoke-static {p1}, Lo/findAnimation;->ICustomTabsCallback(Lo/findAnimation;)Lo/recycleFromEnd;

    move-result-object p1

    .line 1251
    iget-object p1, p1, Lo/recycleFromEnd;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    .line 243
    sget-object p2, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    if-ne p1, p2, :cond_1

    .line 244
    iget-object p1, p0, Lo/findAnimation$onRelationshipValidationResult$2;->onNavigationEvent:Lo/findAnimation$onRelationshipValidationResult;

    iget-object p1, p1, Lo/findAnimation$onRelationshipValidationResult;->extraCallback:Lo/findAnimation;

    invoke-static {p1}, Lo/findAnimation;->ICustomTabsCallback$Stub(Lo/findAnimation;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void

    :cond_0
    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    .line 247
    iget-object p1, p0, Lo/findAnimation$onRelationshipValidationResult$2;->onNavigationEvent:Lo/findAnimation$onRelationshipValidationResult;

    iget-object p1, p1, Lo/findAnimation$onRelationshipValidationResult;->extraCallback:Lo/findAnimation;

    invoke-static {p1}, Lo/findAnimation;->ICustomTabsCallback$Stub$Proxy(Lo/findAnimation;)V

    :cond_1
    return-void
.end method
