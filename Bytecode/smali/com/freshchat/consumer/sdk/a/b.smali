.class public Lcom/freshchat/consumer/sdk/a/b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/a/b$a;,
        Lcom/freshchat/consumer/sdk/a/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/freshchat/consumer/sdk/a/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final ah:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final ch:Z

.field private final ci:Z

.field private final cj:Lcom/freshchat/consumer/sdk/a/b$a;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLcom/freshchat/consumer/sdk/a/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Category;",
            ">;Z",
            "Lcom/freshchat/consumer/sdk/a/b$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/a/b;->cj:Lcom/freshchat/consumer/sdk/a/b$a;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/b;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/b;->ah:Ljava/util/List;

    iput-boolean p3, p0, Lcom/freshchat/consumer/sdk/a/b;->ch:Z

    xor-int/lit8 p1, p3, 0x1

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/a/b;->ci:Z

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/a/b;)Lcom/freshchat/consumer/sdk/a/b$a;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/a/b;->cj:Lcom/freshchat/consumer/sdk/a/b$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/freshchat/consumer/sdk/a/b$b;
    .locals 2

    sget p2, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_listitem_category:I

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/a/b;->ch:Z

    if-eqz v0, :cond_0

    sget p2, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_listitem_category_for_grid:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/a/b$b;

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/a/b;->ci:Z

    invoke-direct {p2, p1, v0}, Lcom/freshchat/consumer/sdk/a/b$b;-><init>(Landroid/view/View;Z)V

    return-object p2
.end method

.method public a(Lcom/freshchat/consumer/sdk/a/b$b;I)V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/b;->ah:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/Category;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/b$b;->aN()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Category;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eX()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/a/b;->ch:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/b$b;->aN()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/b$b;->aN()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x5

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/b$b;->aN()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ah;->getTextDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_1
    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/a/b;->ci:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Category;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/b$b;->aO()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Category;->getDescription()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/b$b;->aO()Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Category;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Category;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/b$b;->aP()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/b$b;->aQ()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/b$b;->aQ()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Category;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/a/b;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/b$b;->aP()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/b$b;->aQ()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/a/b;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$dimen;->freshchat_category_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Category;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->a(II)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->dM()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/a/b;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/af;->aw(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/FreshchatImageLoader;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/b$b;->aP()Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/freshchat/consumer/sdk/FreshchatImageLoader;->load(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Landroid/widget/ImageView;)V

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/b$b;->getRootView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/freshchat/consumer/sdk/a/b$1;

    invoke-direct {v0, p0, p2}, Lcom/freshchat/consumer/sdk/a/b$1;-><init>(Lcom/freshchat/consumer/sdk/a/b;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/b;->ah:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/a/b$b;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/b;->a(Lcom/freshchat/consumer/sdk/a/b$b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/b;->a(Landroid/view/ViewGroup;I)Lcom/freshchat/consumer/sdk/a/b$b;

    move-result-object p1

    return-object p1
.end method
