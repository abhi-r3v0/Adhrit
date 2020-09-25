.class final Lo/signInWithEmailLink$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/signInWithEmailLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/signInWithEmailLink;


# direct methods
.method constructor <init>(Lo/signInWithEmailLink;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lo/signInWithEmailLink$2;->onPostMessage:Lo/signInWithEmailLink;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lo/signInWithEmailLink$2;->onPostMessage:Lo/signInWithEmailLink;

    iget-object v0, v0, Lo/signInWithEmailLink;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    if-ne v0, p1, :cond_0

    .line 49
    iget-object p1, p0, Lo/signInWithEmailLink$2;->onPostMessage:Lo/signInWithEmailLink;

    const/4 v0, 0x0

    iput-object v0, p1, Lo/signInWithEmailLink;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
