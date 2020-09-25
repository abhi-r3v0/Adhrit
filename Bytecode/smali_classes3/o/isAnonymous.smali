.class final Lo/isAnonymous;
.super Lo/FirebaseAuthWeakPasswordException;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lo/FirebaseAuthWebException$onPostMessage;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final ICustomTabsCallback:Lo/FirebaseAuthWebException$onPostMessage;

.field private onMessageChannelReady:Landroid/text/TextWatcher;

.field private final onNavigationEvent:Lo/FirebaseAuthWebException$extraCallback;


# direct methods
.method constructor <init>(Lo/FirebaseAuthWebException;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lo/FirebaseAuthWeakPasswordException;-><init>(Lo/FirebaseAuthWebException;)V

    .line 35
    iput-object p0, p0, Lo/isAnonymous;->onMessageChannelReady:Landroid/text/TextWatcher;

    .line 51
    iput-object p0, p0, Lo/isAnonymous;->ICustomTabsCallback:Lo/FirebaseAuthWebException$onPostMessage;

    .line 63
    new-instance p1, Lo/isAnonymous$2;

    invoke-direct {p1}, Lo/isAnonymous$2;-><init>()V

    iput-object p1, p0, Lo/isAnonymous;->onNavigationEvent:Lo/FirebaseAuthWebException$extraCallback;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 5041
    iget-object p1, p0, Lo/FirebaseAuthWeakPasswordException;->onRelationshipValidationResult:Lo/addIdTokenListener;

    .line 6112
    iget-object p2, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 6186
    iget-object p2, p2, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 6114
    invoke-virtual {p2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p2

    instance-of p2, p2, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    xor-int/2addr p2, p3

    .line 5041
    invoke-virtual {p1, p2}, Lo/addIdTokenListener;->setChecked(Z)V

    return-void
.end method

.method final extraCallback()V
    .locals 3

    .line 82
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    iget-object v1, p0, Lo/FirebaseAuthWeakPasswordException;->asBinder:Landroid/content/Context;

    sget v2, Lo/toStringMap$onNavigationEvent;->design_password_eye:I

    .line 83
    invoke-static {v1, v2}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lo/FirebaseAuthWebException;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    iget-object v1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/toStringMap$onTransact;->password_toggle_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lo/FirebaseAuthWebException;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    invoke-virtual {v0, p0}, Lo/FirebaseAuthWebException;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    iget-object v1, p0, Lo/isAnonymous;->ICustomTabsCallback:Lo/FirebaseAuthWebException$onPostMessage;

    .line 3630
    iget-object v2, v0, Lo/FirebaseAuthWebException;->ICustomTabsService:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 3631
    iget-object v2, v0, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 3632
    invoke-interface {v1, v0}, Lo/FirebaseAuthWebException$onPostMessage;->onPostMessage(Lo/FirebaseAuthWebException;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    iget-object v1, p0, Lo/isAnonymous;->onNavigationEvent:Lo/FirebaseAuthWebException$extraCallback;

    .line 4602
    iget-object v0, v0, Lo/FirebaseAuthWebException;->getInterfaceDescriptor:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 10090
    iget-object p1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 10186
    iget-object p1, p1, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-nez p1, :cond_0

    return-void

    .line 10095
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 11112
    iget-object v1, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 11186
    iget-object v1, v1, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 11114
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 10097
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_1

    .line 10099
    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_1
    if-ltz v0, :cond_3

    .line 10103
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    return-void
.end method

.method public final onPostMessage(Lo/FirebaseAuthWebException;)V
    .locals 3

    .line 7186
    iget-object v0, p1, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 7056
    invoke-virtual {p1, v1}, Lo/FirebaseAuthWebException;->setEndIconVisible(Z)V

    .line 7057
    iget-object p1, p0, Lo/FirebaseAuthWeakPasswordException;->onRelationshipValidationResult:Lo/addIdTokenListener;

    .line 8112
    iget-object v2, p0, Lo/FirebaseAuthWeakPasswordException;->asInterface:Lo/FirebaseAuthWebException;

    .line 8186
    iget-object v2, v2, Lo/FirebaseAuthWebException;->extraCallback:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 8114
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-int/2addr v1, v2

    .line 7057
    invoke-virtual {p1, v1}, Lo/addIdTokenListener;->setChecked(Z)V

    .line 9033
    iget-object p1, p0, Lo/isAnonymous;->onMessageChannelReady:Landroid/text/TextWatcher;

    .line 7059
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10033
    iget-object p1, p0, Lo/isAnonymous;->onMessageChannelReady:Landroid/text/TextWatcher;

    .line 7060
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
