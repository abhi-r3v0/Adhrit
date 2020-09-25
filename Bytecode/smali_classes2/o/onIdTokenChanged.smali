.class public final Lo/onIdTokenChanged;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onIdTokenChanged$ICustomTabsCallback;,
        Lo/onIdTokenChanged$extraCallback;,
        Lo/onIdTokenChanged$onPostMessage;,
        Lo/onIdTokenChanged$onMessageChannelReady;,
        Lo/onIdTokenChanged$onNavigationEvent;,
        Lo/onIdTokenChanged$asBinder;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/onIdTokenChanged$asBinder;",
            ">;"
        }
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

.field private onRelationshipValidationResult:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/onIdTokenChanged$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/onIdTokenChanged;->onTransact:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/onIdTokenChanged;->asBinder:Ljava/util/List;

    const/4 v0, 0x0

    const/high16 v1, 0x43870000    # 270.0f

    .line 1104
    invoke-virtual {p0, v0, v0, v1, v0}, Lo/onIdTokenChanged;->onMessageChannelReady(FFFF)V

    return-void
.end method


# virtual methods
.method public final extraCallback(FF)V
    .locals 4

    .line 126
    new-instance v0, Lo/onIdTokenChanged$extraCallback;

    invoke-direct {v0}, Lo/onIdTokenChanged$extraCallback;-><init>()V

    .line 1401
    iput p1, v0, Lo/onIdTokenChanged$extraCallback;->extraCallback:F

    .line 2401
    iput p2, v0, Lo/onIdTokenChanged$extraCallback;->onPostMessage:F

    .line 129
    iget-object v1, p0, Lo/onIdTokenChanged;->onTransact:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lo/onIdTokenChanged$onNavigationEvent;

    .line 3274
    iget v2, p0, Lo/onIdTokenChanged;->onPostMessage:F

    .line 3278
    iget v3, p0, Lo/onIdTokenChanged;->ICustomTabsCallback:F

    .line 131
    invoke-direct {v1, v0, v2, v3}, Lo/onIdTokenChanged$onNavigationEvent;-><init>(Lo/onIdTokenChanged$extraCallback;FF)V

    .line 136
    invoke-virtual {v1}, Lo/onIdTokenChanged$onNavigationEvent;->onNavigationEvent()F

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v0, v2

    .line 137
    invoke-virtual {v1}, Lo/onIdTokenChanged$onNavigationEvent;->onNavigationEvent()F

    move-result v3

    add-float/2addr v3, v2

    .line 4238
    invoke-virtual {p0, v0}, Lo/onIdTokenChanged;->onNavigationEvent(F)V

    .line 4239
    iget-object v0, p0, Lo/onIdTokenChanged;->asBinder:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4306
    iput v3, p0, Lo/onIdTokenChanged;->onRelationshipValidationResult:F

    .line 5298
    iput p1, p0, Lo/onIdTokenChanged;->onPostMessage:F

    .line 5302
    iput p2, p0, Lo/onIdTokenChanged;->ICustomTabsCallback:F

    return-void
.end method

.method public final extraCallback(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    .line 206
    iget-object v0, p0, Lo/onIdTokenChanged;->onTransact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 207
    iget-object v2, p0, Lo/onIdTokenChanged;->onTransact:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onIdTokenChanged$onPostMessage;

    .line 208
    invoke-virtual {v2, p1, p2}, Lo/onIdTokenChanged$onPostMessage;->onNavigationEvent(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(FFFF)V
    .locals 0

    const/4 p1, 0x0

    .line 1290
    iput p1, p0, Lo/onIdTokenChanged;->onMessageChannelReady:F

    .line 1294
    iput p2, p0, Lo/onIdTokenChanged;->extraCallback:F

    .line 1298
    iput p1, p0, Lo/onIdTokenChanged;->onPostMessage:F

    .line 1302
    iput p2, p0, Lo/onIdTokenChanged;->ICustomTabsCallback:F

    .line 1306
    iput p3, p0, Lo/onIdTokenChanged;->onRelationshipValidationResult:F

    add-float/2addr p3, p4

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p3, p1

    .line 1310
    iput p3, p0, Lo/onIdTokenChanged;->onNavigationEvent:F

    .line 115
    iget-object p1, p0, Lo/onIdTokenChanged;->onTransact:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 116
    iget-object p1, p0, Lo/onIdTokenChanged;->asBinder:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final onMessageChannelReady(FFFFFF)V
    .locals 4

    .line 175
    new-instance v0, Lo/onIdTokenChanged$ICustomTabsCallback;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/onIdTokenChanged$ICustomTabsCallback;-><init>(FFFF)V

    .line 5573
    iput p5, v0, Lo/onIdTokenChanged$ICustomTabsCallback;->extraCallback:F

    .line 6577
    iput p6, v0, Lo/onIdTokenChanged$ICustomTabsCallback;->onTransact:F

    .line 178
    iget-object v1, p0, Lo/onIdTokenChanged;->onTransact:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v1, Lo/onIdTokenChanged$onMessageChannelReady;

    invoke-direct {v1, v0}, Lo/onIdTokenChanged$onMessageChannelReady;-><init>(Lo/onIdTokenChanged$ICustomTabsCallback;)V

    add-float v0, p5, p6

    const/4 v2, 0x0

    cmpg-float p6, p6, v2

    if-gez p6, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43340000    # 180.0f

    if-eqz p6, :cond_1

    add-float/2addr p5, v3

    rem-float/2addr p5, v2

    :cond_1
    if-eqz p6, :cond_2

    add-float/2addr v3, v0

    rem-float/2addr v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 7238
    :goto_1
    invoke-virtual {p0, p5}, Lo/onIdTokenChanged;->onNavigationEvent(F)V

    .line 7239
    iget-object p5, p0, Lo/onIdTokenChanged;->asBinder:Ljava/util/List;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7306
    iput v3, p0, Lo/onIdTokenChanged;->onRelationshipValidationResult:F

    add-float p5, p1, p3

    const/high16 p6, 0x3f000000    # 0.5f

    mul-float p5, p5, p6

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    float-to-double v0, v0

    .line 193
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float p3, p3, v2

    add-float/2addr p5, p3

    .line 8298
    iput p5, p0, Lo/onIdTokenChanged;->onPostMessage:F

    add-float p3, p2, p4

    mul-float p3, p3, p6

    sub-float/2addr p4, p2

    div-float/2addr p4, p1

    .line 196
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p4, p4, p1

    add-float/2addr p3, p4

    .line 8302
    iput p3, p0, Lo/onIdTokenChanged;->ICustomTabsCallback:F

    return-void
.end method

.method final onNavigationEvent(F)V
    .locals 4

    .line 9282
    iget v0, p0, Lo/onIdTokenChanged;->onRelationshipValidationResult:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    return-void

    .line 257
    :cond_1
    new-instance v1, Lo/onIdTokenChanged$ICustomTabsCallback;

    .line 11274
    iget v2, p0, Lo/onIdTokenChanged;->onPostMessage:F

    .line 11278
    iget v3, p0, Lo/onIdTokenChanged;->ICustomTabsCallback:F

    .line 258
    invoke-direct {v1, v2, v3, v2, v3}, Lo/onIdTokenChanged$ICustomTabsCallback;-><init>(FFFF)V

    .line 12282
    iget v2, p0, Lo/onIdTokenChanged;->onRelationshipValidationResult:F

    .line 12573
    iput v2, v1, Lo/onIdTokenChanged$ICustomTabsCallback;->extraCallback:F

    .line 13577
    iput v0, v1, Lo/onIdTokenChanged$ICustomTabsCallback;->onTransact:F

    .line 261
    iget-object v0, p0, Lo/onIdTokenChanged;->asBinder:Ljava/util/List;

    new-instance v2, Lo/onIdTokenChanged$onMessageChannelReady;

    invoke-direct {v2, v1}, Lo/onIdTokenChanged$onMessageChannelReady;-><init>(Lo/onIdTokenChanged$ICustomTabsCallback;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14306
    iput p1, p0, Lo/onIdTokenChanged;->onRelationshipValidationResult:F

    return-void
.end method
