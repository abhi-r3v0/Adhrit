.class public final Lin/juspay/widget/qrscanner/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final zxing_camera_preview:[I

.field public static final zxing_camera_preview_zxing_framing_rect_height:I = 0x0

.field public static final zxing_camera_preview_zxing_framing_rect_width:I = 0x1

.field public static final zxing_camera_preview_zxing_preview_scaling_strategy:I = 0x2

.field public static final zxing_camera_preview_zxing_use_texture_view:I = 0x3

.field public static final zxing_finder:[I

.field public static final zxing_finder_zxing_possible_result_points:I = 0x0

.field public static final zxing_finder_zxing_result_view:I = 0x1

.field public static final zxing_finder_zxing_viewfinder_laser:I = 0x2

.field public static final zxing_finder_zxing_viewfinder_mask:I = 0x3

.field public static final zxing_view:[I

.field public static final zxing_view_zxing_scanner_layout:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lin/juspay/widget/qrscanner/R$styleable;->zxing_camera_preview:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lin/juspay/widget/qrscanner/R$styleable;->zxing_finder:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f04047f

    aput v2, v0, v1

    sput-object v0, Lin/juspay/widget/qrscanner/R$styleable;->zxing_view:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04047a
        0x7f04047b
        0x7f04047d
        0x7f040480
    .end array-data

    :array_1
    .array-data 4
        0x7f04047c
        0x7f04047e
        0x7f040481
        0x7f040482
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
