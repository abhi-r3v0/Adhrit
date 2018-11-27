.class Landroid/support/transition/ObjectAnimatorUtils;
.super Ljava/lang/Object;
.source "ObjectAnimatorUtils.java"


# static fields
.field private static final IMPL:Landroid/support/transition/ObjectAnimatorUtilsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 31
    new-instance v0, Landroid/support/transition/ObjectAnimatorUtilsApi21;

    invoke-direct {v0}, Landroid/support/transition/ObjectAnimatorUtilsApi21;-><init>()V

    sput-object v0, Landroid/support/transition/ObjectAnimatorUtils;->IMPL:Landroid/support/transition/ObjectAnimatorUtilsImpl;

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Landroid/support/transition/ObjectAnimatorUtilsApi14;

    invoke-direct {v0}, Landroid/support/transition/ObjectAnimatorUtilsApi14;-><init>()V

    sput-object v0, Landroid/support/transition/ObjectAnimatorUtils;->IMPL:Landroid/support/transition/ObjectAnimatorUtilsImpl;

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 38
    sget-object v0, Landroid/support/transition/ObjectAnimatorUtils;->IMPL:Landroid/support/transition/ObjectAnimatorUtilsImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/transition/ObjectAnimatorUtilsImpl;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method
