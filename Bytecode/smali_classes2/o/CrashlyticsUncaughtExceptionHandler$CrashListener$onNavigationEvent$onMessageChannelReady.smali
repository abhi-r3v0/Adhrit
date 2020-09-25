.class Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final length:I

.field private value:J


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    .line 245
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;->length:I

    int-to-double v0, v0

    .line 246
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    int-to-long v2, p1

    and-long/2addr v0, v2

    .line 247
    iput-wide v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;->value:J

    return-void
.end method

.method static synthetic access$000(Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;)I
    .locals 0

    .line 238
    iget p0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;->length:I

    return p0
.end method

.method static synthetic access$100(Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;)J
    .locals 2

    .line 238
    iget-wide v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;->value:J

    return-wide v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady$2;

    invoke-direct {v0, p0}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady$2;-><init>(Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;)V

    return-object v0
.end method
