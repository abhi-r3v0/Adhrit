.class final Lo/setFailureListener$ICustomTabsCallback$Stub;
.super Lo/setFailureListener$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setFailureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stub"
.end annotation


# static fields
.field public static final extraCallback:Lo/setFailureListener$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 435
    new-instance v0, Lo/setFailureListener$ICustomTabsCallback$Stub;

    invoke-direct {v0}, Lo/setFailureListener$ICustomTabsCallback$Stub;-><init>()V

    sput-object v0, Lo/setFailureListener$ICustomTabsCallback$Stub;->extraCallback:Lo/setFailureListener$extraCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Lo/setFailureListener$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 0

    .line 449
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    .line 450
    iget p5, p2, Landroid/graphics/Rect;->top:I

    int-to-float p5, p5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p4, p4

    mul-float p4, p4, p7

    sub-float/2addr p2, p4

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float p2, p2, p4

    add-float/2addr p5, p2

    .line 451
    invoke-virtual {p1, p7, p7}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr p3, p4

    float-to-int p2, p3

    int-to-float p2, p2

    add-float/2addr p5, p4

    float-to-int p3, p5

    int-to-float p3, p3

    .line 452
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "fit_x"

    return-object v0
.end method
