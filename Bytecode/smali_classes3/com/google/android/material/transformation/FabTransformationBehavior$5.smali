.class final Lcom/google/android/material/transformation/FabTransformationBehavior$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/unregisterEventNames;

.field private synthetic extraCallback:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lo/unregisterEventNames;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$5;->ICustomTabsCallback:Lo/unregisterEventNames;

    iput-object p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$5;->extraCallback:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 358
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$5;->ICustomTabsCallback:Lo/unregisterEventNames;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/unregisterEventNames;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 353
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$5;->ICustomTabsCallback:Lo/unregisterEventNames;

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$5;->extraCallback:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0}, Lo/unregisterEventNames;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
