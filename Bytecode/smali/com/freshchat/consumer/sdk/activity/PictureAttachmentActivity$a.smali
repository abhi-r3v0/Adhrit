.class public Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private cb:Ljava/lang/String;

.field private cc:Ljava/lang/String;

.field private cd:Ljava/lang/String;

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->cb:Ljava/lang/String;

    return-object v0
.end method

.method public aK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public aL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->cd:Ljava/lang/String;

    return-object v0
.end method

.method public aM()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->cc:Ljava/lang/String;

    const-string v2, "PIC_URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->cb:Ljava/lang/String;

    const-string v2, "PIC_THUMB_URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->width:I

    const-string v2, "PICTURE_WIDTH"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->height:I

    const-string v2, "PICTURE_HEIGHT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->cd:Ljava/lang/String;

    const-string v2, "IMAGE_CAPTION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public d(Landroid/content/Intent;)Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;
    .locals 2

    const-string v0, "PIC_URL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->cc:Ljava/lang/String;

    const-string v0, "PIC_THUMB_URL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->cb:Ljava/lang/String;

    const/16 v0, 0x64

    const-string v1, "PICTURE_WIDTH"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->width:I

    const-string v1, "PICTURE_HEIGHT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->height:I

    const-string v0, "IMAGE_CAPTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->cd:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->width:I

    return v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->cb:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->cc:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->cd:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->width:I

    return-void
.end method
