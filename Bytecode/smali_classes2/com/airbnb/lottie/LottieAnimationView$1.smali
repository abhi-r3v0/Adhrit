.class final Lcom/airbnb/lottie/LottieAnimationView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createMultiAutoCompleteTextView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/createMultiAutoCompleteTextView<",
        "Lo/createCheckBox;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$1;->onNavigationEvent:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)V
    .locals 1

    .line 80
    check-cast p1, Lo/createCheckBox;

    .line 1082
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$1;->onNavigationEvent:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lo/createCheckBox;)V

    return-void
.end method
