.class Lo/toBundle;
.super Lo/MediaSessionCompat$Token$1;
.source ""


# static fields
.field private static extraCallback:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/MediaSessionCompat$Token$1;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent(Landroid/view/View;IIII)V
    .locals 1

    .line 36
    sget-boolean v0, Lo/toBundle;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 42
    sput-boolean p1, Lo/toBundle;->extraCallback:Z

    :cond_0
    return-void
.end method
