.class public Lcom/freshchat/consumer/sdk/j/b/c;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static volatile kq:Ljava/lang/String;

.field private static kr:Lcom/freshchat/consumer/sdk/j/b/a;

.field private static ks:J

.field private static kt:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/freshchat/consumer/sdk/j/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/j/b/c;->TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/freshchat/consumer/sdk/j/b/c;->ks:J

    const-wide/32 v0, 0x2932e00

    sput-wide v0, Lcom/freshchat/consumer/sdk/j/b/c;->kt:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/freshchat/consumer/sdk/j/b/a;)V
    .locals 4

    const-class v0, Lcom/freshchat/consumer/sdk/j/b/a;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/freshchat/consumer/sdk/j/b/c;->kr:Lcom/freshchat/consumer/sdk/j/b/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/freshchat/consumer/sdk/j/b/c;->ks:J

    sget-object p0, Lcom/freshchat/consumer/sdk/j/b/c;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NTP Recalculated at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/freshchat/consumer/sdk/j/b/c;->ks:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static fC()Lcom/freshchat/consumer/sdk/j/b/a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/b/c;->kr:Lcom/freshchat/consumer/sdk/j/b/a;

    return-object v0
.end method

.method public static fD()V
    .locals 8

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/freshchat/consumer/sdk/j/b/c;->ks:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/freshchat/consumer/sdk/j/b/c;->kt:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    sget-object v5, Lcom/freshchat/consumer/sdk/j/b/c;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "NTP c: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " lntp: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/freshchat/consumer/sdk/j/b/c;->ks:J

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " d: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " int: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/freshchat/consumer/sdk/j/b/c;->kt:J

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " calc: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/b/c;->fC()Lcom/freshchat/consumer/sdk/j/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    sget-object v0, Lcom/freshchat/consumer/sdk/j/b/c;->TAG:Ljava/lang/String;

    const-string v1, "Re-initing network time"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/j/b/b;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/b/b;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static fE()J
    .locals 7

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/b/c;->fC()Lcom/freshchat/consumer/sdk/j/b/a;

    move-result-object v0

    new-instance v1, Ljava/util/GregorianCalendar;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/b/a;->fB()J

    move-result-wide v3

    const-wide/32 v5, -0x80000000

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/j/b/c;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Adjustment offset for time "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-long/2addr v1, v3

    :cond_0
    return-wide v1
.end method
