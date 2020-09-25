.class public Lcom/freshchat/consumer/sdk/j/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/r$a;
    }
.end annotation


# static fields
.field private static hC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;",
            ">;"
        }
    .end annotation
.end field

.field private static hD:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/r;->hC:Ljava/util/Map;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->getResponseTimeType()Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;->ALL_MEMBERS_AWAY_RESPONSE:Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    if-ne v1, v2, :cond_1

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_all_members_away_message:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->getResponseTimeType()Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;->CUSTOM_RESPONSE:Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->getCustomResponseTimeMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->getResponseTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->getResponseTimeType()Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    move-result-object p1

    long-to-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    sget-object v0, Lcom/freshchat/consumer/sdk/j/r$a;->kx:Lcom/freshchat/consumer/sdk/j/r$a;

    invoke-virtual {v0, p0, p1}, Lcom/freshchat/consumer/sdk/j/r$a;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/high16 v3, 0x425c0000    # 55.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_5

    :try_start_0
    sget-object v2, Lcom/freshchat/consumer/sdk/j/r$a;->ky:Lcom/freshchat/consumer/sdk/j/r$a;

    invoke-virtual {v2, p0, p1}, Lcom/freshchat/consumer/sdk/j/r$a;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;)Ljava/lang/String;

    move-result-object p1

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_placeholder_minutes:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_0

    :cond_4
    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x5

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "FRESHCHAT_WARNING"

    const-string p1, "Channels response time to String conversation error"

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    cmpg-float v0, v1, v2

    if-gez v0, :cond_6

    sget-object v0, Lcom/freshchat/consumer/sdk/j/r$a;->kz:Lcom/freshchat/consumer/sdk/j/r$a;

    invoke-virtual {v0, p0, p1}, Lcom/freshchat/consumer/sdk/j/r$a;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/high16 v0, 0x42f00000    # 120.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_7

    sget-object v0, Lcom/freshchat/consumer/sdk/j/r$a;->kA:Lcom/freshchat/consumer/sdk/j/r$a;

    invoke-virtual {v0, p0, p1}, Lcom/freshchat/consumer/sdk/j/r$a;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v0, Lcom/freshchat/consumer/sdk/j/r$a;->kB:Lcom/freshchat/consumer/sdk/j/r$a;

    invoke-virtual {v0, p0, p1}, Lcom/freshchat/consumer/sdk/j/r$a;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/reqres/ChannelsResponseTimeResponse;)V
    .locals 7

    sget-object v0, Lcom/freshchat/consumer/sdk/j/r;->hC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/reqres/ChannelsResponseTimeResponse;->getChannelResponseTimesFor7Days()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/reqres/ChannelsResponseTimeResponse;->getChannelResponseTime()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/reqres/ChannelsResponseTimeResponse;->getChannelsCustomResponseTimeMessage()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/reqres/ChannelsResponseTimeResponse;->getChannelsWithAllMembersAway()Ljava/util/List;

    move-result-object p1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;

    sget-object v4, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;->LAST_WEEK_AVG:Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    invoke-virtual {v3, v4}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->setResponseTimeType(Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;)V

    sget-object v4, Lcom/freshchat/consumer/sdk/j/r;->hC:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->getChannelId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;

    sget-object v3, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;->CURRENT_AVG:Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    invoke-virtual {v1, v3}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->setResponseTimeType(Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;)V

    sget-object v3, Lcom/freshchat/consumer/sdk/j/r;->hC:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->getChannelId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;->CUSTOM_RESPONSE:Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->setResponseTimeType(Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->getCustomResponseTimeMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->getCustomResponseTimeMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/freshchat/consumer/sdk/j/r;->hC:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->getChannelId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_all_members_away_message:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;->ALL_MEMBERS_AWAY_RESPONSE:Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->setResponseTimeType(Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;)V

    sget-object v0, Lcom/freshchat/consumer/sdk/j/r;->hC:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;->getChannelId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/r;->ex()V

    return-void
.end method

.method public static d(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/r;->r(J)Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/r;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static ex()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/freshchat/consumer/sdk/j/r;->hD:J

    return-void
.end method

.method public static ey()J
    .locals 2

    sget-wide v0, Lcom/freshchat/consumer/sdk/j/r;->hD:J

    return-wide v0
.end method

.method private static r(J)Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/j/r;->hC:Ljava/util/Map;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/j/r;->hC:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/j/r;->hC:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
