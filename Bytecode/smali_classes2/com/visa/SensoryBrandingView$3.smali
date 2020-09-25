.class final Lcom/visa/SensoryBrandingView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visa/SensoryBrandingView;->onMessageChannelReady(Lcom/visa/SensoryBrandingCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lcom/visa/SensoryBrandingView;

.field private synthetic onNavigationEvent:Lcom/visa/SensoryBrandingCompletionHandler;


# direct methods
.method constructor <init>(Lcom/visa/SensoryBrandingView;Lcom/visa/SensoryBrandingCompletionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/visa/SensoryBrandingView$3;->extraCallback:Lcom/visa/SensoryBrandingView;

    iput-object p2, p0, Lcom/visa/SensoryBrandingView$3;->onNavigationEvent:Lcom/visa/SensoryBrandingCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/visa/SensoryBrandingView$3;->extraCallback:Lcom/visa/SensoryBrandingView;

    invoke-static {p1}, Lcom/visa/SensoryBrandingView;->onPostMessage(Lcom/visa/SensoryBrandingView;)Z

    iget-object p1, p0, Lcom/visa/SensoryBrandingView$3;->onNavigationEvent:Lcom/visa/SensoryBrandingCompletionHandler;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/visa/SensoryBrandingCompletionHandler;->onComplete(Ljava/lang/Error;)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
