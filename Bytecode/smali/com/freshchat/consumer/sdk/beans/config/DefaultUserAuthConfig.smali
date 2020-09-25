.class public Lcom/freshchat/consumer/sdk/beans/config/DefaultUserAuthConfig;
.super Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;


# static fields
.field private static final DEFAULT_AUTH_TIMEOUT_INTERVAL:J = 0x7530L

.field private static final JWT_AUTH_ENABLED:Z = false

.field private static final STRICT_MODE_ENABLED:Z = false


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->setJwtAuthEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->setStrictModeEnabled(Z)V

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->setAuthTimeOutInterval(J)V

    return-void
.end method
