.class public Lcom/freshchat/consumer/sdk/a/b$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final cm:Landroid/view/View;

.field private final cn:Landroid/widget/TextView;

.field private final co:Landroid/widget/TextView;

.field private final cp:Landroid/widget/ImageView;

.field private final cq:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/b$b;->cm:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_category_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/b$b;->cn:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_category_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/b$b;->cp:Landroid/widget/ImageView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_category_icon_alt_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/b$b;->cq:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    sget p2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_category_desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    :goto_0
    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/b$b;->co:Landroid/widget/TextView;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public aN()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/b$b;->cn:Landroid/widget/TextView;

    return-object v0
.end method

.method public aO()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/b$b;->co:Landroid/widget/TextView;

    return-object v0
.end method

.method public aP()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/b$b;->cp:Landroid/widget/ImageView;

    return-object v0
.end method

.method public aQ()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/b$b;->cq:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/b$b;->cm:Landroid/view/View;

    return-object v0
.end method
