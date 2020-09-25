.class final Lo/OrderStatusDataJsonAdapter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:F

.field private ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:I

.field private ICustomTabsService$Stub:F

.field private ICustomTabsService$Stub$Proxy:I

.field private INotificationSideChannel:F

.field private INotificationSideChannel$Default:I

.field private INotificationSideChannel$Stub:I

.field private INotificationSideChannel$Stub$Proxy:I

.field private IPostMessageService:I

.field private IPostMessageService$Stub:I

.field private IPostMessageService$Stub$Proxy:I

.field private RemoteActionCompatParcelizer:Landroid/graphics/Rect;

.field private final asBinder:Landroid/graphics/Paint;

.field private asInterface:Ljava/lang/CharSequence;

.field private cancel:F

.field private cancelAll:I

.field private final extraCallback:F

.field private extraCommand:F

.field private getDefaultImpl:I

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:Z

.field private newSession:F

.field private notify:I

.field private final onMessageChannelReady:F

.field private final onNavigationEvent:F

.field private final onPostMessage:F

.field private onRelationshipValidationResult:Landroid/text/Layout$Alignment;

.field private final onTransact:Landroid/text/TextPaint;

.field private postMessage:F

.field private requestPostMessageChannel:I

.field private setDefaultImpl:Landroid/text/StaticLayout;

.field private updateVisuals:Z

.field private validateRelationship:I

.field private warmup:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 104
    fill-array-data v0, :array_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p1, v2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lo/OrderStatusDataJsonAdapter;->extraCallback:F

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lo/OrderStatusDataJsonAdapter;->onNavigationEvent:F

    .line 108
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 112
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 113
    iput p1, p0, Lo/OrderStatusDataJsonAdapter;->onMessageChannelReady:F

    .line 114
    iput p1, p0, Lo/OrderStatusDataJsonAdapter;->onPostMessage:F

    .line 115
    iput p1, p0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsCallback:F

    .line 117
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    .line 118
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object p1, p0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 121
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lo/OrderStatusDataJsonAdapter;->asBinder:Landroid/graphics/Paint;

    .line 122
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    iget-object p1, p0, Lo/OrderStatusDataJsonAdapter;->asBinder:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :array_0
    .array-data 4
        0x1010217
        0x1010218
    .end array-data
.end method

.method private extraCallback()V
    .locals 26

    move-object/from16 v0, p0

    .line 236
    iget v1, v0, Lo/OrderStatusDataJsonAdapter;->notify:I

    iget v2, v0, Lo/OrderStatusDataJsonAdapter;->cancelAll:I

    sub-int/2addr v1, v2

    .line 237
    iget v2, v0, Lo/OrderStatusDataJsonAdapter;->INotificationSideChannel$Stub$Proxy:I

    iget v3, v0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService$Stub$Proxy:I

    sub-int/2addr v2, v3

    .line 239
    iget-object v3, v0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    iget v4, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsService$Stub:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 240
    iget v3, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsService$Stub:F

    const/high16 v4, 0x3e000000    # 0.125f

    mul-float v3, v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    shl-int/lit8 v4, v3, 0x1

    sub-int v5, v1, v4

    .line 243
    iget v6, v0, Lo/OrderStatusDataJsonAdapter;->postMessage:F

    const/4 v7, 0x1

    cmpl-float v8, v6, v7

    if-eqz v8, :cond_0

    int-to-float v5, v5

    mul-float v5, v5, v6

    float-to-int v5, v5

    :cond_0
    const-string v6, "SubtitlePainter"

    if-gtz v5, :cond_1

    const-string v1, "Skipped drawing subtitle cue (insufficient space)"

    .line 247
    invoke-static {v6, v1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 251
    :cond_1
    iget-object v8, v0, Lo/OrderStatusDataJsonAdapter;->asInterface:Ljava/lang/CharSequence;

    .line 253
    iget-boolean v9, v0, Lo/OrderStatusDataJsonAdapter;->mayLaunchUrl:Z

    const/high16 v10, 0xff0000

    const/16 v16, 0x0

    const/4 v15, 0x0

    if-nez v9, :cond_2

    .line 254
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 255
    :cond_2
    iget-boolean v9, v0, Lo/OrderStatusDataJsonAdapter;->updateVisuals:Z

    if-nez v9, :cond_4

    .line 256
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 258
    const-class v11, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v9, v15, v8, v11}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/AbsoluteSizeSpan;

    .line 259
    const-class v12, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v9, v15, v8, v12}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/RelativeSizeSpan;

    .line 260
    array-length v12, v11

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    .line 261
    invoke-virtual {v9, v14}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 263
    :cond_3
    array-length v11, v8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_5

    aget-object v13, v8, v12

    .line 264
    invoke-virtual {v9, v13}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 269
    :cond_4
    iget v9, v0, Lo/OrderStatusDataJsonAdapter;->cancel:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_6

    .line 272
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 273
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    iget v11, v0, Lo/OrderStatusDataJsonAdapter;->cancel:F

    float-to-int v11, v11

    invoke-direct {v8, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 276
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    .line 273
    invoke-virtual {v9, v8, v15, v11, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    move-object v8, v9

    .line 282
    :cond_6
    :goto_2
    iget v9, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsService$Stub$Proxy:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-lez v9, :cond_7

    .line 283
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 284
    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    iget v11, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsService$Stub$Proxy:I

    invoke-direct {v8, v11}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 285
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    .line 284
    invoke-virtual {v9, v8, v15, v11, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v18, v9

    goto :goto_3

    :cond_7
    move-object/from16 v18, v8

    .line 289
    :goto_3
    iget-object v8, v0, Lo/OrderStatusDataJsonAdapter;->onRelationshipValidationResult:Landroid/text/Layout$Alignment;

    if-nez v8, :cond_8

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_8
    move-object/from16 v21, v8

    .line 290
    new-instance v14, Landroid/text/StaticLayout;

    iget-object v10, v0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    iget v13, v0, Lo/OrderStatusDataJsonAdapter;->onNavigationEvent:F

    iget v12, v0, Lo/OrderStatusDataJsonAdapter;->extraCallback:F

    const/16 v17, 0x1

    move-object v8, v14

    move-object/from16 v9, v18

    move v11, v5

    move/from16 v19, v12

    move-object/from16 v12, v21

    move-object v7, v14

    move/from16 v14, v19

    move/from16 v25, v3

    const/4 v3, 0x0

    move/from16 v15, v17

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v7, v0, Lo/OrderStatusDataJsonAdapter;->setDefaultImpl:Landroid/text/StaticLayout;

    .line 292
    invoke-virtual {v7}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 294
    iget-object v8, v0, Lo/OrderStatusDataJsonAdapter;->setDefaultImpl:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v8, :cond_9

    .line 296
    iget-object v10, v0, Lo/OrderStatusDataJsonAdapter;->setDefaultImpl:Landroid/text/StaticLayout;

    invoke-virtual {v10, v15}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 298
    :cond_9
    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->postMessage:F

    const/4 v10, 0x1

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_a

    if-ge v9, v5, :cond_a

    goto :goto_5

    :cond_a
    move v5, v9

    :goto_5
    add-int/2addr v5, v4

    .line 305
    iget v4, v0, Lo/OrderStatusDataJsonAdapter;->warmup:F

    const/4 v8, 0x2

    const/4 v9, 0x1

    cmpl-float v11, v4, v10

    if-eqz v11, :cond_d

    int-to-float v1, v1

    mul-float v1, v1, v4

    .line 306
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, v0, Lo/OrderStatusDataJsonAdapter;->cancelAll:I

    add-int/2addr v1, v4

    .line 307
    iget v4, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsService:I

    if-ne v4, v8, :cond_b

    sub-int/2addr v1, v5

    goto :goto_6

    :cond_b
    if-ne v4, v9, :cond_c

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, v5

    div-int/2addr v1, v8

    .line 310
    :cond_c
    :goto_6
    iget v4, v0, Lo/OrderStatusDataJsonAdapter;->cancelAll:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v5, v1

    .line 311
    iget v4, v0, Lo/OrderStatusDataJsonAdapter;->notify:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_7

    :cond_d
    sub-int/2addr v1, v5

    .line 313
    div-int/2addr v1, v8

    iget v4, v0, Lo/OrderStatusDataJsonAdapter;->cancelAll:I

    add-int/2addr v1, v4

    add-int v4, v1, v5

    :goto_7
    sub-int/2addr v4, v1

    if-gtz v4, :cond_e

    const-string v1, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    .line 319
    invoke-static {v6, v1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 324
    :cond_e
    iget v5, v0, Lo/OrderStatusDataJsonAdapter;->newSession:F

    const/4 v6, 0x1

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_15

    .line 326
    iget v6, v0, Lo/OrderStatusDataJsonAdapter;->getInterfaceDescriptor:I

    if-nez v6, :cond_f

    int-to-float v2, v2

    mul-float v2, v2, v5

    .line 327
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService$Stub$Proxy:I

    :goto_8
    add-int/2addr v2, v3

    goto :goto_9

    .line 330
    :cond_f
    iget-object v2, v0, Lo/OrderStatusDataJsonAdapter;->setDefaultImpl:Landroid/text/StaticLayout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iget-object v5, v0, Lo/OrderStatusDataJsonAdapter;->setDefaultImpl:Landroid/text/StaticLayout;

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 331
    iget v3, v0, Lo/OrderStatusDataJsonAdapter;->newSession:F

    cmpl-float v5, v3, v16

    if-ltz v5, :cond_10

    int-to-float v2, v2

    mul-float v3, v3, v2

    .line 332
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService$Stub$Proxy:I

    goto :goto_8

    :cond_10
    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v3, v5

    int-to-float v2, v2

    mul-float v3, v3, v2

    .line 334
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Lo/OrderStatusDataJsonAdapter;->INotificationSideChannel$Stub$Proxy:I

    goto :goto_8

    .line 337
    :goto_9
    iget v3, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    if-ne v3, v8, :cond_11

    sub-int/2addr v2, v7

    goto :goto_a

    :cond_11
    if-ne v3, v9, :cond_12

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, v7

    div-int/2addr v2, v8

    :cond_12
    :goto_a
    add-int v3, v2, v7

    .line 340
    iget v5, v0, Lo/OrderStatusDataJsonAdapter;->INotificationSideChannel$Stub$Proxy:I

    if-le v3, v5, :cond_13

    sub-int/2addr v5, v7

    goto :goto_b

    .line 342
    :cond_13
    iget v3, v0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService$Stub$Proxy:I

    if-ge v2, v3, :cond_14

    move v2, v3

    :cond_14
    move v5, v2

    goto :goto_b

    .line 346
    :cond_15
    iget v3, v0, Lo/OrderStatusDataJsonAdapter;->INotificationSideChannel$Stub$Proxy:I

    sub-int/2addr v3, v7

    int-to-float v2, v2

    iget v5, v0, Lo/OrderStatusDataJsonAdapter;->INotificationSideChannel:F

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int v5, v3, v2

    .line 350
    :goto_b
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v3, v0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    iget v6, v0, Lo/OrderStatusDataJsonAdapter;->onNavigationEvent:F

    iget v7, v0, Lo/OrderStatusDataJsonAdapter;->extraCallback:F

    const/16 v24, 0x1

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v22, v6

    move/from16 v23, v7

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lo/OrderStatusDataJsonAdapter;->setDefaultImpl:Landroid/text/StaticLayout;

    .line 352
    iput v1, v0, Lo/OrderStatusDataJsonAdapter;->INotificationSideChannel$Default:I

    .line 353
    iput v5, v0, Lo/OrderStatusDataJsonAdapter;->INotificationSideChannel$Stub:I

    move/from16 v1, v25

    .line 354
    iput v1, v0, Lo/OrderStatusDataJsonAdapter;->getDefaultImpl:I

    return-void
.end method

.method private extraCallback(Landroid/graphics/Canvas;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 380
    invoke-direct {p0, p1}, Lo/OrderStatusDataJsonAdapter;->onPostMessage(Landroid/graphics/Canvas;)V

    return-void

    .line 382
    :cond_0
    invoke-direct {p0, p1}, Lo/OrderStatusDataJsonAdapter;->onMessageChannelReady(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private onMessageChannelReady()V
    .locals 7

    .line 358
    iget v0, p0, Lo/OrderStatusDataJsonAdapter;->notify:I

    iget v1, p0, Lo/OrderStatusDataJsonAdapter;->cancelAll:I

    sub-int/2addr v0, v1

    .line 359
    iget v2, p0, Lo/OrderStatusDataJsonAdapter;->INotificationSideChannel$Stub$Proxy:I

    iget v3, p0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService$Stub$Proxy:I

    sub-int/2addr v2, v3

    int-to-float v1, v1

    int-to-float v0, v0

    .line 360
    iget v4, p0, Lo/OrderStatusDataJsonAdapter;->warmup:F

    mul-float v4, v4, v0

    add-float/2addr v1, v4

    int-to-float v3, v3

    int-to-float v2, v2

    .line 361
    iget v4, p0, Lo/OrderStatusDataJsonAdapter;->newSession:F

    mul-float v4, v4, v2

    add-float/2addr v3, v4

    .line 362
    iget v4, p0, Lo/OrderStatusDataJsonAdapter;->postMessage:F

    mul-float v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 363
    iget v4, p0, Lo/OrderStatusDataJsonAdapter;->extraCommand:F

    const/4 v5, 0x1

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :cond_0
    int-to-float v2, v0

    iget-object v4, p0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    .line 364
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 365
    :goto_0
    iget v4, p0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsService:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    int-to-float v4, v0

    :goto_1
    sub-float/2addr v1, v4

    goto :goto_2

    :cond_1
    if-ne v4, v5, :cond_2

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    goto :goto_1

    .line 366
    :cond_2
    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 370
    iget v4, p0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    if-ne v4, v6, :cond_3

    int-to-float v4, v2

    :goto_3
    sub-float/2addr v3, v4

    goto :goto_4

    :cond_3
    if-ne v4, v5, :cond_4

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    goto :goto_3

    .line 371
    :cond_4
    :goto_4
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 375
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v1

    add-int/2addr v2, v3

    invoke-direct {v4, v1, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lo/OrderStatusDataJsonAdapter;->RemoteActionCompatParcelizer:Landroid/graphics/Rect;

    return-void
.end method

.method private onMessageChannelReady(Landroid/graphics/Canvas;)V
    .locals 3

    .line 432
    iget-object v0, p0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lo/OrderStatusDataJsonAdapter;->RemoteActionCompatParcelizer:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 444
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private onPostMessage(Landroid/graphics/Canvas;)V
    .locals 9

    .line 387
    iget-object v0, p0, Lo/OrderStatusDataJsonAdapter;->setDefaultImpl:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 394
    iget v2, p0, Lo/OrderStatusDataJsonAdapter;->INotificationSideChannel$Default:I

    int-to-float v2, v2

    iget v3, p0, Lo/OrderStatusDataJsonAdapter;->INotificationSideChannel$Stub:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 396
    iget v2, p0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 397
    iget-object v2, p0, Lo/OrderStatusDataJsonAdapter;->asBinder:Landroid/graphics/Paint;

    iget v3, p0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    iget v2, p0, Lo/OrderStatusDataJsonAdapter;->getDefaultImpl:I

    neg-int v2, v2

    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    iget v3, p0, Lo/OrderStatusDataJsonAdapter;->getDefaultImpl:I

    add-int/2addr v2, v3

    int-to-float v6, v2

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v7, v2

    iget-object v8, p0, Lo/OrderStatusDataJsonAdapter;->asBinder:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 402
    :cond_1
    iget v2, p0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService$Stub:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 403
    iget-object v2, p0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 404
    iget-object v2, p0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    iget v4, p0, Lo/OrderStatusDataJsonAdapter;->onMessageChannelReady:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 405
    iget-object v2, p0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    iget v4, p0, Lo/OrderStatusDataJsonAdapter;->validateRelationship:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 406
    iget-object v2, p0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 407
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 409
    iget-object v2, p0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    iget v4, p0, Lo/OrderStatusDataJsonAdapter;->onPostMessage:F

    iget v5, p0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsCallback:F

    iget v6, p0, Lo/OrderStatusDataJsonAdapter;->validateRelationship:I

    invoke-virtual {v2, v4, v5, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_2

    :cond_3
    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_8

    .line 412
    :cond_4
    iget v2, p0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService$Stub:I

    if-ne v2, v5, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eqz v4, :cond_6

    const/4 v5, -0x1

    goto :goto_1

    .line 413
    :cond_6
    iget v5, p0, Lo/OrderStatusDataJsonAdapter;->validateRelationship:I

    :goto_1
    if-eqz v4, :cond_7

    .line 414
    iget v2, p0, Lo/OrderStatusDataJsonAdapter;->validateRelationship:I

    .line 415
    :cond_7
    iget v4, p0, Lo/OrderStatusDataJsonAdapter;->onPostMessage:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    .line 416
    iget-object v6, p0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    iget v7, p0, Lo/OrderStatusDataJsonAdapter;->requestPostMessageChannel:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    iget-object v6, p0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 418
    iget-object v6, p0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    iget v7, p0, Lo/OrderStatusDataJsonAdapter;->onPostMessage:F

    neg-float v8, v4

    invoke-virtual {v6, v7, v8, v8, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 419
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 420
    iget-object v5, p0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    iget v6, p0, Lo/OrderStatusDataJsonAdapter;->onPostMessage:F

    invoke-virtual {v5, v6, v4, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 423
    :cond_8
    :goto_2
    iget-object v2, p0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    iget v4, p0, Lo/OrderStatusDataJsonAdapter;->requestPostMessageChannel:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 424
    iget-object v2, p0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 425
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 426
    iget-object v0, p0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 428
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/SimResponseJsonAdapter;ZZLo/SimResponse;FFFLandroid/graphics/Canvas;IIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    .line 161
    iget-object v13, v1, Lo/SimResponseJsonAdapter;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    if-nez v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/high16 v14, -0x1000000

    if-eqz v13, :cond_3

    .line 164
    iget-object v14, v1, Lo/SimResponseJsonAdapter;->extraCallback:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    return-void

    .line 168
    :cond_1
    iget-boolean v14, v1, Lo/SimResponseJsonAdapter;->newSession:Z

    if-eqz v14, :cond_2

    if-eqz v2, :cond_2

    iget v14, v1, Lo/SimResponseJsonAdapter;->ICustomTabsService:I

    goto :goto_1

    :cond_2
    iget v14, v4, Lo/SimResponse;->onMessageChannelReady:I

    .line 171
    :cond_3
    :goto_1
    iget-object v15, v0, Lo/OrderStatusDataJsonAdapter;->asInterface:Ljava/lang/CharSequence;

    iget-object v8, v1, Lo/SimResponseJsonAdapter;->extraCallback:Ljava/lang/CharSequence;

    invoke-static {v15, v8}, Lo/OrderStatusDataJsonAdapter;->onMessageChannelReady(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lo/OrderStatusDataJsonAdapter;->onRelationshipValidationResult:Landroid/text/Layout$Alignment;

    iget-object v15, v1, Lo/SimResponseJsonAdapter;->onPostMessage:Landroid/text/Layout$Alignment;

    .line 172
    invoke-static {v8, v15}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    iget-object v15, v1, Lo/SimResponseJsonAdapter;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    if-ne v8, v15, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->newSession:F

    iget v15, v1, Lo/SimResponseJsonAdapter;->onMessageChannelReady:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->getInterfaceDescriptor:I

    iget v15, v1, Lo/SimResponseJsonAdapter;->ICustomTabsCallback$Stub:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    .line 176
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v15, v1, Lo/SimResponseJsonAdapter;->asInterface:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8, v15}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->warmup:F

    iget v15, v1, Lo/SimResponseJsonAdapter;->onTransact:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsService:I

    .line 178
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v15, v1, Lo/SimResponseJsonAdapter;->onRelationshipValidationResult:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v8, v15}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->postMessage:F

    iget v15, v1, Lo/SimResponseJsonAdapter;->asBinder:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->extraCommand:F

    iget v15, v1, Lo/SimResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:F

    cmpl-float v8, v8, v15

    if-nez v8, :cond_4

    iget-boolean v8, v0, Lo/OrderStatusDataJsonAdapter;->mayLaunchUrl:Z

    if-ne v8, v2, :cond_4

    iget-boolean v8, v0, Lo/OrderStatusDataJsonAdapter;->updateVisuals:Z

    if-ne v8, v3, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->requestPostMessageChannel:I

    iget v15, v4, Lo/SimResponse;->onNavigationEvent:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsService$Stub$Proxy:I

    iget v15, v4, Lo/SimResponse;->extraCallback:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService:I

    if-ne v8, v14, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService$Stub:I

    iget v15, v4, Lo/SimResponse;->onPostMessage:I

    if-ne v8, v15, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->validateRelationship:I

    iget v15, v4, Lo/SimResponse;->asInterface:I

    if-ne v8, v15, :cond_4

    iget-object v8, v0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    .line 188
    invoke-virtual {v8}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    iget-object v15, v4, Lo/SimResponse;->ICustomTabsCallback$Stub:Landroid/graphics/Typeface;

    invoke-static {v8, v15}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsService$Stub:F

    cmpl-float v8, v8, v5

    if-nez v8, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->cancel:F

    cmpl-float v8, v8, v6

    if-nez v8, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->INotificationSideChannel:F

    cmpl-float v8, v8, v7

    if-nez v8, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->cancelAll:I

    if-ne v8, v9, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService$Stub$Proxy:I

    if-ne v8, v10, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->notify:I

    if-ne v8, v11, :cond_4

    iget v8, v0, Lo/OrderStatusDataJsonAdapter;->INotificationSideChannel$Stub$Proxy:I

    if-ne v8, v12, :cond_4

    move-object/from16 v8, p8

    .line 197
    invoke-direct {v0, v8, v13}, Lo/OrderStatusDataJsonAdapter;->extraCallback(Landroid/graphics/Canvas;Z)V

    return-void

    :cond_4
    move-object/from16 v8, p8

    .line 201
    iget-object v15, v1, Lo/SimResponseJsonAdapter;->extraCallback:Ljava/lang/CharSequence;

    iput-object v15, v0, Lo/OrderStatusDataJsonAdapter;->asInterface:Ljava/lang/CharSequence;

    .line 202
    iget-object v15, v1, Lo/SimResponseJsonAdapter;->onPostMessage:Landroid/text/Layout$Alignment;

    iput-object v15, v0, Lo/OrderStatusDataJsonAdapter;->onRelationshipValidationResult:Landroid/text/Layout$Alignment;

    .line 203
    iget-object v15, v1, Lo/SimResponseJsonAdapter;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    iput-object v15, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap;

    .line 204
    iget v15, v1, Lo/SimResponseJsonAdapter;->onMessageChannelReady:F

    iput v15, v0, Lo/OrderStatusDataJsonAdapter;->newSession:F

    .line 205
    iget v15, v1, Lo/SimResponseJsonAdapter;->ICustomTabsCallback$Stub:I

    iput v15, v0, Lo/OrderStatusDataJsonAdapter;->getInterfaceDescriptor:I

    .line 206
    iget v15, v1, Lo/SimResponseJsonAdapter;->asInterface:I

    iput v15, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    .line 207
    iget v15, v1, Lo/SimResponseJsonAdapter;->onTransact:F

    iput v15, v0, Lo/OrderStatusDataJsonAdapter;->warmup:F

    .line 208
    iget v15, v1, Lo/SimResponseJsonAdapter;->onRelationshipValidationResult:I

    iput v15, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsService:I

    .line 209
    iget v15, v1, Lo/SimResponseJsonAdapter;->asBinder:F

    iput v15, v0, Lo/OrderStatusDataJsonAdapter;->postMessage:F

    .line 210
    iget v1, v1, Lo/SimResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:F

    iput v1, v0, Lo/OrderStatusDataJsonAdapter;->extraCommand:F

    .line 211
    iput-boolean v2, v0, Lo/OrderStatusDataJsonAdapter;->mayLaunchUrl:Z

    .line 212
    iput-boolean v3, v0, Lo/OrderStatusDataJsonAdapter;->updateVisuals:Z

    .line 213
    iget v1, v4, Lo/SimResponse;->onNavigationEvent:I

    iput v1, v0, Lo/OrderStatusDataJsonAdapter;->requestPostMessageChannel:I

    .line 214
    iget v1, v4, Lo/SimResponse;->extraCallback:I

    iput v1, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsService$Stub$Proxy:I

    .line 215
    iput v14, v0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService:I

    .line 216
    iget v1, v4, Lo/SimResponse;->onPostMessage:I

    iput v1, v0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService$Stub:I

    .line 217
    iget v1, v4, Lo/SimResponse;->asInterface:I

    iput v1, v0, Lo/OrderStatusDataJsonAdapter;->validateRelationship:I

    .line 218
    iget-object v1, v0, Lo/OrderStatusDataJsonAdapter;->onTransact:Landroid/text/TextPaint;

    iget-object v2, v4, Lo/SimResponse;->ICustomTabsCallback$Stub:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 219
    iput v5, v0, Lo/OrderStatusDataJsonAdapter;->ICustomTabsService$Stub:F

    .line 220
    iput v6, v0, Lo/OrderStatusDataJsonAdapter;->cancel:F

    .line 221
    iput v7, v0, Lo/OrderStatusDataJsonAdapter;->INotificationSideChannel:F

    .line 222
    iput v9, v0, Lo/OrderStatusDataJsonAdapter;->cancelAll:I

    .line 223
    iput v10, v0, Lo/OrderStatusDataJsonAdapter;->IPostMessageService$Stub$Proxy:I

    .line 224
    iput v11, v0, Lo/OrderStatusDataJsonAdapter;->notify:I

    .line 225
    iput v12, v0, Lo/OrderStatusDataJsonAdapter;->INotificationSideChannel$Stub$Proxy:I

    if-eqz v13, :cond_5

    .line 228
    invoke-direct/range {p0 .. p0}, Lo/OrderStatusDataJsonAdapter;->extraCallback()V

    goto :goto_2

    .line 230
    :cond_5
    invoke-direct/range {p0 .. p0}, Lo/OrderStatusDataJsonAdapter;->onMessageChannelReady()V

    .line 232
    :goto_2
    invoke-direct {v0, v8, v13}, Lo/OrderStatusDataJsonAdapter;->extraCallback(Landroid/graphics/Canvas;Z)V

    return-void
.end method
