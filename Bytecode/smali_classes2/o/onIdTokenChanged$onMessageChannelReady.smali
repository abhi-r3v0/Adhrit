.class final Lo/onIdTokenChanged$onMessageChannelReady;
.super Lo/onIdTokenChanged$asBinder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onIdTokenChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/onIdTokenChanged$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Lo/onIdTokenChanged$ICustomTabsCallback;)V
    .locals 0

    .line 370
    invoke-direct {p0}, Lo/onIdTokenChanged$asBinder;-><init>()V

    .line 371
    iput-object p1, p0, Lo/onIdTokenChanged$onMessageChannelReady;->onNavigationEvent:Lo/onIdTokenChanged$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/Matrix;Lo/applyActionCode;ILandroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v7, p4

    .line 380
    iget-object v3, v0, Lo/onIdTokenChanged$onMessageChannelReady;->onNavigationEvent:Lo/onIdTokenChanged$ICustomTabsCallback;

    .line 1565
    iget v3, v3, Lo/onIdTokenChanged$ICustomTabsCallback;->extraCallback:F

    .line 381
    iget-object v4, v0, Lo/onIdTokenChanged$onMessageChannelReady;->onNavigationEvent:Lo/onIdTokenChanged$ICustomTabsCallback;

    .line 2569
    iget v4, v4, Lo/onIdTokenChanged$ICustomTabsCallback;->onTransact:F

    .line 382
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, v0, Lo/onIdTokenChanged$onMessageChannelReady;->onNavigationEvent:Lo/onIdTokenChanged$ICustomTabsCallback;

    .line 3533
    iget v6, v6, Lo/onIdTokenChanged$ICustomTabsCallback;->onPostMessage:F

    .line 384
    iget-object v8, v0, Lo/onIdTokenChanged$onMessageChannelReady;->onNavigationEvent:Lo/onIdTokenChanged$ICustomTabsCallback;

    .line 4537
    iget v8, v8, Lo/onIdTokenChanged$ICustomTabsCallback;->ICustomTabsCallback:F

    .line 384
    iget-object v9, v0, Lo/onIdTokenChanged$onMessageChannelReady;->onNavigationEvent:Lo/onIdTokenChanged$ICustomTabsCallback;

    .line 5541
    iget v9, v9, Lo/onIdTokenChanged$ICustomTabsCallback;->onMessageChannelReady:F

    .line 384
    iget-object v10, v0, Lo/onIdTokenChanged$onMessageChannelReady;->onNavigationEvent:Lo/onIdTokenChanged$ICustomTabsCallback;

    .line 6545
    iget v10, v10, Lo/onIdTokenChanged$ICustomTabsCallback;->onNavigationEvent:F

    .line 384
    invoke-direct {v5, v6, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    cmpg-float v9, v4, v9

    if-gez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 7130
    :goto_0
    iget-object v10, v1, Lo/applyActionCode;->ICustomTabsService:Landroid/graphics/Path;

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v9, :cond_1

    .line 7133
    sget-object v13, Lo/applyActionCode;->asBinder:[I

    aput v8, v13, v8

    .line 7134
    sget-object v8, Lo/applyActionCode;->asBinder:[I

    iget v13, v1, Lo/applyActionCode;->asInterface:I

    aput v13, v8, v6

    .line 7135
    sget-object v8, Lo/applyActionCode;->asBinder:[I

    iget v13, v1, Lo/applyActionCode;->onNavigationEvent:I

    aput v13, v8, v12

    .line 7136
    sget-object v8, Lo/applyActionCode;->asBinder:[I

    iget v13, v1, Lo/applyActionCode;->extraCallback:I

    aput v13, v8, v11

    goto :goto_1

    .line 7139
    :cond_1
    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    .line 7140
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-virtual {v10, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 7141
    invoke-virtual {v10, v5, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 7142
    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    neg-int v13, v2

    int-to-float v13, v13

    .line 7144
    invoke-virtual {v5, v13, v13}, Landroid/graphics/RectF;->inset(FF)V

    .line 7145
    sget-object v13, Lo/applyActionCode;->asBinder:[I

    aput v8, v13, v8

    .line 7146
    sget-object v8, Lo/applyActionCode;->asBinder:[I

    iget v13, v1, Lo/applyActionCode;->extraCallback:I

    aput v13, v8, v6

    .line 7147
    sget-object v8, Lo/applyActionCode;->asBinder:[I

    iget v13, v1, Lo/applyActionCode;->onNavigationEvent:I

    aput v13, v8, v12

    .line 7148
    sget-object v8, Lo/applyActionCode;->asBinder:[I

    iget v13, v1, Lo/applyActionCode;->asInterface:I

    aput v13, v8, v11

    :goto_1
    int-to-float v2, v2

    .line 7151
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    div-float/2addr v2, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v2, v8, v2

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    add-float/2addr v8, v2

    .line 7153
    sget-object v13, Lo/applyActionCode;->onRelationshipValidationResult:[F

    aput v2, v13, v6

    .line 7154
    sget-object v2, Lo/applyActionCode;->onRelationshipValidationResult:[F

    aput v8, v2, v12

    .line 7156
    iget-object v2, v1, Lo/applyActionCode;->onPostMessage:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/RadialGradient;

    .line 7158
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    .line 7159
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    .line 7160
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float v15, v8, v11

    sget-object v16, Lo/applyActionCode;->asBinder:[I

    sget-object v17, Lo/applyActionCode;->onRelationshipValidationResult:[F

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v6

    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 7156
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 7167
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v2, p1

    .line 7168
    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    if-nez v9, :cond_2

    .line 7171
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v10, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_2
    const/4 v6, 0x1

    .line 7174
    iget-object v8, v1, Lo/applyActionCode;->onPostMessage:Landroid/graphics/Paint;

    move-object/from16 v1, p4

    move-object v2, v5

    move v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 7175
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
