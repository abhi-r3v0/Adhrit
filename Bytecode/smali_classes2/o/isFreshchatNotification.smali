.class public final Lo/isFreshchatNotification;
.super Ljava/lang/Object;


# static fields
.field public static final ICustomTabsCallback:[[B

.field private static final ICustomTabsCallback$Stub:[F

.field private static final ICustomTabsService:[Z

.field private static final asBinder:I = 0xc

.field private static final asInterface:I = 0x10

.field public static final extraCallback:[I

.field public static final onMessageChannelReady:[B

.field public static final onNavigationEvent:[J

.field public static final onPostMessage:[Ljava/lang/String;

.field private static final onRelationshipValidationResult:I = 0xb

.field private static final onTransact:I = 0x1a

.field private static final warmup:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lo/isFreshchatNotification;->extraCallback:[I

    new-array v1, v0, [J

    sput-object v1, Lo/isFreshchatNotification;->onNavigationEvent:[J

    new-array v1, v0, [F

    sput-object v1, Lo/isFreshchatNotification;->ICustomTabsCallback$Stub:[F

    new-array v1, v0, [D

    sput-object v1, Lo/isFreshchatNotification;->warmup:[D

    new-array v1, v0, [Z

    sput-object v1, Lo/isFreshchatNotification;->ICustomTabsService:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lo/isFreshchatNotification;->onPostMessage:[Ljava/lang/String;

    new-array v1, v0, [[B

    sput-object v1, Lo/isFreshchatNotification;->ICustomTabsCallback:[[B

    new-array v0, v0, [B

    sput-object v0, Lo/isFreshchatNotification;->onMessageChannelReady:[B

    return-void
.end method
