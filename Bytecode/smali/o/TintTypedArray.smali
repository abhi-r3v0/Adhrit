.class public abstract Lo/TintTypedArray;
.super Landroidx/databinding/ViewDataBinding;
.source ""


# instance fields
.field protected extraCallback:Lo/setStateAfterAnimating;

.field public final onNavigationEvent:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 65
    iput-object p3, p0, Lo/TintTypedArray;->onNavigationEvent:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method


# virtual methods
.method public abstract extraCallback(Lo/setStateAfterAnimating;)V
.end method
