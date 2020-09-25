.class final Lo/getUid$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getUid;->onNavigationEvent(Lo/getUid$onMessageChannelReady;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getUid$onMessageChannelReady;

.field private synthetic onNavigationEvent:Lo/getUid;

.field private synthetic onPostMessage:Z


# direct methods
.method constructor <init>(Lo/getUid;ZLo/getUid$onMessageChannelReady;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lo/getUid$1;->onNavigationEvent:Lo/getUid;

    iput-boolean p2, p0, Lo/getUid$1;->onPostMessage:Z

    iput-object p3, p0, Lo/getUid$1;->onMessageChannelReady:Lo/getUid$onMessageChannelReady;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 516
    iget-object p1, p0, Lo/getUid$1;->onNavigationEvent:Lo/getUid;

    const/4 v0, 0x0

    .line 3066
    iput v0, p1, Lo/getUid;->requestPostMessageChannel:I

    .line 517
    iget-object p1, p0, Lo/getUid$1;->onNavigationEvent:Lo/getUid;

    const/4 v0, 0x0

    .line 4066
    iput-object v0, p1, Lo/getUid;->newSession:Landroid/animation/Animator;

    .line 519
    iget-object p1, p0, Lo/getUid$1;->onMessageChannelReady:Lo/getUid$onMessageChannelReady;

    if-eqz p1, :cond_0

    .line 520
    invoke-interface {p1}, Lo/getUid$onMessageChannelReady;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 508
    iget-object v0, p0, Lo/getUid$1;->onNavigationEvent:Lo/getUid;

    iget-object v0, v0, Lo/getUid;->cancelAll:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Lo/getUid$1;->onPostMessage:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lo/updateCurrentUser;->onMessageChannelReady(IZ)V

    .line 510
    iget-object v0, p0, Lo/getUid$1;->onNavigationEvent:Lo/getUid;

    const/4 v1, 0x2

    .line 1066
    iput v1, v0, Lo/getUid;->requestPostMessageChannel:I

    .line 511
    iget-object v0, p0, Lo/getUid$1;->onNavigationEvent:Lo/getUid;

    .line 2066
    iput-object p1, v0, Lo/getUid;->newSession:Landroid/animation/Animator;

    return-void
.end method
