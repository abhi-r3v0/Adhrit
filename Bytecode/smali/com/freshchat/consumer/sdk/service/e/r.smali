.class public Lcom/freshchat/consumer/sdk/service/e/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/service/e/r$a;
    }
.end annotation


# instance fields
.field private gA:Lcom/freshchat/consumer/sdk/service/e/r$a;

.field private gr:Z


# direct methods
.method public constructor <init>(ZLcom/freshchat/consumer/sdk/service/e/r$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/service/e/r;->gr:Z

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/service/e/r;->gA:Lcom/freshchat/consumer/sdk/service/e/r$a;

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/service/e/r;->gr:Z

    return v0
.end method
