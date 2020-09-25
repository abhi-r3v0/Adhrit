.class public final Lo/setStorageBucket$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setStorageBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# static fields
.field private static final PUSH_CHARS:Ljava/lang/String; = "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

.field private static lastPushTime:J

.field private static final lastRandChars:[I

.field private static final randGen:Ljava/util/Random;


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Type;

.field private final arg$2:Lo/CrashlyticsReport$Type$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2026
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lo/setStorageBucket$onMessageChannelReady;->randGen:Ljava/util/Random;

    const-wide/16 v0, 0x0

    .line 2028
    sput-wide v0, Lo/setStorageBucket$onMessageChannelReady;->lastPushTime:J

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 2030
    sput-object v0, Lo/setStorageBucket$onMessageChannelReady;->lastRandChars:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;)V
    .locals 0

    .line 3000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setStorageBucket$onMessageChannelReady;->arg$1:Lo/CrashlyticsReport$Type;

    iput-object p2, p0, Lo/setStorageBucket$onMessageChannelReady;->arg$2:Lo/CrashlyticsReport$Type$extraCallback;

    return-void
.end method

.method public static declared-synchronized generatePushChildName(J)Ljava/lang/String;
    .locals 13

    const-class v0, Lo/setStorageBucket$onMessageChannelReady;

    monitor-enter v0

    .line 1033
    :try_start_0
    sget-wide v1, Lo/setStorageBucket$onMessageChannelReady;->lastPushTime:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmp-long v5, p0, v1

    if-nez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1034
    :goto_0
    sput-wide p0, Lo/setStorageBucket$onMessageChannelReady;->lastPushTime:J

    const/16 v2, 0x8

    new-array v2, v2, [C

    .line 1037
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x7

    :goto_1
    if-ltz v7, :cond_1

    const-string v8, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    const-wide/16 v9, 0x40

    .line 1039
    rem-long v11, p0, v9

    long-to-int v12, v11

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v2, v7

    .line 1040
    div-long/2addr p0, v9

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v9, p0, v7

    if-nez v9, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    .line 1042
    :goto_2
    invoke-static {p0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 1044
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/16 p0, 0xc

    if-nez v1, :cond_3

    const/4 p1, 0x0

    :goto_3
    if-ge p1, p0, :cond_4

    .line 1048
    sget-object v1, Lo/setStorageBucket$onMessageChannelReady;->lastRandChars:[I

    sget-object v2, Lo/setStorageBucket$onMessageChannelReady;->randGen:Ljava/util/Random;

    const/16 v7, 0x40

    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 1051
    :cond_3
    invoke-static {}, Lo/setStorageBucket$onMessageChannelReady;->incrementArray()V

    :cond_4
    const/4 p1, 0x0

    :goto_4
    if-ge p1, p0, :cond_5

    const-string v1, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    .line 1054
    sget-object v2, Lo/setStorageBucket$onMessageChannelReady;->lastRandChars:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 1056
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ne p0, v6, :cond_6

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 1057
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static incrementArray()V
    .locals 4

    const/16 v0, 0xb

    :goto_0
    if-ltz v0, :cond_1

    .line 1062
    sget-object v1, Lo/setStorageBucket$onMessageChannelReady;->lastRandChars:[I

    aget v2, v1, v0

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_0

    .line 1063
    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 1066
    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;)Ljava/lang/Runnable;
    .locals 1

    .line 5000
    new-instance v0, Lo/setStorageBucket$onMessageChannelReady;

    invoke-direct {v0, p0, p1}, Lo/setStorageBucket$onMessageChannelReady;-><init>(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 4000
    iget-object v0, p0, Lo/setStorageBucket$onMessageChannelReady;->arg$1:Lo/CrashlyticsReport$Type;

    iget-object v1, p0, Lo/setStorageBucket$onMessageChannelReady;->arg$2:Lo/CrashlyticsReport$Type$extraCallback;

    invoke-static {v0, v1}, Lo/CrashlyticsReport$Type;->lambda$runDelayedTasksUntil$6(Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Type$extraCallback;)V

    return-void
.end method
