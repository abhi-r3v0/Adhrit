.class public Lcom/freshchat/consumer/sdk/a/c;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/a/c$a;
    }
.end annotation


# instance fields
.field private final ao:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final ap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final cr:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/c;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/c;->ao:Ljava/util/List;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/c;->ap:Ljava/util/Map;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/c;->cr:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public e(I)Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/c;->ao:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Channel;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/c;->ao:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/a/c;->e(I)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/c;->cr:Landroid/view/LayoutInflater;

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_listitem_channel:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/freshchat/consumer/sdk/a/c$a;

    invoke-direct {p3, p2}, Lcom/freshchat/consumer/sdk/a/c$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/freshchat/consumer/sdk/a/c$a;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/a/c;->e(I)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object p1

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aR()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aS()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aT()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aT()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/a/c;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/ah;->bb(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aS()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aT()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->dM()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/a/c;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/af;->aw(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/FreshchatImageLoader;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aS()Landroid/widget/ImageView;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/freshchat/consumer/sdk/FreshchatImageLoader;->load(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Landroid/widget/ImageView;)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getLatestOrWelcomeMessage()Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v1

    const-string v3, ""

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Message;->getPreview()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/as;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aU()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aW()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/service/d/c;->i(Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/a/c;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Message;->getCreatedMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v0}, Lcom/freshchat/consumer/sdk/j/n;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aW()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aW()Landroid/widget/TextView;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aW()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aU()Landroid/widget/TextView;

    move-result-object v1

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/a/c;->ap:Ljava/util/Map;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/a/c;->ap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aV()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/c;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/at;->n(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aV()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/c$a;->aV()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-object p2
.end method
