.class public Lcom/facebook/imagepipeline/nativecode/NativeRoundingFilter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lo/getGroupName;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-filters"

    .line 3016
    invoke-static {v0}, Lo/AppsFlyerLibCore$3;->onMessageChannelReady(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeAddRoundedCornersFilter(Landroid/graphics/Bitmap;IIII)V
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private static native nativeToCircleFastFilter(Landroid/graphics/Bitmap;Z)V
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private static native nativeToCircleFilter(Landroid/graphics/Bitmap;Z)V
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private static native nativeToCircleWithBorderFilter(Landroid/graphics/Bitmap;IIZ)V
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method public static toCircle(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .annotation build Lo/getGroupName;
    .end annotation

    if-eqz p0, :cond_0

    .line 52
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/nativecode/NativeRoundingFilter;->nativeToCircleFilter(Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1215
    throw p0
.end method

.method public static toCircleFast(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .annotation build Lo/getGroupName;
    .end annotation

    if-eqz p0, :cond_0

    .line 58
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/nativecode/NativeRoundingFilter;->nativeToCircleFastFilter(Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 2215
    throw p0
.end method
