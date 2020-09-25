.class final Lo/getResolver$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getResolver;


# direct methods
.method constructor <init>(Lo/getResolver;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lo/getResolver$4;->onPostMessage:Lo/getResolver;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lo/getResolver$4;->onPostMessage:Lo/getResolver;

    iget-object p1, p1, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/FirebaseAuthWebException;->setEndIconVisible(Z)V

    return-void
.end method
