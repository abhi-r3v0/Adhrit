.class public abstract Lcom/freshchat/consumer/sdk/service/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/c/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1::",
        "Lcom/freshchat/consumer/sdk/service/e/j;",
        "T2::",
        "Lcom/freshchat/consumer/sdk/service/e/k;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/freshchat/consumer/sdk/service/c/j<",
        "TT1;TT2;>;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private fK:Lcom/freshchat/consumer/sdk/b/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/c/b;->fK:Lcom/freshchat/consumer/sdk/b/e;

    return-void
.end method

.method public dw()Lcom/freshchat/consumer/sdk/b/e;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/c/b;->fK:Lcom/freshchat/consumer/sdk/b/e;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/c/b;->context:Landroid/content/Context;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/c/b;->context:Landroid/content/Context;

    return-void
.end method
