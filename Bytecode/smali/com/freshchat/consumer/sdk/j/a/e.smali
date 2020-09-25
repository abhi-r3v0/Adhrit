.class public Lcom/freshchat/consumer/sdk/j/a/e;
.super Lcom/freshchat/consumer/sdk/j/a/f;


# instance fields
.field protected ka:I

.field protected kb:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/freshchat/consumer/sdk/j/a/e;->A(I)V

    return-void
.end method

.method private B(I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "processBitmap - "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageResizer"

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kj:Landroid/content/res/Resources;

    iget v1, p0, Lcom/freshchat/consumer/sdk/j/a/e;->ka:I

    iget v2, p0, Lcom/freshchat/consumer/sdk/j/a/e;->kb:I

    invoke-static {v0, p1, v1, v2}, Lcom/freshchat/consumer/sdk/j/a/e;->a(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_0

    if-le p0, p1, :cond_2

    :cond_0
    if-le p0, v0, :cond_1

    int-to-float v2, v0

    int-to-float v3, p2

    goto :goto_0

    :cond_1
    int-to-float v2, p0

    int-to-float v3, p1

    :goto_0
    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int p0, p0, v0

    int-to-float p0, p0

    mul-int p1, p1, p2

    shl-int/2addr p1, v1

    int-to-float p1, p1

    move v1, v2

    :goto_1
    mul-int p2, v1, v1

    int-to-float p2, p2

    div-float p2, p0, p2

    cmpl-float p2, p2, p1

    if-lez p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public static a(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p2, p3}, Lcom/freshchat/consumer/sdk/j/a/e;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 6

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/a/e;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v5, 0x800

    if-gt v2, p2, :cond_0

    if-le v3, p1, :cond_2

    :cond_0
    const/high16 p1, 0x45000000    # 2048.0f

    if-le v3, v2, :cond_1

    if-ge v5, v3, :cond_2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    int-to-float p2, v2

    int-to-float v2, v3

    div-float/2addr p1, v2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v3, 0x800

    goto :goto_0

    :cond_1
    if-ge v5, v2, :cond_2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    int-to-float p2, v3

    int-to-float v2, v2

    div-float/2addr p1, v2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/16 v2, 0x800

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0, v3, v2, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_3
    return-object p0
.end method


# virtual methods
.method public A(I)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/freshchat/consumer/sdk/j/a/e;->c(II)V

    return-void
.end method

.method public c(II)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/j/a/e;->ka:I

    iput p2, p0, Lcom/freshchat/consumer/sdk/j/a/e;->kb:I

    return-void
.end method

.method protected d(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/e;->B(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
