.class final Lo/MediaSessionCompat$MediaSessionImplBase$1;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Property<",
        "TT;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:[F

.field private final extraCallback:Landroid/graphics/PointF;

.field private final onMessageChannelReady:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "TT;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Landroid/graphics/PathMeasure;

.field private final onPostMessage:F

.field private onRelationshipValidationResult:F


# direct methods
.method constructor <init>(Landroid/util/Property;Landroid/graphics/Path;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")V"
        }
    .end annotation

    .line 45
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 40
    iput-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->ICustomTabsCallback:[F

    .line 41
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->extraCallback:Landroid/graphics/PointF;

    .line 46
    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->onMessageChannelReady:Landroid/util/Property;

    .line 47
    new-instance p1, Landroid/graphics/PathMeasure;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->onNavigationEvent:Landroid/graphics/PathMeasure;

    .line 48
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iput p1, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->onPostMessage:F

    return-void
.end method


# virtual methods
.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1053
    iget p1, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->onRelationshipValidationResult:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 35
    check-cast p2, Ljava/lang/Float;

    .line 1058
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->onRelationshipValidationResult:F

    .line 1059
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->onNavigationEvent:Landroid/graphics/PathMeasure;

    iget v1, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->onPostMessage:F

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    mul-float v1, v1, p2

    iget-object p2, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->ICustomTabsCallback:[F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 1060
    iget-object p2, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->extraCallback:Landroid/graphics/PointF;

    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->ICustomTabsCallback:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 1061
    iget-object p2, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->extraCallback:Landroid/graphics/PointF;

    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->ICustomTabsCallback:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 1062
    iget-object p2, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->onMessageChannelReady:Landroid/util/Property;

    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplBase$1;->extraCallback:Landroid/graphics/PointF;

    invoke-virtual {p2, p1, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
