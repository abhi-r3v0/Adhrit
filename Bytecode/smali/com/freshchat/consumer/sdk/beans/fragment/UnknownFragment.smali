.class public Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;
.super Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;


# instance fields
.field private rawJsonOfUnsupportedType:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getRawJsonOfUnsupportedType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;->rawJsonOfUnsupportedType:Ljava/lang/String;

    return-object v0
.end method

.method public setRawJsonOfUnsupportedType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;->rawJsonOfUnsupportedType:Ljava/lang/String;

    return-void
.end method
