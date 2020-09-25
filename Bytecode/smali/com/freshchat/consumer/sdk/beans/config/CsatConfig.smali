.class public Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;
.super Ljava/lang/Object;


# instance fields
.field private csatAutoExpire:Z
    .annotation runtime Lo/computeStringSize;
        extraCallback = "userCsatViewTimer"
    .end annotation
.end field

.field private csatExpiryInterval:J
    .annotation runtime Lo/computeStringSize;
        extraCallback = "maximumUserSurveyViewMillis"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doesCsatAutoExpire()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->csatAutoExpire:Z

    return v0
.end method

.method public getCsatExpiryInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->csatExpiryInterval:J

    return-wide v0
.end method

.method public setCsatAutoExpire(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->csatAutoExpire:Z

    return-void
.end method

.method public setCsatExpiryInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->csatExpiryInterval:J

    return-void
.end method
