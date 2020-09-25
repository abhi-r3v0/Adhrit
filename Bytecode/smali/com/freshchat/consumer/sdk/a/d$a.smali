.class Lcom/freshchat/consumer/sdk/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final cT:Landroid/widget/RelativeLayout;

.field private final cU:Landroid/widget/RelativeLayout;

.field private final cV:Landroid/widget/LinearLayout;

.field private final cW:Landroid/widget/ImageView;

.field private final cX:Landroid/widget/TextView;

.field private final cY:Landroid/widget/TextView;

.field private final cZ:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->cT:Landroid/widget/RelativeLayout;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_content_wrapper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->cU:Landroid/widget/RelativeLayout;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_fragment_wrapper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->cV:Landroid/widget/LinearLayout;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->cW:Landroid/widget/ImageView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_user_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->cX:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->cY:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_upload_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d$a;->cZ:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public aX()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->cT:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public aY()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->cU:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public aZ()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->cV:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public ba()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->cW:Landroid/widget/ImageView;

    return-object v0
.end method

.method public bb()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->cX:Landroid/widget/TextView;

    return-object v0
.end method

.method public bc()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->cY:Landroid/widget/TextView;

    return-object v0
.end method

.method public bd()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->cZ:Landroid/widget/ImageView;

    return-object v0
.end method
