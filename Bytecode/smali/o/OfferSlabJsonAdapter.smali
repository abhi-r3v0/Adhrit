.class public final Lo/OfferSlabJsonAdapter;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lo/SurchargeDetailsJsonAdapter;


# instance fields
.field private ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:F

.field private extraCallback:I

.field private final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/OrderStatusDataJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:F

.field private onRelationshipValidationResult:Lo/SimResponse;

.field private onTransact:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lo/OfferSlabJsonAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/OfferSlabJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lo/OfferSlabJsonAdapter;->extraCallback:I

    const p1, 0x3d5a511a    # 0.0533f

    .line 72
    iput p1, p0, Lo/OfferSlabJsonAdapter;->onPostMessage:F

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lo/OfferSlabJsonAdapter;->ICustomTabsCallback:Z

    .line 74
    iput-boolean p1, p0, Lo/OfferSlabJsonAdapter;->onTransact:Z

    .line 75
    sget-object p1, Lo/SimResponse;->ICustomTabsCallback:Lo/SimResponse;

    iput-object p1, p0, Lo/OfferSlabJsonAdapter;->onRelationshipValidationResult:Lo/SimResponse;

    const p1, 0x3da3d70a    # 0.08f

    .line 76
    iput p1, p0, Lo/OfferSlabJsonAdapter;->ICustomTabsCallback$Stub:F

    return-void
.end method

.method private ICustomTabsCallback(IFII)F
    .locals 0

    if-eqz p1, :cond_2

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2

    :cond_1
    int-to-float p1, p3

    :goto_0
    mul-float p2, p2, p1

    return p2

    :cond_2
    int-to-float p1, p4

    goto :goto_0
.end method

.method private extraCallback()Lo/SimResponse;
    .locals 2

    .line 339
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 340
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    invoke-static {v0}, Lo/SimResponse;->onMessageChannelReady(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lo/SimResponse;

    move-result-object v0

    return-object v0
.end method

.method private onMessageChannelReady()F
    .locals 2

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 333
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    return v0
.end method

.method private onPostMessage(Lo/SimResponseJsonAdapter;II)F
    .locals 3

    .line 296
    iget v0, p1, Lo/SimResponseJsonAdapter;->warmup:I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    iget v0, p1, Lo/SimResponseJsonAdapter;->getInterfaceDescriptor:F

    const/4 v2, 0x1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget v0, p1, Lo/SimResponseJsonAdapter;->warmup:I

    iget p1, p1, Lo/SimResponseJsonAdapter;->getInterfaceDescriptor:F

    .line 300
    invoke-direct {p0, v0, p1, p2, p3}, Lo/OfferSlabJsonAdapter;->ICustomTabsCallback(IFII)F

    move-result p1

    .line 301
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private onPostMessage(IF)V
    .locals 1

    .line 163
    iget v0, p0, Lo/OfferSlabJsonAdapter;->extraCallback:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lo/OfferSlabJsonAdapter;->onPostMessage:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    iput p1, p0, Lo/OfferSlabJsonAdapter;->extraCallback:I

    .line 167
    iput p2, p0, Lo/OfferSlabJsonAdapter;->onPostMessage:F

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private onPostMessage()Z
    .locals 2

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 326
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    .line 249
    iget-object v1, v0, Lo/OfferSlabJsonAdapter;->onNavigationEvent:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 250
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 254
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    .line 258
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int v13, v3, v4

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int v12, v2, v3

    if-le v12, v14, :cond_3

    if-gt v13, v15, :cond_1

    goto/16 :goto_1

    :cond_1
    sub-int v11, v12, v14

    .line 267
    iget v3, v0, Lo/OfferSlabJsonAdapter;->extraCallback:I

    iget v4, v0, Lo/OfferSlabJsonAdapter;->onPostMessage:F

    .line 268
    invoke-direct {v0, v3, v4, v2, v11}, Lo/OfferSlabJsonAdapter;->ICustomTabsCallback(IFII)F

    move-result v16

    const/4 v3, 0x0

    cmpg-float v3, v16, v3

    if-gtz v3, :cond_2

    return-void

    .line 274
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_3

    .line 276
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lo/SimResponseJsonAdapter;

    .line 277
    invoke-direct {v0, v4, v2, v11}, Lo/OfferSlabJsonAdapter;->onPostMessage(Lo/SimResponseJsonAdapter;II)F

    move-result v17

    .line 278
    iget-object v3, v0, Lo/OfferSlabJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/OrderStatusDataJsonAdapter;

    .line 279
    iget-boolean v5, v0, Lo/OfferSlabJsonAdapter;->ICustomTabsCallback:Z

    iget-boolean v6, v0, Lo/OfferSlabJsonAdapter;->onTransact:Z

    iget-object v7, v0, Lo/OfferSlabJsonAdapter;->onRelationshipValidationResult:Lo/SimResponse;

    iget v8, v0, Lo/OfferSlabJsonAdapter;->ICustomTabsCallback$Stub:F

    move/from16 v18, v8

    move/from16 v8, v16

    move/from16 v19, v9

    move/from16 v9, v17

    move/from16 v17, v10

    move/from16 v10, v18

    move/from16 v18, v11

    move-object/from16 v11, p1

    move/from16 v20, v12

    move v12, v15

    move/from16 v21, v13

    move v13, v14

    move/from16 v22, v14

    move/from16 v14, v21

    move/from16 v23, v15

    move/from16 v15, v20

    invoke-virtual/range {v3 .. v15}, Lo/OrderStatusDataJsonAdapter;->onMessageChannelReady(Lo/SimResponseJsonAdapter;ZZLo/SimResponse;FFFLandroid/graphics/Canvas;IIII)V

    add-int/lit8 v9, v19, 0x1

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v20

    move/from16 v13, v21

    move/from16 v14, v22

    move/from16 v15, v23

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final extraCallback(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Lo/OfferSlabJsonAdapter;->setCues(Ljava/util/List;)V

    return-void
.end method

.method public final setApplyEmbeddedFontSizes(Z)V
    .locals 1

    .line 196
    iget-boolean v0, p0, Lo/OfferSlabJsonAdapter;->onTransact:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 199
    :cond_0
    iput-boolean p1, p0, Lo/OfferSlabJsonAdapter;->onTransact:Z

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setApplyEmbeddedStyles(Z)V
    .locals 1

    .line 179
    iget-boolean v0, p0, Lo/OfferSlabJsonAdapter;->ICustomTabsCallback:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lo/OfferSlabJsonAdapter;->onTransact:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 183
    :cond_0
    iput-boolean p1, p0, Lo/OfferSlabJsonAdapter;->ICustomTabsCallback:Z

    .line 184
    iput-boolean p1, p0, Lo/OfferSlabJsonAdapter;->onTransact:Z

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBottomPaddingFraction(F)V
    .locals 1

    .line 239
    iget v0, p0, Lo/OfferSlabJsonAdapter;->ICustomTabsCallback$Stub:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iput p1, p0, Lo/OfferSlabJsonAdapter;->ICustomTabsCallback$Stub:F

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lo/OfferSlabJsonAdapter;->onNavigationEvent:Ljava/util/List;

    if-ne v0, p1, :cond_0

    return-void

    .line 93
    :cond_0
    iput-object p1, p0, Lo/OfferSlabJsonAdapter;->onNavigationEvent:Ljava/util/List;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 95
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 96
    :goto_0
    iget-object v0, p0, Lo/OfferSlabJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 97
    iget-object v0, p0, Lo/OfferSlabJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    new-instance v1, Lo/OrderStatusDataJsonAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/OrderStatusDataJsonAdapter;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setFixedTextSize(IF)V
    .locals 2

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    .line 121
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 119
    invoke-direct {p0, v1, p1}, Lo/OfferSlabJsonAdapter;->onPostMessage(IF)V

    return-void
.end method

.method public final setFractionalTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, p1, v0}, Lo/OfferSlabJsonAdapter;->setFractionalTextSize(FZ)V

    return-void
.end method

.method public final setFractionalTextSize(FZ)V
    .locals 0

    .line 155
    invoke-direct {p0, p2, p1}, Lo/OfferSlabJsonAdapter;->onPostMessage(IF)V

    return-void
.end method

.method public final setStyle(Lo/SimResponse;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lo/OfferSlabJsonAdapter;->onRelationshipValidationResult:Lo/SimResponse;

    if-ne v0, p1, :cond_0

    return-void

    .line 224
    :cond_0
    iput-object p1, p0, Lo/OfferSlabJsonAdapter;->onRelationshipValidationResult:Lo/SimResponse;

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setUserDefaultStyle()V
    .locals 2

    .line 209
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 210
    invoke-direct {p0}, Lo/OfferSlabJsonAdapter;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-direct {p0}, Lo/OfferSlabJsonAdapter;->extraCallback()Lo/SimResponse;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lo/SimResponse;->ICustomTabsCallback:Lo/SimResponse;

    .line 209
    :goto_0
    invoke-virtual {p0, v0}, Lo/OfferSlabJsonAdapter;->setStyle(Lo/SimResponse;)V

    return-void
.end method

.method public final setUserDefaultTextSize()V
    .locals 2

    .line 129
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/OfferSlabJsonAdapter;->onMessageChannelReady()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const v1, 0x3d5a511a    # 0.0533f

    mul-float v0, v0, v1

    .line 130
    invoke-virtual {p0, v0}, Lo/OfferSlabJsonAdapter;->setFractionalTextSize(F)V

    return-void
.end method
