.class public Lo/setOnMenuItemClickListener;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setOnMenuItemClickListener$extraCallback;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/setOnMenuItemClickListener$extraCallback;

.field private ICustomTabsCallback$Stub:Landroid/graphics/PointF;

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:Ljava/lang/String;

.field private asBinder:Landroid/graphics/RectF;

.field private asInterface:Landroid/text/StaticLayout;

.field extraCallback:Lo/setOnMenuItemClickListener;

.field private extraCommand:Landroid/graphics/Typeface;

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:F

.field private newSession:Z

.field onMessageChannelReady:Lo/setOnMenuItemClickListener;

.field onNavigationEvent:Z

.field onPostMessage:F

.field private onRelationshipValidationResult:I

.field private onTransact:Landroid/text/TextPaint;

.field private requestPostMessageChannel:Landroid/graphics/Typeface;

.field private warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 125
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, v0}, Lo/setOnMenuItemClickListener;->onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    invoke-direct {p0, p1, p2}, Lo/setOnMenuItemClickListener;->onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    invoke-direct {p0, p1, p2}, Lo/setOnMenuItemClickListener;->onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private extraCallback(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 174
    sget-object v0, Lo/setPopupTheme$onPostMessage;->SegmentedButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 180
    sget v0, Lo/setPopupTheme$onPostMessage;->SegmentedButton_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lo/setOnMenuItemClickListener;->newSession:Z

    .line 181
    sget v0, Lo/setPopupTheme$onPostMessage;->SegmentedButton_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/setOnMenuItemClickListener;->ICustomTabsService:Ljava/lang/String;

    .line 182
    sget v0, Lo/setPopupTheme$onPostMessage;->SegmentedButton_textColor:I

    const v1, -0x777778

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lo/setOnMenuItemClickListener;->ICustomTabsCallback$Stub$Proxy:I

    .line 183
    sget v0, Lo/setPopupTheme$onPostMessage;->SegmentedButton_selectedTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lo/setOnMenuItemClickListener;->warmup:Z

    .line 184
    sget v0, Lo/setPopupTheme$onPostMessage;->SegmentedButton_selectedTextColor:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lo/setOnMenuItemClickListener;->getInterfaceDescriptor:I

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    .line 187
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 189
    sget v1, Lo/setPopupTheme$onPostMessage;->SegmentedButton_textSize:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lo/setOnMenuItemClickListener;->mayLaunchUrl:F

    .line 191
    sget v0, Lo/setPopupTheme$onPostMessage;->SegmentedButton_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    .line 192
    sget v1, Lo/setPopupTheme$onPostMessage;->SegmentedButton_textStyle:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 193
    sget v3, Lo/setPopupTheme$onPostMessage;->SegmentedButton_selectedTextStyle:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-eqz v0, :cond_2

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_0

    .line 203
    sget p1, Lo/setPopupTheme$onPostMessage;->SegmentedButton_android_fontFamily:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lo/setOnMenuItemClickListener;->extraCommand:Landroid/graphics/Typeface;

    .line 204
    sget p1, Lo/setPopupTheme$onPostMessage;->SegmentedButton_android_fontFamily:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lo/setOnMenuItemClickListener;->requestPostMessageChannel:Landroid/graphics/Typeface;

    goto :goto_0

    .line 208
    :cond_0
    sget v0, Lo/setPopupTheme$onPostMessage;->SegmentedButton_android_fontFamily:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_1

    .line 212
    invoke-static {p1, v0}, Lo/containsKey;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lo/setOnMenuItemClickListener;->extraCommand:Landroid/graphics/Typeface;

    .line 213
    invoke-static {p1, v0}, Lo/containsKey;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lo/setOnMenuItemClickListener;->requestPostMessageChannel:Landroid/graphics/Typeface;

    goto :goto_0

    .line 219
    :cond_1
    sget p1, Lo/setPopupTheme$onPostMessage;->SegmentedButton_android_fontFamily:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lo/setOnMenuItemClickListener;->extraCommand:Landroid/graphics/Typeface;

    .line 221
    sget p1, Lo/setPopupTheme$onPostMessage;->SegmentedButton_android_fontFamily:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lo/setOnMenuItemClickListener;->requestPostMessageChannel:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 228
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lo/setOnMenuItemClickListener;->extraCommand:Landroid/graphics/Typeface;

    .line 229
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lo/setOnMenuItemClickListener;->requestPostMessageChannel:Landroid/graphics/Typeface;

    .line 232
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private onMessageChannelReady()V
    .locals 6

    .line 380
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 381
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 382
    iget-boolean v2, p0, Lo/setOnMenuItemClickListener;->newSession:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/setOnMenuItemClickListener;->asInterface:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 383
    :goto_0
    iget-boolean v4, p0, Lo/setOnMenuItemClickListener;->newSession:Z

    if-eqz v4, :cond_1

    iget-object v3, p0, Lo/setOnMenuItemClickListener;->asInterface:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 384
    :cond_1
    iget-object v4, p0, Lo/setOnMenuItemClickListener;->ICustomTabsCallback$Stub:Landroid/graphics/PointF;

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, v4, Landroid/graphics/PointF;->y:F

    .line 385
    iget-object v1, p0, Lo/setOnMenuItemClickListener;->ICustomTabsCallback$Stub:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lo/setOnMenuItemClickListener;->getPaddingStart()I

    move-result v4

    int-to-float v4, v4

    .line 386
    invoke-virtual {p0}, Lo/setOnMenuItemClickListener;->getPaddingStart()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lo/setOnMenuItemClickListener;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v0, v5

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v4, v0

    iput v4, v1, Landroid/graphics/PointF;->x:F

    return-void
.end method

.method private onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    invoke-direct {p0, p1, p2}, Lo/setOnMenuItemClickListener;->extraCallback(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    invoke-direct {p0}, Lo/setOnMenuItemClickListener;->onPostMessage()V

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lo/setOnMenuItemClickListener;->onPostMessage:F

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 155
    iput p1, p0, Lo/setOnMenuItemClickListener;->onPostMessage:F

    .line 156
    :goto_1
    iput-boolean v1, p0, Lo/setOnMenuItemClickListener;->onNavigationEvent:Z

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lo/setOnMenuItemClickListener;->onMessageChannelReady:Lo/setOnMenuItemClickListener;

    .line 159
    iput-object p1, p0, Lo/setOnMenuItemClickListener;->extraCallback:Lo/setOnMenuItemClickListener;

    .line 162
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lo/setOnMenuItemClickListener;->asBinder:Landroid/graphics/RectF;

    .line 167
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private onPostMessage()V
    .locals 9

    .line 239
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lo/setOnMenuItemClickListener;->ICustomTabsCallback$Stub:Landroid/graphics/PointF;

    .line 242
    iget-boolean v0, p0, Lo/setOnMenuItemClickListener;->newSession:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lo/setOnMenuItemClickListener;->asInterface:Landroid/text/StaticLayout;

    return-void

    .line 249
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    const/4 v1, 0x1

    .line 250
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 251
    iget-object v0, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    iget v1, p0, Lo/setOnMenuItemClickListener;->mayLaunchUrl:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 252
    iget-object v0, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    iget v1, p0, Lo/setOnMenuItemClickListener;->ICustomTabsCallback$Stub$Proxy:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    iget-object v0, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    iget-object v1, p0, Lo/setOnMenuItemClickListener;->extraCommand:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 254
    iget-object v0, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 258
    iget-object v0, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    iget-object v1, p0, Lo/setOnMenuItemClickListener;->ICustomTabsService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lo/setOnMenuItemClickListener;->onRelationshipValidationResult:I

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 261
    iget-object v0, p0, Lo/setOnMenuItemClickListener;->ICustomTabsService:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    iget v4, p0, Lo/setOnMenuItemClickListener;->onRelationshipValidationResult:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lo/setOnMenuItemClickListener;->asInterface:Landroid/text/StaticLayout;

    return-void

    .line 265
    :cond_1
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lo/setOnMenuItemClickListener;->ICustomTabsService:Ljava/lang/String;

    iget-object v3, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    iget v4, p0, Lo/setOnMenuItemClickListener;->onRelationshipValidationResult:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lo/setOnMenuItemClickListener;->asInterface:Landroid/text/StaticLayout;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 396
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 403
    iget-boolean v2, p0, Lo/setOnMenuItemClickListener;->newSession:Z

    if-eqz v2, :cond_0

    .line 405
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 406
    iget-object v2, p0, Lo/setOnMenuItemClickListener;->ICustomTabsCallback$Stub:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lo/setOnMenuItemClickListener;->ICustomTabsCallback$Stub:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 407
    iget-object v2, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    iget v3, p0, Lo/setOnMenuItemClickListener;->ICustomTabsCallback$Stub$Proxy:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 408
    iget-object v2, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    iget-object v3, p0, Lo/setOnMenuItemClickListener;->extraCommand:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 409
    iget-object v2, p0, Lo/setOnMenuItemClickListener;->asInterface:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 410
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 414
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 426
    iget-boolean v2, p0, Lo/setOnMenuItemClickListener;->onNavigationEvent:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    .line 1570
    iget-object v2, p0, Lo/setOnMenuItemClickListener;->onMessageChannelReady:Lo/setOnMenuItemClickListener;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    int-to-float v2, v0

    goto :goto_1

    .line 444
    :cond_2
    iget-object v2, p0, Lo/setOnMenuItemClickListener;->onMessageChannelReady:Lo/setOnMenuItemClickListener;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 445
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_3

    .line 447
    iget-object v3, p0, Lo/setOnMenuItemClickListener;->asBinder:Landroid/graphics/RectF;

    iget v4, p0, Lo/setOnMenuItemClickListener;->onPostMessage:F

    sub-float v6, v4, v6

    mul-float v6, v6, v2

    int-to-float v0, v0

    mul-float v4, v4, v0

    int-to-float v0, v1

    invoke-virtual {v3, v6, v5, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    .line 451
    :cond_3
    iget-object v3, p0, Lo/setOnMenuItemClickListener;->asBinder:Landroid/graphics/RectF;

    const/high16 v4, -0x40800000    # -1.0f

    iget v7, p0, Lo/setOnMenuItemClickListener;->onPostMessage:F

    mul-float v4, v4, v7

    mul-float v4, v4, v2

    sub-float/2addr v6, v7

    int-to-float v0, v0

    mul-float v6, v6, v0

    int-to-float v0, v1

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    .line 1580
    :cond_4
    iget-object v2, p0, Lo/setOnMenuItemClickListener;->extraCallback:Lo/setOnMenuItemClickListener;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    int-to-float v2, v0

    goto :goto_3

    .line 467
    :cond_6
    iget-object v2, p0, Lo/setOnMenuItemClickListener;->extraCallback:Lo/setOnMenuItemClickListener;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 468
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_7

    .line 470
    iget-object v3, p0, Lo/setOnMenuItemClickListener;->asBinder:Landroid/graphics/RectF;

    iget v4, p0, Lo/setOnMenuItemClickListener;->onPostMessage:F

    int-to-float v0, v0

    mul-float v6, v4, v0

    mul-float v4, v4, v2

    add-float/2addr v0, v4

    int-to-float v1, v1

    invoke-virtual {v3, v6, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    .line 474
    :cond_7
    iget-object v3, p0, Lo/setOnMenuItemClickListener;->asBinder:Landroid/graphics/RectF;

    iget v4, p0, Lo/setOnMenuItemClickListener;->onPostMessage:F

    sub-float v7, v6, v4

    int-to-float v0, v0

    mul-float v7, v7, v0

    sub-float/2addr v6, v4

    mul-float v6, v6, v2

    add-float/2addr v0, v6

    int-to-float v1, v1

    invoke-virtual {v3, v7, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 480
    :goto_4
    iget-object v0, p0, Lo/setOnMenuItemClickListener;->asBinder:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 483
    iget-boolean v0, p0, Lo/setOnMenuItemClickListener;->newSession:Z

    if-eqz v0, :cond_9

    .line 485
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 486
    iget-object v0, p0, Lo/setOnMenuItemClickListener;->ICustomTabsCallback$Stub:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lo/setOnMenuItemClickListener;->ICustomTabsCallback$Stub:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 489
    iget-object v0, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    iget-boolean v1, p0, Lo/setOnMenuItemClickListener;->warmup:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lo/setOnMenuItemClickListener;->getInterfaceDescriptor:I

    goto :goto_5

    :cond_8
    iget v1, p0, Lo/setOnMenuItemClickListener;->ICustomTabsCallback$Stub$Proxy:I

    :goto_5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    iget-object v0, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    iget-object v1, p0, Lo/setOnMenuItemClickListener;->requestPostMessageChannel:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 491
    iget-object v0, p0, Lo/setOnMenuItemClickListener;->asInterface:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 492
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 496
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 498
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 500
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 285
    iget-boolean v0, p0, Lo/setOnMenuItemClickListener;->newSession:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/setOnMenuItemClickListener;->onRelationshipValidationResult:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 289
    :goto_0
    invoke-virtual {p0}, Lo/setOnMenuItemClickListener;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Lo/setOnMenuItemClickListener;->getPaddingEnd()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 299
    invoke-static {v2, p1}, Lo/setOnMenuItemClickListener;->resolveSize(II)I

    move-result p1

    .line 1346
    iget-boolean v0, p0, Lo/setOnMenuItemClickListener;->newSession:Z

    if-eqz v0, :cond_2

    .line 1353
    invoke-virtual {p0}, Lo/setOnMenuItemClickListener;->getPaddingStart()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lo/setOnMenuItemClickListener;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lo/setOnMenuItemClickListener;->onRelationshipValidationResult:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ltz v6, :cond_2

    .line 1362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 1364
    iget-object v0, p0, Lo/setOnMenuItemClickListener;->ICustomTabsService:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    invoke-static {v0, v1, v2, v3, v6}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lo/setOnMenuItemClickListener;->asInterface:Landroid/text/StaticLayout;

    goto :goto_1

    .line 1368
    :cond_1
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v4, p0, Lo/setOnMenuItemClickListener;->ICustomTabsService:Ljava/lang/String;

    iget-object v5, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lo/setOnMenuItemClickListener;->asInterface:Landroid/text/StaticLayout;

    .line 307
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lo/setOnMenuItemClickListener;->newSession:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/setOnMenuItemClickListener;->asInterface:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    .line 309
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 319
    invoke-static {v0, p2}, Lo/setOnMenuItemClickListener;->resolveSize(II)I

    move-result p2

    .line 322
    invoke-virtual {p0, p1, p2}, Lo/setOnMenuItemClickListener;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 328
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 331
    invoke-direct {p0}, Lo/setOnMenuItemClickListener;->onMessageChannelReady()V

    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 1

    const/4 v0, 0x1

    .line 699
    iput-boolean v0, p0, Lo/setOnMenuItemClickListener;->warmup:Z

    .line 700
    iput p1, p0, Lo/setOnMenuItemClickListener;->getInterfaceDescriptor:I

    .line 702
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 781
    iput-object p1, p0, Lo/setOnMenuItemClickListener;->requestPostMessageChannel:Landroid/graphics/Typeface;

    .line 2786
    invoke-direct {p0}, Lo/setOnMenuItemClickListener;->onPostMessage()V

    .line 2787
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2792
    invoke-direct {p0}, Lo/setOnMenuItemClickListener;->onMessageChannelReady()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 637
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/setOnMenuItemClickListener;->newSession:Z

    .line 638
    iput-object p1, p0, Lo/setOnMenuItemClickListener;->ICustomTabsService:Ljava/lang/String;

    .line 640
    invoke-direct {p0}, Lo/setOnMenuItemClickListener;->onPostMessage()V

    .line 641
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 646
    invoke-direct {p0}, Lo/setOnMenuItemClickListener;->onMessageChannelReady()V

    .line 647
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 665
    iput p1, p0, Lo/setOnMenuItemClickListener;->ICustomTabsCallback$Stub$Proxy:I

    .line 667
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 732
    iput p1, p0, Lo/setOnMenuItemClickListener;->mayLaunchUrl:F

    .line 733
    iget-boolean v0, p0, Lo/setOnMenuItemClickListener;->newSession:Z

    if-nez v0, :cond_0

    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lo/setOnMenuItemClickListener;->onTransact:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 738
    invoke-direct {p0}, Lo/setOnMenuItemClickListener;->onPostMessage()V

    .line 739
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 744
    invoke-direct {p0}, Lo/setOnMenuItemClickListener;->onMessageChannelReady()V

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lo/setOnMenuItemClickListener;->extraCommand:Landroid/graphics/Typeface;

    .line 1786
    invoke-direct {p0}, Lo/setOnMenuItemClickListener;->onPostMessage()V

    .line 1787
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1792
    invoke-direct {p0}, Lo/setOnMenuItemClickListener;->onMessageChannelReady()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 614
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lo/setOnMenuItemClickListener;->ICustomTabsCallback:Lo/setOnMenuItemClickListener$extraCallback;

    if-eqz v0, :cond_0

    .line 619
    invoke-interface {v0, p0, p1}, Lo/setOnMenuItemClickListener$extraCallback;->onPostMessage(Lo/setOnMenuItemClickListener;I)V

    :cond_0
    return-void
.end method
