.class Lo/getLaunchPendingIntent$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getLaunchPendingIntent;->extraCallback(Landroid/view/View;Lo/setVolumeTo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getLaunchPendingIntent;

.field final synthetic onMessageChannelReady:Lo/setVolumeTo;

.field final synthetic onNavigationEvent:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/getLaunchPendingIntent;Lo/setVolumeTo;Landroid/view/View;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lo/getLaunchPendingIntent$4;->ICustomTabsCallback:Lo/getLaunchPendingIntent;

    iput-object p2, p0, Lo/getLaunchPendingIntent$4;->onMessageChannelReady:Lo/setVolumeTo;

    iput-object p3, p0, Lo/getLaunchPendingIntent$4;->onNavigationEvent:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 745
    iget-object p1, p0, Lo/getLaunchPendingIntent$4;->onMessageChannelReady:Lo/setVolumeTo;

    iget-object v0, p0, Lo/getLaunchPendingIntent$4;->onNavigationEvent:Landroid/view/View;

    invoke-interface {p1, v0}, Lo/setVolumeTo;->onAnimationCancel(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 750
    iget-object p1, p0, Lo/getLaunchPendingIntent$4;->onMessageChannelReady:Lo/setVolumeTo;

    iget-object v0, p0, Lo/getLaunchPendingIntent$4;->onNavigationEvent:Landroid/view/View;

    invoke-interface {p1, v0}, Lo/setVolumeTo;->onAnimationEnd(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 755
    iget-object p1, p0, Lo/getLaunchPendingIntent$4;->onMessageChannelReady:Lo/setVolumeTo;

    iget-object v0, p0, Lo/getLaunchPendingIntent$4;->onNavigationEvent:Landroid/view/View;

    invoke-interface {p1, v0}, Lo/setVolumeTo;->onAnimationStart(Landroid/view/View;)V

    return-void
.end method
