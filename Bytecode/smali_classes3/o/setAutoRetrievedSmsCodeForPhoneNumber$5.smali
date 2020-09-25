.class final Lo/setAutoRetrievedSmsCodeForPhoneNumber$5;
.super Lo/FirebaseAuthWebException$onMessageChannelReady;
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
.field private synthetic extraCallback:Lo/setAutoRetrievedSmsCodeForPhoneNumber;


# direct methods
.method constructor <init>(Lo/setAutoRetrievedSmsCodeForPhoneNumber;Lo/FirebaseAuthWebException;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber$5;->extraCallback:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    invoke-direct {p0, p2}, Lo/FirebaseAuthWebException$onMessageChannelReady;-><init>(Lo/FirebaseAuthWebException;)V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V
    .locals 0

    .line 98
    invoke-super {p0, p1, p2}, Lo/FirebaseAuthWebException$onMessageChannelReady;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V

    .line 100
    const-class p1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/getPlaybackState;->onMessageChannelReady(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {p2}, Lo/getPlaybackState;->IPostMessageService$Stub$Proxy()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p2, p1}, Lo/getPlaybackState;->onRelationshipValidationResult(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 110
    invoke-super {p0, p1, p2}, Lo/FirebaseAuthWebException$onMessageChannelReady;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 111
    iget-object p1, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber$5;->extraCallback:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    iget-object p1, p1, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 2186
    iget-object p1, p1, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    .line 3403
    instance-of v0, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    .line 3409
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    .line 114
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber$5;->extraCallback:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    .line 4064
    iget-object p2, p2, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onMessageChannelReady:Landroid/view/accessibility/AccessibilityManager;

    .line 115
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 116
    iget-object p2, p0, Lo/setAutoRetrievedSmsCodeForPhoneNumber$5;->extraCallback:Lo/setAutoRetrievedSmsCodeForPhoneNumber;

    invoke-static {p2, p1}, Lo/setAutoRetrievedSmsCodeForPhoneNumber;->onPostMessage(Lo/setAutoRetrievedSmsCodeForPhoneNumber;Landroid/widget/AutoCompleteTextView;)V

    :cond_0
    return-void

    .line 3404
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
