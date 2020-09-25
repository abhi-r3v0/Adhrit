.class public Lcom/freshchat/consumer/sdk/beans/ColDef;
.super Ljava/lang/Object;


# instance fields
.field private columnConstraint:Ljava/lang/String;

.field private columnName:Ljava/lang/String;

.field private columnType:Ljava/lang/String;

.field private nullable:Z

.field private versionNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->columnConstraint:Ljava/lang/String;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->columnName:Ljava/lang/String;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->columnType:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->nullable:Z

    iput p4, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->versionNumber:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->columnConstraint:Ljava/lang/String;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->columnName:Ljava/lang/String;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->columnType:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->nullable:Z

    iput p4, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->versionNumber:I

    iput-object p5, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->columnConstraint:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumnConstraint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->columnConstraint:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnDefForQuery()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/ColDef;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/ColDef;->getColumnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/ColDef;->isNullable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, " NOT NULL "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/ColDef;->getColumnConstraint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->columnType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->versionNumber:I

    return v0
.end method

.method public isNullable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/ColDef;->nullable:Z

    return v0
.end method
