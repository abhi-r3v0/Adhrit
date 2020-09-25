.class final Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private extraCallback:I


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 996
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1000
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 1089
    sget-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->ICustomTabsCallback:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1004
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->extraCallback:I

    sub-int v0, p1, v0

    invoke-static {v1, v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    int-to-float v0, p1

    .line 1007
    invoke-virtual {v1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$onPostMessage;->setTranslationY(F)V

    .line 1009
    :goto_0
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;->extraCallback:I

    return-void
.end method
