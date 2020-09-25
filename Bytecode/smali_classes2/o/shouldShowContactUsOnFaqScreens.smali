.class public final Lo/shouldShowContactUsOnFaqScreens;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/shouldShowContactUsOnFaqScreens$onMessageChannelReady;,
        Lo/shouldShowContactUsOnFaqScreens$onPostMessage;,
        Lo/shouldShowContactUsOnFaqScreens$onNavigationEvent;,
        Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Z

.field private static final ICustomTabsCallback$Stub:Z

.field private static final ICustomTabsCallback$Stub$Proxy:J

.field private static final ICustomTabsService:J

.field private static final ICustomTabsService$Stub:J

.field private static final ICustomTabsService$Stub$Proxy:Z

.field private static final IPostMessageService$Stub:J

.field private static final asBinder:J

.field private static final asInterface:J

.field private static final extraCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final extraCommand:J

.field private static final getInterfaceDescriptor:J

.field private static final mayLaunchUrl:J

.field private static final newSession:J

.field private static final onMessageChannelReady:Lsun/misc/Unsafe;

.field private static final onNavigationEvent:Ljava/util/logging/Logger;

.field private static final onPostMessage:Z

.field private static final onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

.field private static final onTransact:Z

.field private static final postMessage:J

.field private static final requestPostMessageChannel:J

.field private static final updateVisuals:J

.field private static final validateRelationship:J

.field private static final warmup:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-class v0, [D

    const-class v1, [F

    const-class v2, [J

    const-class v3, [I

    const-class v4, [Z

    const-class v5, Lo/shouldShowContactUsOnFaqScreens;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    sput-object v5, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent:Ljava/util/logging/Logger;

    invoke-static {}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent()Lsun/misc/Unsafe;

    move-result-object v5

    sput-object v5, Lo/shouldShowContactUsOnFaqScreens;->onMessageChannelReady:Lsun/misc/Unsafe;

    invoke-static {}, Lo/setAppBarLayout;->onPostMessage()Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lo/shouldShowContactUsOnFaqScreens;->extraCallback:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lo/shouldShowContactUsOnFaqScreens;->onPostMessage(Ljava/lang/Class;)Z

    move-result v5

    sput-boolean v5, Lo/shouldShowContactUsOnFaqScreens;->onPostMessage:Z

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lo/shouldShowContactUsOnFaqScreens;->onPostMessage(Ljava/lang/Class;)Z

    move-result v5

    sput-boolean v5, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback:Z

    sget-object v5, Lo/shouldShowContactUsOnFaqScreens;->onMessageChannelReady:Lsun/misc/Unsafe;

    const/4 v6, 0x0

    if-nez v5, :cond_1

    :cond_0
    move-object v5, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lo/setAppBarLayout;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lo/shouldShowContactUsOnFaqScreens;->onPostMessage:Z

    if-eqz v5, :cond_2

    new-instance v5, Lo/shouldShowContactUsOnFaqScreens$onPostMessage;

    sget-object v7, Lo/shouldShowContactUsOnFaqScreens;->onMessageChannelReady:Lsun/misc/Unsafe;

    invoke-direct {v5, v7}, Lo/shouldShowContactUsOnFaqScreens$onPostMessage;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_2
    sget-boolean v5, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback:Z

    if-eqz v5, :cond_0

    new-instance v5, Lo/shouldShowContactUsOnFaqScreens$onMessageChannelReady;

    sget-object v7, Lo/shouldShowContactUsOnFaqScreens;->onMessageChannelReady:Lsun/misc/Unsafe;

    invoke-direct {v5, v7}, Lo/shouldShowContactUsOnFaqScreens$onMessageChannelReady;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_3
    new-instance v5, Lo/shouldShowContactUsOnFaqScreens$onNavigationEvent;

    sget-object v7, Lo/shouldShowContactUsOnFaqScreens;->onMessageChannelReady:Lsun/misc/Unsafe;

    invoke-direct {v5, v7}, Lo/shouldShowContactUsOnFaqScreens$onNavigationEvent;-><init>(Lsun/misc/Unsafe;)V

    :goto_0
    sput-object v5, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    invoke-static {}, Lo/shouldShowContactUsOnFaqScreens;->asInterface()Z

    move-result v5

    sput-boolean v5, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback$Stub:Z

    invoke-static {}, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult()Z

    move-result v5

    sput-boolean v5, Lo/shouldShowContactUsOnFaqScreens;->onTransact:Z

    const-class v5, [B

    invoke-static {v5}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Class;)I

    move-result v5

    int-to-long v7, v5

    sput-wide v7, Lo/shouldShowContactUsOnFaqScreens;->asInterface:J

    invoke-static {v4}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Class;)I

    move-result v5

    int-to-long v7, v5

    sput-wide v7, Lo/shouldShowContactUsOnFaqScreens;->asBinder:J

    invoke-static {v4}, Lo/shouldShowContactUsOnFaqScreens;->extraCallback(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lo/shouldShowContactUsOnFaqScreens;->newSession:J

    invoke-static {v3}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback$Stub$Proxy:J

    invoke-static {v3}, Lo/shouldShowContactUsOnFaqScreens;->extraCallback(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsService:J

    invoke-static {v2}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lo/shouldShowContactUsOnFaqScreens;->getInterfaceDescriptor:J

    invoke-static {v2}, Lo/shouldShowContactUsOnFaqScreens;->extraCallback(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lo/shouldShowContactUsOnFaqScreens;->warmup:J

    invoke-static {v1}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lo/shouldShowContactUsOnFaqScreens;->postMessage:J

    invoke-static {v1}, Lo/shouldShowContactUsOnFaqScreens;->extraCallback(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lo/shouldShowContactUsOnFaqScreens;->requestPostMessageChannel:J

    invoke-static {v0}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lo/shouldShowContactUsOnFaqScreens;->mayLaunchUrl:J

    invoke-static {v0}, Lo/shouldShowContactUsOnFaqScreens;->extraCallback(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lo/shouldShowContactUsOnFaqScreens;->extraCommand:J

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lo/shouldShowContactUsOnFaqScreens;->updateVisuals:J

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lo/shouldShowContactUsOnFaqScreens;->extraCallback(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lo/shouldShowContactUsOnFaqScreens;->IPostMessageService$Stub:J

    invoke-static {}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback$Stub()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lo/shouldShowContactUsOnFaqScreens;->extraCallback(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsService$Stub:J

    const-class v0, Ljava/lang/String;

    const-string v1, "value"

    invoke-static {v0, v1}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [C

    if-ne v1, v2, :cond_4

    move-object v6, v0

    :cond_4
    invoke-static {v6}, Lo/shouldShowContactUsOnFaqScreens;->extraCallback(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lo/shouldShowContactUsOnFaqScreens;->validateRelationship:J

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsService$Stub$Proxy:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    invoke-virtual {v0, p0, p1, p2}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->extraCallback(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static ICustomTabsCallback(Ljava/lang/reflect/Field;)J
    .locals 2

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    invoke-virtual {v0, p0}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onPostMessage(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ICustomTabsCallback(JB)V
    .locals 1

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    invoke-virtual {v0, p0, p1, p2}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onMessageChannelReady(JB)V

    return-void
.end method

.method static ICustomTabsCallback(Ljava/lang/Object;JI)V
    .locals 1

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    invoke-virtual {v0, p0, p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;JI)V

    return-void
.end method

.method static ICustomTabsCallback(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/Object;JJ)V

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic ICustomTabsCallback()Z
    .locals 1

    sget-boolean v0, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsService$Stub$Proxy:Z

    return v0
.end method

.method static synthetic ICustomTabsCallback$Stub(Ljava/lang/Object;J)B
    .locals 0

    invoke-static {p0, p1, p2}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsService(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method private static ICustomTabsCallback$Stub()Ljava/lang/reflect/Field;
    .locals 3

    invoke-static {}, Lo/setAppBarLayout;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static ICustomTabsCallback$Stub$Proxy(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method

.method private static ICustomTabsService(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method

.method static asBinder(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    iget-object v0, v0, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onNavigationEvent:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static asInterface()Z
    .locals 9

    const-string v0, "copyMemory"

    const-string v1, "getLong"

    sget-object v2, Lo/shouldShowContactUsOnFaqScreens;->onMessageChannelReady:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "objectFieldOffset"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback$Stub()Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_1

    return v3

    :cond_1
    invoke-static {}, Lo/setAppBarLayout;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_2

    return v5

    :cond_2
    const-string v6, "getByte"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putByte"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "getInt"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putInt"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putLong"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v6, v1

    const/4 v1, 0x4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v6, v1

    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :catchall_0
    move-exception v0

    sget-object v1, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.google.protobuf.UnsafeUtil"

    const-string v5, "supportsUnsafeByteBufferOperations"

    invoke-virtual {v1, v2, v4, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method static synthetic asInterface(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lo/shouldShowContactUsOnFaqScreens;->newSession(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private static extraCallback(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lo/shouldShowContactUsOnFaqScreens;->onTransact:Z

    if-eqz v0, :cond_0

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    iget-object v0, v0, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onNavigationEvent:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic extraCallback()J
    .locals 2

    sget-wide v0, Lo/shouldShowContactUsOnFaqScreens;->asInterface:J

    return-wide v0
.end method

.method static extraCallback(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    invoke-virtual {v0, p0, p1, p2}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onRelationshipValidationResult(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static extraCallback(Ljava/lang/reflect/Field;)J
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onPostMessage(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method static synthetic extraCallback(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static extraCallback(Ljava/lang/Object;JZ)V
    .locals 0

    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens;->onMessageChannelReady(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static extraCallback([BJB)V
    .locals 3

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    sget-wide v1, Lo/shouldShowContactUsOnFaqScreens;->asInterface:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onPostMessage(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static newSession(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback$Stub$Proxy(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static onMessageChannelReady(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    not-int p1, p2

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {p0, v0, v1, p1}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    return-void
.end method

.method static onMessageChannelReady(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    invoke-virtual {v0, p0, p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/Object;JF)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static onMessageChannelReady()Z
    .locals 1

    sget-boolean v0, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback$Stub:Z

    return v0
.end method

.method static onMessageChannelReady(Ljava/lang/Object;J)Z
    .locals 1

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    invoke-virtual {v0, p0, p1, p2}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static onNavigationEvent([BJ)B
    .locals 3

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    sget-wide v1, Lo/shouldShowContactUsOnFaqScreens;->asInterface:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static onNavigationEvent(Ljava/lang/Object;J)F
    .locals 1

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    invoke-virtual {v0, p0, p1, p2}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private static onNavigationEvent(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lo/shouldShowContactUsOnFaqScreens;->onTransact:Z

    if-eqz v0, :cond_0

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    iget-object v0, v0, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onNavigationEvent:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static onNavigationEvent(Ljava/nio/ByteBuffer;)J
    .locals 3

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    sget-wide v1, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsService$Stub:J

    invoke-virtual {v0, p0, v1, v2}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onRelationshipValidationResult(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static onNavigationEvent(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static onNavigationEvent()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lo/showContactUsOnFaqScreens;

    invoke-direct {v0}, Lo/showContactUsOnFaqScreens;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static onNavigationEvent(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {p0, v0, v1, p1}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback(Ljava/lang/Object;JI)V

    return-void
.end method

.method static onNavigationEvent(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/Object;JD)V

    return-void
.end method

.method static onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    iget-object v0, v0, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onNavigationEvent:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens;->extraCallback(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static onPostMessage(Ljava/lang/Object;J)D
    .locals 1

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    invoke-virtual {v0, p0, p1, p2}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onPostMessage(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic onPostMessage(Ljava/lang/Object;JB)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens;->onMessageChannelReady(Ljava/lang/Object;JB)V

    return-void
.end method

.method static onPostMessage(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    invoke-virtual {v0, p0, p1, p2, p3}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onPostMessage(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static onPostMessage([BJJJ)V
    .locals 8

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onRelationshipValidationResult:Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lo/shouldShowContactUsOnFaqScreens$ICustomTabsCallback;->onMessageChannelReady([BJJJ)V

    return-void
.end method

.method public static onPostMessage()Z
    .locals 1

    sget-boolean v0, Lo/shouldShowContactUsOnFaqScreens;->onTransact:Z

    return v0
.end method

.method private static onPostMessage(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, [B

    invoke-static {}, Lo/setAppBarLayout;->extraCallback()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Lo/shouldShowContactUsOnFaqScreens;->extraCallback:Ljava/lang/Class;

    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v4

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    return v2
.end method

.method private static onRelationshipValidationResult()Z
    .locals 8

    sget-object v0, Lo/shouldShowContactUsOnFaqScreens;->onMessageChannelReady:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "arrayBaseOffset"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "arrayIndexScale"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getInt"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putInt"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getLong"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putLong"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getObject"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putObject"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lo/setAppBarLayout;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const-string v2, "getByte"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putByte"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getBoolean"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putBoolean"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getFloat"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putFloat"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getDouble"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putDouble"

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception v0

    sget-object v2, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.google.protobuf.UnsafeUtil"

    const-string v5, "supportsUnsafeArrayOperations"

    invoke-virtual {v2, v3, v4, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic onRelationshipValidationResult(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lo/shouldShowContactUsOnFaqScreens;->warmup(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static synthetic onTransact(Ljava/lang/Object;J)B
    .locals 0

    invoke-static {p0, p1, p2}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsCallback$Stub$Proxy(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method private static warmup(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lo/shouldShowContactUsOnFaqScreens;->ICustomTabsService(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
