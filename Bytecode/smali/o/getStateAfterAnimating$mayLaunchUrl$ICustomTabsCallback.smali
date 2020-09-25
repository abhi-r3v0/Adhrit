.class final Lo/getStateAfterAnimating$mayLaunchUrl$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getStateAfterAnimating$mayLaunchUrl;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/cm/credprotect/CredProtectOptInFragment$onViewCreated$1$onAnimationEnd$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getStateAfterAnimating$mayLaunchUrl;


# direct methods
.method constructor <init>(Lo/getStateAfterAnimating$mayLaunchUrl;)V
    .locals 0

    iput-object p1, p0, Lo/getStateAfterAnimating$mayLaunchUrl$ICustomTabsCallback;->onMessageChannelReady:Lo/getStateAfterAnimating$mayLaunchUrl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1113
    iget-object v0, p0, Lo/getStateAfterAnimating$mayLaunchUrl$ICustomTabsCallback;->onMessageChannelReady:Lo/getStateAfterAnimating$mayLaunchUrl;

    iget-object v0, v0, Lo/getStateAfterAnimating$mayLaunchUrl;->onPostMessage:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->ICustomTabsCallback$Stub$Proxy:Lo/TintTypedArray;

    iget-object v0, v0, Lo/TintTypedArray;->onNavigationEvent:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 109
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
