.class Lo/setExtraBinder;
.super Lo/toBundle;
.source ""


# static fields
.field private static ICustomTabsCallback:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/toBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/view/View;I)V
    .locals 2

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 39
    invoke-super {p0, p1, p2}, Lo/toBundle;->ICustomTabsCallback(Landroid/view/View;I)V

    return-void

    .line 41
    :cond_0
    sget-boolean v0, Lo/setExtraBinder;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    .line 45
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 47
    sput-boolean p1, Lo/setExtraBinder;->ICustomTabsCallback:Z

    :cond_1
    return-void
.end method
