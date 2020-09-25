.class public interface abstract Lo/createRatingBar;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:Ljava/lang/Integer;

.field public static final ICustomTabsCallback$Stub:Landroid/graphics/PointF;

.field public static final ICustomTabsCallback$Stub$Proxy:Ljava/lang/Float;

.field public static final ICustomTabsService:Ljava/lang/Float;

.field public static final ICustomTabsService$Stub:Ljava/lang/Float;

.field public static final ICustomTabsService$Stub$Proxy:Ljava/lang/Float;

.field public static final INotificationSideChannel:Ljava/lang/Float;

.field public static final IPostMessageService:Ljava/lang/Float;

.field public static final IPostMessageService$Stub:Ljava/lang/Float;

.field public static final IPostMessageService$Stub$Proxy:Ljava/lang/Float;

.field public static final asBinder:Landroid/graphics/PointF;

.field public static final asInterface:Landroid/graphics/PointF;

.field public static final cancel:Landroid/graphics/ColorFilter;

.field public static final cancelAll:Ljava/lang/Float;

.field public static final extraCallback:Ljava/lang/Integer;

.field public static final extraCommand:Ljava/lang/Float;

.field public static final getInterfaceDescriptor:Lo/getIconUri$onMessageChannelReady;

.field public static final mayLaunchUrl:Ljava/lang/Float;

.field public static final newSession:Ljava/lang/Float;

.field public static final notify:[Ljava/lang/Integer;

.field public static final onMessageChannelReady:Landroid/graphics/PointF;

.field public static final onNavigationEvent:Ljava/lang/Integer;

.field public static final onPostMessage:Ljava/lang/Integer;

.field public static final onRelationshipValidationResult:Landroid/graphics/PointF;

.field public static final onTransact:Ljava/lang/Float;

.field public static final postMessage:Ljava/lang/Float;

.field public static final requestPostMessageChannel:Ljava/lang/Float;

.field public static final updateVisuals:Ljava/lang/Float;

.field public static final validateRelationship:Ljava/lang/Float;

.field public static final warmup:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->onPostMessage:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->onNavigationEvent:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->ICustomTabsCallback:Ljava/lang/Integer;

    const/4 v0, 0x4

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->extraCallback:Ljava/lang/Integer;

    .line 69
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lo/createRatingBar;->onMessageChannelReady:Landroid/graphics/PointF;

    .line 71
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lo/createRatingBar;->onRelationshipValidationResult:Landroid/graphics/PointF;

    .line 73
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lo/createRatingBar;->asBinder:Landroid/graphics/PointF;

    .line 75
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lo/createRatingBar;->asInterface:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 77
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->onTransact:Ljava/lang/Float;

    .line 79
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    sput-object v1, Lo/createRatingBar;->ICustomTabsCallback$Stub:Landroid/graphics/PointF;

    .line 80
    new-instance v1, Lo/getIconUri$onMessageChannelReady;

    invoke-direct {v1}, Lo/getIconUri$onMessageChannelReady;-><init>()V

    sput-object v1, Lo/createRatingBar;->getInterfaceDescriptor:Lo/getIconUri$onMessageChannelReady;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 82
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lo/createRatingBar;->warmup:Ljava/lang/Float;

    .line 84
    sput-object v0, Lo/createRatingBar;->ICustomTabsService:Ljava/lang/Float;

    .line 86
    sput-object v0, Lo/createRatingBar;->newSession:Ljava/lang/Float;

    const/high16 v0, 0x40000000    # 2.0f

    .line 88
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Float;

    const/high16 v0, 0x40400000    # 3.0f

    .line 89
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->requestPostMessageChannel:Ljava/lang/Float;

    const/high16 v0, 0x40800000    # 4.0f

    .line 90
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->mayLaunchUrl:Ljava/lang/Float;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 91
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->updateVisuals:Ljava/lang/Float;

    const/high16 v0, 0x40c00000    # 6.0f

    .line 92
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->postMessage:Ljava/lang/Float;

    const/high16 v0, 0x40e00000    # 7.0f

    .line 94
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->extraCommand:Ljava/lang/Float;

    const/high16 v0, 0x41000000    # 8.0f

    .line 96
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->validateRelationship:Ljava/lang/Float;

    const/high16 v0, 0x41100000    # 9.0f

    .line 98
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->IPostMessageService$Stub:Ljava/lang/Float;

    const/high16 v0, 0x41200000    # 10.0f

    .line 100
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->ICustomTabsService$Stub$Proxy:Ljava/lang/Float;

    const/high16 v0, 0x41300000    # 11.0f

    .line 102
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->IPostMessageService:Ljava/lang/Float;

    const/high16 v0, 0x41400000    # 12.0f

    .line 104
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->ICustomTabsService$Stub:Ljava/lang/Float;

    const v0, 0x4141999a    # 12.1f

    .line 106
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->cancelAll:Ljava/lang/Float;

    const/high16 v0, 0x41500000    # 13.0f

    .line 108
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->IPostMessageService$Stub$Proxy:Ljava/lang/Float;

    const/high16 v0, 0x41600000    # 14.0f

    .line 110
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/createRatingBar;->INotificationSideChannel:Ljava/lang/Float;

    .line 112
    new-instance v0, Landroid/graphics/ColorFilter;

    invoke-direct {v0}, Landroid/graphics/ColorFilter;-><init>()V

    sput-object v0, Lo/createRatingBar;->cancel:Landroid/graphics/ColorFilter;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 114
    sput-object v0, Lo/createRatingBar;->notify:[Ljava/lang/Integer;

    return-void
.end method
