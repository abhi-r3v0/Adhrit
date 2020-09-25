.class final Lcom/airbnb/lottie/LottieAnimationView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieAnimationView;->fromAssets(Ljava/lang/String;)Lo/createSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lo/verifyNotNull<",
        "Lo/createCheckBox;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lcom/airbnb/lottie/LottieAnimationView;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->onMessageChannelReady:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1406
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->onMessageChannelReady:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieAnimationView;->access$300(Lcom/airbnb/lottie/LottieAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->onMessageChannelReady:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->onPostMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/createButton;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->onMessageChannelReady:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/createButton;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object v0

    return-object v0
.end method
