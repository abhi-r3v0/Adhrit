.class public Landroidx/appcompat/widget/AppCompatImageButton;
.super Landroid/widget/ImageButton;
.source ""

# interfaces
.implements Lo/IMediaControllerCallback$Stub$Proxy;
.implements Lo/skipToQueueItem;


# instance fields
.field private final mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

.field private final mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 70
    sget v0, Lo/extraCallback$ICustomTabsCallback;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/view/View;Landroid/content/Context;)V

    .line 79
    new-instance p1, Lo/MediaBrowserCompat$ConnectionCallback;

    invoke-direct {p1, p0}, Lo/MediaBrowserCompat$ConnectionCallback;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    .line 80
    invoke-virtual {p1, p2, p3}, Lo/MediaBrowserCompat$ConnectionCallback;->ICustomTabsCallback(Landroid/util/AttributeSet;I)V

    .line 82
    new-instance p1, Landroidx/appcompat/widget/AppCompatImageHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 83
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 245
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 246
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback;->onNavigationEvent()V

    .line 249
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 156
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback;->onMessageChannelReady()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 184
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback;->extraCallback()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 211
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageHelper;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 239
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageHelper;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 256
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageHelper;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageButton;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->extraCallback(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->extraCallback(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageHelper;->setImageResource(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V

    .line 111
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 141
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->onNavigationEvent(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 169
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->onNavigationEvent(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 196
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageHelper;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 224
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageButton;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageHelper;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
