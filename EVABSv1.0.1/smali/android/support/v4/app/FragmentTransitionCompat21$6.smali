.class final Landroid/support/v4/app/FragmentTransitionCompat21$6;
.super Landroid/transition/Transition$EpicenterCallback;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    .line 546
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    .line 549
    iget-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
