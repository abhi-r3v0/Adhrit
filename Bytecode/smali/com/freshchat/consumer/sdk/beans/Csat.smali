.class public Lcom/freshchat/consumer/sdk/beans/Csat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;
    }
.end annotation


# instance fields
.field private csatId:J

.field private initiatedTime:J
    .annotation runtime Lo/computeStringSize;
        extraCallback = "initiated"
    .end annotation
.end field

.field private isMandatory:Z

.field private mobileUserCommentsAllowed:Z

.field private question:Ljava/lang/String;

.field private transient status:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->NOT_RATED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->status:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    return-void
.end method


# virtual methods
.method public getCsatId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->csatId:J

    return-wide v0
.end method

.method public getInitiatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->initiatedTime:J

    return-wide v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->question:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->status:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    return-object v0
.end method

.method public isMandatory()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->isMandatory:Z

    return v0
.end method

.method public isMobileUserCommentsAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->mobileUserCommentsAllowed:Z

    return v0
.end method

.method public setCsatId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->csatId:J

    return-void
.end method

.method public setInitiatedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->initiatedTime:J

    return-void
.end method

.method public setMandatory(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->isMandatory:Z

    return-void
.end method

.method public setMobileUserCommentsAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->mobileUserCommentsAllowed:Z

    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->question:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->status:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Csat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "csatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->csatId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", question=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mobileUserCommentsAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->mobileUserCommentsAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMandatory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->isMandatory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->status:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initiatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Csat;->initiatedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
