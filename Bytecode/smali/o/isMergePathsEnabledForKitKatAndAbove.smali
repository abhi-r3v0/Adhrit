.class public final Lo/isMergePathsEnabledForKitKatAndAbove;
.super Lo/setFallbackResource;
.source ""


# instance fields
.field private final ICustomTabsCallback$Stub:Landroid/graphics/Paint;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Landroid/graphics/Bitmap;

.field private final asInterface:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 1

    .line 31
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lo/setFallbackResource;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asInterface:Landroid/graphics/Paint;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    .line 32
    iput-object p2, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asBinder:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_0

    .line 34
    iget-object p1, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 37
    :cond_0
    iget-object p1, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 38
    iget-object p1, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Z
    .locals 1

    .line 102
    invoke-super {p0}, Lo/setFallbackResource;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asBinder:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 47
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1102
    invoke-super {p0}, Lo/setFallbackResource;->ICustomTabsCallback()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asBinder:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 51
    invoke-super {p0, p1}, Lo/setFallbackResource;->draw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 57
    :cond_1
    invoke-virtual {p0}, Lo/isMergePathsEnabledForKitKatAndAbove;->extraCallback()V

    .line 58
    invoke-virtual {p0}, Lo/isMergePathsEnabledForKitKatAndAbove;->onNavigationEvent()V

    .line 2075
    iget-object v0, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asBinder:Landroid/graphics/Bitmap;

    if-eq v0, v3, :cond_3

    .line 2076
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asBinder:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    .line 2077
    iget-object v0, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asInterface:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asBinder:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v4, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2078
    iput-boolean v1, p0, Lo/setFallbackResource;->onMessageChannelReady:Z

    .line 2080
    :cond_3
    iget-boolean v0, p0, Lo/setFallbackResource;->onMessageChannelReady:Z

    if-eqz v0, :cond_4

    .line 2081
    iget-object v0, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    iget-object v1, p0, Lo/setFallbackResource;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 2082
    iput-boolean v2, p0, Lo/setFallbackResource;->onMessageChannelReady:Z

    .line 2084
    :cond_4
    iget-object v0, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lo/setFallbackResource;->onMessageChannelReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 61
    iget-object v1, p0, Lo/setFallbackResource;->onTransact:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 62
    iget-object v1, p0, Lo/setFallbackResource;->onPostMessage:Landroid/graphics/Path;

    iget-object v2, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 63
    iget v1, p0, Lo/setFallbackResource;->extraCallback:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 64
    iget-object v1, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    iget v2, p0, Lo/setFallbackResource;->extraCallback:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    iget-object v1, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    iget v2, p0, Lo/setFallbackResource;->onNavigationEvent:I

    iget-object v3, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-static {v2, v3}, Lo/SequenceJsonAdapter;->onPostMessage(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v1, p0, Lo/setFallbackResource;->ICustomTabsCallback:Landroid/graphics/Path;

    iget-object v2, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 68
    :cond_5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 69
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lo/setFallbackResource;->setAlpha(I)V

    .line 108
    iget-object v0, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 110
    invoke-super {p0, p1}, Lo/setFallbackResource;->setAlpha(I)V

    .line 111
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Lo/setFallbackResource;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 118
    iget-object v0, p0, Lo/isMergePathsEnabledForKitKatAndAbove;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
