.class Lcom/freshchat/consumer/sdk/g/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/g/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/freshchat/consumer/sdk/beans/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic eV:Lcom/freshchat/consumer/sdk/g/h;


# direct methods
.method private constructor <init>(Lcom/freshchat/consumer/sdk/g/h;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/g/h$a;->eV:Lcom/freshchat/consumer/sdk/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freshchat/consumer/sdk/g/h;Lcom/freshchat/consumer/sdk/g/h$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/g/h$a;-><init>(Lcom/freshchat/consumer/sdk/g/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/beans/Channel;Lcom/freshchat/consumer/sdk/beans/Channel;)I
    .locals 9

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getLatestOrWelcomeMessage()Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Channel;->getLatestOrWelcomeMessage()Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getPosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Channel;->getPosition()I

    move-result p2

    if-le p1, p2, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getLatestOrWelcomeMessage()Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Channel;->getLatestOrWelcomeMessage()Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getLatestOrWelcomeMessage()Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Message;->getCreatedMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Channel;->getLatestOrWelcomeMessage()Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Message;->getCreatedMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-gtz v0, :cond_7

    cmp-long v0, v5, v7

    if-lez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getPosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Channel;->getPosition()I

    move-result p2

    if-le p1, p2, :cond_6

    return v1

    :cond_6
    return v2

    :cond_7
    :goto_0
    cmp-long p1, v3, v5

    if-lez p1, :cond_8

    return v2

    :cond_8
    return v1

    :cond_9
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Channel;

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/Channel;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/g/h$a;->a(Lcom/freshchat/consumer/sdk/beans/Channel;Lcom/freshchat/consumer/sdk/beans/Channel;)I

    move-result p1

    return p1
.end method
