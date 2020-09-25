.class final Lo/setDrawerLockMode$extraCallback;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDrawerLockMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setDrawerLockMode;


# direct methods
.method private constructor <init>(Lo/setDrawerLockMode;)V
    .locals 0

    .line 1076
    iput-object p1, p0, Lo/setDrawerLockMode$extraCallback;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/setDrawerLockMode;B)V
    .locals 0

    .line 1076
    invoke-direct {p0, p1}, Lo/setDrawerLockMode$extraCallback;-><init>(Lo/setDrawerLockMode;)V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8

    .line 1081
    iget-object v0, p0, Lo/setDrawerLockMode$extraCallback;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-static {v0}, Lo/setDrawerLockMode;->extraCallback(Lo/setDrawerLockMode;)Lo/setScrimColor;

    move-result-object v0

    .line 1146
    iget-object v1, v0, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v2, v0, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1147
    iget-object v0, v0, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 1083
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    .line 1084
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    .line 1085
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 1086
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result p1

    div-float/2addr p1, v4

    sub-float v4, v2, v3

    sub-float v5, v1, p1

    add-float/2addr v1, p1

    add-float/2addr v2, v3

    cmpg-float p1, v5, v1

    if-gez p1, :cond_0

    cmpg-float p1, v4, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    cmpl-float v3, v5, p1

    if-ltz v3, :cond_0

    .line 1093
    iget-object v3, p0, Lo/setDrawerLockMode$extraCallback;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 1096
    invoke-static {v3}, Lo/setDrawerLockMode;->extraCallback(Lo/setDrawerLockMode;)Lo/setScrimColor;

    move-result-object v3

    .line 1175
    iget v6, v3, Lo/setScrimColor;->extraCallback:F

    iget v7, v3, Lo/setScrimColor;->ICustomTabsCallback$Stub:F

    iget v3, v3, Lo/setScrimColor;->newSession:F

    div-float/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    cmpl-float p1, v4, p1

    if-ltz p1, :cond_0

    .line 1096
    iget-object p1, p0, Lo/setDrawerLockMode$extraCallback;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 1098
    invoke-static {p1}, Lo/setDrawerLockMode;->extraCallback(Lo/setDrawerLockMode;)Lo/setScrimColor;

    move-result-object p1

    .line 1182
    iget v3, p1, Lo/setScrimColor;->onRelationshipValidationResult:F

    iget v6, p1, Lo/setScrimColor;->onTransact:F

    iget p1, p1, Lo/setScrimColor;->ICustomTabsService:F

    div-float/2addr v6, p1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_0

    .line 1100
    invoke-virtual {v0, v5, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1101
    iget-object p1, p0, Lo/setDrawerLockMode$extraCallback;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-static {p1}, Lo/setDrawerLockMode;->extraCallback(Lo/setDrawerLockMode;)Lo/setScrimColor;

    move-result-object p1

    .line 2154
    iget-object p1, p1, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1103
    iget-object p1, p0, Lo/setDrawerLockMode$extraCallback;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
