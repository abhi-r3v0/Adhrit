.class public Lcom/freshchat/consumer/sdk/beans/MessageMask;
.super Ljava/lang/Object;


# instance fields
.field private regex:Ljava/lang/String;

.field private replacementStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRegex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/MessageMask;->regex:Ljava/lang/String;

    return-object v0
.end method

.method public getReplacementStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/MessageMask;->replacementStr:Ljava/lang/String;

    return-object v0
.end method

.method public setRegex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/MessageMask;->regex:Ljava/lang/String;

    return-void
.end method

.method public setReplacementStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/MessageMask;->replacementStr:Ljava/lang/String;

    return-void
.end method
