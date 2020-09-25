.class Lo/getLaunchPendingIntent$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getLaunchPendingIntent;->ICustomTabsCallback(Lo/populateSessionApplicationData;)Lo/getLaunchPendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/populateSessionApplicationData;

.field final synthetic onMessageChannelReady:Landroid/view/View;

.field final synthetic onNavigationEvent:Lo/getLaunchPendingIntent;


# direct methods
.method constructor <init>(Lo/getLaunchPendingIntent;Lo/populateSessionApplicationData;Landroid/view/View;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lo/getLaunchPendingIntent$1;->onNavigationEvent:Lo/getLaunchPendingIntent;

    iput-object p2, p0, Lo/getLaunchPendingIntent$1;->extraCallback:Lo/populateSessionApplicationData;

    iput-object p3, p0, Lo/getLaunchPendingIntent$1;->onMessageChannelReady:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 783
    iget-object p1, p0, Lo/getLaunchPendingIntent$1;->extraCallback:Lo/populateSessionApplicationData;

    invoke-interface {p1}, Lo/populateSessionApplicationData;->onMessageChannelReady()V

    return-void
.end method
