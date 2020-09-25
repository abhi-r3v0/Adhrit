.class public Lcom/freshchat/consumer/sdk/beans/config/DefaultCsatConfig;
.super Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;


# static fields
.field private static final CSAT_TIME_LIMIT:I = 0x0

.field private static final CSAT_TIME_LIMITED:Z = false


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->setCsatAutoExpire(Z)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->setCsatExpiryInterval(J)V

    return-void
.end method
