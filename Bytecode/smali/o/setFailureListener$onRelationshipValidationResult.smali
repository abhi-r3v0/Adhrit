.class final Lo/setFailureListener$onRelationshipValidationResult;
.super Lo/setFailureListener$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setFailureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onRelationshipValidationResult"
.end annotation


# static fields
.field public static final extraCallback:Lo/setFailureListener$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Lo/setFailureListener$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/setFailureListener$onRelationshipValidationResult;-><init>()V

    sput-object v0, Lo/setFailureListener$onRelationshipValidationResult;->extraCallback:Lo/setFailureListener$extraCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Lo/setFailureListener$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 0

    .line 217
    invoke-static {p7, p8}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 218
    iget p4, p2, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    .line 219
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 220
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p4, p3

    float-to-int p4, p4

    int-to-float p4, p4

    add-float/2addr p2, p3

    float-to-int p2, p2

    int-to-float p2, p2

    .line 221
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "fit_start"

    return-object v0
.end method
