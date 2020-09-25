.class public final Lcom/dreamplug/androidapp/SplashActivity$asInterface;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/androidapp/SplashActivity;->onResume()V
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
        "com/dreamplug/androidapp/SplashActivity$onResume$1",
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
.field private synthetic onPostMessage:Lcom/dreamplug/androidapp/SplashActivity;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/SplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$asInterface;->onPostMessage:Lcom/dreamplug/androidapp/SplashActivity;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 196
    iget-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$asInterface;->onPostMessage:Lcom/dreamplug/androidapp/SplashActivity;

    invoke-static {p1}, Lcom/dreamplug/androidapp/SplashActivity;->ICustomTabsCallback(Lcom/dreamplug/androidapp/SplashActivity;)V

    .line 197
    sget-object p1, Lo/animateThumbToCheckedState;->extraCallback:Lo/animateThumbToCheckedState;

    iget-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$asInterface;->onPostMessage:Lcom/dreamplug/androidapp/SplashActivity;

    check-cast p1, Lo/onSessionEvent;

    invoke-static {p1}, Lo/animateThumbToCheckedState;->extraCallback(Lo/onSessionEvent;)V

    .line 198
    iget-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$asInterface;->onPostMessage:Lcom/dreamplug/androidapp/SplashActivity;

    invoke-static {p1}, Lcom/dreamplug/androidapp/SplashActivity;->onPostMessage(Lcom/dreamplug/androidapp/SplashActivity;)V

    return-void
.end method
