.class public abstract Lcom/freshchat/consumer/sdk/service/c/a;
.super Lcom/freshchat/consumer/sdk/service/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1::",
        "Lcom/freshchat/consumer/sdk/service/e/j;",
        "T2::",
        "Lcom/freshchat/consumer/sdk/service/e/k;",
        ">",
        "Lcom/freshchat/consumer/sdk/service/c/b<",
        "TT1;TT2;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    move-result-object v0

    return-object v0
.end method
