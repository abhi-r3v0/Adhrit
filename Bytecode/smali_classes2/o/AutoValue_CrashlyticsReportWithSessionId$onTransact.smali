.class final Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;
.super Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReportWithSessionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onTransact"
.end annotation


# static fields
.field private static ICustomTabsCallback:Lsun/misc/Unsafe;

.field private static ICustomTabsCallback$Stub:J

.field private static extraCallback:J

.field private static onMessageChannelReady:J

.field private static onNavigationEvent:J

.field private static onPostMessage:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1184
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1187
    :catch_0
    :try_start_1
    new-instance v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact$5;

    invoke-direct {v0}, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact$5;-><init>()V

    .line 1188
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1208
    :goto_0
    :try_start_2
    const-class v1, Lo/AutoValue_CrashlyticsReportWithSessionId;

    const-string v2, "onPostMessage"

    .line 1209
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->extraCallback:J

    const-string v2, "listeners"

    .line 1210
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->onMessageChannelReady:J

    const-string v2, "value"

    .line 1211
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->onPostMessage:J

    .line 1212
    const-class v1, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    const-string v2, "onNavigationEvent"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->onNavigationEvent:J

    .line 1213
    const-class v1, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    const-string v2, "ICustomTabsCallback"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->ICustomTabsCallback$Stub:J

    .line 1214
    sput-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->ICustomTabsCallback:Lsun/misc/Unsafe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 1216
    invoke-static {v0}, Lo/getOverridenSpiEndpoint;->extraCallback(Ljava/lang/Throwable;)V

    .line 1217
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 1204
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1173
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1173
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;-><init>()V

    return-void
.end method


# virtual methods
.method final extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)V
    .locals 3

    .line 1228
    sget-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->ICustomTabsCallback:Lsun/misc/Unsafe;

    sget-wide v1, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->ICustomTabsCallback$Stub:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReportWithSessionId<",
            "*>;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            ")Z"
        }
    .end annotation

    .line 1234
    sget-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->ICustomTabsCallback:Lsun/misc/Unsafe;

    sget-wide v2, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->extraCallback:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Ljava/lang/Thread;)V
    .locals 3

    .line 1223
    sget-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->ICustomTabsCallback:Lsun/misc/Unsafe;

    sget-wide v1, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->onNavigationEvent:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReportWithSessionId<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1246
    sget-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->ICustomTabsCallback:Lsun/misc/Unsafe;

    sget-wide v2, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->onPostMessage:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReportWithSessionId<",
            "*>;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;",
            ")Z"
        }
    .end annotation

    .line 1240
    sget-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->ICustomTabsCallback:Lsun/misc/Unsafe;

    sget-wide v2, Lo/AutoValue_CrashlyticsReportWithSessionId$onTransact;->onMessageChannelReady:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
