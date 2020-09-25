.class final Lo/absorbGlows$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PlaybackStateCompat$onTransact;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/absorbGlows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "page",
        "Landroid/view/View;",
        "position",
        "",
        "transformPage"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/absorbGlows$ICustomTabsCallback$Stub$Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/absorbGlows$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v0}, Lo/absorbGlows$ICustomTabsCallback$Stub$Proxy;-><init>()V

    sput-object v0, Lo/absorbGlows$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/absorbGlows$ICustomTabsCallback$Stub$Proxy;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;F)V
    .locals 4

    const-string v0, "page"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p2, v0

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const p2, 0x3dcccccd    # 0.1f

    mul-float v0, v0, p2

    float-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    add-double/2addr v0, v2

    double-to-float p2, v0

    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
