.class final Lo/FirebaseAuthUserCollisionException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic extraCallback:Landroid/widget/AutoCompleteTextView;

.field private synthetic onMessageChannelReady:Lo/setAutoRetrievedSmsCodeForPhoneNumber;


# direct methods
.method constructor <init>(Lo/setAutoRetrievedSmsCodeForPhoneNumber;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lo/FirebaseAuthUserCollisionException;->onMessageChannelReady:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    iput-object p2, p0, Lo/FirebaseAuthUserCollisionException;->extraCallback:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 86
    iget-object v0, p0, Lo/FirebaseAuthUserCollisionException;->extraCallback:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    .line 87
    iget-object v1, p0, Lo/FirebaseAuthUserCollisionException;->onMessageChannelReady:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    .line 1413
    iget-boolean v2, v1, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onNavigationEvent:Z

    if-eq v2, v0, :cond_0

    .line 1414
    iput-boolean v0, v1, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onNavigationEvent:Z

    .line 1415
    iget-object v2, v1, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback$Stub:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1416
    iget-object v1, v1, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onPostMessage:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 88
    :cond_0
    iget-object v1, p0, Lo/FirebaseAuthUserCollisionException;->onMessageChannelReady:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    .line 2064
    iput-boolean v0, v1, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->ICustomTabsCallback:Z

    return-void
.end method
