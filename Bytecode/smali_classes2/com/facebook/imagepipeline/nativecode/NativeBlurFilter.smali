.class public Lcom/facebook/imagepipeline/nativecode/NativeBlurFilter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lo/getGroupName;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-filters"

    .line 1016
    invoke-static {v0}, Lo/AppsFlyerLibCore$3;->onMessageChannelReady(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeIterativeBoxBlur(Landroid/graphics/Bitmap;II)V
    .annotation build Lo/getGroupName;
    .end annotation
.end method
