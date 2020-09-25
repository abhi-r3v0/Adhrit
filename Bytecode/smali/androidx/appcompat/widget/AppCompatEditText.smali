.class public Landroidx/appcompat/widget/AppCompatEditText;
.super Landroid/widget/EditText;
.source ""

# interfaces
.implements Lo/IMediaControllerCallback$Stub$Proxy;


# instance fields
.field private final mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

.field private final mTextClassifierHelper:Lo/onConnectionFailed;

.field private final mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 69
    sget v0, Lo/extraCallback$ICustomTabsCallback;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/view/View;Landroid/content/Context;)V

    .line 78
    new-instance p1, Lo/MediaBrowserCompat$ConnectionCallback;

    invoke-direct {p1, p0}, Lo/MediaBrowserCompat$ConnectionCallback;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    .line 79
    invoke-virtual {p1, p2, p3}, Lo/MediaBrowserCompat$ConnectionCallback;->ICustomTabsCallback(Landroid/util/AttributeSet;I)V

    .line 81
    new-instance p1, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-direct {p1, p0}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEditText;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    .line 82
    invoke-virtual {p1, p2, p3}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onMessageChannelReady(Landroid/util/AttributeSet;I)V

    .line 83
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatEditText;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-virtual {p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onNavigationEvent()V

    .line 85
    new-instance p1, Lo/onConnectionFailed;

    invoke-direct {p1, p0}, Lo/onConnectionFailed;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEditText;->mTextClassifierHelper:Lo/onConnectionFailed;

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 176
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 177
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback;->onNavigationEvent()V

    .line 180
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onNavigationEvent()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback;->onMessageChannelReady()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 170
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback;->extraCallback()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 95
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->mTextClassifierHelper:Lo/onConnectionFailed;

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v0}, Lo/onConnectionFailed;->onPostMessage()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    .line 234
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/widget/EditText;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 195
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lo/setCallbacksMessenger;->onPostMessage(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->extraCallback(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 105
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->extraCallback(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 206
    invoke-static {p0, p1}, Lo/prepareFromSearch;->onPostMessage(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 205
    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->onNavigationEvent(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->onNavigationEvent(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 187
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 188
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1, p2}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->ICustomTabsCallback(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEditText;->mTextClassifierHelper:Lo/onConnectionFailed;

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0, p1}, Lo/onConnectionFailed;->onPostMessage(Landroid/view/textclassifier/TextClassifier;)V

    return-void

    .line 216
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method
