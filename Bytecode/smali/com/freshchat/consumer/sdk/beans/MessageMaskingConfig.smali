.class public Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;
.super Ljava/lang/Object;


# instance fields
.field private messageMasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/freshchat/consumer/sdk/beans/MessageMask;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/computeStringSize;
        extraCallback = "androidMessageMasks"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageMasks()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/freshchat/consumer/sdk/beans/MessageMask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;->messageMasks:Ljava/util/LinkedList;

    return-object v0
.end method

.method public setMessageMasks(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/freshchat/consumer/sdk/beans/MessageMask;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;->messageMasks:Ljava/util/LinkedList;

    return-void
.end method
