.class public Lo/verifyPasswordResetCode;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:F

.field ICustomTabsCallback$Stub:Z

.field private final ICustomTabsService:I

.field private asBinder:I

.field public final asInterface:F

.field public final extraCallback:Landroid/content/res/ColorStateList;

.field private newSession:Ljava/lang/String;

.field public final onMessageChannelReady:Landroid/content/res/ColorStateList;

.field public final onNavigationEvent:I

.field public final onPostMessage:F

.field public final onRelationshipValidationResult:F

.field public onTransact:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lo/verifyPasswordResetCode;->ICustomTabsCallback$Stub:Z

    .line 75
    sget-object v1, Lo/toStringMap$newSession;->TextAppearance:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 77
    sget v1, Lo/toStringMap$newSession;->TextAppearance_android_textSize:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lo/verifyPasswordResetCode;->ICustomTabsCallback:F

    .line 78
    sget v1, Lo/toStringMap$newSession;->TextAppearance_android_textColor:I

    .line 79
    invoke-static {p1, p2, v1}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lo/verifyPasswordResetCode;->extraCallback:Landroid/content/res/ColorStateList;

    .line 81
    sget v1, Lo/toStringMap$newSession;->TextAppearance_android_textColorHint:I

    .line 82
    invoke-static {p1, p2, v1}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 84
    sget v1, Lo/toStringMap$newSession;->TextAppearance_android_textColorLink:I

    .line 85
    invoke-static {p1, p2, v1}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 87
    sget v1, Lo/toStringMap$newSession;->TextAppearance_android_textStyle:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lo/verifyPasswordResetCode;->onNavigationEvent:I

    .line 88
    sget v1, Lo/toStringMap$newSession;->TextAppearance_android_typeface:I

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lo/verifyPasswordResetCode;->asBinder:I

    .line 89
    sget v1, Lo/toStringMap$newSession;->TextAppearance_fontFamily:I

    sget v3, Lo/toStringMap$newSession;->TextAppearance_android_fontFamily:I

    .line 1181
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 94
    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lo/verifyPasswordResetCode;->ICustomTabsService:I

    .line 95
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/verifyPasswordResetCode;->newSession:Ljava/lang/String;

    .line 96
    sget v1, Lo/toStringMap$newSession;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 97
    sget v0, Lo/toStringMap$newSession;->TextAppearance_android_shadowColor:I

    .line 98
    invoke-static {p1, p2, v0}, Lo/fetchSignInMethodsForEmail;->onPostMessage(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lo/verifyPasswordResetCode;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    .line 100
    sget p1, Lo/toStringMap$newSession;->TextAppearance_android_shadowDx:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lo/verifyPasswordResetCode;->onPostMessage:F

    .line 101
    sget p1, Lo/toStringMap$newSession;->TextAppearance_android_shadowDy:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lo/verifyPasswordResetCode;->onRelationshipValidationResult:F

    .line 102
    sget p1, Lo/toStringMap$newSession;->TextAppearance_android_shadowRadius:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lo/verifyPasswordResetCode;->asInterface:F

    .line 104
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;Lo/confirmPasswordReset;)V
    .locals 4

    .line 159
    invoke-virtual {p0}, Lo/verifyPasswordResetCode;->onNavigationEvent()V

    .line 162
    iget v0, p0, Lo/verifyPasswordResetCode;->ICustomTabsService:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 164
    iput-boolean v1, p0, Lo/verifyPasswordResetCode;->ICustomTabsCallback$Stub:Z

    .line 167
    :cond_0
    iget-boolean v0, p0, Lo/verifyPasswordResetCode;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_1

    .line 168
    iget-object p1, p0, Lo/verifyPasswordResetCode;->onTransact:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, v1}, Lo/confirmPasswordReset;->extraCallback(Landroid/graphics/Typeface;Z)V

    return-void

    .line 174
    :cond_1
    :try_start_0
    iget v0, p0, Lo/verifyPasswordResetCode;->ICustomTabsService:I

    new-instance v2, Lo/verifyPasswordResetCode$4;

    invoke-direct {v2, p0, p2}, Lo/verifyPasswordResetCode$4;-><init>(Lo/verifyPasswordResetCode;Lo/confirmPasswordReset;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Lo/containsKey;->onNavigationEvent(Landroid/content/Context;ILo/containsKey$ICustomTabsCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error loading font "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/verifyPasswordResetCode;->newSession:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextAppearance"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    iput-boolean v1, p0, Lo/verifyPasswordResetCode;->ICustomTabsCallback$Stub:Z

    const/4 p1, -0x3

    .line 199
    invoke-virtual {p2, p1}, Lo/confirmPasswordReset;->onPostMessage(I)V

    return-void

    .line 194
    :catch_1
    iput-boolean v1, p0, Lo/verifyPasswordResetCode;->ICustomTabsCallback$Stub:Z

    .line 195
    invoke-virtual {p2, v1}, Lo/confirmPasswordReset;->onPostMessage(I)V

    return-void
.end method

.method public final extraCallback(Landroid/content/Context;Landroid/text/TextPaint;Lo/confirmPasswordReset;)V
    .locals 1

    .line 2246
    invoke-virtual {p0}, Lo/verifyPasswordResetCode;->onNavigationEvent()V

    .line 2247
    iget-object v0, p0, Lo/verifyPasswordResetCode;->onTransact:Landroid/graphics/Typeface;

    .line 218
    invoke-virtual {p0, p2, v0}, Lo/verifyPasswordResetCode;->onNavigationEvent(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 220
    new-instance v0, Lo/verifyPasswordResetCode$3;

    invoke-direct {v0, p0, p2, p3}, Lo/verifyPasswordResetCode$3;-><init>(Lo/verifyPasswordResetCode;Landroid/text/TextPaint;Lo/confirmPasswordReset;)V

    invoke-virtual {p0, p1, v0}, Lo/verifyPasswordResetCode;->ICustomTabsCallback(Landroid/content/Context;Lo/confirmPasswordReset;)V

    return-void
.end method

.method public final onMessageChannelReady(Landroid/content/Context;Landroid/text/TextPaint;Lo/confirmPasswordReset;)V
    .locals 4

    .line 2314
    invoke-virtual {p0, p1, p2, p3}, Lo/verifyPasswordResetCode;->extraCallback(Landroid/content/Context;Landroid/text/TextPaint;Lo/confirmPasswordReset;)V

    .line 288
    iget-object p1, p0, Lo/verifyPasswordResetCode;->extraCallback:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v0, p0, Lo/verifyPasswordResetCode;->extraCallback:Landroid/content/res/ColorStateList;

    .line 290
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    .line 288
    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    iget p1, p0, Lo/verifyPasswordResetCode;->asInterface:F

    iget p3, p0, Lo/verifyPasswordResetCode;->onPostMessage:F

    iget v0, p0, Lo/verifyPasswordResetCode;->onRelationshipValidationResult:F

    iget-object v1, p0, Lo/verifyPasswordResetCode;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v3, p0, Lo/verifyPasswordResetCode;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    .line 297
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 292
    :goto_1
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 252
    iget-object v0, p0, Lo/verifyPasswordResetCode;->onTransact:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/verifyPasswordResetCode;->newSession:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 253
    iget v1, p0, Lo/verifyPasswordResetCode;->onNavigationEvent:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lo/verifyPasswordResetCode;->onTransact:Landroid/graphics/Typeface;

    .line 257
    :cond_0
    iget-object v0, p0, Lo/verifyPasswordResetCode;->onTransact:Landroid/graphics/Typeface;

    if-nez v0, :cond_4

    .line 258
    iget v0, p0, Lo/verifyPasswordResetCode;->asBinder:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 269
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lo/verifyPasswordResetCode;->onTransact:Landroid/graphics/Typeface;

    goto :goto_0

    .line 266
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lo/verifyPasswordResetCode;->onTransact:Landroid/graphics/Typeface;

    goto :goto_0

    .line 263
    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lo/verifyPasswordResetCode;->onTransact:Landroid/graphics/Typeface;

    goto :goto_0

    .line 260
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lo/verifyPasswordResetCode;->onTransact:Landroid/graphics/Typeface;

    .line 272
    :goto_0
    iget-object v0, p0, Lo/verifyPasswordResetCode;->onTransact:Landroid/graphics/Typeface;

    iget v1, p0, Lo/verifyPasswordResetCode;->onNavigationEvent:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lo/verifyPasswordResetCode;->onTransact:Landroid/graphics/Typeface;

    :cond_4
    return-void
.end method

.method public final onNavigationEvent(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .locals 1

    .line 325
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 327
    iget v0, p0, Lo/verifyPasswordResetCode;->onNavigationEvent:I

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    not-int p2, p2

    and-int/2addr p2, v0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 328
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/high16 p2, -0x41800000    # -0.25f

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 329
    :goto_1
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 331
    iget p2, p0, Lo/verifyPasswordResetCode;->ICustomTabsCallback:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
