.class final Lo/setOverflowIcon$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setOverflowIcon;->setPosition(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:I

.field private synthetic onMessageChannelReady:Z

.field private synthetic onNavigationEvent:Lo/setOverflowIcon;


# direct methods
.method constructor <init>(Lo/setOverflowIcon;IZ)V
    .locals 0

    .line 1033
    iput-object p1, p0, Lo/setOverflowIcon$3;->onNavigationEvent:Lo/setOverflowIcon;

    iput p2, p0, Lo/setOverflowIcon$3;->ICustomTabsCallback:I

    iput-boolean p3, p0, Lo/setOverflowIcon$3;->onMessageChannelReady:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1039
    iget-object p1, p0, Lo/setOverflowIcon$3;->onNavigationEvent:Lo/setOverflowIcon;

    iget v0, p0, Lo/setOverflowIcon$3;->ICustomTabsCallback:I

    iget-boolean v1, p0, Lo/setOverflowIcon$3;->onMessageChannelReady:Z

    invoke-static {p1, v0, v1}, Lo/setOverflowIcon;->onPostMessage(Lo/setOverflowIcon;IZ)V

    return-void
.end method
