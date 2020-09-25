.class Lcom/freshchat/consumer/sdk/j/ak$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic iB:Ljava/lang/String;

.field final synthetic iC:Lcom/freshchat/consumer/sdk/j/ak;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/j/ak;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/ak$1;->iC:Lcom/freshchat/consumer/sdk/j/ak;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/j/ak$1;->iB:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/ak$1;->iC:Lcom/freshchat/consumer/sdk/j/ak;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/j/ak;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak$1;->iB:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak$1;->iC:Lcom/freshchat/consumer/sdk/j/ak;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/j/ak;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
