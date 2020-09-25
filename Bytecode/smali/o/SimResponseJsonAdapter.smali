.class public Lo/SimResponseJsonAdapter;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onNavigationEvent:Lo/SimResponseJsonAdapter;


# instance fields
.field public final ICustomTabsCallback:Landroid/graphics/Bitmap;

.field public final ICustomTabsCallback$Stub:I

.field public final ICustomTabsCallback$Stub$Proxy:F

.field public final ICustomTabsService:I

.field public final asBinder:F

.field public final asInterface:I

.field public final extraCallback:Ljava/lang/CharSequence;

.field public final getInterfaceDescriptor:F

.field public final newSession:Z

.field public final onMessageChannelReady:F

.field public final onPostMessage:Landroid/text/Layout$Alignment;

.field public final onRelationshipValidationResult:I

.field public final onTransact:F

.field public final warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lo/SimResponseJsonAdapter;

    const-string v1, ""

    invoke-direct {v0, v1}, Lo/SimResponseJsonAdapter;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lo/SimResponseJsonAdapter;->onNavigationEvent:Lo/SimResponseJsonAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;FIFIFF)V
    .locals 15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/high16 v9, -0x80000000

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/high16 v14, -0x1000000

    move-object v0, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v11, p6

    move/from16 v12, p7

    .line 253
    invoke-direct/range {v0 .. v14}, Lo/SimResponseJsonAdapter;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 277
    invoke-direct/range {v0 .. v8}, Lo/SimResponseJsonAdapter;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 11

    const/4 v9, 0x0

    const/high16 v10, -0x1000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 309
    invoke-direct/range {v0 .. v10}, Lo/SimResponseJsonAdapter;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFIF)V
    .locals 15

    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/high16 v14, -0x1000000

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p8

    .line 347
    invoke-direct/range {v0 .. v14}, Lo/SimResponseJsonAdapter;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V
    .locals 15

    const/4 v3, 0x0

    const/high16 v9, -0x80000000

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p8

    move/from16 v13, p9

    move/from16 v14, p10

    .line 389
    invoke-direct/range {v0 .. v14}, Lo/SimResponseJsonAdapter;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZI)V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lo/SimResponseJsonAdapter;->extraCallback:Ljava/lang/CharSequence;

    .line 422
    iput-object p2, p0, Lo/SimResponseJsonAdapter;->onPostMessage:Landroid/text/Layout$Alignment;

    .line 423
    iput-object p3, p0, Lo/SimResponseJsonAdapter;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    .line 424
    iput p4, p0, Lo/SimResponseJsonAdapter;->onMessageChannelReady:F

    .line 425
    iput p5, p0, Lo/SimResponseJsonAdapter;->ICustomTabsCallback$Stub:I

    .line 426
    iput p6, p0, Lo/SimResponseJsonAdapter;->asInterface:I

    .line 427
    iput p7, p0, Lo/SimResponseJsonAdapter;->onTransact:F

    .line 428
    iput p8, p0, Lo/SimResponseJsonAdapter;->onRelationshipValidationResult:I

    .line 429
    iput p11, p0, Lo/SimResponseJsonAdapter;->asBinder:F

    .line 430
    iput p12, p0, Lo/SimResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:F

    .line 431
    iput-boolean p13, p0, Lo/SimResponseJsonAdapter;->newSession:Z

    .line 432
    iput p14, p0, Lo/SimResponseJsonAdapter;->ICustomTabsService:I

    .line 433
    iput p9, p0, Lo/SimResponseJsonAdapter;->warmup:I

    .line 434
    iput p10, p0, Lo/SimResponseJsonAdapter;->getInterfaceDescriptor:F

    return-void
.end method
