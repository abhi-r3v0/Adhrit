.class Lo/MediaSessionCompat$Token$1;
.super Lo/fromBundle;
.source ""


# static fields
.field private static extraCallback:Z = true

.field private static onMessageChannelReady:Z = true

.field private static onPostMessage:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lo/fromBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 60
    sget-boolean v0, Lo/MediaSessionCompat$Token$1;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 66
    sput-boolean p1, Lo/MediaSessionCompat$Token$1;->onPostMessage:Z

    :cond_0
    return-void
.end method

.method public onPostMessage(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 46
    sget-boolean v0, Lo/MediaSessionCompat$Token$1;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 52
    sput-boolean p1, Lo/MediaSessionCompat$Token$1;->extraCallback:Z

    :cond_0
    return-void
.end method
