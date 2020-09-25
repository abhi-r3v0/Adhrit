.class public Lcom/freshchat/consumer/sdk/service/e/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# instance fields
.field private eM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dG()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/g;->eM:Ljava/util/List;

    return-object v0
.end method

.method public t(Ljava/util/List;)Lcom/freshchat/consumer/sdk/service/e/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/service/e/g;"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/g;->eM:Ljava/util/List;

    return-object p0
.end method
