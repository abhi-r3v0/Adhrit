.class public Lcom/freshchat/consumer/sdk/a/d;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/a/d$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final aM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final aN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private final cA:Landroid/graphics/drawable/Drawable;

.field private final cB:Landroid/graphics/drawable/Drawable;

.field private final cC:I

.field private final cD:Ljava/lang/String;

.field private final cE:Ljava/lang/String;

.field private final cF:Ljava/lang/String;

.field private final cG:Ljava/lang/String;

.field private final cH:Ljava/lang/String;

.field private final cI:Ljava/lang/String;

.field private final cJ:Ljava/lang/String;

.field private final cK:I

.field private final cL:Lcom/freshchat/consumer/sdk/b/e;

.field private final cM:I

.field private final cN:I

.field private final cO:Z

.field private final cP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final cr:Landroid/view/LayoutInflater;

.field private final cy:Lcom/freshchat/consumer/sdk/j/ak;

.field private final cz:Landroid/graphics/drawable/Drawable;

.field private fM:Ljava/lang/Boolean;

.field private final ln:Ljava/lang/String;

.field private final lo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/a/d;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/Participant;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->cP:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->aM:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cr:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p2

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cL:Lcom/freshchat/consumer/sdk/b/e;

    new-instance p2, Lcom/freshchat/consumer/sdk/j/ak;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/j/ak;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cy:Lcom/freshchat/consumer/sdk/j/ak;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/d;->aN:Ljava/util/Map;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cL:Lcom/freshchat/consumer/sdk/b/e;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/b/e;->isTeamMemberInfoVisible()Z

    move-result p2

    iput-boolean p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cO:Z

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatTeamMemberAvatarIcon:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/freshchat/consumer/sdk/j/aq;->a(Landroid/content/Context;IZ)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cC:I

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/g;->bo(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cB:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatUserMessageTextStyle:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cG:Ljava/lang/String;

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatTeamMemberMessageTextStyle:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cH:Ljava/lang/String;

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatUserMessageTimeTextStyle:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cI:Ljava/lang/String;

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatTeamMemberMessageTimeTextStyle:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cJ:Ljava/lang/String;

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatUnsupportedUserMessageTextStyle:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->lo:Ljava/lang/String;

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatUnsupportedTeamMemberMessageTextStyle:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->ln:Ljava/lang/String;

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatChatBubbleLeft:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/aq;->j(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cM:I

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatChatBubbleRight:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/aq;->j(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cN:I

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/p;->ar(Landroid/content/Context;)I

    move-result p2

    div-int/lit8 p2, p2, 0x5

    iput p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cK:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/freshchat/consumer/sdk/R$drawable;->freshchat_ic_message_status_sent:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/d;->cA:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/freshchat/consumer/sdk/R$drawable;->freshchat_ic_message_status_pending:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/d;->cz:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/a/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->cD:Ljava/lang/String;

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_deeplink:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->cF:Ljava/lang/String;

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_deeplink_faq:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->cE:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/a/d$a;Lcom/freshchat/consumer/sdk/beans/Participant;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$a;->ba()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->fM:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->fM:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->fM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/a/d;->cO:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Participant;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Participant;->getProfilePicUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->a(II)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    move-result-object p2

    sget-object v0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;->CIRCULAR:Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    invoke-virtual {p2, v0}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->a(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->dM()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;

    move-result-object p2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/af;->aw(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/FreshchatImageLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoader;->load(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Landroid/widget/ImageView;)V

    :cond_2
    return-void

    :cond_3
    iget p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cC:I

    if-lez p2, :cond_4

    iget p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cC:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cB:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->cB:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void

    :cond_6
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(ZLcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getFragmentType()I

    move-result v0

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEXT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    sget p2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_text:I

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->cG:Ljava/lang/String;

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatUserMessageTextStyle:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->cH:Ljava/lang/String;

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatTeamMemberMessageTextStyle:I

    goto :goto_0

    :cond_1
    instance-of p2, p2, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;

    if-eqz p2, :cond_3

    sget p2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_unknown_fragment_text:I

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->lo:Ljava/lang/String;

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatUnsupportedUserMessageTextStyle:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->ln:Ljava/lang/String;

    sget p2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatUnsupportedTeamMemberMessageTextStyle:I

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    move-object p1, v2

    :goto_0
    if-eqz v2, :cond_4

    iget-object p3, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-static {p3, v2, p2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-static {p2, v2, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_default_agent_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private g(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->cA:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->cz:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private n(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Participant;
    .locals 1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->aN:Ljava/util/Map;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->aN:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Participant;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public f(I)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->aM:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->aM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Message;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d;->aM:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/a/d;->f(I)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/a/d;->f(I)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getCreatedMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->isRead()Z

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/a/d;->cr:Landroid/view/LayoutInflater;

    sget v4, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_listitem_message:I

    invoke-virtual {v3, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/freshchat/consumer/sdk/a/d$a;

    invoke-direct {p3, p2}, Lcom/freshchat/consumer/sdk/a/d$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/freshchat/consumer/sdk/a/d$a;

    :goto_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->isAgentMessage()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->aX()Landroid/widget/RelativeLayout;

    move-result-object v5

    const v6, 0x800005

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    iget v6, p0, Lcom/freshchat/consumer/sdk/a/d;->cN:I

    invoke-static {v5, v6}, Lcom/freshchat/consumer/sdk/j/aq;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->aY()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->ba()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bb()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bd()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bd()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getUploadState()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/freshchat/consumer/sdk/a/d;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->aX()Landroid/widget/RelativeLayout;

    move-result-object v6

    iget v7, p0, Lcom/freshchat/consumer/sdk/a/d;->cK:I

    invoke-static {v5, v6, v7, v2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;II)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bc()Landroid/widget/TextView;

    move-result-object v6

    sget v7, Lcom/freshchat/consumer/sdk/R$attr;->freshchatUserMessageTimeTextStyle:I

    invoke-static {v5, v6, v7}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bc()Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/freshchat/consumer/sdk/a/d;->cI:Ljava/lang/String;

    :goto_1
    invoke-static {v5, v6, v7}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->aX()Landroid/widget/RelativeLayout;

    move-result-object v5

    const v6, 0x800003

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    iget v6, p0, Lcom/freshchat/consumer/sdk/a/d;->cM:I

    invoke-static {v5, v6}, Lcom/freshchat/consumer/sdk/j/aq;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->aY()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageUserAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/freshchat/consumer/sdk/a/d;->n(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Participant;

    move-result-object v5

    invoke-direct {p0, p3, v5}, Lcom/freshchat/consumer/sdk/a/d;->a(Lcom/freshchat/consumer/sdk/a/d$a;Lcom/freshchat/consumer/sdk/beans/Participant;)V

    iget-boolean v6, p0, Lcom/freshchat/consumer/sdk/a/d;->cO:Z

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/freshchat/consumer/sdk/beans/Participant;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/freshchat/consumer/sdk/beans/Participant;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/freshchat/consumer/sdk/a/d;->cD:Ljava/lang/String;

    :goto_2
    invoke-static {v5}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bb()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bb()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bb()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bd()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->aX()Landroid/widget/RelativeLayout;

    move-result-object v6

    iget v7, p0, Lcom/freshchat/consumer/sdk/a/d;->cK:I

    invoke-static {v5, v6, v2, v7}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;II)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bc()Landroid/widget/TextView;

    move-result-object v6

    sget v7, Lcom/freshchat/consumer/sdk/R$attr;->freshchatTeamMemberMessageTimeTextStyle:I

    invoke-static {v5, v6, v7}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bc()Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/freshchat/consumer/sdk/a/d;->cJ:Ljava/lang/String;

    goto/16 :goto_1

    :goto_4
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getMessageFragments()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bc()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->aZ()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    iget-object v6, p0, Lcom/freshchat/consumer/sdk/a/d;->cy:Lcom/freshchat/consumer/sdk/j/ak;

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->aZ()Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/freshchat/consumer/sdk/j/ak;->a(Landroid/view/ViewGroup;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v3, v5, v6}, Lcom/freshchat/consumer/sdk/a/d;->a(ZLcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;Landroid/view/View;)V

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->aZ()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_6
    const-wide/16 v5, 0x64

    cmp-long p1, v0, v5

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/d;->context:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/freshchat/consumer/sdk/j/n;->i(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bc()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bc()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_7
    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/a/d$a;->bc()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_6
    return-object p2
.end method
