.class final Lo/setFailureListener$ICustomTabsCallback$Stub$Proxy;
.super Lo/setFailureListener$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setFailureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/setFailureListener$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 179
    new-instance v0, Lo/setFailureListener$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v0}, Lo/setFailureListener$ICustomTabsCallback$Stub$Proxy;-><init>()V

    sput-object v0, Lo/setFailureListener$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/setFailureListener$extraCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Lo/setFailureListener$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 0

    .line 191
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    .line 192
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    .line 193
    invoke-virtual {p1, p7, p8}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 p4, 0x3f000000    # 0.5f

    add-float/2addr p3, p4

    float-to-int p3, p3

    int-to-float p3, p3

    add-float/2addr p2, p4

    float-to-int p2, p2

    int-to-float p2, p2

    .line 194
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "fit_xy"

    return-object v0
.end method
