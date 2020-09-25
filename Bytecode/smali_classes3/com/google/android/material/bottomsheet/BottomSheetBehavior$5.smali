.class final Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1136
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 1137
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2075
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback:Lo/setFirebaseUIVersion;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3075
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback:Lo/setFirebaseUIVersion;

    .line 3616
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 3617
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    const/4 p1, 0x1

    .line 3618
    iput-boolean p1, v0, Lo/setFirebaseUIVersion;->RemoteActionCompatParcelizer:Z

    .line 3619
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
