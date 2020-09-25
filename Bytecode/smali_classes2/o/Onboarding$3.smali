.class public final Lo/Onboarding$3;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Z

.field private extraCallback:J

.field private final onMessageChannelReady:Lo/Onboarding$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {}, Lo/Onboarding$1;->onMessageChannelReady()Lo/Onboarding$1;

    move-result-object v0

    iput-object v0, p0, Lo/Onboarding$3;->onMessageChannelReady:Lo/Onboarding$1;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .line 2182
    iget-boolean v0, p0, Lo/Onboarding$3;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Onboarding$3;->onMessageChannelReady:Lo/Onboarding$1;

    invoke-virtual {v0}, Lo/Onboarding$1;->onPostMessage()J

    move-result-wide v0

    iget-wide v2, p0, Lo/Onboarding$3;->extraCallback:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 195
    :goto_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final onPostMessage()Lo/Onboarding$3;
    .locals 2

    .line 147
    iget-boolean v0, p0, Lo/Onboarding$3;->ICustomTabsCallback:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 148
    iput-boolean v1, p0, Lo/Onboarding$3;->ICustomTabsCallback:Z

    .line 149
    iget-object v0, p0, Lo/Onboarding$3;->onMessageChannelReady:Lo/Onboarding$1;

    invoke-virtual {v0}, Lo/Onboarding$1;->onPostMessage()J

    move-result-wide v0

    iput-wide v0, p0, Lo/Onboarding$3;->extraCallback:J

    return-object p0

    .line 1511
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This stopwatch is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 3182
    iget-boolean v0, p0, Lo/Onboarding$3;->ICustomTabsCallback:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Onboarding$3;->onMessageChannelReady:Lo/Onboarding$1;

    invoke-virtual {v0}, Lo/Onboarding$1;->onPostMessage()J

    move-result-wide v3

    iget-wide v5, p0, Lo/Onboarding$3;->extraCallback:J

    sub-long/2addr v3, v5

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 3211
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-lez v0, :cond_1

    .line 3212
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    .line 3214
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-lez v0, :cond_2

    .line 3215
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    .line 3217
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-lez v0, :cond_3

    .line 3218
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    .line 3220
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-lez v0, :cond_4

    .line 3221
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    .line 3223
    :cond_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-lez v0, :cond_5

    .line 3224
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    .line 3226
    :cond_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-lez v0, :cond_6

    .line 3227
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    .line 3229
    :cond_6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_1
    long-to-double v1, v3

    .line 204
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v1, v3

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Lo/performUpdateApp;->ICustomTabsCallback(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3233
    sget-object v1, Lo/Onboarding$3$5;->onMessageChannelReady:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3249
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const-string v0, "d"

    goto :goto_2

    :pswitch_1
    const-string v0, "h"

    goto :goto_2

    :pswitch_2
    const-string v0, "min"

    goto :goto_2

    :pswitch_3
    const-string v0, "s"

    goto :goto_2

    :pswitch_4
    const-string v0, "ms"

    goto :goto_2

    :pswitch_5
    const-string v0, "\u03bcs"

    goto :goto_2

    :pswitch_6
    const-string v0, "ns"

    .line 207
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
