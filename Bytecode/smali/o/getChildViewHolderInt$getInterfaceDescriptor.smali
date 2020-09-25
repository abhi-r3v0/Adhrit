.class public final Lo/getChildViewHolderInt$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getChildViewHolderInt;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineFragment$onViewCreated$2",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
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
.field private synthetic onNavigationEvent:Lo/getChildViewHolderInt;


# direct methods
.method constructor <init>(Lo/getChildViewHolderInt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lo/getChildViewHolderInt$getInterfaceDescriptor;->onNavigationEvent:Lo/getChildViewHolderInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lo/getChildViewHolderInt$getInterfaceDescriptor;->onNavigationEvent:Lo/getChildViewHolderInt;

    invoke-static {p1}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;)Lo/findContainingItemView;

    move-result-object p1

    const/4 v0, 0x1

    .line 2225
    iput-boolean v0, p1, Lo/findContainingItemView;->extraCommand:Z

    .line 2226
    invoke-virtual {p1}, Lo/findContainingItemView;->extraCallback()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 144
    iget-object p1, p0, Lo/getChildViewHolderInt$getInterfaceDescriptor;->onNavigationEvent:Lo/getChildViewHolderInt;

    invoke-static {p1}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;)Lo/findContainingItemView;

    move-result-object p1

    const/4 v0, 0x1

    .line 1225
    iput-boolean v0, p1, Lo/findContainingItemView;->extraCommand:Z

    .line 1226
    invoke-virtual {p1}, Lo/findContainingItemView;->extraCallback()V

    .line 1227
    iget-object p1, p1, Lo/findContainingItemView;->updateVisuals:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 146
    iget-object p1, p0, Lo/getChildViewHolderInt$getInterfaceDescriptor;->onNavigationEvent:Lo/getChildViewHolderInt;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->machineView:I

    invoke-virtual {p1, v0}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setMinimumHeight;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
