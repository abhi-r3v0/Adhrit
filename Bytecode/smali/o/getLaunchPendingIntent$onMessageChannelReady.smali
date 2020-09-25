.class Lo/getLaunchPendingIntent$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setVolumeTo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getLaunchPendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field extraCallback:Lo/getLaunchPendingIntent;

.field onNavigationEvent:Z


# direct methods
.method constructor <init>(Lo/getLaunchPendingIntent;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/getLaunchPendingIntent$onMessageChannelReady;->extraCallback:Lo/getLaunchPendingIntent;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x7e000000

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 103
    instance-of v1, v0, Lo/setVolumeTo;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Lo/setVolumeTo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0, p1}, Lo/setVolumeTo;->onAnimationCancel(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lo/getLaunchPendingIntent$onMessageChannelReady;->extraCallback:Lo/getLaunchPendingIntent;

    iget v0, v0, Lo/getLaunchPendingIntent;->onMessageChannelReady:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 76
    iget-object v0, p0, Lo/getLaunchPendingIntent$onMessageChannelReady;->extraCallback:Lo/getLaunchPendingIntent;

    iget v0, v0, Lo/getLaunchPendingIntent;->onMessageChannelReady:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 77
    iget-object v0, p0, Lo/getLaunchPendingIntent$onMessageChannelReady;->extraCallback:Lo/getLaunchPendingIntent;

    const/4 v2, -0x1

    iput v2, v0, Lo/getLaunchPendingIntent;->onMessageChannelReady:I

    .line 79
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    iget-boolean v0, p0, Lo/getLaunchPendingIntent$onMessageChannelReady;->onNavigationEvent:Z

    if-nez v0, :cond_5

    .line 82
    :cond_1
    iget-object v0, p0, Lo/getLaunchPendingIntent$onMessageChannelReady;->extraCallback:Lo/getLaunchPendingIntent;

    iget-object v0, v0, Lo/getLaunchPendingIntent;->onNavigationEvent:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lo/getLaunchPendingIntent$onMessageChannelReady;->extraCallback:Lo/getLaunchPendingIntent;

    iget-object v0, v0, Lo/getLaunchPendingIntent;->onNavigationEvent:Ljava/lang/Runnable;

    .line 84
    iget-object v2, p0, Lo/getLaunchPendingIntent$onMessageChannelReady;->extraCallback:Lo/getLaunchPendingIntent;

    iput-object v1, v2, Lo/getLaunchPendingIntent;->onNavigationEvent:Ljava/lang/Runnable;

    .line 85
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/high16 v0, 0x7e000000

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 89
    instance-of v2, v0, Lo/setVolumeTo;

    if-eqz v2, :cond_3

    .line 90
    move-object v1, v0

    check-cast v1, Lo/setVolumeTo;

    :cond_3
    if-eqz v1, :cond_4

    .line 93
    invoke-interface {v1, p1}, Lo/setVolumeTo;->onAnimationEnd(Landroid/view/View;)V

    :cond_4
    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lo/getLaunchPendingIntent$onMessageChannelReady;->onNavigationEvent:Z

    :cond_5
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lo/getLaunchPendingIntent$onMessageChannelReady;->onNavigationEvent:Z

    .line 54
    iget-object v0, p0, Lo/getLaunchPendingIntent$onMessageChannelReady;->extraCallback:Lo/getLaunchPendingIntent;

    iget v0, v0, Lo/getLaunchPendingIntent;->onMessageChannelReady:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lo/getLaunchPendingIntent$onMessageChannelReady;->extraCallback:Lo/getLaunchPendingIntent;

    iget-object v0, v0, Lo/getLaunchPendingIntent;->extraCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lo/getLaunchPendingIntent$onMessageChannelReady;->extraCallback:Lo/getLaunchPendingIntent;

    iget-object v0, v0, Lo/getLaunchPendingIntent;->extraCallback:Ljava/lang/Runnable;

    .line 59
    iget-object v2, p0, Lo/getLaunchPendingIntent$onMessageChannelReady;->extraCallback:Lo/getLaunchPendingIntent;

    iput-object v1, v2, Lo/getLaunchPendingIntent;->extraCallback:Ljava/lang/Runnable;

    .line 60
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/high16 v0, 0x7e000000

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 64
    instance-of v2, v0, Lo/setVolumeTo;

    if-eqz v2, :cond_2

    .line 65
    move-object v1, v0

    check-cast v1, Lo/setVolumeTo;

    :cond_2
    if-eqz v1, :cond_3

    .line 68
    invoke-interface {v1, p1}, Lo/setVolumeTo;->onAnimationStart(Landroid/view/View;)V

    :cond_3
    return-void
.end method
