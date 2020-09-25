.class public final Lo/onIdTokenChanged$ICustomTabsCallback;
.super Lo/onIdTokenChanged$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onIdTokenChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field private static final asBinder:Landroid/graphics/RectF;


# instance fields
.field public ICustomTabsCallback:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public extraCallback:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public onMessageChannelReady:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public onNavigationEvent:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public onPostMessage:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public onTransact:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 482
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lo/onIdTokenChanged$ICustomTabsCallback;->asBinder:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 515
    invoke-direct {p0}, Lo/onIdTokenChanged$onPostMessage;-><init>()V

    .line 1549
    iput p1, p0, Lo/onIdTokenChanged$ICustomTabsCallback;->onPostMessage:F

    .line 1553
    iput p2, p0, Lo/onIdTokenChanged$ICustomTabsCallback;->ICustomTabsCallback:F

    .line 1557
    iput p3, p0, Lo/onIdTokenChanged$ICustomTabsCallback;->onMessageChannelReady:F

    .line 1561
    iput p4, p0, Lo/onIdTokenChanged$ICustomTabsCallback;->onNavigationEvent:F

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5

    .line 524
    iget-object v0, p0, Lo/onIdTokenChanged$onPostMessage;->ICustomTabsCallback$Stub:Landroid/graphics/Matrix;

    .line 525
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 526
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 527
    sget-object v0, Lo/onIdTokenChanged$ICustomTabsCallback;->asBinder:Landroid/graphics/RectF;

    .line 2533
    iget v1, p0, Lo/onIdTokenChanged$ICustomTabsCallback;->onPostMessage:F

    .line 2537
    iget v2, p0, Lo/onIdTokenChanged$ICustomTabsCallback;->ICustomTabsCallback:F

    .line 2541
    iget v3, p0, Lo/onIdTokenChanged$ICustomTabsCallback;->onMessageChannelReady:F

    .line 2545
    iget v4, p0, Lo/onIdTokenChanged$ICustomTabsCallback;->onNavigationEvent:F

    .line 527
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 528
    sget-object v0, Lo/onIdTokenChanged$ICustomTabsCallback;->asBinder:Landroid/graphics/RectF;

    .line 2565
    iget v1, p0, Lo/onIdTokenChanged$ICustomTabsCallback;->extraCallback:F

    .line 2569
    iget v2, p0, Lo/onIdTokenChanged$ICustomTabsCallback;->onTransact:F

    const/4 v3, 0x0

    .line 528
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 529
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
