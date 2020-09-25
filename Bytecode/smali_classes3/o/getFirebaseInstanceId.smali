.class public final Lo/getFirebaseInstanceId;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getFirebaseInstanceId$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final onNavigationEvent:I


# instance fields
.field public final ICustomTabsCallback:Lo/getFirebaseInstanceId$ICustomTabsCallback;

.field private ICustomTabsCallback$Stub:Z

.field private asBinder:Z

.field private asInterface:Lo/unregisterEventNames$onMessageChannelReady;

.field public final extraCallback:Landroid/graphics/Paint;

.field public final onMessageChannelReady:Landroid/view/View;

.field public onPostMessage:Landroid/graphics/drawable/Drawable;

.field private final onRelationshipValidationResult:Landroid/graphics/Path;

.field private final onTransact:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 128
    sput v0, Lo/getFirebaseInstanceId;->onNavigationEvent:I

    return-void

    .line 129
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 130
    sput v0, Lo/getFirebaseInstanceId;->onNavigationEvent:I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 132
    sput v0, Lo/getFirebaseInstanceId;->onNavigationEvent:I

    return-void
.end method

.method public constructor <init>(Lo/getFirebaseInstanceId$ICustomTabsCallback;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lo/getFirebaseInstanceId;->ICustomTabsCallback:Lo/getFirebaseInstanceId$ICustomTabsCallback;

    .line 138
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 141
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lo/getFirebaseInstanceId;->onRelationshipValidationResult:Landroid/graphics/Path;

    .line 142
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lo/getFirebaseInstanceId;->onTransact:Landroid/graphics/Paint;

    .line 143
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lo/getFirebaseInstanceId;->extraCallback:Landroid/graphics/Paint;

    .line 144
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 5

    .line 242
    sget v0, Lo/getFirebaseInstanceId;->onNavigationEvent:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lo/getFirebaseInstanceId;->onRelationshipValidationResult:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 244
    iget-object v0, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lo/getFirebaseInstanceId;->onRelationshipValidationResult:Landroid/graphics/Path;

    iget v0, v0, Lo/unregisterEventNames$onMessageChannelReady;->onMessageChannelReady:F

    iget-object v2, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    iget v2, v2, Lo/unregisterEventNames$onMessageChannelReady;->extraCallback:F

    iget-object v3, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    iget v3, v3, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private onNavigationEvent(Landroid/graphics/Canvas;)V
    .locals 4

    .line 6333
    iget-boolean v0, p0, Lo/getFirebaseInstanceId;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/getFirebaseInstanceId;->onPostMessage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lo/getFirebaseInstanceId;->onPostMessage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    iget v1, v1, Lo/unregisterEventNames$onMessageChannelReady;->onMessageChannelReady:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 307
    iget-object v2, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    iget v2, v2, Lo/unregisterEventNames$onMessageChannelReady;->extraCallback:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    .line 309
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    iget-object v0, p0, Lo/getFirebaseInstanceId;->onPostMessage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v1

    neg-float v1, v2

    .line 311
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 6

    .line 153
    sget v0, Lo/getFirebaseInstanceId;->onNavigationEvent:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lo/getFirebaseInstanceId;->ICustomTabsCallback$Stub:Z

    const/4 v1, 0x0

    .line 155
    iput-boolean v1, p0, Lo/getFirebaseInstanceId;->asBinder:Z

    .line 157
    iget-object v2, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 158
    iget-object v2, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 160
    iget-object v3, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v2, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 162
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    iget-object v4, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 167
    iget-object v3, p0, Lo/getFirebaseInstanceId;->onTransact:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v2, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 170
    :cond_1
    iput-boolean v1, p0, Lo/getFirebaseInstanceId;->ICustomTabsCallback$Stub:Z

    .line 171
    iput-boolean v0, p0, Lo/getFirebaseInstanceId;->asBinder:Z

    :cond_2
    return-void
.end method

.method public final extraCallback(Landroid/graphics/Canvas;)V
    .locals 8

    .line 264
    invoke-virtual {p0}, Lo/getFirebaseInstanceId;->onNavigationEvent()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 265
    sget v0, Lo/getFirebaseInstanceId;->onNavigationEvent:I

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 267
    iget-object v0, p0, Lo/getFirebaseInstanceId;->ICustomTabsCallback:Lo/getFirebaseInstanceId$ICustomTabsCallback;

    invoke-interface {v0, p1}, Lo/getFirebaseInstanceId$ICustomTabsCallback;->ICustomTabsCallback(Landroid/graphics/Canvas;)V

    .line 3329
    iget-boolean v0, p0, Lo/getFirebaseInstanceId;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/getFirebaseInstanceId;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_9

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 269
    iget-object v0, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lo/getFirebaseInstanceId;->extraCallback:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 291
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported strategy "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lo/getFirebaseInstanceId;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 274
    iget-object v3, p0, Lo/getFirebaseInstanceId;->onRelationshipValidationResult:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 276
    iget-object v3, p0, Lo/getFirebaseInstanceId;->ICustomTabsCallback:Lo/getFirebaseInstanceId$ICustomTabsCallback;

    invoke-interface {v3, p1}, Lo/getFirebaseInstanceId$ICustomTabsCallback;->ICustomTabsCallback(Landroid/graphics/Canvas;)V

    .line 4329
    iget-boolean v3, p0, Lo/getFirebaseInstanceId;->ICustomTabsCallback$Stub:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lo/getFirebaseInstanceId;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 278
    iget-object v1, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lo/getFirebaseInstanceId;->extraCallback:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 281
    :cond_4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 284
    :cond_5
    iget-object v0, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    iget v0, v0, Lo/unregisterEventNames$onMessageChannelReady;->onMessageChannelReady:F

    iget-object v3, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    iget v3, v3, Lo/unregisterEventNames$onMessageChannelReady;->extraCallback:F

    iget-object v4, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    iget v4, v4, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    iget-object v5, p0, Lo/getFirebaseInstanceId;->onTransact:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5329
    iget-boolean v0, p0, Lo/getFirebaseInstanceId;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lo/getFirebaseInstanceId;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_9

    .line 286
    iget-object v0, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    iget v0, v0, Lo/unregisterEventNames$onMessageChannelReady;->onMessageChannelReady:F

    iget-object v1, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    iget v1, v1, Lo/unregisterEventNames$onMessageChannelReady;->extraCallback:F

    iget-object v2, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    iget v2, v2, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    iget-object v3, p0, Lo/getFirebaseInstanceId;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 294
    :cond_7
    iget-object v0, p0, Lo/getFirebaseInstanceId;->ICustomTabsCallback:Lo/getFirebaseInstanceId$ICustomTabsCallback;

    invoke-interface {v0, p1}, Lo/getFirebaseInstanceId$ICustomTabsCallback;->ICustomTabsCallback(Landroid/graphics/Canvas;)V

    .line 6329
    iget-boolean v0, p0, Lo/getFirebaseInstanceId;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lo/getFirebaseInstanceId;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_9

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 296
    iget-object v0, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lo/getFirebaseInstanceId;->extraCallback:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 300
    :cond_9
    :goto_0
    invoke-direct {p0, p1}, Lo/getFirebaseInstanceId;->onNavigationEvent(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final extraCallback(Lo/unregisterEventNames$onMessageChannelReady;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 190
    iput-object p1, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    goto :goto_2

    .line 192
    :cond_0
    iget-object v0, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Lo/unregisterEventNames$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/unregisterEventNames$onMessageChannelReady;-><init>(Lo/unregisterEventNames$onMessageChannelReady;)V

    iput-object v0, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    goto :goto_0

    .line 1163
    :cond_1
    iget v1, p1, Lo/unregisterEventNames$onMessageChannelReady;->onMessageChannelReady:F

    iget v2, p1, Lo/unregisterEventNames$onMessageChannelReady;->extraCallback:F

    iget v3, p1, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    .line 2157
    iput v1, v0, Lo/unregisterEventNames$onMessageChannelReady;->onMessageChannelReady:F

    .line 2158
    iput v2, v0, Lo/unregisterEventNames$onMessageChannelReady;->extraCallback:F

    .line 2159
    iput v3, v0, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    .line 199
    :goto_0
    iget v0, p1, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    .line 2254
    iget v1, p1, Lo/unregisterEventNames$onMessageChannelReady;->onMessageChannelReady:F

    iget p1, p1, Lo/unregisterEventNames$onMessageChannelReady;->extraCallback:F

    iget-object v2, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    .line 2255
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 2254
    invoke-static {v1, p1, v2, v3}, Lo/extraCallback;->onMessageChannelReady(FFFF)F

    move-result p1

    const v1, 0x38d1b717    # 1.0E-4f

    add-float/2addr v0, v1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 201
    iget-object p1, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p1, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    .line 205
    :cond_3
    :goto_2
    invoke-direct {p0}, Lo/getFirebaseInstanceId;->ICustomTabsCallback()V

    return-void
.end method

.method public final onMessageChannelReady()Lo/unregisterEventNames$onMessageChannelReady;
    .locals 5

    .line 210
    iget-object v0, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_0
    new-instance v1, Lo/unregisterEventNames$onMessageChannelReady;

    invoke-direct {v1, v0}, Lo/unregisterEventNames$onMessageChannelReady;-><init>(Lo/unregisterEventNames$onMessageChannelReady;)V

    .line 3171
    iget v0, v1, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3254
    iget v0, v1, Lo/unregisterEventNames$onMessageChannelReady;->onMessageChannelReady:F

    iget v2, v1, Lo/unregisterEventNames$onMessageChannelReady;->extraCallback:F

    iget-object v3, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    .line 3255
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 3254
    invoke-static {v0, v2, v3, v4}, Lo/extraCallback;->onMessageChannelReady(FFFF)F

    move-result v0

    .line 216
    iput v0, v1, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    :cond_2
    return-object v1
.end method

.method public final onNavigationEvent()Z
    .locals 4

    .line 320
    iget-object v0, p0, Lo/getFirebaseInstanceId;->asInterface:Lo/unregisterEventNames$onMessageChannelReady;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 7171
    iget v0, v0, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 321
    :goto_2
    sget v3, Lo/getFirebaseInstanceId;->onNavigationEvent:I

    if-nez v3, :cond_4

    if-nez v0, :cond_3

    .line 322
    iget-boolean v0, p0, Lo/getFirebaseInstanceId;->asBinder:Z

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    if-nez v0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public final onPostMessage()V
    .locals 2

    .line 176
    sget v0, Lo/getFirebaseInstanceId;->onNavigationEvent:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lo/getFirebaseInstanceId;->asBinder:Z

    .line 178
    iget-object v0, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 179
    iget-object v0, p0, Lo/getFirebaseInstanceId;->onTransact:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    iget-object v0, p0, Lo/getFirebaseInstanceId;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
