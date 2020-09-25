.class public abstract Lcom/freshchat/consumer/sdk/service/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/a/b;


# instance fields
.field private final cS:Lcom/freshchat/consumer/sdk/j/ab;

.field private final context:Landroid/content/Context;

.field private final ft:Lcom/freshchat/consumer/sdk/service/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/a/d;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/service/a/d;->ft:Lcom/freshchat/consumer/sdk/service/a/a;

    new-instance p1, Lcom/freshchat/consumer/sdk/j/ab$a;

    invoke-direct {p1}, Lcom/freshchat/consumer/sdk/j/ab$a;-><init>()V

    new-instance p2, Lcom/freshchat/consumer/sdk/j/ab;

    const/4 v0, 0x1

    new-array v0, v0, [Lo/writeFloatNoTag;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p2, v0}, Lcom/freshchat/consumer/sdk/j/ab;-><init>([Lo/writeFloatNoTag;)V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/service/a/d;->cS:Lcom/freshchat/consumer/sdk/j/ab;

    return-void
.end method


# virtual methods
.method public ch()Lcom/freshchat/consumer/sdk/j/ab;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/a/d;->cS:Lcom/freshchat/consumer/sdk/j/ab;

    return-object v0
.end method

.method public dt()Lcom/freshchat/consumer/sdk/service/a/a;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/a/d;->ft:Lcom/freshchat/consumer/sdk/service/a/a;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/a/d;->context:Landroid/content/Context;

    return-object v0
.end method
