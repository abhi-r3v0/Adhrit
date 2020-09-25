.class final Lo/setAutoRetrievedSmsCodeForPhoneNumber$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAutoRetrievedSmsCodeForPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/setAutoRetrievedSmsCodeForPhoneNumber;


# direct methods
.method constructor <init>(Lo/setAutoRetrievedSmsCodeForPhoneNumber;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber$3;->onNavigationEvent:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 427
    iget-object p1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber$3;->onNavigationEvent:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    iget-object p1, p1, Lo/FirebaseAuthWeakPasswordException;->onRelationshipValidationResult:Lo/addIdTokenListener;

    iget-object v0, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber$3;->onNavigationEvent:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    .line 1064
    iget-boolean v0, v0, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onNavigationEvent:Z

    .line 427
    invoke-virtual {p1, v0}, Lo/addIdTokenListener;->setChecked(Z)V

    .line 428
    iget-object p1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber$3;->onNavigationEvent:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    .line 2064
    iget-object p1, p1, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback$Stub:Landroid/animation/ValueAnimator;

    .line 428
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
