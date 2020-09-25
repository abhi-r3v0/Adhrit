.class Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$2;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$2;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->b(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$2;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->a(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$2;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->b(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->aM()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$2;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$2;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
