.class public Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;
.super Lcom/freshchat/consumer/sdk/activity/b;

# interfaces
.implements Lcom/freshchat/consumer/sdk/j/ax;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static aS:J


# instance fields
.field private aA:Landroid/view/View;

.field private aB:Landroid/widget/ListView;

.field private aC:Landroid/widget/EditText;

.field private aD:Landroid/view/View;

.field private aE:Landroid/view/View;

.field private aF:Landroid/view/View;

.field private aG:Landroid/view/View;

.field private aH:Landroid/widget/ProgressBar;

.field private aI:Landroid/widget/TextView;

.field private aJ:Lo/onTransact;

.field private aK:Ljava/lang/String;

.field private aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

.field private aM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation
.end field

.field private aN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private aO:Z

.field private aQ:Lcom/freshchat/consumer/sdk/a/d;

.field private aR:Ljava/lang/String;

.field private aT:Landroid/os/CountDownTimer;

.field aU:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private aV:Landroid/text/TextWatcher;

.field private aW:Landroid/content/DialogInterface$OnClickListener;

.field private aX:Landroid/view/View$OnClickListener;

.field private aY:Landroid/view/View$OnClickListener;

.field private aZ:Landroid/view/View$OnLongClickListener;

.field private aq:Lcom/freshchat/consumer/sdk/b/e;

.field private av:Lcom/freshchat/consumer/sdk/c/g;

.field private aw:Landroid/content/ClipboardManager;

.field private ax:Lcom/freshchat/consumer/sdk/j/h;

.field private ay:Landroid/view/View;

.field private az:Landroid/view/View;

.field private ba:Lo/getCallingPackage$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getCallingPackage$ICustomTabsCallback<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private bb:Lo/getCallingPackage$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getCallingPackage$ICustomTabsCallback<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private bc:Landroid/view/View$OnClickListener;

.field bd:Landroid/view/View$OnClickListener;

.field private channelId:J

.field private channelType:Ljava/lang/String;

.field private eT:Lcom/freshchat/consumer/sdk/c/e;

.field private hE:Landroid/net/ConnectivityManager$NetworkCallback;

.field private lE:[Ljava/lang/String;

.field private le:Landroid/view/View;

.field private lf:Landroid/view/View;

.field private lg:Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

.field private lz:Lcom/freshchat/consumer/sdk/k/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aM:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aN:Ljava/util/Map;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$1;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aU:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$16;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$16;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aV:Landroid/text/TextWatcher;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$17;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$17;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aW:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$18;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$18;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aX:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$19;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$19;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aY:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$20;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$20;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aZ:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$21;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ba:Lo/getCallingPackage$ICustomTabsCallback;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$2;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->bb:Lo/getCallingPackage$ICustomTabsCallback;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$3;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->bc:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$7;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->bd:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic A(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lo/onTransact;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aJ:Lo/onTransact;

    return-object p0
.end method

.method private G()Lcom/freshchat/consumer/sdk/b/e;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aq:Lcom/freshchat/consumer/sdk/b/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aq:Lcom/freshchat/consumer/sdk/b/e;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aq:Lcom/freshchat/consumer/sdk/b/e;

    return-object v0
.end method

.method public static H()J
    .locals 2

    sget-wide v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aS:J

    return-wide v0
.end method

.method private I()Lcom/freshchat/consumer/sdk/a/d;
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aQ:Lcom/freshchat/consumer/sdk/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/a/d;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aM:Ljava/util/List;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aN:Ljava/util/Map;

    invoke-direct {v0, p0, v1, v2}, Lcom/freshchat/consumer/sdk/a/d;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aQ:Lcom/freshchat/consumer/sdk/a/d;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aQ:Lcom/freshchat/consumer/sdk/a/d;

    return-object v0
.end method

.method private J()Landroid/content/ClipboardManager;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aw:Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aw:Landroid/content/ClipboardManager;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aw:Landroid/content/ClipboardManager;

    return-object v0
.end method

.method private K()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->O()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->N()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private L()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ax:Lcom/freshchat/consumer/sdk/j/h;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ax:Lcom/freshchat/consumer/sdk/j/h;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/h;->eh()V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ax:Lcom/freshchat/consumer/sdk/j/h;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/h;->el()V

    :cond_1
    return-void
.end method

.method private M()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ax:Lcom/freshchat/consumer/sdk/j/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/h;->ek()Lcom/freshchat/consumer/sdk/j/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ax:Lcom/freshchat/consumer/sdk/j/h;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/h;->ek()Lcom/freshchat/consumer/sdk/j/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/h$a;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private N()V
    .locals 5

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ac()Lcom/freshchat/consumer/sdk/c/g;

    move-result-object v0

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/c/g;->m(J)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->at()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getConversationId()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/freshchat/consumer/sdk/j/b;->b(Landroid/content/Context;JJ)V

    :cond_0
    return-void
.end method

.method private O()V
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ac()Lcom/freshchat/consumer/sdk/c/g;

    move-result-object v0

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/c/g;->i(J)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unread marketing Ids for channel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/freshchat/consumer/sdk/j/aa;->g(Landroid/content/Context;J)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5, v1, v2}, Lcom/freshchat/consumer/sdk/h/b;->a(Landroid/content/Context;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private P()Lcom/freshchat/consumer/sdk/c/e;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->eT:Lcom/freshchat/consumer/sdk/c/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/c/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/c/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->eT:Lcom/freshchat/consumer/sdk/c/e;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->eT:Lcom/freshchat/consumer/sdk/c/e;

    return-object v0
.end method

.method private Q()Z
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/am;->iE:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/am;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private R()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->S()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aD:Landroid/view/View;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aY:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aD:Landroid/view/View;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aZ:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private S()V
    .locals 4

    new-instance v0, Lcom/freshchat/consumer/sdk/j/h;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/freshchat/consumer/sdk/j/h;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/ax;J)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ax:Lcom/freshchat/consumer/sdk/j/h;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    new-instance v0, Lcom/freshchat/consumer/sdk/f/b;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ax:Lcom/freshchat/consumer/sdk/j/h;

    invoke-direct {v0, p0, v1}, Lcom/freshchat/consumer/sdk/f/b;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/h;)V

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_voice_reply_progressbar:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aH:Landroid/widget/ProgressBar;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_voice_reply_time_elapsed_text:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aI:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aD:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aD:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aD:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private T()V
    .locals 2

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fa()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "Permissions required for voice messaging has NOT been granted. Requesting permission."

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_voice_messaging_permissions_rationale:I

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_voice_messaging_write_storage_permission_rationale:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_voice_messaging_audio_recording_permission_rationale:I

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/b/i;->e(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/j/am;->iE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/am;->b(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method private W()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bn()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/i/c;->dW()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private X()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->isGallerySelectionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->isCameraCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aF:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aF:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    return-void
.end method

.method private Y()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->isCameraCaptureEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->isGallerySelectionEnabled()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ab()V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aa()V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->Z()V

    :cond_2
    return-void
.end method

.method private Z()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/freshchat/consumer/sdk/j/az$b;->kR:Lcom/freshchat/consumer/sdk/j/az$b;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/az$b;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$bool;->freshchat_document_provider_enabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eY()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.GET_CONTENT"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x7d

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;J)J
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    return-wide p1
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/content/ClipboardManager;
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->J()Landroid/content/ClipboardManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/Conversation;)Lcom/freshchat/consumer/sdk/beans/Conversation;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

    return-object p1
.end method

.method private a(I)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aM:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Message;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;I)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(I)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aK:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Landroid/content/Context;JJZILjava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/c/e;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/e;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/c/e;->U(Ljava/lang/String;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/t;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/t;-><init>()V

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;-><init>()V

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/CsatResponse;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/beans/CsatResponse;-><init>()V

    invoke-virtual {v2, p3, p4}, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->setCsatId(J)Lcom/freshchat/consumer/sdk/beans/CsatResponse;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->setIssueResolved(Z)Lcom/freshchat/consumer/sdk/beans/CsatResponse;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->setConversationId(J)Lcom/freshchat/consumer/sdk/beans/CsatResponse;

    move-result-object p1

    if-lez p6, :cond_1

    invoke-virtual {p1, p6}, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->setStars(I)Lcom/freshchat/consumer/sdk/beans/CsatResponse;

    :cond_1
    invoke-static {p7}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1, p7}, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->setResponse(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/CsatResponse;

    :cond_2
    invoke-virtual {v1, p1}, Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;->setCsatResponse(Lcom/freshchat/consumer/sdk/beans/CsatResponse;)V

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/service/e/t;->a(Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/d/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Landroid/net/Uri;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x7f

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Landroid/view/MenuItem;Z)V
    .locals 4

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bo()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/freshchat/consumer/sdk/R$attr;->freshchatSpeakerIcon:I

    invoke-static {v0, v3, v2}, Lcom/freshchat/consumer/sdk/j/aq;->a(Landroid/content/Context;IZ)I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_speaker_phone_on:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/freshchat/consumer/sdk/R$attr;->freshchatEarpieceIcon:I

    invoke-static {v0, v3, v2}, Lcom/freshchat/consumer/sdk/j/aq;->a(Landroid/content/Context;IZ)I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_speaker_phone_off:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Landroid/net/Uri;I)V

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/Csat;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/beans/Csat;Z)V

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/Csat;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/beans/Csat;ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Z)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/Csat;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/beans/Csat;ZILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/Csat;ZILjava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getConversationId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Csat;->getCsatId()J

    move-result-wide v3

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Landroid/content/Context;JJZILjava/lang/String;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ad()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aC:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/i;->e(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/bg;->l(Landroid/content/Context;J)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_send_message_when_no_internet:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aC:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->e(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ac()Lcom/freshchat/consumer/sdk/c/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/c/g;->b(Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->kL:Lcom/freshchat/consumer/sdk/b/c;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/c;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->V()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/service/a/c;->bd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/service/a/c;->d(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/b;->M(Landroid/content/Context;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$15;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$15;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    invoke-static {v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p5}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->h(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p2

    new-instance p5, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    invoke-direct {p5}, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;-><init>()V

    invoke-virtual {p5, p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->setContent(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    const-string p1, "image/jpeg"

    invoke-virtual {p5, p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->setContentType(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-virtual {p5, p4}, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->setHeight(I)V

    invoke-virtual {p5, p3}, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;->setWidth(I)V

    invoke-virtual {p2, p5}, Lcom/freshchat/consumer/sdk/beans/Message;->addMessageFragment(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)V

    invoke-direct {p0, p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/beans/Message;)V

    const-string p1, "image"

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aD:Landroid/view/View;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aE:Landroid/view/View;

    :goto_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aE:Landroid/view/View;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aD:Landroid/view/View;

    goto :goto_0
.end method

.method private aa()V
    .locals 5

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fa()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/am;->aX(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_camera_permissions_rationale:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aR:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/x;->aF(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/freshchat/consumer/sdk/j/an;->a(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "HAS_ERRORS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aR:Ljava/lang/String;

    const/16 v1, 0x7e

    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    const-string v2, "ERROR_MESSAGE"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const-string v2, ""

    :goto_1
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v2, Lcom/freshchat/consumer/sdk/b/c;->dl:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aR:Ljava/lang/String;

    const-string v0, "FRESHCHAT"

    const-string v2, "Exception while initiating camera capture"

    invoke-static {v0, v2, v1}, Lcom/freshchat/consumer/sdk/j/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private ab()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_capture_from_camera:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_select_from_gallery:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/i;->m(Landroid/content/Context;)Lo/onTransact$onNavigationEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aW:Landroid/content/DialogInterface$OnClickListener;

    .line 1643
    iget-object v3, v1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v0, v3, Lo/onRelationshipValidationResult$ICustomTabsCallback;->getInterfaceDescriptor:[Ljava/lang/CharSequence;

    .line 1644
    iget-object v0, v1, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v2, v0, Lo/onRelationshipValidationResult$ICustomTabsCallback;->requestPostMessageChannel:Landroid/content/DialogInterface$OnClickListener;

    .line 1645
    invoke-virtual {v1}, Lo/onTransact$onNavigationEvent;->onMessageChannelReady()Lo/onTransact;

    return-void
.end method

.method private ac()Lcom/freshchat/consumer/sdk/c/g;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->av:Lcom/freshchat/consumer/sdk/c/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/c/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->av:Lcom/freshchat/consumer/sdk/c/g;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->av:Lcom/freshchat/consumer/sdk/c/g;

    return-object v0
.end method

.method private ad()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ag()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ah()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ao()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->an()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ar()V

    return-void
.end method

.method private ae()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aq:Lcom/freshchat/consumer/sdk/b/e;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->isResponseExpectationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    invoke-static {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/r;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/onPostMessage;->ICustomTabsCallback(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private af()J
    .locals 7

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->at()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getConversationId()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aM:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/service/d/c;->i(Lcom/freshchat/consumer/sdk/beans/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->getConversationId()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->getConversationId()J

    move-result-wide v1

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/Conversation;

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/Conversation;-><init>(J)V

    iget-wide v3, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    invoke-virtual {v0, v3, v4}, Lcom/freshchat/consumer/sdk/beans/Conversation;->setChannelId(J)Lcom/freshchat/consumer/sdk/beans/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

    :cond_2
    :goto_0
    return-wide v1
.end method

.method private ag()Z
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelType:Ljava/lang/String;

    const-string v1, "AGENT_ONLY"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private ah()V
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ap()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->an()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ar()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aB:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aM:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aB:Landroid/widget/ListView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private ai()Z
    .locals 2

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aM:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private aj()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->gg()Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getActiveConvMinFetchInterval()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private ak()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aT:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method private aq()V
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aC:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aA:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method private ar()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aA:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c(Landroid/view/View;)V

    return-void
.end method

.method private as()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aA:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_chat_resolution_positive_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->bd:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aA:Landroid/view/View;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_chat_resolution_negative_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->bd:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private at()Z
    .locals 5

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getConversationId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private au()Z
    .locals 5

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->at()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getCsat()Lcom/freshchat/consumer/sdk/beans/Csat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getCsat()Lcom/freshchat/consumer/sdk/beans/Csat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Csat;->getCsatId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private av()Z
    .locals 7

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Conversation;->hasPendingCsat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getCsat()Lcom/freshchat/consumer/sdk/beans/Csat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Csat;->getStatus()Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    move-result-object v2

    sget-object v3, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->NOT_RATED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->gg()Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/au;->a(Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->gg()Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/freshchat/consumer/sdk/j/au;->a(Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;Lcom/freshchat/consumer/sdk/beans/Csat;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->af()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->P()Lcom/freshchat/consumer/sdk/c/e;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/c/e;->t(J)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v5, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    invoke-static {v0, v2, v3, v5, v6}, Lcom/freshchat/consumer/sdk/j/bg;->c(Landroid/content/Context;JJ)V

    const/4 v2, 0x0

    :cond_3
    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aw()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->M()Z

    move-result v0

    if-nez v0, :cond_4

    return v4

    :cond_4
    return v1
.end method

.method private aw()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aC:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private ax()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aJ:Lo/onTransact;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelType:Ljava/lang/String;

    return-object p1
.end method

.method private b(J)V
    .locals 13

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ak()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->gg()Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getConversationConfig()Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->getActiveConvFetchBackoffRatio()D

    move-result-wide v9

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->gg()Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getActiveConvMaxFetchInterval()J

    move-result-wide v11

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$4;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move-wide v7, p1

    invoke-direct/range {v1 .. v12}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$4;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;JJJDJ)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aT:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "CHANNEL_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    const-string v0, "UNFETCHED_CHANNEL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/freshchat/consumer/sdk/activity/ChannelListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const-string v0, "CHANNEL_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aK:Ljava/lang/String;

    :cond_1
    const-string v0, "CHANNEL_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelType:Ljava/lang/String;

    :cond_2
    const-string v0, "INPUT_TAGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->lE:[Ljava/lang/String;

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->dh:Lcom/freshchat/consumer/sdk/b/c;

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/c;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$5;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aj()V

    return-void
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(J)V

    return-void
.end method

.method private b(Z)V
    .locals 13

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getCsat()Lcom/freshchat/consumer/sdk/beans/Csat;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ax()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    sget v1, Lcom/freshchat/consumer/sdk/R$attr;->freshchatCustomerSurveyDialog:I

    invoke-static {p0, v1}, Lcom/freshchat/consumer/sdk/b/i;->e(Landroid/content/Context;I)Lo/onTransact$onNavigationEvent;

    move-result-object v8

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_dialog_customer_survey:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_custsurvey_question_text:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_custsurvey_rating_bar:I

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RatingBar;

    sget v2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_custsurvey_user_comment:I

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    if-eqz p1, :cond_3

    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_resolution_survey_question:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Csat;->getQuestion()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Csat;->isMobileUserCommentsAllowed()Z

    move-result v1

    goto :goto_0

    :cond_3
    sget v2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_resolution_suggestions_prompt:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    :goto_0
    if-eqz p1, :cond_4

    invoke-direct {p0, v10}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v10}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c(Landroid/view/View;)V

    :goto_1
    if-eqz v1, :cond_5

    invoke-direct {p0, v5}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v5}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c(Landroid/view/View;)V

    :goto_2
    sget v11, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_rating_submit:I

    new-instance v12, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;

    move-object v1, v12

    move-object v2, p0

    move v3, p1

    move-object v4, v10

    move-object v6, v0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$11;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;ZLandroid/widget/RatingBar;Landroid/widget/EditText;Lcom/freshchat/consumer/sdk/beans/Csat;Z)V

    .line 2473
    iget-object v1, v8, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v2, v8, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iget-object v2, v2, Lo/onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->asInterface:Ljava/lang/CharSequence;

    .line 2474
    iget-object v1, v8, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v12, v1, Lo/onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback$Stub:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$13;

    invoke-direct {v1, p0, v0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$13;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Lcom/freshchat/consumer/sdk/beans/Csat;Z)V

    .line 2600
    iget-object v0, v8, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v1, v0, Lo/onRelationshipValidationResult$ICustomTabsCallback;->warmup:Landroid/content/DialogInterface$OnCancelListener;

    .line 2902
    iget-object v0, v8, Lo/onTransact$onNavigationEvent;->onMessageChannelReady:Lo/onRelationshipValidationResult$ICustomTabsCallback;

    iput-object v9, v0, Lo/onRelationshipValidationResult$ICustomTabsCallback;->extraCommand:Landroid/view/View;

    invoke-virtual {v8}, Lo/onTransact$onNavigationEvent;->onNavigationEvent()Lo/onTransact;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aJ:Lo/onTransact;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$14;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$14;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Z)V

    invoke-virtual {v10, v0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aJ:Lo/onTransact;

    new-instance v1, Lcom/freshchat/consumer/sdk/activity/d;

    invoke-direct {v1, p0, p1}, Lcom/freshchat/consumer/sdk/activity/d;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Z)V

    invoke-virtual {v0, v1}, Lo/onTransact;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aJ:Lo/onTransact;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_6
    :goto_3
    return-void
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aO:Z

    return p1
.end method

.method static synthetic c(J)J
    .locals 0

    sput-wide p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aS:J

    return-wide p0
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aE:Landroid/view/View;

    return-object p0
.end method

.method private c()V
    .locals 1

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_text_reply_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ay:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_voice_reply_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->az:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_chat_resolution_confirmation_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aA:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_list:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aB:Landroid/widget/ListView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_reply_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aC:Landroid/widget/EditText;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_record_voice_reply_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aD:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_send_reply_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aE:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conv_detail_attach_image:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aF:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_conversation_banner_message_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aG:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_activity_conversation_detail_progressbar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->le:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_activity_conversation_detail_content:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->lf:Landroid/view/View;

    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "MARKETING_ID"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "NOTIFICATION_CLICKED"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/freshchat/consumer/sdk/j/aa;->h(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private c(Landroid/net/Uri;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/j/az$b;->kR:Lcom/freshchat/consumer/sdk/j/az$b;

    new-instance v2, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;

    invoke-direct {v2, p0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$12;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Landroid/net/Uri;I)V

    invoke-static {v0, p1, v1, v2}, Lcom/freshchat/consumer/sdk/j/az;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/freshchat/consumer/sdk/j/az$b;Lcom/freshchat/consumer/sdk/j/az$a;)V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Z)V

    return-void
.end method

.method static synthetic d(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aC:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic e(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->T()V

    return-void
.end method

.method private eB()Landroid/net/ConnectivityManager;
    .locals 1

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic f(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aa()V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private fT()Z
    .locals 2

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/g;->aj(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private fU()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->fT()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/e;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/e;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->hE:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->eB()Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->hE:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private fV()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->fT()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->eB()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->hE:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->hE:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic g(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->Z()V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->h(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/beans/Message;)V

    const-string/jumbo p1, "text"

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private ga()V
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/k/c;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/k/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->lz:Lcom/freshchat/consumer/sdk/k/c;

    return-void
.end method

.method private gb()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->x()V

    return-void
.end method

.method private gf()V
    .locals 3

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ad()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aB:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->I()Lcom/freshchat/consumer/sdk/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aB:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aU:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aE:Landroid/view/View;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->bc:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->X()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aF:Landroid/view/View;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aX:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aC:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aV:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Z)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->R()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    const-string v1, "CONFIG_CONVERSATION_BANNER_MESSAGE"

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aG:Landroid/view/View;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aG:Landroid/view/View;

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aG:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private gg()Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->lg:Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->lg:Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->lg:Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    return-object v0
.end method

.method private h(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 7

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->af()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/freshchat/consumer/sdk/service/d/c;->a(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->af()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->setConversationId(J)V

    return-object p1
.end method

.method static synthetic h(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->Y()V

    return-void
.end method

.method static synthetic i(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aB:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic j(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aM:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/k/c;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->lz:Lcom/freshchat/consumer/sdk/k/c;

    return-object p0
.end method

.method static synthetic l(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aN:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic m(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/a/d;
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->I()Lcom/freshchat/consumer/sdk/a/d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aq()V

    return-void
.end method

.method static synthetic o(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->K()V

    return-void
.end method

.method private p()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bT()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/aa;->k(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic p(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->av()Z

    move-result p0

    return p0
.end method

.method static synthetic q(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->as()V

    return-void
.end method

.method static synthetic r(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    return-wide v0
.end method

.method static synthetic s(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ad()V

    return-void
.end method

.method static synthetic t(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aK:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ae()V

    return-void
.end method

.method static synthetic v(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ag()Z

    move-result p0

    return p0
.end method

.method static synthetic w(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ah()V

    return-void
.end method

.method static synthetic x(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/b/e;
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    return-object p0
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->lz:Lcom/freshchat/consumer/sdk/k/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/b;->gq()Lcom/freshchat/consumer/sdk/j/c/a;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/activity/f;->ld:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->al()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->le:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->lf:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->le:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->lf:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic y(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aH:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic z(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aI:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public U()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    const-string v3, "CHANNEL_ID"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportLoaderManager()Lo/getCallingPackage;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ba:Lo/getCallingPackage$ICustomTabsCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lo/getCallingPackage;->onPostMessage(ILandroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;

    return-void
.end method

.method public V()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    const-string v3, "CHANNEL_ID"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "EXTRA_FORCE_CLEAN_UP_EXPIRED_CSAT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportLoaderManager()Lo/getCallingPackage;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->bb:Lo/getCallingPackage$ICustomTabsCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Lo/getCallingPackage;->onPostMessage(ILandroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRESHCHAT"

    invoke-static {v0, p2}, Lcom/freshchat/consumer/sdk/j/ag;->a(Ljava/lang/String;Landroid/content/Intent;)V

    const-string v0, "com.freshchat.consumer.sdk.actions.ExpectedConversationResponseTimeUpdated"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ae()V

    return-void

    :cond_0
    const-string v0, "com.freshchat.consumer.sdk.actions.ChannelsUpdated"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.freshchat.consumer.sdk.actions.MessageStatusChanged"

    if-nez v0, :cond_4

    const-string v0, "com.freshchat.consumer.sdk.actions.MessagesUpdated"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "com.freshchat.consumer.sdk.actions.JwtIdTokenStateChanged"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->gb()V

    return-void

    :cond_2
    const-string p2, "com.freshchat.consumer.sdk.actions.JwtModeEnabledForAccount"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ap;->aZ(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/o;->bB(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->gb()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "CHANNEL_ID"

    invoke-static {p2, p1}, Lcom/freshchat/consumer/sdk/j/ag;->d(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_5

    const/4 p1, 0x1

    const-string v0, "STATUS_SUCCESS"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_message_sending_failed:I

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->V()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aC:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aC:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_6
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aB:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public a(Lcom/freshchat/consumer/sdk/j/h$a;)V
    .locals 3

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/h$a;->er()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/h$a;->er()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->h(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;-><init>()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/h$a;->er()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->setContent(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    const-string v2, "audio/mpeg3"

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->setContentType(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/h$a;->es()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;->setDuration(I)V

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->addMessageFragment(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aC:Landroid/widget/EditText;

    invoke-static {p1, v1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Lcom/freshchat/consumer/sdk/beans/Message;)V

    const-string p1, "audio"

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 7

    const-string v0, "com.freshchat.consumer.sdk.actions.JwtModeEnabledForAccount"

    const-string v1, "com.freshchat.consumer.sdk.actions.MessagesUpdated"

    const-string v2, "com.freshchat.consumer.sdk.actions.ChannelsUpdated"

    const-string v3, "com.freshchat.consumer.sdk.actions.MessageStatusChanged"

    const-string v4, "com.freshchat.consumer.sdk.actions.ExpectedConversationResponseTimeUpdated"

    const-string v5, "com.freshchat.consumer.sdk.actions.JwtIdTokenStateChanged"

    const-string v6, "com.freshchat.consumer.sdk.actions.TokenWaitTimeout"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public am()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->az:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method public an()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->az:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c(Landroid/view/View;)V

    return-void
.end method

.method public ao()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method public ap()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c(Landroid/view/View;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$8;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$9;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$10;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v0, -0x1

    const/16 v1, 0x7d

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->TAG:Ljava/lang/String;

    const-string v0, "onActivityResult::REQUEST_CODE_GALLERY"

    invoke-static {p2, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    sget-object p2, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->TAG:Ljava/lang/String;

    const-string p3, "onActivityResult::REQUEST_CODE_CAMERA"

    invoke-static {p2, p3}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aR:Ljava/lang/String;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Found Pic From Camera : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aR:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aR:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Landroid/net/Uri;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aR:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    const/16 v1, 0x7f

    if-ne p1, v1, :cond_3

    if-ne p2, v0, :cond_3

    :try_start_2
    new-instance p1, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;

    invoke-direct {p1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;-><init>()V

    invoke-virtual {p1, p3}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->d(Landroid/content/Intent;)Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->aK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->aJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/PictureAttachmentActivity$a;->aL()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    sget-object p3, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult::Request Code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Result: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->W()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->p()V

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/b;->M(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ga()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Landroid/content/Intent;)V

    sget p1, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_activity_conversation_detail:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aK:Ljava/lang/String;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Support"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aK:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->C()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->gf()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->lE:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;J[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->fU()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$menu;->freshchat_conversation_detail:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_toggle_speakerphone:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Landroid/view/MenuItem;Z)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onDestroy()V

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "Feedback activity is being destroyed"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->fV()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_toggle_speakerphone:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->h(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->G()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/e;->h(Z)V

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->a(Landroid/view/MenuItem;Z)V

    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onPause()V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aS:J

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ak()V

    :try_start_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ax()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aJ:Lo/onTransact;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->L()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->TAG:Ljava/lang/String;

    const-string p2, "Received response for audio recording permission request."

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/ai;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/am;->a([I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->TAG:Ljava/lang/String;

    sget p2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_voice_messaging_permissions_granted:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/ai;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->S()V

    return-void

    :cond_0
    sget-object p1, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->TAG:Ljava/lang/String;

    sget p2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_voice_messaging_permissions_not_granted:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/ai;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/am;->a([I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->TAG:Ljava/lang/String;

    sget p2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_camera_permissions_granted:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/ai;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aa()V

    return-void

    :cond_2
    sget-object p1, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->TAG:Ljava/lang/String;

    sget p2, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_camera_permissions_not_granted:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/ai;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/freshchat/consumer/sdk/activity/b;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onResume()V

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    sput-wide v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->aS:J

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/service/e/b$a;->gf:Lcom/freshchat/consumer/sdk/service/e/b$a;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/b$a;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lcom/freshchat/consumer/sdk/service/e/d$a;->gk:Lcom/freshchat/consumer/sdk/service/e/d$a;

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;ILcom/freshchat/consumer/sdk/service/e/d$a;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/b;->V(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/b;->L(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->channelId:J

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/freshchat/consumer/sdk/h/b;->a(Landroid/content/Context;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->gb()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->V()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onStop()V

    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "Conversation Detail activity is being stopped"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
