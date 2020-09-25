.class final Lo/onRequestPermissionsResult$extraCallback;
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
.field public static final onMessageChannelReady:Lo/onRequestPermissionsResult$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/onRequestPermissionsResult$extraCallback;

    invoke-direct {v0}, Lo/onRequestPermissionsResult$extraCallback;-><init>()V

    sput-object v0, Lo/onRequestPermissionsResult$extraCallback;->onMessageChannelReady:Lo/onRequestPermissionsResult$extraCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;
    .locals 0

    .line 36
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    int-to-float p4, p4

    div-float/2addr p3, p4

    .line 40
    iget p4, p2, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    .line 41
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 44
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p4, p3

    add-float/2addr p2, p3

    .line 45
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p1
.end method
