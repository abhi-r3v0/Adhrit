.class public Lcom/freshchat/consumer/sdk/service/e/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/service/e/n$a;
    }
.end annotation


# instance fields
.field private categoryId:Ljava/lang/String;

.field private gu:Lcom/freshchat/consumer/sdk/service/e/n$a;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/freshchat/consumer/sdk/service/e/n$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/n;->categoryId:Ljava/lang/String;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/service/e/n;->v:Ljava/lang/String;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/service/e/n;->gu:Lcom/freshchat/consumer/sdk/service/e/n$a;

    return-void
.end method


# virtual methods
.method public dJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/n;->v:Ljava/lang/String;

    return-object v0
.end method

.method public dK()Lcom/freshchat/consumer/sdk/service/e/n$a;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/n;->gu:Lcom/freshchat/consumer/sdk/service/e/n$a;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/n;->categoryId:Ljava/lang/String;

    return-object v0
.end method
