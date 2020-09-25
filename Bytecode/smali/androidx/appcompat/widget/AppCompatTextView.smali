.class public Landroidx/appcompat/widget/AppCompatTextView;
.super Landroid/widget/TextView;
.source ""

# interfaces
.implements Lo/IMediaControllerCallback$Stub$Proxy;
.implements Lo/playFromSearch;
.implements Lo/isShuffleModeEnabledRemoved;


# instance fields
.field private final mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

.field private mPrecomputedTextFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lo/hasHeart;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextClassifierHelper:Lo/onConnectionFailed;

.field private final mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 95
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 100
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/view/View;Landroid/content/Context;)V

    .line 104
    new-instance p1, Lo/MediaBrowserCompat$ConnectionCallback;

    invoke-direct {p1, p0}, Lo/MediaBrowserCompat$ConnectionCallback;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    .line 105
    invoke-virtual {p1, p2, p3}, Lo/MediaBrowserCompat$ConnectionCallback;->ICustomTabsCallback(Landroid/util/AttributeSet;I)V

    .line 107
    new-instance p1, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-direct {p1, p0}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    .line 108
    invoke-virtual {p1, p2, p3}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onMessageChannelReady(Landroid/util/AttributeSet;I)V

    .line 109
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-virtual {p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onNavigationEvent()V

    .line 111
    new-instance p1, Lo/onConnectionFailed;

    invoke-direct {p1, p0}, Lo/onConnectionFailed;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextClassifierHelper:Lo/onConnectionFailed;

    return-void
.end method

.method private consumeTextFutureAndSetBlocking()V
    .locals 2

    .line 485
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 488
    :try_start_0
    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    .line 489
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hasHeart;

    invoke-static {p0, v0}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;Lo/hasHeart;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 196
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 197
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback;->onNavigationEvent()V

    .line 200
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onNavigationEvent()V

    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    .line 368
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 369
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 371
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->asInterface()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    .line 349
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 350
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 352
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onTransact()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    .line 330
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 331
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 333
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->asBinder()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    .line 387
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 390
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onRelationshipValidationResult()[I

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 3

    .line 309
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->onNavigationEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 310
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1

    .line 314
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->ICustomTabsCallback()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public getFirstBaselineToTopHeight()I
    .locals 1

    .line 425
    invoke-static {p0}, Lo/prepareFromSearch;->extraCallback(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getLastBaselineToBottomHeight()I
    .locals 1

    .line 430
    invoke-static {p0}, Lo/prepareFromSearch;->ICustomTabsCallback(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 154
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback;->onMessageChannelReady()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 182
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback;->extraCallback()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 637
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->ICustomTabsCallback$Stub()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 680
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->ICustomTabsCallback$Stub$Proxy()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 498
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->consumeTextFutureAndSetBlocking()V

    .line 499
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .line 526
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextClassifierHelper:Lo/onConnectionFailed;

    if-nez v0, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {v0}, Lo/onConnectionFailed;->onPostMessage()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    .line 527
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public getTextMetricsParamsCompat()Lo/hasHeart$onMessageChannelReady;
    .locals 1

    .line 457
    invoke-static {p0}, Lo/prepareFromSearch;->onPostMessage(Landroid/widget/TextView;)Lo/hasHeart$onMessageChannelReady;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 399
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lo/setCallbacksMessenger;->onPostMessage(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 207
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 208
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 209
    invoke-virtual/range {v0 .. v5}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->ICustomTabsCallback(ZIIII)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 553
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->consumeTextFutureAndSetBlocking()V

    .line 554
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 227
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz p1, :cond_0

    sget-boolean p1, Landroidx/appcompat/widget/AppCompatTextView;->onNavigationEvent:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-virtual {p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-virtual {p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 266
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0, p1, p2, p3, p4}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onNavigationEvent(IIII)V

    :cond_1
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 288
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 289
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0, p1, p2}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onPostMessage([II)V

    :cond_1
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    .line 243
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onMessageChannelReady(I)V

    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->extraCallback(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 117
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->extraCallback(I)V

    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 560
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 561
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz p1, :cond_0

    .line 562
    invoke-virtual {p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 570
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 571
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz p1, :cond_0

    .line 572
    invoke-virtual {p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 2

    .line 612
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 614
    invoke-static {v0, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 615
    invoke-static {v0, p2}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 616
    invoke-static {v0, p3}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    .line 617
    invoke-static {v0, p4}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 613
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 618
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz p1, :cond_4

    .line 619
    invoke-virtual {p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onMessageChannelReady()V

    :cond_4
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 602
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 603
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 2

    .line 587
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 589
    invoke-static {v0, p1}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 590
    invoke-static {v0, p2}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 591
    invoke-static {v0, p3}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    if-eqz p4, :cond_3

    .line 592
    invoke-static {v0, p4}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 588
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 593
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz p1, :cond_4

    .line 594
    invoke-virtual {p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onMessageChannelReady()V

    :cond_4
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 579
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 580
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz p1, :cond_0

    .line 581
    invoke-virtual {p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 445
    invoke-static {p0, p1}, Lo/prepareFromSearch;->onPostMessage(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 444
    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .locals 2

    .line 405
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 406
    invoke-super {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    return-void

    .line 408
    :cond_0
    invoke-static {p0, p1}, Lo/prepareFromSearch;->onPostMessage(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .locals 2

    .line 415
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 416
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    return-void

    .line 418
    :cond_0
    invoke-static {p0, p1}, Lo/prepareFromSearch;->ICustomTabsCallback(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setLineHeight(I)V
    .locals 0

    .line 435
    invoke-static {p0, p1}, Lo/prepareFromSearch;->extraCallback(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setPrecomputedText(Lo/hasHeart;)V
    .locals 0

    .line 481
    invoke-static {p0, p1}, Lo/prepareFromSearch;->onMessageChannelReady(Landroid/widget/TextView;Lo/hasHeart;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 139
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->onNavigationEvent(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 167
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Lo/MediaBrowserCompat$ConnectionCallback;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback;->onNavigationEvent(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 660
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->ICustomTabsCallback(Landroid/content/res/ColorStateList;)V

    .line 661
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-virtual {p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onNavigationEvent()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 700
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->extraCallback(Landroid/graphics/PorterDuff$Mode;)V

    .line 701
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    invoke-virtual {p1}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onNavigationEvent()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 188
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 189
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1, p2}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->ICustomTabsCallback(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextClassifierHelper:Lo/onConnectionFailed;

    if-nez v0, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {v0, p1}, Lo/onConnectionFailed;->onPostMessage(Landroid/view/textclassifier/TextClassifier;)V

    return-void

    .line 509
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method public setTextFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lo/hasHeart;",
            ">;)V"
        }
    .end annotation

    .line 545
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTextMetricsParamsCompat(Lo/hasHeart$onMessageChannelReady;)V
    .locals 0

    .line 468
    invoke-static {p0, p1}, Lo/prepareFromSearch;->onNavigationEvent(Landroid/widget/TextView;Lo/hasHeart$onMessageChannelReady;)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 215
    sget-boolean v0, Landroidx/appcompat/widget/AppCompatTextView;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0, p1, p2}, Lo/MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21;->onNavigationEvent(IF)V

    :cond_1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 1

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 708
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lo/getBundle;->onNavigationEvent(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 711
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
