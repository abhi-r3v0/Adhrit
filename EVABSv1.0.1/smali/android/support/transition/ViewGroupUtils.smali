.class Landroid/support/transition/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# static fields
.field private static final IMPL:Landroid/support/transition/ViewGroupUtilsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 32
    new-instance v0, Landroid/support/transition/ViewGroupUtilsApi18;

    invoke-direct {v0}, Landroid/support/transition/ViewGroupUtilsApi18;-><init>()V

    sput-object v0, Landroid/support/transition/ViewGroupUtils;->IMPL:Landroid/support/transition/ViewGroupUtilsImpl;

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Landroid/support/transition/ViewGroupUtilsApi14;

    invoke-direct {v0}, Landroid/support/transition/ViewGroupUtilsApi14;-><init>()V

    sput-object v0, Landroid/support/transition/ViewGroupUtils;->IMPL:Landroid/support/transition/ViewGroupUtilsImpl;

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOverlay(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayImpl;
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    sget-object v0, Landroid/support/transition/ViewGroupUtils;->IMPL:Landroid/support/transition/ViewGroupUtilsImpl;

    invoke-interface {v0, p0}, Landroid/support/transition/ViewGroupUtilsImpl;->getOverlay(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayImpl;

    move-result-object p0

    return-object p0
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    sget-object v0, Landroid/support/transition/ViewGroupUtils;->IMPL:Landroid/support/transition/ViewGroupUtilsImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/transition/ViewGroupUtilsImpl;->suppressLayout(Landroid/view/ViewGroup;Z)V

    return-void
.end method
