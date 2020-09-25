.class public final Lo/MetadataJsonAdapter;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lo/DataCampaignJsonAdapter;


# instance fields
.field public ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:I

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

.field private final ICustomTabsService:Landroid/graphics/Matrix;

.field private ICustomTabsService$Stub$Proxy:J

.field public asBinder:Ljava/lang/String;

.field public asInterface:I

.field public extraCallback:Ljava/lang/String;

.field private extraCommand:I

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:I

.field private final newSession:Landroid/graphics/Paint;

.field public onMessageChannelReady:I

.field public onNavigationEvent:I

.field public onPostMessage:Lo/setFailureListener$extraCallback;

.field private onRelationshipValidationResult:I

.field private onTransact:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postMessage:I

.field private requestPostMessageChannel:I

.field private updateVisuals:I

.field private final warmup:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/MetadataJsonAdapter;->onTransact:Ljava/util/HashMap;

    const/16 v0, 0x50

    .line 74
    iput v0, p0, Lo/MetadataJsonAdapter;->getInterfaceDescriptor:I

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/MetadataJsonAdapter;->ICustomTabsService:Landroid/graphics/Matrix;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/MetadataJsonAdapter;->warmup:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/MetadataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lo/MetadataJsonAdapter;->asInterface:I

    .line 94
    invoke-virtual {p0}, Lo/MetadataJsonAdapter;->onMessageChannelReady()V

    return-void
.end method

.method private onMessageChannelReady(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 280
    iget-object v0, p0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 281
    iget-object v1, p0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 285
    iget-object v2, p0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    const/high16 v3, 0x66000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    iget v2, p0, Lo/MetadataJsonAdapter;->postMessage:I

    add-int/lit8 v3, v2, -0x4

    int-to-float v5, v3

    iget v3, p0, Lo/MetadataJsonAdapter;->mayLaunchUrl:I

    add-int/lit8 v4, v3, 0x8

    int-to-float v6, v4

    int-to-float v2, v2

    add-float/2addr v2, v0

    add-float/2addr v2, v1

    const/high16 v1, 0x40800000    # 4.0f

    add-float v7, v2, v1

    iget v1, p0, Lo/MetadataJsonAdapter;->extraCommand:I

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x8

    int-to-float v8, v3

    iget-object v9, p0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 293
    iget-object v1, p0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    iget v1, p0, Lo/MetadataJsonAdapter;->postMessage:I

    int-to-float v1, v1

    iget v2, p0, Lo/MetadataJsonAdapter;->mayLaunchUrl:I

    int-to-float v2, v2

    iget-object v3, p0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 295
    iget-object p2, p0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget p2, p0, Lo/MetadataJsonAdapter;->postMessage:I

    int-to-float p2, p2

    add-float/2addr p2, v0

    iget p4, p0, Lo/MetadataJsonAdapter;->mayLaunchUrl:I

    int-to-float p4, p4

    iget-object v0, p0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 298
    iget p1, p0, Lo/MetadataJsonAdapter;->mayLaunchUrl:I

    iget p2, p0, Lo/MetadataJsonAdapter;->extraCommand:I

    add-int/2addr p1, p2

    iput p1, p0, Lo/MetadataJsonAdapter;->mayLaunchUrl:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 189
    iget-object v1, v0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    iget-object v1, v0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    iget-object v1, v0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    const/16 v2, -0x6800

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v8, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    iget-object v6, v0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 195
    iget-object v1, v0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    iget-object v1, v0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v8, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    iget-object v6, v0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 200
    iget-object v1, v0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    iget-object v1, v0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    iget-object v1, v0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    iget v1, v0, Lo/MetadataJsonAdapter;->requestPostMessageChannel:I

    iput v1, v0, Lo/MetadataJsonAdapter;->postMessage:I

    .line 205
    iget v1, v0, Lo/MetadataJsonAdapter;->updateVisuals:I

    iput v1, v0, Lo/MetadataJsonAdapter;->mayLaunchUrl:I

    .line 210
    iget-object v1, v0, Lo/MetadataJsonAdapter;->extraCallback:Ljava/lang/String;

    const-string v4, "ID"

    .line 1275
    invoke-direct {v0, v7, v4, v1, v3}, Lo/MetadataJsonAdapter;->onMessageChannelReady(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    .line 212
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 2267
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%dx%d"

    invoke-static {v5, v8, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "D"

    .line 2275
    invoke-direct {v0, v7, v5, v4, v3}, Lo/MetadataJsonAdapter;->onMessageChannelReady(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    iget v4, v0, Lo/MetadataJsonAdapter;->onMessageChannelReady:I

    iget v5, v0, Lo/MetadataJsonAdapter;->ICustomTabsCallback:I

    iget-object v10, v0, Lo/MetadataJsonAdapter;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 2303
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 2304
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v14

    const/high16 v17, -0x10000

    if-lez v15, :cond_3

    if-lez v14, :cond_3

    if-lez v4, :cond_3

    if-gtz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz v10, :cond_1

    .line 2315
    iget-object v11, v0, Lo/MetadataJsonAdapter;->warmup:Landroid/graphics/Rect;

    iput v9, v11, Landroid/graphics/Rect;->top:I

    iput v9, v11, Landroid/graphics/Rect;->left:I

    .line 2316
    iget-object v11, v0, Lo/MetadataJsonAdapter;->warmup:Landroid/graphics/Rect;

    iput v15, v11, Landroid/graphics/Rect;->right:I

    .line 2317
    iget-object v11, v0, Lo/MetadataJsonAdapter;->warmup:Landroid/graphics/Rect;

    iput v14, v11, Landroid/graphics/Rect;->bottom:I

    .line 2319
    iget-object v11, v0, Lo/MetadataJsonAdapter;->ICustomTabsService:Landroid/graphics/Matrix;

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    .line 2322
    iget-object v11, v0, Lo/MetadataJsonAdapter;->ICustomTabsService:Landroid/graphics/Matrix;

    iget-object v12, v0, Lo/MetadataJsonAdapter;->warmup:Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move v13, v4

    move v3, v14

    move v14, v5

    move v6, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-interface/range {v10 .. v16}, Lo/setFailureListener$extraCallback;->ICustomTabsCallback(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;

    .line 2324
    iget-object v10, v0, Lo/MetadataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

    iput v2, v10, Landroid/graphics/RectF;->top:F

    iput v2, v10, Landroid/graphics/RectF;->left:F

    .line 2325
    iget-object v2, v0, Lo/MetadataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

    int-to-float v10, v4

    iput v10, v2, Landroid/graphics/RectF;->right:F

    .line 2326
    iget-object v2, v0, Lo/MetadataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

    int-to-float v10, v5

    iput v10, v2, Landroid/graphics/RectF;->bottom:F

    .line 2328
    iget-object v2, v0, Lo/MetadataJsonAdapter;->ICustomTabsService:Landroid/graphics/Matrix;

    iget-object v10, v0, Lo/MetadataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

    invoke-virtual {v2, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2330
    iget-object v2, v0, Lo/MetadataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    .line 2331
    iget-object v10, v0, Lo/MetadataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    float-to-int v10, v10

    .line 2333
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 2334
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_0

    :cond_1
    move v3, v14

    move v6, v15

    :goto_0
    int-to-float v2, v15

    const v3, 0x3dcccccd    # 0.1f

    mul-float v6, v2, v3

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v2, v2, v10

    int-to-float v11, v14

    mul-float v3, v3, v11

    mul-float v11, v11, v10

    sub-int/2addr v4, v15

    .line 2344
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v5, v14

    .line 2345
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v4, v4

    cmpg-float v6, v4, v6

    if-gez v6, :cond_2

    int-to-float v6, v5

    cmpg-float v3, v6, v3

    if-gez v3, :cond_2

    const v17, -0xff0100

    const v2, -0xff0100

    goto :goto_2

    :cond_2
    cmpg-float v2, v4, v2

    if-gez v2, :cond_3

    int-to-float v2, v5

    cmpg-float v2, v2, v11

    if-gez v2, :cond_3

    const/16 v17, -0x100

    const/16 v2, -0x100

    goto :goto_2

    :cond_3
    :goto_1
    const/high16 v2, -0x10000

    :goto_2
    new-array v3, v1, [Ljava/lang/Object;

    .line 216
    iget v4, v0, Lo/MetadataJsonAdapter;->onMessageChannelReady:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    iget v4, v0, Lo/MetadataJsonAdapter;->ICustomTabsCallback:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 3267
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "I"

    .line 216
    invoke-direct {v0, v7, v4, v3, v2}, Lo/MetadataJsonAdapter;->onMessageChannelReady(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;I)V

    new-array v2, v5, [Ljava/lang/Object;

    .line 218
    iget v3, v0, Lo/MetadataJsonAdapter;->onNavigationEvent:I

    div-int/lit16 v3, v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    .line 4267
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d KiB"

    invoke-static {v3, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    .line 4275
    invoke-direct {v0, v7, v4, v2, v3}, Lo/MetadataJsonAdapter;->onMessageChannelReady(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    iget v2, v0, Lo/MetadataJsonAdapter;->ICustomTabsCallback$Stub:I

    if-lez v2, :cond_4

    new-array v1, v1, [Ljava/lang/Object;

    .line 223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    iget v2, v0, Lo/MetadataJsonAdapter;->onRelationshipValidationResult:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 5267
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "f %d, l %d"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "anim"

    const/4 v3, -0x1

    .line 5275
    invoke-direct {v0, v7, v2, v1, v3}, Lo/MetadataJsonAdapter;->onMessageChannelReady(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    const/4 v3, -0x1

    .line 225
    :goto_3
    iget-object v1, v0, Lo/MetadataJsonAdapter;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eqz v1, :cond_5

    .line 6271
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "scale"

    invoke-direct {v0, v7, v2, v1, v3}, Lo/MetadataJsonAdapter;->onMessageChannelReady(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    :cond_5
    iget-wide v1, v0, Lo/MetadataJsonAdapter;->ICustomTabsService$Stub$Proxy:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 229
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v9

    .line 7267
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d ms"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "t"

    const/4 v3, -0x1

    .line 7275
    invoke-direct {v0, v7, v2, v1, v3}, Lo/MetadataJsonAdapter;->onMessageChannelReady(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    :cond_6
    iget-object v1, v0, Lo/MetadataJsonAdapter;->asBinder:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 232
    iget v2, v0, Lo/MetadataJsonAdapter;->asInterface:I

    const-string v3, "origin"

    invoke-direct {v0, v7, v3, v1, v2}, Lo/MetadataJsonAdapter;->onMessageChannelReady(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;I)V

    .line 234
    :cond_7
    iget-object v1, v0, Lo/MetadataJsonAdapter;->onTransact:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, -0x1

    .line 8275
    invoke-direct {v0, v7, v3, v2, v4}, Lo/MetadataJsonAdapter;->onMessageChannelReady(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    :cond_8
    return-void
.end method

.method public final extraCallback(J)V
    .locals 0

    .line 364
    iput-wide p1, p0, Lo/MetadataJsonAdapter;->ICustomTabsService$Stub$Proxy:J

    .line 365
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 176
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 1251
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0xa

    .line 1252
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0x28

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1253
    iget-object v2, p0, Lo/MetadataJsonAdapter;->newSession:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    add-int/lit8 v0, v0, 0x8

    .line 1255
    iput v0, p0, Lo/MetadataJsonAdapter;->extraCommand:I

    .line 1256
    iget v2, p0, Lo/MetadataJsonAdapter;->getInterfaceDescriptor:I

    const/16 v3, 0x50

    if-ne v2, v3, :cond_0

    neg-int v0, v0

    .line 1257
    iput v0, p0, Lo/MetadataJsonAdapter;->extraCommand:I

    .line 1259
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/MetadataJsonAdapter;->requestPostMessageChannel:I

    .line 1260
    iget v0, p0, Lo/MetadataJsonAdapter;->getInterfaceDescriptor:I

    if-ne v0, v3, :cond_1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    add-int/2addr p1, v1

    :goto_0
    iput p1, p0, Lo/MetadataJsonAdapter;->updateVisuals:I

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 3

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lo/MetadataJsonAdapter;->onMessageChannelReady:I

    .line 99
    iput v0, p0, Lo/MetadataJsonAdapter;->ICustomTabsCallback:I

    .line 100
    iput v0, p0, Lo/MetadataJsonAdapter;->onNavigationEvent:I

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lo/MetadataJsonAdapter;->onTransact:Ljava/util/HashMap;

    .line 102
    iput v0, p0, Lo/MetadataJsonAdapter;->ICustomTabsCallback$Stub:I

    .line 103
    iput v0, p0, Lo/MetadataJsonAdapter;->onRelationshipValidationResult:I

    const-string v1, "none"

    .line 1125
    iput-object v1, p0, Lo/MetadataJsonAdapter;->extraCallback:Ljava/lang/String;

    .line 1126
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const-wide/16 v1, -0x1

    .line 106
    iput-wide v1, p0, Lo/MetadataJsonAdapter;->ICustomTabsService$Stub$Proxy:J

    const/4 v1, 0x0

    .line 107
    iput-object v1, p0, Lo/MetadataJsonAdapter;->asBinder:Ljava/lang/String;

    .line 108
    iput v0, p0, Lo/MetadataJsonAdapter;->asInterface:I

    .line 109
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
