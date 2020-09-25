.class Lcom/freshchat/consumer/sdk/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final cs:Landroid/widget/TextView;

.field private final ct:Landroid/widget/ImageView;

.field private final cu:Landroid/widget/TextView;

.field private final cv:Landroid/widget/TextView;

.field private final cw:Landroid/widget/TextView;

.field private final cx:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_channel_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/c$a;->cs:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_channel_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/c$a;->ct:Landroid/widget/ImageView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_channel_icon_alt_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/c$a;->cu:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_channel_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/c$a;->cw:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_channel_unread_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/c$a;->cv:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_channel_last_updated:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/c$a;->cx:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public aR()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/c$a;->cs:Landroid/widget/TextView;

    return-object v0
.end method

.method public aS()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/c$a;->ct:Landroid/widget/ImageView;

    return-object v0
.end method

.method public aT()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/c$a;->cu:Landroid/widget/TextView;

    return-object v0
.end method

.method public aU()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/c$a;->cw:Landroid/widget/TextView;

    return-object v0
.end method

.method public aV()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/c$a;->cv:Landroid/widget/TextView;

    return-object v0
.end method

.method public aW()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/c$a;->cx:Landroid/widget/TextView;

    return-object v0
.end method
