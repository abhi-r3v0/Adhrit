.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;
.super Landroid/view/View;
.source ""


# static fields
.field protected static final a:Ljava/lang/String;

.field protected static final b:[I


# instance fields
.field protected final c:Landroid/graphics/Paint;

.field protected d:Landroid/graphics/Bitmap;

.field protected final e:I

.field protected final f:I

.field protected final g:I

.field protected final h:I

.field protected i:I

.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

.field protected m:Landroid/graphics/Rect;

.field protected n:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->a:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->b:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lin/juspay/widget/qrscanner/R$styleable;->zxing_finder:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 81
    sget v0, Lin/juspay/widget/qrscanner/R$styleable;->zxing_finder_zxing_viewfinder_mask:I

    sget v1, Lin/juspay/widget/qrscanner/R$color;->zxing_viewfinder_mask:I

    .line 82
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 81
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->e:I

    .line 83
    sget v0, Lin/juspay/widget/qrscanner/R$styleable;->zxing_finder_zxing_result_view:I

    sget v1, Lin/juspay/widget/qrscanner/R$color;->zxing_result_view:I

    .line 84
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 83
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->f:I

    .line 85
    sget v0, Lin/juspay/widget/qrscanner/R$styleable;->zxing_finder_zxing_viewfinder_laser:I

    sget v1, Lin/juspay/widget/qrscanner/R$color;->zxing_viewfinder_laser:I

    .line 86
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 85
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->g:I

    .line 87
    sget v0, Lin/juspay/widget/qrscanner/R$styleable;->zxing_finder_zxing_possible_result_points:I

    sget v1, Lin/juspay/widget/qrscanner/R$color;->zxing_possible_result_points:I

    .line 88
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 87
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->h:I

    .line 90
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    .line 92
    iput p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->i:I

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->j:Ljava/util/List;

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 124
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->l:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->l:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    invoke-virtual {v1}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->getPreviewFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 130
    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->m:Landroid/graphics/Rect;

    .line 131
    iput-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->n:Landroid/graphics/Rect;

    :cond_1
    return-void
.end method

.method public a(Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->j:Ljava/util/List;

    .line 236
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_0

    const/4 v1, 0x0

    add-int/lit8 p1, p1, -0xa

    .line 240
    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 138
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->a()V

    .line 139
    iget-object v7, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->m:Landroid/graphics/Rect;

    if-eqz v7, :cond_6

    iget-object v8, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->n:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    goto/16 :goto_4

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    .line 150
    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->f:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->e:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v10, v0

    .line 151
    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 152
    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 154
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v4, v9

    iget-object v5, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->d:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    const/16 v10, 0xa0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 159
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 163
    :cond_2
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    sget-object v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->b:[I

    iget v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->i:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 165
    iget v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->i:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->b:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->i:I

    .line 166
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 167
    iget v1, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    iget v3, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 169
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 170
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 172
    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->j:Ljava/util/List;

    .line 173
    iget-object v3, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->k:Ljava/util/List;

    .line 174
    iget v4, v7, Landroid/graphics/Rect;->left:I

    .line 175
    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 176
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 177
    iput-object v9, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->k:Ljava/util/List;

    goto :goto_2

    .line 179
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->j:Ljava/util/List;

    .line 180
    iput-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->k:Ljava/util/List;

    .line 181
    iget-object v8, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 182
    iget-object v8, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    iget v9, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->h:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;

    .line 184
    invoke-virtual {v8}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->getX()F

    move-result v9

    mul-float v9, v9, v0

    float-to-int v9, v9

    add-int/2addr v9, v4

    int-to-float v9, v9

    .line 185
    invoke-virtual {v8}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->getY()F

    move-result v8

    mul-float v8, v8, v1

    float-to-int v8, v8

    add-int/2addr v8, v5

    int-to-float v8, v8

    const/high16 v10, 0x40c00000    # 6.0f

    iget-object v11, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 184
    invoke-virtual {p1, v9, v8, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 190
    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    const/16 v8, 0x50

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 191
    iget-object v2, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    iget v8, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->h:I

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;

    .line 194
    invoke-virtual {v3}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->getX()F

    move-result v8

    mul-float v8, v8, v0

    float-to-int v8, v8

    add-int/2addr v8, v4

    int-to-float v8, v8

    .line 195
    invoke-virtual {v3}, Lin/juspay/widget/qrscanner/com/google/zxing/ResultPoint;->getY()F

    move-result v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    add-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v9, 0x40400000    # 3.0f

    iget-object v10, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 194
    invoke-virtual {p1, v8, v3, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    const-wide/16 v1, 0x50

    .line 202
    iget v0, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v0, -0x6

    iget v0, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v0, -0x6

    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v0, 0x6

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v0, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    :cond_6
    :goto_4
    return-void
.end method

.method public setCameraPreview(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;)V
    .locals 1

    .line 98
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;->l:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;

    .line 99
    new-instance v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView$1;

    invoke-direct {v0, p0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView$1;-><init>(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/ViewfinderView;)V

    invoke-virtual {p1, v0}, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview;->a(Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/CameraPreview$StateListener;)V

    return-void
.end method
