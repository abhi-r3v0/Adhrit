.class final Lcom/airbnb/lottie/LottieAnimationView$10;
.super Lo/onMeasureExactFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lo/ActionBarContainer;Ljava/lang/Object;Lo/setPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/onMeasureExactFormat<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setPresenter;


# direct methods
.method constructor <init>(Lo/setPresenter;)V
    .locals 0

    .line 890
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$10;->ICustomTabsCallback:Lo/setPresenter;

    invoke-direct {p0}, Lo/onMeasureExactFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$10;->ICustomTabsCallback:Lo/setPresenter;

    invoke-interface {v0}, Lo/setPresenter;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
