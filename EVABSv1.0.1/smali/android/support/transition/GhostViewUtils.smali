.class Landroid/support/transition/GhostViewUtils;
.super Ljava/lang/Object;
.source "GhostViewUtils.java"


# static fields
.field private static final CREATOR:Landroid/support/transition/GhostViewImpl$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 30
    new-instance v0, Landroid/support/transition/GhostViewApi21$Creator;

    invoke-direct {v0}, Landroid/support/transition/GhostViewApi21$Creator;-><init>()V

    sput-object v0, Landroid/support/transition/GhostViewUtils;->CREATOR:Landroid/support/transition/GhostViewImpl$Creator;

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Landroid/support/transition/GhostViewApi14$Creator;

    invoke-direct {v0}, Landroid/support/transition/GhostViewApi14$Creator;-><init>()V

    sput-object v0, Landroid/support/transition/GhostViewUtils;->CREATOR:Landroid/support/transition/GhostViewImpl$Creator;

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/GhostViewImpl;
    .locals 1

    .line 37
    sget-object v0, Landroid/support/transition/GhostViewUtils;->CREATOR:Landroid/support/transition/GhostViewImpl$Creator;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/transition/GhostViewImpl$Creator;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/GhostViewImpl;

    move-result-object p0

    return-object p0
.end method

.method static removeGhost(Landroid/view/View;)V
    .locals 1

    .line 41
    sget-object v0, Landroid/support/transition/GhostViewUtils;->CREATOR:Landroid/support/transition/GhostViewImpl$Creator;

    invoke-interface {v0, p0}, Landroid/support/transition/GhostViewImpl$Creator;->removeGhost(Landroid/view/View;)V

    return-void
.end method
