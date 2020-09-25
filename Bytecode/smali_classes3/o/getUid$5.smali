.class final Lo/getUid$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getUid;->onMessageChannelReady(Lo/getUid$onMessageChannelReady;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Z

.field private extraCallback:Z

.field private synthetic onMessageChannelReady:Lo/getUid;

.field private synthetic onNavigationEvent:Lo/getUid$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/getUid;ZLo/getUid$onMessageChannelReady;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lo/getUid$5;->onMessageChannelReady:Lo/getUid;

    iput-boolean p2, p0, Lo/getUid$5;->ICustomTabsCallback:Z

    iput-object p3, p0, Lo/getUid$5;->onNavigationEvent:Lo/getUid$onMessageChannelReady;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 448
    iput-boolean p1, p0, Lo/getUid$5;->extraCallback:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 453
    iget-object p1, p0, Lo/getUid$5;->onMessageChannelReady:Lo/getUid;

    const/4 v0, 0x0

    .line 3066
    iput v0, p1, Lo/getUid;->requestPostMessageChannel:I

    .line 454
    iget-object p1, p0, Lo/getUid$5;->onMessageChannelReady:Lo/getUid;

    const/4 v0, 0x0

    .line 4066
    iput-object v0, p1, Lo/getUid;->newSession:Landroid/animation/Animator;

    .line 456
    iget-boolean p1, p0, Lo/getUid$5;->extraCallback:Z

    if-nez p1, :cond_1

    .line 457
    iget-object p1, p0, Lo/getUid$5;->onMessageChannelReady:Lo/getUid;

    iget-object p1, p1, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v0, p0, Lo/getUid$5;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-boolean v1, p0, Lo/getUid$5;->ICustomTabsCallback:Z

    invoke-virtual {p1, v0, v1}, Lo/updateCurrentUser;->onMessageChannelReady(IZ)V

    .line 458
    iget-object p1, p0, Lo/getUid$5;->onNavigationEvent:Lo/getUid$onMessageChannelReady;

    if-eqz p1, :cond_1

    .line 459
    invoke-interface {p1}, Lo/getUid$onMessageChannelReady;->onNavigationEvent()V

    :cond_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 439
    iget-object v0, p0, Lo/getUid$5;->onMessageChannelReady:Lo/getUid;

    iget-object v0, v0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Lo/getUid$5;->ICustomTabsCallback:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lo/updateCurrentUser;->onMessageChannelReady(IZ)V

    .line 441
    iget-object v0, p0, Lo/getUid$5;->onMessageChannelReady:Lo/getUid;

    const/4 v1, 0x1

    .line 1066
    iput v1, v0, Lo/getUid;->requestPostMessageChannel:I

    .line 442
    iget-object v0, p0, Lo/getUid$5;->onMessageChannelReady:Lo/getUid;

    .line 2066
    iput-object p1, v0, Lo/getUid;->newSession:Landroid/animation/Animator;

    .line 443
    iput-boolean v2, p0, Lo/getUid$5;->extraCallback:Z

    return-void
.end method
