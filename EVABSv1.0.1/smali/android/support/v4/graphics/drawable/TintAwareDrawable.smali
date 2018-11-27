.class public interface abstract Landroid/support/v4/graphics/drawable/TintAwareDrawable;
.super Ljava/lang/Object;
.source "TintAwareDrawable.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract setTint(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setTintMode(Landroid/graphics/PorterDuff$Mode;)V
.end method
