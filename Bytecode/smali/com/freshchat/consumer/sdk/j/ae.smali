.class public Lcom/freshchat/consumer/sdk/j/ae;
.super Ljava/lang/Object;


# instance fields
.field private final iw:I

.field private final ix:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/freshchat/consumer/sdk/j/ae;->iw:I

    int-to-float p1, p1

    const v0, 0x3f266666    # 0.65f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/freshchat/consumer/sdk/j/ae;->ix:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(II)Landroid/graphics/Point;
    .locals 2

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    if-eqz v0, :cond_1

    iget p2, p0, Lcom/freshchat/consumer/sdk/j/ae;->ix:I

    int-to-float v0, p2

    mul-float v0, v0, p1

    float-to-int v0, v0

    iget v1, p0, Lcom/freshchat/consumer/sdk/j/ae;->iw:I

    if-le v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/freshchat/consumer/sdk/j/ae;->iw:I

    int-to-float p2, v0

    div-float/2addr p2, p1

    float-to-int p2, p2

    :cond_2
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput v0, p1, Landroid/graphics/Point;->x:I

    iput p2, p1, Landroid/graphics/Point;->y:I

    return-object p1
.end method
