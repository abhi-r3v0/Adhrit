.class public Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;
.super Lcom/freshchat/consumer/sdk/activity/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;
    }
.end annotation


# instance fields
.field private aD:Landroid/view/View;

.field private aE:Landroid/view/View;

.field private aV:Landroid/text/TextWatcher;

.field private bQ:Lcom/freshchat/consumer/sdk/j/a/g;

.field private bR:Z

.field private bS:Landroid/view/View;

.field private bT:Landroid/view/View;

.field private bU:Landroid/widget/ImageView;

.field private bV:Landroid/widget/EditText;

.field private bW:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;

.field private bX:Landroid/widget/ProgressBar;

.field private bY:Landroid/view/View$OnClickListener;

.field private bZ:Lcom/freshchat/consumer/sdk/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bR:Z

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$1;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$1;-><init>(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->aV:Landroid/text/TextWatcher;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$2;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$2;-><init>(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bY:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$3;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$3;-><init>(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bZ:Lcom/freshchat/consumer/sdk/f/a;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "PICTURE_URL"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "REQUEST_CODE"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "ATTACHMENT_CREATION_MODE"

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x4000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "PICTURE_URL"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bV:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bW:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;

    return-object p0
.end method

.method private b(Landroid/net/Uri;I)V
    .locals 7

    new-instance v6, Lcom/freshchat/consumer/sdk/i/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bU:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bW:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bZ:Lcom/freshchat/consumer/sdk/f/a;

    move-object v0, v6

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/i/a;-><init>(Landroid/content/Context;Landroid/widget/ImageView;ILcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;Lcom/freshchat/consumer/sdk/f/a;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/net/Uri;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-virtual {v6, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bU:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bX:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic e(Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->aE:Landroid/view/View;

    return-object p0
.end method

.method private j(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ad;->aF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/j/a/c$a;

    const-string v2, "cache"

    invoke-direct {v1, v0, v2}, Lcom/freshchat/consumer/sdk/j/a/c$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x3d4ccccd    # 0.05f

    invoke-virtual {v1, v0, v2}, Lcom/freshchat/consumer/sdk/j/a/c$a;->a(Landroid/content/Context;F)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/p;->ar(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x438

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v3, Lcom/freshchat/consumer/sdk/j/a/g;

    invoke-direct {v3, v0, v2}, Lcom/freshchat/consumer/sdk/j/a/g;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bQ:Lcom/freshchat/consumer/sdk/j/a/g;

    invoke-virtual {v3, v1}, Lcom/freshchat/consumer/sdk/j/a/f;->c(Lcom/freshchat/consumer/sdk/j/a/c$a;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bQ:Lcom/freshchat/consumer/sdk/j/a/g;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bU:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bZ:Lcom/freshchat/consumer/sdk/f/a;

    invoke-virtual {v0, p1, v1, v2}, Lcom/freshchat/consumer/sdk/j/a/f;->a(Ljava/lang/Object;Landroid/widget/ImageView;Lcom/freshchat/consumer/sdk/f/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.actions.TokenWaitTimeout"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/onPostMessage;->onNavigationEvent(Z)V

    :cond_0
    new-instance p1, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;

    invoke-direct {p1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bW:Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;

    sget p1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_activity_picture_attachment:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sget p1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_picture_attachment_imageview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bU:Landroid/widget/ImageView;

    sget p1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_text_reply_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bT:Landroid/view/View;

    sget p1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_picture_attachment_progress_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bX:Landroid/widget/ProgressBar;

    sget p1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_reply_text:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bV:Landroid/widget/EditText;

    sget p1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_attach_image:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bS:Landroid/view/View;

    sget p1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_record_voice_reply_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->aD:Landroid/view/View;

    sget p1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_send_reply_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->aE:Landroid/view/View;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bS:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->aD:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->aE:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->aE:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->aE:Landroid/view/View;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bY:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "PICTURE_URL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ATTACHMENT_CREATION_MODE"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bR:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-string v2, "REQUEST_CODE"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->b(Landroid/net/Uri;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->j(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bT:Landroid/view/View;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->bV:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->aV:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    return-void
.end method
