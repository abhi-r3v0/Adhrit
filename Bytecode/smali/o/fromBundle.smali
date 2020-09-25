.class Lo/fromBundle;
.super Lo/verifyToken;
.source ""


# static fields
.field private static onNavigationEvent:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/verifyToken;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/view/View;)F
    .locals 1

    .line 52
    sget-boolean v0, Lo/fromBundle;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 v0, 0x0

    .line 58
    sput-boolean v0, Lo/fromBundle;->onNavigationEvent:Z

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    return p1
.end method

.method public extraCallback(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public extraCallback(Landroid/view/View;F)V
    .locals 1

    .line 36
    sget-boolean v0, Lo/fromBundle;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lo/fromBundle;->onNavigationEvent:Z

    .line 46
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onNavigationEvent(Landroid/view/View;)V
    .locals 0

    return-void
.end method
