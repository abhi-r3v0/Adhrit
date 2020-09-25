.class public Lcom/freshchat/consumer/sdk/j/ak;
.super Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private final cr:Landroid/view/LayoutInflater;

.field private iA:Landroid/view/ViewGroup;

.field private final iz:Lcom/freshchat/consumer/sdk/j/ae;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ae;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/j/ae;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak;->iz:Lcom/freshchat/consumer/sdk/j/ae;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/ak;->cr:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/ak;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_partial_message_fragment_audio:I

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ak;->iA:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_duration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_play:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;->getDuration()I

    move-result p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/n;->s(I)Ljava/lang/String;

    move-result-object p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v0
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;)Landroid/view/View;
    .locals 6

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/ak;->cr:Landroid/view/LayoutInflater;

    sget v2, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_partial_message_fragment_image:I

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/ak;->iA:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/ak;->iz:Lcom/freshchat/consumer/sdk/j/ae;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->getHeight()I

    move-result p1

    invoke-virtual {v3, v4, p1}, Lcom/freshchat/consumer/sdk/j/ae;->b(II)Landroid/graphics/Point;

    move-result-object p1

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/j/ak;->iz:Lcom/freshchat/consumer/sdk/j/ae;

    invoke-virtual {v5, v2, p1}, Lcom/freshchat/consumer/sdk/j/ae;->a(Landroid/view/View;Landroid/graphics/Point;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->a(II)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->dM()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;

    move-result-object p1

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/af;->aw(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/FreshchatImageLoader;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, p1, v2}, Lcom/freshchat/consumer/sdk/FreshchatImageLoader;->load(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Landroid/widget/ImageView;)V

    :cond_1
    new-instance p1, Lcom/freshchat/consumer/sdk/j/ak$1;

    invoke-direct {p1, p0, v0}, Lcom/freshchat/consumer/sdk/j/ak$1;-><init>(Lcom/freshchat/consumer/sdk/j/ak;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak;->cr:Landroid/view/LayoutInflater;

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_partial_message_fragment_text:I

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ak;->iA:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "LAUNCHED_FROM_CONVERSATION"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->c(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private b(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_unknown_fragment:I

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ak;->iA:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_unknown_fragment_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    move-object v3, p1

    :goto_0
    iget-object v4, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getUnsupportedFragmentConfig()Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1, v3}, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->getErrorMessage(Ljava/lang/Integer;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v4, p1}, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->getDisplayableErrorMessage(Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_unknown_message_fragment:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/ak;->a(Landroid/view/ViewGroup;)V

    instance-of p1, p2, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of p1, p2, Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of p1, p2, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    if-eqz p1, :cond_2

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of p1, p2, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;

    if-eqz p1, :cond_3

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;

    invoke-virtual {p0, p2}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/j/ak;->b(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ak;->cr:Landroid/view/LayoutInflater;

    sget v1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_partial_message_fragment_button:I

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/ak;->iA:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->getAndroidUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->getAndroidUri()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_2
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->e(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_deeplink_faq:I

    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;->getLabel()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/ak;->context:Landroid/content/Context;

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_deeplink:I

    goto :goto_1

    :goto_2
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    new-instance p1, Lcom/freshchat/consumer/sdk/j/ak$2;

    invoke-direct {p1, p0, v3}, Lcom/freshchat/consumer/sdk/j/ak$2;-><init>(Lcom/freshchat/consumer/sdk/j/ak;Landroid/net/Uri;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/ak;->iA:Landroid/view/ViewGroup;

    return-void
.end method
