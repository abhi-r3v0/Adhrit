.class final Lo/setFailureListener$newSession;
.super Lo/setFailureListener$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setFailureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "newSession"
.end annotation


# static fields
.field public static final extraCallback:Lo/setFailureListener$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 463
    new-instance v0, Lo/setFailureListener$newSession;

    invoke-direct {v0}, Lo/setFailureListener$newSession;-><init>()V

    sput-object v0, Lo/setFailureListener$newSession;->extraCallback:Lo/setFailureListener$extraCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 461
    invoke-direct {p0}, Lo/setFailureListener$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 0

    .line 477
    iget p4, p2, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    int-to-float p3, p3

    mul-float p3, p3, p8

    sub-float/2addr p5, p3

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p5, p5, p3

    add-float/2addr p4, p5

    .line 478
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 479
    invoke-virtual {p1, p8, p8}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr p4, p3

    float-to-int p4, p4

    int-to-float p4, p4

    add-float/2addr p2, p3

    float-to-int p2, p2

    int-to-float p2, p2

    .line 480
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "fit_y"

    return-object v0
.end method
