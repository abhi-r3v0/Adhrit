.class public final Lo/obtainHolderInfo$asBinder;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/obtainHolderInfo;->onPostMessage(ZLandroid/app/Dialog;ZLcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;)V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/main/remotecontrol/RCDialogFragment$revealShowHide$2$1",
        "Landroid/animation/AnimatorListenerAdapter;",
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
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

.field private synthetic extraCallback:Z

.field private synthetic onMessageChannelReady:Landroid/app/Dialog;

.field private synthetic onNavigationEvent:Landroid/animation/Animator;

.field private synthetic onPostMessage:Lo/obtainHolderInfo;


# direct methods
.method constructor <init>(Landroid/animation/Animator;Lo/obtainHolderInfo;ZLcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lo/obtainHolderInfo$asBinder;->onNavigationEvent:Landroid/animation/Animator;

    iput-object p2, p0, Lo/obtainHolderInfo$asBinder;->onPostMessage:Lo/obtainHolderInfo;

    iput-boolean p3, p0, Lo/obtainHolderInfo$asBinder;->extraCallback:Z

    iput-object p4, p0, Lo/obtainHolderInfo$asBinder;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    iput-object p5, p0, Lo/obtainHolderInfo$asBinder;->onMessageChannelReady:Landroid/app/Dialog;

    .line 216
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lo/obtainHolderInfo$asBinder;->onNavigationEvent:Landroid/animation/Animator;

    move-object v1, p0

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 219
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 220
    iget-boolean p1, p0, Lo/obtainHolderInfo$asBinder;->extraCallback:Z

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lo/obtainHolderInfo$asBinder;->onPostMessage:Lo/obtainHolderInfo;

    iget-object v0, p0, Lo/obtainHolderInfo$asBinder;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    invoke-static {p1, v0}, Lo/obtainHolderInfo;->onNavigationEvent(Lo/obtainHolderInfo;Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;)V

    .line 223
    :cond_0
    iget-object p1, p0, Lo/obtainHolderInfo$asBinder;->onMessageChannelReady:Landroid/app/Dialog;

    if-nez p1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 224
    iget-object p1, p0, Lo/obtainHolderInfo$asBinder;->onPostMessage:Lo/obtainHolderInfo;

    .line 1053
    iget-object p1, p1, Lo/obtainHolderInfo;->ICustomTabsCallback:Landroid/view/ViewGroup;

    if-nez p1, :cond_2

    const-string v0, "mainRoot"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x4

    .line 224
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
