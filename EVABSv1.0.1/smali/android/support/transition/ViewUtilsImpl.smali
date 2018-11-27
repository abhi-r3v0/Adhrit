.class interface abstract Landroid/support/transition/ViewUtilsImpl;
.super Ljava/lang/Object;
.source "ViewUtilsImpl.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# virtual methods
.method public abstract clearNonTransitionAlpha(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getTransitionAlpha(Landroid/view/View;)F
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract saveNonTransitionAlpha(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setLeftTopRightBottom(Landroid/view/View;IIII)V
.end method

.method public abstract setTransitionAlpha(Landroid/view/View;F)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
