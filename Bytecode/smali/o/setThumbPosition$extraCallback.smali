.class public Lo/setThumbPosition$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/fromQueueItem$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setThumbPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u001e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0014\"\u0004\u0008 \u0010\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0014\"\u0004\u0008\"\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0014\u00a8\u0006*"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/internals/PlatformHelper;",
        "",
        "baseColor",
        "",
        "shadowOffset",
        "",
        "cornerRadius",
        "spread",
        "pressed",
        "",
        "paintHelper",
        "Lcom/dreamplug/ui/neu/internals/PaintHelper;",
        "(IFFFZLcom/dreamplug/ui/neu/internals/PaintHelper;)V",
        "getBaseColor",
        "()I",
        "borderPaintHelper",
        "Lcom/dreamplug/ui/neu/internals/BlurGradientHelper;",
        "clipOffset",
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
        "getPressed",
        "()Z",
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

.field public ICustomTabsCallback$Stub:F

.field private asBinder:F

.field public final asInterface:F

.field public final extraCallback:Lo/createPayloadsIfNeeded;

.field public onMessageChannelReady:I

.field public final onNavigationEvent:Lo/addChangePayload;

.field public final onPostMessage:Lo/addChangePayload;

.field private final onRelationshipValidationResult:I

.field private onTransact:F

.field private final warmup:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(IFFFZLo/MediaSessionCompat$1$onMessageChannelReady;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    const-string v2, "paintHelper"

    move-object/from16 v10, p6

    invoke-static {v10, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3015
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v2, p1

    iput v2, v0, Lo/setThumbPosition$extraCallback;->onRelationshipValidationResult:I

    const/4 v2, 0x0

    iput v2, v0, Lo/setThumbPosition$extraCallback;->asInterface:F

    move/from16 v3, p5

    iput-boolean v3, v0, Lo/setThumbPosition$extraCallback;->warmup:Z

    add-float v3, v1, v2

    .line 3023
    iput v3, v0, Lo/setThumbPosition$extraCallback;->asBinder:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 3024
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v4, v11

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float/2addr v3, v4

    .line 4009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v12, "Resources.getSystem()"

    invoke-static {v4, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    .line 4010
    invoke-static {v14, v13, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 3024
    iput v3, v0, Lo/setThumbPosition$extraCallback;->onMessageChannelReady:I

    .line 3026
    new-instance v9, Lo/createPayloadsIfNeeded;

    iget v5, v0, Lo/setThumbPosition$extraCallback;->asBinder:F

    iget v3, v0, Lo/setThumbPosition$extraCallback;->onRelationshipValidationResult:I

    const-wide v6, 0x3fd3333333333333L    # 0.3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v3, v6, v7, v4}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v6

    const/16 v8, 0x8

    move-object v3, v9

    move/from16 v4, p2

    move-object/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Lo/createPayloadsIfNeeded;-><init>(FFILo/MediaSessionCompat$1$onMessageChannelReady;I)V

    iput-object v9, v0, Lo/setThumbPosition$extraCallback;->ICustomTabsCallback:Lo/createPayloadsIfNeeded;

    .line 3027
    new-instance v9, Lo/createPayloadsIfNeeded;

    iget v5, v0, Lo/setThumbPosition$extraCallback;->asBinder:F

    iget v3, v0, Lo/setThumbPosition$extraCallback;->onRelationshipValidationResult:I

    const-wide v6, 0x3fe3333333333333L    # 0.6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    invoke-static {v3, v6, v7, v4}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v6

    move-object v3, v9

    move/from16 v4, p2

    move-object/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Lo/createPayloadsIfNeeded;-><init>(FFILo/MediaSessionCompat$1$onMessageChannelReady;I)V

    iput-object v9, v0, Lo/setThumbPosition$extraCallback;->extraCallback:Lo/createPayloadsIfNeeded;

    .line 3029
    new-instance v15, Lo/addChangePayload;

    .line 5009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 5010
    invoke-static {v14, v11, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 3029
    iget v5, v0, Lo/setThumbPosition$extraCallback;->asBinder:F

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x14

    move-object v3, v15

    invoke-direct/range {v3 .. v9}, Lo/addChangePayload;-><init>(FFZLo/MediaSessionCompat$1$onMessageChannelReady;Landroid/graphics/BlurMaskFilter$Blur;I)V

    iput-object v15, v0, Lo/setThumbPosition$extraCallback;->onPostMessage:Lo/addChangePayload;

    .line 3030
    new-instance v15, Lo/addChangePayload;

    .line 6009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 6010
    invoke-static {v14, v11, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 3030
    iget v5, v0, Lo/setThumbPosition$extraCallback;->asBinder:F

    const/4 v6, 0x1

    const/16 v9, 0x10

    move-object v3, v15

    invoke-direct/range {v3 .. v9}, Lo/addChangePayload;-><init>(FFZLo/MediaSessionCompat$1$onMessageChannelReady;Landroid/graphics/BlurMaskFilter$Blur;I)V

    iput-object v15, v0, Lo/setThumbPosition$extraCallback;->onNavigationEvent:Lo/addChangePayload;

    .line 7009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 7010
    invoke-static {v14, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 3048
    iget-object v2, v0, Lo/setThumbPosition$extraCallback;->onNavigationEvent:Lo/addChangePayload;

    .line 8009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 8010
    invoke-static {v14, v13, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 8025
    iput v3, v2, Lo/addChangePayload;->ICustomTabsCallback:F

    .line 8026
    iget-object v3, v2, Lo/addChangePayload;->onMessageChannelReady:Landroid/graphics/Paint;

    iget v2, v2, Lo/addChangePayload;->ICustomTabsCallback:F

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8042
    iput v1, v0, Lo/setThumbPosition$extraCallback;->onTransact:F

    .line 8043
    iget-object v2, v0, Lo/setThumbPosition$extraCallback;->ICustomTabsCallback:Lo/createPayloadsIfNeeded;

    iget v3, v0, Lo/setThumbPosition$extraCallback;->asInterface:F

    add-float/2addr v1, v3

    .line 9027
    iput v1, v2, Lo/createPayloadsIfNeeded;->onNavigationEvent:F

    .line 8044
    iget-object v1, v0, Lo/setThumbPosition$extraCallback;->extraCallback:Lo/createPayloadsIfNeeded;

    iget v2, v0, Lo/setThumbPosition$extraCallback;->onTransact:F

    iget v3, v0, Lo/setThumbPosition$extraCallback;->asInterface:F

    add-float/2addr v2, v3

    .line 10027
    iput v2, v1, Lo/createPayloadsIfNeeded;->onNavigationEvent:F

    move/from16 v1, p2

    .line 3050
    iput v1, v0, Lo/setThumbPosition$extraCallback;->ICustomTabsCallback$Stub:F

    .line 3051
    iget-boolean v1, v0, Lo/setThumbPosition$extraCallback;->warmup:Z

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 3052
    iget-object v1, v0, Lo/setThumbPosition$extraCallback;->onPostMessage:Lo/addChangePayload;

    new-array v7, v5, [I

    .line 3053
    iget v8, v0, Lo/setThumbPosition$extraCallback;->onRelationshipValidationResult:I

    .line 11024
    invoke-static {v8, v2, v3, v6}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v8

    aput v8, v7, v4

    .line 3054
    iget v8, v0, Lo/setThumbPosition$extraCallback;->onRelationshipValidationResult:I

    const-wide v9, 0x3fac28f5c28f5c29L    # 0.055

    .line 12009
    invoke-static {v8, v9, v10, v6}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v8

    aput v8, v7, v14

    .line 12017
    iput-object v7, v1, Lo/addChangePayload;->onPostMessage:[I

    goto :goto_0

    .line 3057
    :cond_0
    iget-object v1, v0, Lo/setThumbPosition$extraCallback;->onPostMessage:Lo/addChangePayload;

    new-array v7, v5, [I

    .line 3058
    iget v8, v0, Lo/setThumbPosition$extraCallback;->onRelationshipValidationResult:I

    const-wide v9, 0x3faeb851eb851eb8L    # 0.06

    .line 13009
    invoke-static {v8, v9, v10, v6}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v8

    aput v8, v7, v4

    .line 3059
    iget v8, v0, Lo/setThumbPosition$extraCallback;->onRelationshipValidationResult:I

    const-wide v9, 0x3fc999999999999aL    # 0.2

    .line 13024
    invoke-static {v8, v9, v10, v6}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v8

    aput v8, v7, v14

    .line 14017
    iput-object v7, v1, Lo/addChangePayload;->onPostMessage:[I

    .line 3062
    :goto_0
    iget-object v1, v0, Lo/setThumbPosition$extraCallback;->onPostMessage:Lo/addChangePayload;

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    .line 15016
    iput-object v7, v1, Lo/addChangePayload;->extraCallback:[F

    .line 3063
    iget-boolean v1, v0, Lo/setThumbPosition$extraCallback;->warmup:Z

    if-eqz v1, :cond_1

    .line 3064
    iget-object v1, v0, Lo/setThumbPosition$extraCallback;->onNavigationEvent:Lo/addChangePayload;

    new-array v7, v5, [I

    .line 3065
    iget v8, v0, Lo/setThumbPosition$extraCallback;->onRelationshipValidationResult:I

    .line 15024
    invoke-static {v8, v2, v3, v6}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v2

    aput v2, v7, v4

    .line 3066
    iget v2, v0, Lo/setThumbPosition$extraCallback;->onRelationshipValidationResult:I

    const-wide v3, 0x3f9999999999999aL    # 0.025

    .line 16024
    invoke-static {v2, v3, v4, v6}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v2

    aput v2, v7, v14

    .line 17017
    iput-object v7, v1, Lo/addChangePayload;->onPostMessage:[I

    goto :goto_1

    .line 3069
    :cond_1
    iget-object v1, v0, Lo/setThumbPosition$extraCallback;->onNavigationEvent:Lo/addChangePayload;

    new-array v7, v5, [I

    .line 3070
    iget v8, v0, Lo/setThumbPosition$extraCallback;->onRelationshipValidationResult:I

    const-wide v9, 0x3fb0a3d70a3d70a4L    # 0.065

    .line 18009
    invoke-static {v8, v9, v10, v6}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v8

    aput v8, v7, v4

    .line 3071
    iget v4, v0, Lo/setThumbPosition$extraCallback;->onRelationshipValidationResult:I

    .line 18024
    invoke-static {v4, v2, v3, v6}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v2

    aput v2, v7, v14

    .line 19017
    iput-object v7, v1, Lo/addChangePayload;->onPostMessage:[I

    .line 3074
    :goto_1
    iget-object v1, v0, Lo/setThumbPosition$extraCallback;->onNavigationEvent:Lo/addChangePayload;

    new-array v2, v5, [F

    fill-array-data v2, :array_1

    .line 20016
    iput-object v2, v1, Lo/addChangePayload;->extraCallback:[F

    return-void

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

.method public synthetic constructor <init>(IFZLo/MediaSessionCompat$1$onMessageChannelReady;)V
    .locals 10

    .line 22009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    .line 22010
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    move v6, p2

    move v8, p3

    move-object v9, p4

    .line 21020
    invoke-direct/range {v3 .. v9}, Lo/setThumbPosition$extraCallback;-><init>(IFFFZLo/MediaSessionCompat$1$onMessageChannelReady;)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/fromQueueItem;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final extraCallback(Lo/fromQueueItem;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/fromQueueItem;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onNavigationEvent(Lo/fromQueueItem;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage(Lo/fromQueueItem;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
