.class public final Lo/setThumbTintList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u001e\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR$\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0011\"\u0004\u0008!\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0011\"\u0004\u0008#\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0011\u00a8\u0006+"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/internals/ElevatedPitHelper;",
        "",
        "baseColor",
        "",
        "shadowOffset",
        "",
        "cornerRadius",
        "spread",
        "paintHelper",
        "Lcom/dreamplug/ui/neu/internals/PaintHelper;",
        "(IFFFLcom/dreamplug/ui/neu/internals/PaintHelper;)V",
        "getBaseColor",
        "()I",
        "borderPaintHelper",
        "Lcom/dreamplug/ui/neu/internals/BlurGradientHelper;",
        "value",
        "getCornerRadius",
        "()F",
        "setCornerRadius",
        "(F)V",
        "darkShadow",
        "Lcom/dreamplug/ui/neu/internals/BlurHelper;",
        "fillPaintHelper",
        "finalCornerRadius",
        "lightShadow",
        "rectArea",
        "Landroid/graphics/RectF;",
        "getRectArea",
        "()Landroid/graphics/RectF;",
        "setRectArea",
        "(Landroid/graphics/RectF;)V",
        "shadowBlur",
        "getShadowBlur",
        "setShadowBlur",
        "getShadowOffset",
        "setShadowOffset",
        "getSpread",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "height",
        "width",
        "uikit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/createPayloadsIfNeeded;

.field private ICustomTabsCallback$Stub:F

.field private asBinder:F

.field public asInterface:Landroid/graphics/RectF;

.field public final extraCallback:Lo/createPayloadsIfNeeded;

.field public final onMessageChannelReady:Lo/addChangePayload;

.field public onNavigationEvent:F

.field public final onPostMessage:Lo/addChangePayload;

.field public final onRelationshipValidationResult:F

.field private final onTransact:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(IFFFLo/MediaSessionCompat$1$onMessageChannelReady;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    const-string v2, "paintHelper"

    move-object/from16 v10, p5

    invoke-static {v10, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4013
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v2, p1

    iput v2, v0, Lo/setThumbTintList;->onTransact:I

    const/4 v2, 0x0

    iput v2, v0, Lo/setThumbTintList;->onRelationshipValidationResult:F

    add-float v3, v1, v2

    .line 4020
    iput v3, v0, Lo/setThumbTintList;->ICustomTabsCallback$Stub:F

    .line 4022
    new-instance v9, Lo/createPayloadsIfNeeded;

    iget v5, v0, Lo/setThumbTintList;->ICustomTabsCallback$Stub:F

    iget v3, v0, Lo/setThumbTintList;->onTransact:I

    const/4 v11, 0x0

    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    .line 5009
    invoke-static {v3, v6, v7, v11}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v6

    const/16 v8, 0x8

    move-object v3, v9

    move/from16 v4, p2

    move-object/from16 v7, p5

    .line 4022
    invoke-direct/range {v3 .. v8}, Lo/createPayloadsIfNeeded;-><init>(FFILo/MediaSessionCompat$1$onMessageChannelReady;I)V

    iput-object v9, v0, Lo/setThumbTintList;->ICustomTabsCallback:Lo/createPayloadsIfNeeded;

    .line 4023
    new-instance v9, Lo/createPayloadsIfNeeded;

    iget v5, v0, Lo/setThumbTintList;->ICustomTabsCallback$Stub:F

    iget v3, v0, Lo/setThumbTintList;->onTransact:I

    const-wide v6, 0x3fcb851eb851eb85L    # 0.215

    .line 5024
    invoke-static {v3, v6, v7, v11}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v6

    move-object v3, v9

    move-object/from16 v7, p5

    .line 4023
    invoke-direct/range {v3 .. v8}, Lo/createPayloadsIfNeeded;-><init>(FFILo/MediaSessionCompat$1$onMessageChannelReady;I)V

    iput-object v9, v0, Lo/setThumbTintList;->extraCallback:Lo/createPayloadsIfNeeded;

    .line 4024
    new-instance v12, Lo/addChangePayload;

    .line 6009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v13, "Resources.getSystem()"

    invoke-static {v3, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v14, 0x40000000    # 2.0f

    const/4 v15, 0x1

    .line 6010
    invoke-static {v15, v14, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 4024
    iget v5, v0, Lo/setThumbTintList;->ICustomTabsCallback$Stub:F

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x14

    move-object v3, v12

    invoke-direct/range {v3 .. v9}, Lo/addChangePayload;-><init>(FFZLo/MediaSessionCompat$1$onMessageChannelReady;Landroid/graphics/BlurMaskFilter$Blur;I)V

    iput-object v12, v0, Lo/setThumbTintList;->onMessageChannelReady:Lo/addChangePayload;

    .line 4025
    new-instance v12, Lo/addChangePayload;

    .line 7009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    .line 7010
    invoke-static {v15, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 4025
    iget v5, v0, Lo/setThumbTintList;->ICustomTabsCallback$Stub:F

    const/4 v6, 0x1

    const/16 v9, 0x10

    move-object v3, v12

    invoke-direct/range {v3 .. v9}, Lo/addChangePayload;-><init>(FFZLo/MediaSessionCompat$1$onMessageChannelReady;Landroid/graphics/BlurMaskFilter$Blur;I)V

    iput-object v12, v0, Lo/setThumbTintList;->onPostMessage:Lo/addChangePayload;

    .line 8009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 8010
    invoke-static {v15, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 4043
    iget-object v2, v0, Lo/setThumbTintList;->onPostMessage:Lo/addChangePayload;

    .line 9009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 9010
    invoke-static {v15, v14, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 9025
    iput v3, v2, Lo/addChangePayload;->ICustomTabsCallback:F

    .line 9026
    iget-object v3, v2, Lo/addChangePayload;->onMessageChannelReady:Landroid/graphics/Paint;

    iget v2, v2, Lo/addChangePayload;->ICustomTabsCallback:F

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4044
    invoke-virtual {v0, v1}, Lo/setThumbTintList;->ICustomTabsCallback(F)V

    move/from16 v1, p2

    .line 4045
    iput v1, v0, Lo/setThumbTintList;->onNavigationEvent:F

    .line 4046
    iget-object v1, v0, Lo/setThumbTintList;->onMessageChannelReady:Lo/addChangePayload;

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4047
    iget v4, v0, Lo/setThumbTintList;->onTransact:I

    const-wide v5, 0x3fc6666666666666L    # 0.175

    .line 10024
    invoke-static {v4, v5, v6, v11}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 4048
    iget v4, v0, Lo/setThumbTintList;->onTransact:I

    const-wide v6, 0x3fa1eb851eb851ecL    # 0.035

    .line 11009
    invoke-static {v4, v6, v7, v11}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v4

    aput v4, v3, v15

    .line 11017
    iput-object v3, v1, Lo/addChangePayload;->onPostMessage:[I

    .line 4050
    iget-object v1, v0, Lo/setThumbTintList;->onMessageChannelReady:Lo/addChangePayload;

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    .line 12016
    iput-object v3, v1, Lo/addChangePayload;->extraCallback:[F

    .line 4051
    iget-object v1, v0, Lo/setThumbTintList;->onPostMessage:Lo/addChangePayload;

    new-array v3, v2, [I

    .line 4052
    iget v4, v0, Lo/setThumbTintList;->onTransact:I

    const-wide v6, 0x3fb5c28f5c28f5c3L    # 0.085

    .line 13009
    invoke-static {v4, v6, v7, v11}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v4

    aput v4, v3, v5

    .line 4053
    iget v4, v0, Lo/setThumbTintList;->onTransact:I

    const-wide v5, 0x3fc3333333333333L    # 0.15

    .line 13024
    invoke-static {v4, v5, v6, v11}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v4

    aput v4, v3, v15

    .line 14017
    iput-object v3, v1, Lo/addChangePayload;->onPostMessage:[I

    .line 4055
    iget-object v1, v0, Lo/setThumbTintList;->onPostMessage:Lo/addChangePayload;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    .line 15016
    iput-object v2, v1, Lo/addChangePayload;->extraCallback:[F

    .line 4058
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lo/setThumbTintList;->asInterface:Landroid/graphics/RectF;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(IFLo/MediaSessionCompat$1$onMessageChannelReady;)V
    .locals 9

    .line 17009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 17010
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    move v6, p2

    move-object v8, p3

    .line 16017
    invoke-direct/range {v3 .. v8}, Lo/setThumbTintList;-><init>(IFFFLo/MediaSessionCompat$1$onMessageChannelReady;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(F)V
    .locals 2

    .line 1037
    iput p1, p0, Lo/setThumbTintList;->asBinder:F

    .line 1038
    iget-object v0, p0, Lo/setThumbTintList;->ICustomTabsCallback:Lo/createPayloadsIfNeeded;

    iget v1, p0, Lo/setThumbTintList;->onRelationshipValidationResult:F

    add-float/2addr p1, v1

    .line 2027
    iput p1, v0, Lo/createPayloadsIfNeeded;->onNavigationEvent:F

    .line 1039
    iget-object p1, p0, Lo/setThumbTintList;->extraCallback:Lo/createPayloadsIfNeeded;

    iget v0, p0, Lo/setThumbTintList;->asBinder:F

    iget v1, p0, Lo/setThumbTintList;->onRelationshipValidationResult:F

    add-float/2addr v0, v1

    .line 3027
    iput v0, p1, Lo/createPayloadsIfNeeded;->onNavigationEvent:F

    return-void
.end method
