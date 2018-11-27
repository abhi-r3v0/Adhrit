.class Landroid/support/transition/ImageViewUtilsApi21;
.super Ljava/lang/Object;
.source "ImageViewUtilsApi21.java"

# interfaces
.implements Landroid/support/transition/ImageViewUtilsImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageViewUtilsApi21"

.field private static sAnimateTransformMethod:Ljava/lang/reflect/Method;

.field private static sAnimateTransformMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fetchAnimateTransformMethod()V
    .locals 6

    .line 61
    sget-boolean v0, Landroid/support/transition/ImageViewUtilsApi21;->sAnimateTransformMethodFetched:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 63
    :try_start_0
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "animateTransform"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ImageViewUtilsApi21;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    .line 65
    sget-object v1, Landroid/support/transition/ImageViewUtilsApi21;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ImageViewUtilsApi21"

    const-string v3, "Failed to retrieve animateTransform method"

    .line 67
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :goto_0
    sput-boolean v0, Landroid/support/transition/ImageViewUtilsApi21;->sAnimateTransformMethodFetched:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Landroid/support/transition/ImageViewUtilsApi21;->fetchAnimateTransformMethod()V

    .line 44
    sget-object v0, Landroid/support/transition/ImageViewUtilsApi21;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    sget-object v0, Landroid/support/transition/ImageViewUtilsApi21;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public reserveEndAnimateTransform(Landroid/widget/ImageView;Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public startAnimateTransform(Landroid/widget/ImageView;)V
    .locals 0

    return-void
.end method
