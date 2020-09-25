.class public Lo/getPhoneNumber;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lo/getPhoneNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    sget v0, Lo/toStringMap$extraCallback;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/getPhoneNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private extraCallback()Lo/FirebaseAuthWebException;
    .locals 2

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 96
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 97
    instance-of v1, v0, Lo/FirebaseAuthWebException;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lo/FirebaseAuthWebException;

    return-object v0

    .line 100
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getHint()Ljava/lang/CharSequence;
    .locals 2

    .line 74
    invoke-direct {p0}, Lo/getPhoneNumber;->extraCallback()Lo/FirebaseAuthWebException;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3283
    iget-boolean v1, v0, Lo/FirebaseAuthWebException;->asBinder:Z

    if-eqz v1, :cond_1

    .line 4221
    iget-boolean v1, v0, Lo/FirebaseAuthWebException;->asInterface:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onAttachedToWindow()V

    .line 60
    invoke-direct {p0}, Lo/getPhoneNumber;->extraCallback()Lo/FirebaseAuthWebException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2283
    iget-boolean v0, v0, Lo/FirebaseAuthWebException;->asBinder:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Meizu"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    .line 84
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 5107
    invoke-direct {p0}, Lo/getPhoneNumber;->extraCallback()Lo/FirebaseAuthWebException;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5221
    iget-boolean v3, v1, Lo/FirebaseAuthWebException;->asInterface:Z

    if-eqz v3, :cond_0

    iget-object v2, v1, Lo/FirebaseAuthWebException;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    .line 88
    :cond_0
    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    :cond_1
    return-object v0
.end method
