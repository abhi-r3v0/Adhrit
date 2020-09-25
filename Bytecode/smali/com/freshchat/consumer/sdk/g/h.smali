.class public Lcom/freshchat/consumer/sdk/g/h;
.super Lcom/freshchat/consumer/sdk/g/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/g/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/g/c<",
        "Lcom/freshchat/consumer/sdk/beans/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field private ap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final av:Lcom/freshchat/consumer/sdk/c/g;

.field private eS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final eT:Lcom/freshchat/consumer/sdk/c/e;

.field private final eU:Lcom/freshchat/consumer/sdk/c/c;

.field private final kQ:Z

.field private lG:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/g/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/c/c;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/h;->eU:Lcom/freshchat/consumer/sdk/c/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/c/g;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/h;->av:Lcom/freshchat/consumer/sdk/c/g;

    new-instance v0, Lcom/freshchat/consumer/sdk/c/e;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/c/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/h;->eT:Lcom/freshchat/consumer/sdk/c/e;

    iput-boolean p2, p0, Lcom/freshchat/consumer/sdk/g/h;->kQ:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/g/h;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/g/h;->eS:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected dd()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/g/h;->kQ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/h;->eT:Lcom/freshchat/consumer/sdk/c/e;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/e;->fR()V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/h;->eU:Lcom/freshchat/consumer/sdk/c/c;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/h;->eS:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/c/c;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/h;->eU:Lcom/freshchat/consumer/sdk/c/c;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/c/c;->cw()Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/freshchat/consumer/sdk/g/h;->lG:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/freshchat/consumer/sdk/g/h;->lG:Z

    :goto_0
    new-instance v1, Lcom/freshchat/consumer/sdk/g/h$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/freshchat/consumer/sdk/g/h$a;-><init>(Lcom/freshchat/consumer/sdk/g/h;Lcom/freshchat/consumer/sdk/g/h$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/h;->av:Lcom/freshchat/consumer/sdk/c/g;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/c/g;->cF()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/g/h;->ap:Ljava/util/Map;

    return-object v0
.end method

.method public dh()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/h;->ap:Ljava/util/Map;

    return-object v0
.end method
