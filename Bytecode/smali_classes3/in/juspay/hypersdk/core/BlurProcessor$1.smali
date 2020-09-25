.class Lin/juspay/hypersdk/core/BlurProcessor$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/hypersdk/core/BlurProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/BlurProcessor;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/BlurProcessor;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/BlurProcessor$1;->this$0:Lin/juspay/hypersdk/core/BlurProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p2, p0, Lin/juspay/hypersdk/core/BlurProcessor$1;->this$0:Lin/juspay/hypersdk/core/BlurProcessor;

    iget-object p2, p2, Lin/juspay/hypersdk/core/BlurProcessor;->allocBlurred:Landroid/renderscript/Allocation;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, p3}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lin/juspay/hypersdk/core/BlurProcessor$1;->this$0:Lin/juspay/hypersdk/core/BlurProcessor;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/BlurProcessor;->executeBlur()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
