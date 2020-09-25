.class public Lcom/freshchat/consumer/sdk/service/e/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# instance fields
.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private cameraCaptureEnabled:Z

.field private domain:Ljava/lang/String;

.field private gs:Z

.field private gt:Z

.field private responseExpectationEnabled:Z

.field private teamMemberInfoVisible:Z


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/FreshchatConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/l;->responseExpectationEnabled:Z

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/l;->teamMemberInfoVisible:Z

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/l;->cameraCaptureEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/freshchat/consumer/sdk/service/e/l;->gs:Z

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/l;->gt:Z

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/service/e/l;->o(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/service/e/l;->p(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/service/e/l;->setDomain(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->isResponseExpectationEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/service/e/l;->w(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->isTeamMemberInfoVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/service/e/l;->d(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->isCameraCaptureEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/service/e/l;->e(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->isGallerySelectionEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/e/l;->g(Z)V

    return-void
.end method


# virtual methods
.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/service/e/l;->teamMemberInfoVisible:Z

    return-void
.end method

.method public dI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/l;->gs:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/service/e/l;->cameraCaptureEnabled:Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/service/e/l;->gt:Z

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/l;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/l;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/l;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public isCameraCaptureEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/l;->cameraCaptureEnabled:Z

    return v0
.end method

.method public isGallerySelectionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/l;->gt:Z

    return v0
.end method

.method public isResponseExpectationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/l;->responseExpectationEnabled:Z

    return v0
.end method

.method public isTeamMemberInfoVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/l;->teamMemberInfoVisible:Z

    return v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/l;->appId:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/l;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/l;->domain:Ljava/lang/String;

    return-void
.end method

.method public w(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/service/e/l;->responseExpectationEnabled:Z

    return-void
.end method
