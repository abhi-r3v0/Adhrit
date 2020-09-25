.class final Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getAdditionalUserInfo;


# direct methods
.method constructor <init>(Lo/getAdditionalUserInfo;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->extraCallback:Lo/getAdditionalUserInfo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 550
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->extraCallback:Lo/getAdditionalUserInfo;

    invoke-interface {p1}, Lo/getAdditionalUserInfo;->onMessageChannelReady()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 555
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->extraCallback:Lo/getAdditionalUserInfo;

    invoke-interface {p1}, Lo/getAdditionalUserInfo;->onNavigationEvent()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->extraCallback:Lo/getAdditionalUserInfo;

    invoke-interface {v0, p1}, Lo/getAdditionalUserInfo;->ICustomTabsCallback(Landroid/animation/Animator;)V

    return-void
.end method
