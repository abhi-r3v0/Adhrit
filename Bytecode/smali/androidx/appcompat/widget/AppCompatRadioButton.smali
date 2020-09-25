.class public Landroidx/appcompat/widget/AppCompatRadioButton;
.super Landroid/widget/RadioButton;
.source ""

# interfaces
.implements Lo/playFromMediaId;
.implements Lo/IMediaControllerCallback$Stub$Proxy;


# instance fields
.field private final mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

.field private final mCompoundButtonHelper:Lo/getNotifyChildrenChangedOptions;

.field private final mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 65
    sget v0, Lo/extraCallback$ICustomTabsCallback;->radioButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/view/View;Landroid/content/Context;)V

    .line 73
    new-instance p1, Lo/getNotifyChildrenChangedOptions;

    invoke-direct {p1, p0}, Lo/getNotifyChildrenChangedOptions;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Lo/getNotifyChildrenChangedOptions;

    .line 74
    invoke-virtual {p1, p2, p3}, Lo/getNotifyChildrenChangedOptions;->onMessageChannelReady(Landroid/util/AttributeSet;I)V

    .line 76
    new-instance p1, Lo/MediaBrowserCompat$ConnectionCallback;

    invoke-direct {p1, p0}, Lo/MediaBrowserCompat$ConnectionCallback;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    .line 77
    invoke-virtual {p1, p2, p3}, Lo/MediaBrowserCompat$ConnectionCallback;->ICustomTabsCallback(Landroid/util/AttributeSet;I)V

    .line 79
    new-instance p1, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-direct {p1, p0}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    .line 80
    invoke-virtual {p1, p2, p3}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onMessageChannelReady(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 228
    invoke-super {p0}, Landroid/widget/RadioButton;->drawableStateChanged()V

    .line 229
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback;->onNavigationEvent()V

    .line 232
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onNavigationEvent()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 98
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 99
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Lo/getNotifyChildrenChangedOptions;

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1, v0}, Lo/getNotifyChildrenChangedOptions;->ICustomTabsCallback(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback;->onMessageChannelReady()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback;->extraCallback()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 124
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Lo/getNotifyChildrenChangedOptions;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lo/getNotifyChildrenChangedOptions;->onMessageChannelReady()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Lo/getNotifyChildrenChangedOptions;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lo/getNotifyChildrenChangedOptions;->extraCallback()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 212
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->extraCallback(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 220
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 221
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->extraCallback(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Lo/getNotifyChildrenChangedOptions;

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Lo/getNotifyChildrenChangedOptions;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->onNavigationEvent(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->onNavigationEvent(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 111
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Lo/getNotifyChildrenChangedOptions;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Lo/getNotifyChildrenChangedOptions;->onPostMessage(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatRadioButton;->mCompoundButtonHelper:Lo/getNotifyChildrenChangedOptions;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lo/getNotifyChildrenChangedOptions;->ICustomTabsCallback(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
