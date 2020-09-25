.class public final Lo/getCurrentUser;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCurrentUser$extraCallback;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field ICustomTabsCallback$Stub:I

.field private final ICustomTabsCallback$Stub$Proxy:Lo/getCurrentUser$extraCallback;

.field private final ICustomTabsService:Landroid/graphics/RectF;

.field private final asBinder:Landroid/graphics/Path;

.field asInterface:Lo/useAppLanguage;

.field final extraCallback:Landroid/graphics/Paint;

.field private getInterfaceDescriptor:I

.field private final newSession:Landroid/graphics/RectF;

.field onMessageChannelReady:I

.field onNavigationEvent:I

.field onPostMessage:F

.field private final onRelationshipValidationResult:Lo/FirebaseAuthEmailException;

.field onTransact:Z

.field private postMessage:Landroid/content/res/ColorStateList;

.field private final warmup:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lo/useAppLanguage;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    new-instance v0, Lo/FirebaseAuthEmailException;

    invoke-direct {v0}, Lo/FirebaseAuthEmailException;-><init>()V

    iput-object v0, p0, Lo/getCurrentUser;->onRelationshipValidationResult:Lo/FirebaseAuthEmailException;

    .line 63
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/getCurrentUser;->asBinder:Landroid/graphics/Path;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/getCurrentUser;->warmup:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/getCurrentUser;->ICustomTabsService:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/getCurrentUser;->newSession:Landroid/graphics/RectF;

    .line 67
    new-instance v0, Lo/getCurrentUser$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getCurrentUser$extraCallback;-><init>(Lo/getCurrentUser;B)V

    iput-object v0, p0, Lo/getCurrentUser;->ICustomTabsCallback$Stub$Proxy:Lo/getCurrentUser$extraCallback;

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lo/getCurrentUser;->onTransact:Z

    .line 82
    iput-object p1, p0, Lo/getCurrentUser;->asInterface:Lo/useAppLanguage;

    .line 83
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lo/getCurrentUser;->extraCallback:Landroid/graphics/Paint;

    .line 84
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    iget v1, p0, Lo/getCurrentUser;->getInterfaceDescriptor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lo/getCurrentUser;->getInterfaceDescriptor:I

    .line 100
    :cond_0
    iput-object p1, p0, Lo/getCurrentUser;->postMessage:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lo/getCurrentUser;->onTransact:Z

    .line 102
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 124
    iget-boolean v0, p0, Lo/getCurrentUser;->onTransact:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lo/getCurrentUser;->extraCallback:Landroid/graphics/Paint;

    .line 1223
    iget-object v1, p0, Lo/getCurrentUser;->warmup:Landroid/graphics/Rect;

    .line 1224
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1226
    iget v2, p0, Lo/getCurrentUser;->onPostMessage:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x6

    new-array v9, v3, [I

    .line 1229
    iget v4, p0, Lo/getCurrentUser;->ICustomTabsCallback:I

    iget v5, p0, Lo/getCurrentUser;->getInterfaceDescriptor:I

    invoke-static {v4, v5}, Lo/getString;->onMessageChannelReady(II)I

    move-result v4

    const/4 v12, 0x0

    aput v4, v9, v12

    .line 1230
    iget v4, p0, Lo/getCurrentUser;->onMessageChannelReady:I

    iget v5, p0, Lo/getCurrentUser;->getInterfaceDescriptor:I

    invoke-static {v4, v5}, Lo/getString;->onMessageChannelReady(II)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v9, v5

    .line 1231
    iget v4, p0, Lo/getCurrentUser;->onMessageChannelReady:I

    .line 1233
    invoke-static {v4, v12}, Lo/getString;->extraCallback(II)I

    move-result v4

    iget v6, p0, Lo/getCurrentUser;->getInterfaceDescriptor:I

    .line 1232
    invoke-static {v4, v6}, Lo/getString;->onMessageChannelReady(II)I

    move-result v4

    const/4 v6, 0x2

    aput v4, v9, v6

    .line 1234
    iget v4, p0, Lo/getCurrentUser;->ICustomTabsCallback$Stub:I

    .line 1236
    invoke-static {v4, v12}, Lo/getString;->extraCallback(II)I

    move-result v4

    iget v7, p0, Lo/getCurrentUser;->getInterfaceDescriptor:I

    .line 1235
    invoke-static {v4, v7}, Lo/getString;->onMessageChannelReady(II)I

    move-result v4

    const/4 v7, 0x3

    aput v4, v9, v7

    .line 1237
    iget v4, p0, Lo/getCurrentUser;->ICustomTabsCallback$Stub:I

    iget v8, p0, Lo/getCurrentUser;->getInterfaceDescriptor:I

    invoke-static {v4, v8}, Lo/getString;->onMessageChannelReady(II)I

    move-result v4

    const/4 v8, 0x4

    aput v4, v9, v8

    .line 1238
    iget v4, p0, Lo/getCurrentUser;->onNavigationEvent:I

    iget v10, p0, Lo/getCurrentUser;->getInterfaceDescriptor:I

    invoke-static {v4, v10}, Lo/getString;->onMessageChannelReady(II)I

    move-result v4

    const/4 v10, 0x5

    aput v4, v9, v10

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v12

    aput v2, v3, v5

    const/high16 v4, 0x3f000000    # 0.5f

    aput v4, v3, v6

    aput v4, v3, v7

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, v2

    aput v2, v3, v8

    aput v4, v3, v10

    .line 1248
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v4

    const/4 v7, 0x0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v2

    move-object v10, v3

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 125
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 126
    iput-boolean v12, p0, Lo/getCurrentUser;->onTransact:Z

    .line 129
    :cond_0
    iget-object v0, p0, Lo/getCurrentUser;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 130
    iget-object v2, p0, Lo/getCurrentUser;->warmup:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 131
    iget-object v2, p0, Lo/getCurrentUser;->ICustomTabsService:Landroid/graphics/RectF;

    iget-object v3, p0, Lo/getCurrentUser;->warmup:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 135
    iget-object v2, p0, Lo/getCurrentUser;->asInterface:Lo/useAppLanguage;

    .line 1662
    iget-object v2, v2, Lo/useAppLanguage;->asInterface:Lo/signOut;

    .line 2172
    iget-object v3, p0, Lo/getCurrentUser;->newSession:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2173
    iget-object v3, p0, Lo/getCurrentUser;->newSession:Landroid/graphics/RectF;

    .line 136
    invoke-interface {v2, v3}, Lo/signOut;->onMessageChannelReady(Landroid/graphics/RectF;)F

    move-result v2

    .line 137
    iget-object v3, p0, Lo/getCurrentUser;->ICustomTabsService:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 138
    iget-object v2, p0, Lo/getCurrentUser;->asInterface:Lo/useAppLanguage;

    .line 3172
    iget-object v3, p0, Lo/getCurrentUser;->newSession:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3173
    iget-object v3, p0, Lo/getCurrentUser;->newSession:Landroid/graphics/RectF;

    .line 138
    invoke-virtual {v2, v3}, Lo/useAppLanguage;->onNavigationEvent(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lo/getCurrentUser;->ICustomTabsService:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 140
    iget-object v0, p0, Lo/getCurrentUser;->ICustomTabsService:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/getCurrentUser;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 255
    iget-object v0, p0, Lo/getCurrentUser;->ICustomTabsCallback$Stub$Proxy:Lo/getCurrentUser$extraCallback;

    return-object v0
.end method

.method public final getOpacity()I
    .locals 2

    .line 193
    iget v0, p0, Lo/getCurrentUser;->onPostMessage:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 8

    .line 147
    iget-object v0, p0, Lo/getCurrentUser;->asInterface:Lo/useAppLanguage;

    .line 4172
    iget-object v1, p0, Lo/getCurrentUser;->newSession:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4173
    iget-object v1, p0, Lo/getCurrentUser;->newSession:Landroid/graphics/RectF;

    .line 147
    invoke-virtual {v0, v1}, Lo/useAppLanguage;->onNavigationEvent(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lo/getCurrentUser;->asInterface:Lo/useAppLanguage;

    .line 4662
    iget-object v0, v0, Lo/useAppLanguage;->asInterface:Lo/signOut;

    .line 5172
    iget-object v1, p0, Lo/getCurrentUser;->newSession:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5173
    iget-object v1, p0, Lo/getCurrentUser;->newSession:Landroid/graphics/RectF;

    .line 148
    invoke-interface {v0, v1}, Lo/signOut;->onMessageChannelReady(Landroid/graphics/RectF;)F

    move-result v0

    .line 149
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lo/getCurrentUser;->warmup:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 154
    iget-object v0, p0, Lo/getCurrentUser;->ICustomTabsService:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/getCurrentUser;->warmup:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 155
    iget-object v2, p0, Lo/getCurrentUser;->onRelationshipValidationResult:Lo/FirebaseAuthEmailException;

    iget-object v3, p0, Lo/getCurrentUser;->asInterface:Lo/useAppLanguage;

    iget-object v5, p0, Lo/getCurrentUser;->ICustomTabsService:Landroid/graphics/RectF;

    iget-object v7, p0, Lo/getCurrentUser;->asBinder:Landroid/graphics/Path;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 6073
    invoke-virtual/range {v2 .. v7}, Lo/FirebaseAuthEmailException;->onPostMessage(Lo/useAppLanguage;FLandroid/graphics/RectF;Lo/FirebaseAuthEmailException$ICustomTabsCallback;Landroid/graphics/Path;)V

    .line 156
    iget-object v0, p0, Lo/getCurrentUser;->asBinder:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lo/getCurrentUser;->asBinder:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :cond_1
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    .line 163
    iget-object v0, p0, Lo/getCurrentUser;->asInterface:Lo/useAppLanguage;

    .line 6172
    iget-object v1, p0, Lo/getCurrentUser;->newSession:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6173
    iget-object v1, p0, Lo/getCurrentUser;->newSession:Landroid/graphics/RectF;

    .line 163
    invoke-virtual {v0, v1}, Lo/useAppLanguage;->onNavigationEvent(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget v0, p0, Lo/getCurrentUser;->onPostMessage:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 165
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isStateful()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lo/getCurrentUser;->postMessage:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lo/getCurrentUser;->onTransact:Z

    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 2

    .line 208
    iget-object v0, p0, Lo/getCurrentUser;->postMessage:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 209
    iget v1, p0, Lo/getCurrentUser;->getInterfaceDescriptor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 210
    iget v0, p0, Lo/getCurrentUser;->getInterfaceDescriptor:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lo/getCurrentUser;->onTransact:Z

    .line 212
    iput p1, p0, Lo/getCurrentUser;->getInterfaceDescriptor:I

    .line 215
    :cond_0
    iget-boolean p1, p0, Lo/getCurrentUser;->onTransact:Z

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 218
    :cond_1
    iget-boolean p1, p0, Lo/getCurrentUser;->onTransact:Z

    return p1
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 187
    iget-object v0, p0, Lo/getCurrentUser;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 188
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lo/getCurrentUser;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 108
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
