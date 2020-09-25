.class public Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;
.super Ljava/lang/Object;


# instance fields
.field private authTimeOutInterval:J

.field private jwtAuthEnabled:Z

.field private strictModeEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthTimeOutInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->authTimeOutInterval:J

    return-wide v0
.end method

.method public isJwtAuthEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->jwtAuthEnabled:Z

    return v0
.end method

.method public isStrictModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->strictModeEnabled:Z

    return v0
.end method

.method public setAuthTimeOutInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->authTimeOutInterval:J

    return-void
.end method

.method public setJwtAuthEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->jwtAuthEnabled:Z

    return-void
.end method

.method public setStrictModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->strictModeEnabled:Z

    return-void
.end method
