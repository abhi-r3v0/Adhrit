.class public final Lcom/dreamplug/androidapp/SplashActivity$onRelationshipValidationResult;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/androidapp/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/androidapp/SplashActivity$playQrPromoCaptureAnimation$1",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/androidapp/SplashActivity;

.field private synthetic extraCallback:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/SplashActivity;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$onRelationshipValidationResult;->ICustomTabsCallback:Lcom/dreamplug/androidapp/SplashActivity;

    iput-object p2, p0, Lcom/dreamplug/androidapp/SplashActivity$onRelationshipValidationResult;->extraCallback:Landroid/os/Bundle;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 290
    iget-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$onRelationshipValidationResult;->ICustomTabsCallback:Lcom/dreamplug/androidapp/SplashActivity;

    const-class v0, Lo/ensureMenuView;

    iget-object v1, p0, Lcom/dreamplug/androidapp/SplashActivity$onRelationshipValidationResult;->extraCallback:Landroid/os/Bundle;

    const v2, 0x7f020012

    const v3, 0x7f020011

    invoke-static {p1, v0, v2, v3, v1}, Lcom/dreamplug/androidapp/SplashActivity;->onPostMessage(Lcom/dreamplug/androidapp/SplashActivity;Ljava/lang/Class;IILandroid/os/Bundle;)V

    return-void
.end method
