.class public final Lo/saveNode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/saveNode$extraCallback;,
        Lo/saveNode$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/saveNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:J

.field private static final extraCallback:Lo/saveNode$extraCallback;

.field private static final onNavigationEvent:J

.field private static final onPostMessage:J


# instance fields
.field private volatile asBinder:Z

.field private final asInterface:J

.field private final onMessageChannelReady:Lo/saveNode$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lo/saveNode$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/saveNode$extraCallback;-><init>(B)V

    sput-object v0, Lo/saveNode;->extraCallback:Lo/saveNode$extraCallback;

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0x8e94

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 39
    sput-wide v0, Lo/saveNode;->ICustomTabsCallback:J

    neg-long v0, v0

    sput-wide v0, Lo/saveNode;->onPostMessage:J

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lo/saveNode;->onNavigationEvent:J

    return-void
.end method

.method private constructor <init>(Lo/saveNode$ICustomTabsCallback;J)V
    .locals 7

    .line 102
    invoke-virtual {p1}, Lo/saveNode$ICustomTabsCallback;->extraCallback()J

    move-result-wide v2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lo/saveNode;-><init>(Lo/saveNode$ICustomTabsCallback;JJZ)V

    return-void
.end method

.method private constructor <init>(Lo/saveNode$ICustomTabsCallback;JJZ)V
    .locals 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lo/saveNode;->onMessageChannelReady:Lo/saveNode$ICustomTabsCallback;

    .line 109
    sget-wide v0, Lo/saveNode;->ICustomTabsCallback:J

    sget-wide v2, Lo/saveNode;->onPostMessage:J

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    add-long/2addr p2, p4

    .line 110
    iput-wide p2, p0, Lo/saveNode;->asInterface:J

    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    if-gtz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 111
    :goto_0
    iput-boolean p1, p0, Lo/saveNode;->asBinder:Z

    return-void
.end method

.method public static extraCallback(JLjava/util/concurrent/TimeUnit;)Lo/saveNode;
    .locals 2

    .line 67
    sget-object v0, Lo/saveNode;->extraCallback:Lo/saveNode$extraCallback;

    if-eqz p2, :cond_0

    .line 1094
    new-instance v1, Lo/saveNode;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p0

    invoke-direct {v1, v0, p0, p1}, Lo/saveNode;-><init>(Lo/saveNode$ICustomTabsCallback;J)V

    return-object v1

    .line 1289
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "units"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private onPostMessage(Lo/saveNode;)V
    .locals 3

    .line 295
    iget-object v0, p0, Lo/saveNode;->onMessageChannelReady:Lo/saveNode$ICustomTabsCallback;

    iget-object v1, p1, Lo/saveNode;->onMessageChannelReady:Lo/saveNode$ICustomTabsCallback;

    if-ne v0, v1, :cond_0

    return-void

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tickers ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/saveNode;->onMessageChannelReady:Lo/saveNode$ICustomTabsCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo/saveNode;->onMessageChannelReady:Lo/saveNode$ICustomTabsCallback;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") don\'t match. Custom Ticker should only be used in tests!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lo/saveNode;

    invoke-virtual {p0, p1}, Lo/saveNode;->onNavigationEvent(Lo/saveNode;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 245
    :cond_0
    instance-of v1, p1, Lo/saveNode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 249
    :cond_1
    check-cast p1, Lo/saveNode;

    .line 250
    iget-object v1, p0, Lo/saveNode;->onMessageChannelReady:Lo/saveNode$ICustomTabsCallback;

    if-nez v1, :cond_2

    iget-object v1, p1, Lo/saveNode;->onMessageChannelReady:Lo/saveNode$ICustomTabsCallback;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lo/saveNode;->onMessageChannelReady:Lo/saveNode$ICustomTabsCallback;

    if-eq v1, v3, :cond_3

    :goto_0
    return v2

    .line 253
    :cond_3
    iget-wide v3, p0, Lo/saveNode;->asInterface:J

    iget-wide v5, p1, Lo/saveNode;->asInterface:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final extraCallback(Ljava/util/concurrent/TimeUnit;)J
    .locals 7

    .line 173
    iget-object v0, p0, Lo/saveNode;->onMessageChannelReady:Lo/saveNode$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/saveNode$ICustomTabsCallback;->extraCallback()J

    move-result-wide v0

    .line 174
    iget-boolean v2, p0, Lo/saveNode;->asBinder:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lo/saveNode;->asInterface:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v2, 0x1

    .line 175
    iput-boolean v2, p0, Lo/saveNode;->asBinder:Z

    .line 177
    :cond_0
    iget-wide v2, p0, Lo/saveNode;->asInterface:J

    sub-long/2addr v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lo/saveNode;->onMessageChannelReady:Lo/saveNode$ICustomTabsCallback;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/saveNode;->asInterface:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()Z
    .locals 6

    .line 119
    iget-boolean v0, p0, Lo/saveNode;->asBinder:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 120
    iget-wide v2, p0, Lo/saveNode;->asInterface:J

    iget-object v0, p0, Lo/saveNode;->onMessageChannelReady:Lo/saveNode$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/saveNode$ICustomTabsCallback;->extraCallback()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 121
    iput-boolean v1, p0, Lo/saveNode;->asBinder:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final onNavigationEvent(Lo/saveNode;)I
    .locals 4

    .line 225
    invoke-direct {p0, p1}, Lo/saveNode;->onPostMessage(Lo/saveNode;)V

    .line 226
    iget-wide v0, p0, Lo/saveNode;->asInterface:J

    iget-wide v2, p1, Lo/saveNode;->asInterface:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 199
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lo/saveNode;->extraCallback(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 200
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-wide v4, Lo/saveNode;->onNavigationEvent:J

    div-long/2addr v2, v4

    .line 201
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-wide v6, Lo/saveNode;->onNavigationEvent:J

    rem-long/2addr v4, v6

    .line 203
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-gez v9, :cond_0

    const/16 v0, 0x2d

    .line 205
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v0, v4, v7

    if-lez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 209
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ".%09d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "s from now"

    .line 211
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v0, p0, Lo/saveNode;->onMessageChannelReady:Lo/saveNode$ICustomTabsCallback;

    sget-object v1, Lo/saveNode;->extraCallback:Lo/saveNode$extraCallback;

    if-eq v0, v1, :cond_2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " (ticker="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/saveNode;->onMessageChannelReady:Lo/saveNode$ICustomTabsCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
