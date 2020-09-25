.class public Lo/onPrepareFromUri;
.super Lo/onPrepareFromMediaId;
.source ""


# instance fields
.field private extraCallback:Ljava/lang/CharSequence;

.field private onNavigationEvent:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lo/onPrepareFromMediaId;-><init>()V

    return-void
.end method

.method private onTransact()Landroidx/preference/EditTextPreference;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lo/onPrepareFromMediaId;->onRelationshipValidationResult()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    return-object v0
.end method


# virtual methods
.method protected ICustomTabsCallback(Landroid/view/View;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lo/onPrepareFromMediaId;->ICustomTabsCallback(Landroid/view/View;)V

    const v0, 0x1020003

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lo/onPrepareFromUri;->onNavigationEvent:Landroid/widget/EditText;

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 68
    iget-object p1, p0, Lo/onPrepareFromUri;->onNavigationEvent:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lo/onPrepareFromUri;->extraCallback:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p1, p0, Lo/onPrepareFromUri;->onNavigationEvent:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ICustomTabsCallback(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lo/onPrepareFromUri;->onNavigationEvent:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-direct {p0}, Lo/onPrepareFromUri;->onTransact()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lo/onPrepareFromUri;->onTransact()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->extraCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lo/onPrepareFromMediaId;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 49
    invoke-direct {p0}, Lo/onPrepareFromUri;->onTransact()Landroidx/preference/EditTextPreference;

    move-result-object p1

    .line 1083
    iget-object p1, p1, Landroidx/preference/EditTextPreference;->asInterface:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lo/onPrepareFromUri;->extraCallback:Ljava/lang/CharSequence;

    return-void

    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/onPrepareFromUri;->extraCallback:Ljava/lang/CharSequence;

    return-void
.end method

.method protected onPostMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lo/onPrepareFromMediaId;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lo/onPrepareFromUri;->extraCallback:Ljava/lang/CharSequence;

    const-string v1, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
