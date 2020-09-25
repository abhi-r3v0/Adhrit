.class final Lo/onRequestPermissionsResult$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setFailureListener$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRequestPermissionsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0004\u001a\n \u0002*\u0004\u0018\u00010\u00050\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\n\u00a2\u0006\u0002\u0008\u000c"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Matrix;",
        "kotlin.jvm.PlatformType",
        "outTransform",
        "viewBounds",
        "Landroid/graphics/Rect;",
        "imageWidth",
        "",
        "imageHeight",
        "focusX",
        "",
        "focusY",
        "getTransform"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/onRequestPermissionsResult$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/onRequestPermissionsResult$onMessageChannelReady;

    invoke-direct {v0}, Lo/onRequestPermissionsResult$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/onRequestPermissionsResult$onMessageChannelReady;->ICustomTabsCallback:Lo/onRequestPermissionsResult$onMessageChannelReady;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;
    .locals 1

    .line 93
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p5

    int-to-float p5, p5

    int-to-float p4, p4

    div-float/2addr p5, p4

    int-to-float p3, p3

    mul-float p4, p3, p5

    .line 100
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p6

    int-to-float p6, p6

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p6, p4, p6

    if-gtz p6, :cond_0

    .line 101
    iget p3, p2, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    sub-float/2addr p3, p4

    .line 102
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 105
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr p3, v0

    add-float/2addr p2, v0

    .line 106
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, p3

    .line 113
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    .line 114
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 117
    invoke-virtual {p1, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr p3, v0

    add-float/2addr p2, v0

    .line 118
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    return-object p1
.end method
