.class Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$1;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$1;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/p;->aD(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$1;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$1;->ca:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->a(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
