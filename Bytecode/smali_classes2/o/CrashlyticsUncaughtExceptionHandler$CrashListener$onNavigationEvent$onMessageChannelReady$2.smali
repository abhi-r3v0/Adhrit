.class final Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private current:I

.field final synthetic this$0:Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady$2;->this$0:Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iget-object p1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady$2;->this$0:Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;

    invoke-static {p1}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;->access$000(Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady$2;->current:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 263
    iget v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady$2;->current:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady$2;->next()Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method

.method public final next()Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;
    .locals 7

    .line 268
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady$2;->this$0:Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;

    invoke-static {v0}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;->access$100(Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady;)J

    move-result-wide v0

    iget v2, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady$2;->current:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    int-to-long v4, v2

    and-long/2addr v0, v4

    .line 269
    new-instance v2, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;

    invoke-direct {v2}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;-><init>()V

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 270
    :goto_0
    iput-boolean v0, v2, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;->isOne:Z

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 271
    iget v4, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady$2;->current:I

    int-to-double v4, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v2, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onNavigationEvent;->chunkSize:I

    .line 272
    iget v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady$2;->current:I

    sub-int/2addr v0, v3

    iput v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent$onMessageChannelReady$2;->current:I

    return-object v2
.end method

.method public final remove()V
    .locals 0

    return-void
.end method
