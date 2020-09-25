.class final Lcom/google/android/material/appbar/AppBarLayout$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setFirebaseUIVersion;


# direct methods
.method constructor <init>(Lo/setFirebaseUIVersion;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$5;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$5;->onMessageChannelReady:Lo/setFirebaseUIVersion;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 1651
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 1652
    iget-object v1, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 1653
    invoke-virtual {v0}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    :cond_0
    return-void
.end method
