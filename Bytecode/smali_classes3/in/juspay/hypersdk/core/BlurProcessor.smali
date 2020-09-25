.class public Lin/juspay/hypersdk/core/BlurProcessor;
.super Ljava/lang/Object;


# static fields
.field private static final IS_BLUR_SUPPORTED:Z


# instance fields
.field activity:Landroid/app/Activity;

.field allocBlurred:Landroid/renderscript/Allocation;

.field allocOriginalScreenshot:Landroid/renderscript/Allocation;

.field mRS:Landroid/renderscript/RenderScript;

.field scriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

.field surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field textureViewBlurred:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lin/juspay/hypersdk/core/BlurProcessor;->IS_BLUR_SUPPORTED:Z

    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;ILandroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->activity:Landroid/app/Activity;

    new-instance v0, Lin/juspay/hypersdk/core/BlurProcessor$1;

    invoke-direct {v0, p0}, Lin/juspay/hypersdk/core/BlurProcessor$1;-><init>(Lin/juspay/hypersdk/core/BlurProcessor;)V

    iput-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    sget-boolean v0, Lin/juspay/hypersdk/core/BlurProcessor;->IS_BLUR_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lin/juspay/hypersdk/core/BlurProcessor;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {p1}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/core/BlurProcessor;->scriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    iput-object p3, p0, Lin/juspay/hypersdk/core/BlurProcessor;->activity:Landroid/app/Activity;

    return-void
.end method

.method static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method


# virtual methods
.method blurView(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_4

    iget-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    sget-boolean v0, Lin/juspay/hypersdk/core/BlurProcessor;->IS_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lin/juspay/hypersdk/core/BlurProcessor;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->allocOriginalScreenshot:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->allocOriginalScreenshot:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->allocOriginalScreenshot:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iget-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->allocBlurred:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->textureViewBlurred:Landroid/view/TextureView;

    iput-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->allocOriginalScreenshot:Landroid/renderscript/Allocation;

    iput-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->allocBlurred:Landroid/renderscript/Allocation;

    :cond_2
    iget-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->allocOriginalScreenshot:Landroid/renderscript/Allocation;

    if-nez v0, :cond_3

    iget-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/core/BlurProcessor;->allocOriginalScreenshot:Landroid/renderscript/Allocation;

    iget-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object p1

    const/16 v1, 0x41

    invoke-static {v0, p1, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/core/BlurProcessor;->allocBlurred:Landroid/renderscript/Allocation;

    new-instance p1, Landroid/view/TextureView;

    iget-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lin/juspay/hypersdk/core/BlurProcessor;->textureViewBlurred:Landroid/view/TextureView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object p1, p0, Lin/juspay/hypersdk/core/BlurProcessor;->textureViewBlurred:Landroid/view/TextureView;

    iget-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object p1, p0, Lin/juspay/hypersdk/core/BlurProcessor;->textureViewBlurred:Landroid/view/TextureView;

    invoke-virtual {p0, p2, p1}, Lin/juspay/hypersdk/core/BlurProcessor;->replaceView(Landroid/view/View;Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void
.end method

.method executeBlur()V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->scriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lin/juspay/hypersdk/core/BlurProcessor;->allocOriginalScreenshot:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    iget-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->scriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lin/juspay/hypersdk/core/BlurProcessor;->allocBlurred:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    iget-object v0, p0, Lin/juspay/hypersdk/core/BlurProcessor;->allocBlurred:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->ioSend()V

    return-void
.end method

.method replaceView(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method
