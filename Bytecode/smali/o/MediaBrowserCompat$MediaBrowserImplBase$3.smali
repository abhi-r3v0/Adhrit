.class public Lo/MediaBrowserCompat$MediaBrowserImplBase$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaBrowserCompat$MediaBrowserImplBase$5;


# instance fields
.field final onPostMessage:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onPostMessage:Landroid/graphics/RectF;

    return-void
.end method

.method private onMessageChannelReady(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;
    .locals 7

    .line 93
    new-instance v6, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object v6
.end method

.method private onRelationshipValidationResult(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;
    .locals 0

    .line 171
    invoke-interface {p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$4;->ICustomTabsCallback()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    return-object p1
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)F
    .locals 4

    .line 162
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onRelationshipValidationResult(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    move-result-object p1

    .line 4365
    iget v0, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    iget v1, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    iget v2, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onMessageChannelReady:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 4366
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v3

    .line 4367
    iget v1, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    iget p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onMessageChannelReady:I

    int-to-float p1, p1

    add-float/2addr v1, p1

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    return v0
.end method

.method public ICustomTabsCallback$Stub(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onRelationshipValidationResult(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    move-result-object p1

    .line 2382
    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->asInterface:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method public asBinder(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)V
    .locals 2

    .line 114
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onRelationshipValidationResult(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    move-result-object v0

    invoke-interface {p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$4;->onMessageChannelReady()Z

    move-result v1

    .line 2124
    iput-boolean v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback$Stub:Z

    .line 2125
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 115
    invoke-virtual {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onTransact(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)V

    return-void
.end method

.method public asInterface(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)V
    .locals 0

    return-void
.end method

.method public extraCallback(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)F
    .locals 5

    .line 167
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onRelationshipValidationResult(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    move-result-object p1

    .line 4371
    iget v0, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    iget v1, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    iget v2, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onMessageChannelReady:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v2, v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v4

    .line 4373
    iget v1, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    mul-float v1, v1, v3

    iget p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onMessageChannelReady:I

    int-to-float p1, p1

    add-float/2addr v1, p1

    mul-float v1, v1, v4

    add-float/2addr v0, v1

    return v0
.end method

.method public extraCallback(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;F)V
    .locals 2

    .line 151
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onRelationshipValidationResult(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    move-result-object v0

    .line 4353
    iget v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onNavigationEvent:F

    invoke-virtual {v0, v1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onMessageChannelReady(FF)V

    .line 152
    invoke-virtual {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onTransact(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)V

    return-void
.end method

.method public onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)F
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onRelationshipValidationResult(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    move-result-object p1

    .line 3357
    iget p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onNavigationEvent:F

    return p1
.end method

.method public onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;F)V
    .locals 1

    .line 141
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onRelationshipValidationResult(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    move-result-object p1

    .line 3349
    iget v0, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    invoke-virtual {p1, p2, v0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onMessageChannelReady(FF)V

    return-void
.end method

.method public onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)F
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onRelationshipValidationResult(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    move-result-object p1

    .line 4361
    iget p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback:F

    return p1
.end method

.method public onNavigationEvent()V
    .locals 1

    .line 37
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$3$3;

    invoke-direct {v0, p0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3$3;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplBase$3;)V

    sput-object v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplBase$6$onMessageChannelReady;

    return-void
.end method

.method public onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;F)V
    .locals 2

    .line 130
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onRelationshipValidationResult(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    move-result-object v0

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p2, p2

    .line 3228
    iget v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_0

    .line 3231
    iput p2, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    const/4 p2, 0x1

    .line 3232
    iput-boolean p2, v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onRelationshipValidationResult:Z

    .line 3233
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onTransact(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)V

    return-void

    .line 3225
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid radius "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ". Must be >= 0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 83
    invoke-direct/range {v0 .. v5}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onMessageChannelReady(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    move-result-object p2

    .line 85
    invoke-interface {p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$4;->onMessageChannelReady()Z

    move-result p3

    .line 1124
    iput-boolean p3, p2, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->ICustomTabsCallback$Stub:Z

    .line 1125
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 86
    invoke-interface {p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplBase$4;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onTransact(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)V

    return-void
.end method

.method public onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)F
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onRelationshipValidationResult(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    move-result-object p1

    .line 3341
    iget p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->onPostMessage:F

    return p1
.end method

.method public onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onRelationshipValidationResult(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    move-result-object p1

    .line 2377
    invoke-virtual {p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplBase$6;->extraCallback(Landroid/content/res/ColorStateList;)V

    .line 2378
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public onTransact(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)V
    .locals 4

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 100
    invoke-direct {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->onRelationshipValidationResult(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)Lo/MediaBrowserCompat$MediaBrowserImplBase$6;

    move-result-object v1

    .line 1345
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 101
    invoke-virtual {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->ICustomTabsCallback(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 102
    invoke-virtual {p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$3;->extraCallback(Lo/MediaBrowserCompat$MediaBrowserImplBase$4;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 101
    invoke-interface {p1, v1, v2}, Lo/MediaBrowserCompat$MediaBrowserImplBase$4;->onMessageChannelReady(II)V

    .line 103
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$4;->ICustomTabsCallback(IIII)V

    return-void
.end method
