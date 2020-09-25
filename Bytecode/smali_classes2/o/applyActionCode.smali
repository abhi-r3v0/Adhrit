.class public final Lo/applyActionCode;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback$Stub:[I

.field public static final asBinder:[I

.field public static final onRelationshipValidationResult:[F

.field public static final onTransact:[F


# instance fields
.field public final ICustomTabsCallback:Landroid/graphics/Paint;

.field public final ICustomTabsService:Landroid/graphics/Path;

.field public asInterface:I

.field public extraCallback:I

.field public final onMessageChannelReady:Landroid/graphics/Paint;

.field public onNavigationEvent:I

.field public final onPostMessage:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 59
    sput-object v1, Lo/applyActionCode;->ICustomTabsCallback$Stub:[I

    new-array v0, v0, [F

    .line 61
    fill-array-data v0, :array_0

    sput-object v0, Lo/applyActionCode;->onTransact:[F

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 63
    sput-object v1, Lo/applyActionCode;->asBinder:[I

    new-array v0, v0, [F

    .line 65
    fill-array-data v0, :array_1

    sput-object v0, Lo/applyActionCode;->onRelationshipValidationResult:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0}, Lo/applyActionCode;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lo/applyActionCode;->ICustomTabsService:Landroid/graphics/Path;

    const/high16 p1, -0x1000000

    const/16 v0, 0x44

    .line 1086
    invoke-static {p1, v0}, Lo/getString;->extraCallback(II)I

    move-result v0

    iput v0, p0, Lo/applyActionCode;->extraCallback:I

    const/16 v0, 0x14

    .line 1087
    invoke-static {p1, v0}, Lo/getString;->extraCallback(II)I

    move-result v0

    iput v0, p0, Lo/applyActionCode;->onNavigationEvent:I

    const/4 v0, 0x0

    .line 1088
    invoke-static {p1, v0}, Lo/getString;->extraCallback(II)I

    move-result p1

    iput p1, p0, Lo/applyActionCode;->asInterface:I

    .line 76
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lo/applyActionCode;->onPostMessage:Landroid/graphics/Paint;

    .line 77
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lo/applyActionCode;->ICustomTabsCallback:Landroid/graphics/Paint;

    .line 80
    iget v0, p0, Lo/applyActionCode;->extraCallback:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    new-instance p1, Landroid/graphics/Paint;

    iget-object v0, p0, Lo/applyActionCode;->onPostMessage:Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lo/applyActionCode;->onMessageChannelReady:Landroid/graphics/Paint;

    return-void
.end method
