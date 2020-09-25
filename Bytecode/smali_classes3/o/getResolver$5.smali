.class final Lo/getResolver$5;
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
.field private synthetic extraCallback:Lo/getResolver;


# direct methods
.method constructor <init>(Lo/getResolver;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lo/getResolver$5;->extraCallback:Lo/getResolver;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 110
    iget-object p1, p0, Lo/getResolver$5;->extraCallback:Lo/getResolver;

    iget-object p1, p1, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/FirebaseAuthWebException;->setEndIconVisible(Z)V

    return-void
.end method
