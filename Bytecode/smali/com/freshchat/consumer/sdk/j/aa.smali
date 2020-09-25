.class public Lcom/freshchat/consumer/sdk/j/aa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/aa$a;
    }
.end annotation


# static fields
.field private static final hJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/aa$1;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/aa$1;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/aa;->hJ:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/ConversationOptions;)Lcom/freshchat/consumer/sdk/j/m;
    .locals 0

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/c;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/z;)Lcom/freshchat/consumer/sdk/j/c;

    move-result-object p0

    instance-of p1, p0, Lcom/freshchat/consumer/sdk/j/m;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/freshchat/consumer/sdk/j/m;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FaqOptions;)Lcom/freshchat/consumer/sdk/j/v;
    .locals 0

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/c;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/z;)Lcom/freshchat/consumer/sdk/j/c;

    move-result-object p0

    instance-of p1, p0, Lcom/freshchat/consumer/sdk/j/v;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/freshchat/consumer/sdk/j/v;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;JJILcom/freshchat/consumer/sdk/service/e/d$a;Z)V
    .locals 15

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    if-eqz v0, :cond_6

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-gtz v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    new-instance v9, Lcom/freshchat/consumer/sdk/c/e;

    invoke-direct {v9, p0}, Lcom/freshchat/consumer/sdk/c/e;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    cmp-long v11, v3, v6

    if-nez v11, :cond_1

    invoke-virtual {v9, v1, v2}, Lcom/freshchat/consumer/sdk/c/e;->f(J)Lcom/freshchat/consumer/sdk/beans/Conversation;

    move-result-object v10

    :cond_1
    const/4 v12, 0x1

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getConversationId()J

    move-result-wide v13

    cmp-long v10, v13, v6

    if-nez v10, :cond_4

    :cond_2
    if-lez v11, :cond_3

    new-instance v6, Lcom/freshchat/consumer/sdk/beans/Conversation;

    invoke-direct {v6, v3, v4}, Lcom/freshchat/consumer/sdk/beans/Conversation;-><init>(J)V

    invoke-virtual {v6, v1, v2}, Lcom/freshchat/consumer/sdk/beans/Conversation;->setChannelId(J)Lcom/freshchat/consumer/sdk/beans/Conversation;

    invoke-virtual {v9, v6}, Lcom/freshchat/consumer/sdk/c/e;->a(Lcom/freshchat/consumer/sdk/beans/Conversation;)V

    :cond_3
    const/4 v8, 0x1

    :cond_4
    if-nez v8, :cond_5

    const/4 v1, 0x6

    if-ne v5, v1, :cond_5

    if-nez p7, :cond_5

    goto :goto_0

    :cond_5
    move v12, v8

    :goto_0
    if-eqz v12, :cond_6

    move-object/from16 v1, p6

    invoke-static {p0, v5, v1}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;ILcom/freshchat/consumer/sdk/service/e/d$a;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private static a(Landroid/content/Context;JZZZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateMarketingMessageStatus => marketingId = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], isDelivered = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], isClicked = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], isSeen = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRESHCHAT"

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;-><init>()V

    invoke-virtual {v0, p4}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;->clicked(I)Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;->delivered(I)Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;->seen(I)Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;->marketingId(J)Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;->build()Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/aa$a;)V
    .locals 2

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/freshchat/consumer/sdk/j/aa$a;->eD:Lcom/freshchat/consumer/sdk/j/aa$a;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bW()V

    return-void

    :cond_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/aa$a;->kF:Lcom/freshchat/consumer/sdk/j/aa$a;

    if-ne p1, v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/freshchat/consumer/sdk/j/i;->aq(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/aa$a;ZZ)V
    .locals 6

    const-string v0, "FRESHCHAT_WARNING"

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/h/b;->bj(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/service/d/d;->bl(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/y;->aG(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/FreshchatConfig;

    move-result-object v4

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/aa$a;)V

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/aa$a;)V

    if-eqz p3, :cond_1

    :try_start_0
    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/y;->a(Lcom/freshchat/consumer/sdk/FreshchatConfig;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/Freshchat;->getInstance(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object p3

    invoke-virtual {p3, v4}, Lcom/freshchat/consumer/sdk/Freshchat;->init(Lcom/freshchat/consumer/sdk/FreshchatConfig;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p3, "Unexpected Exception while processing resetUser"

    invoke-static {v0, p3, p1}, Lcom/freshchat/consumer/sdk/j/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p3

    sget-object v4, Lcom/freshchat/consumer/sdk/j/aa$a;->eD:Lcom/freshchat/consumer/sdk/j/aa$a;

    if-ne p1, v4, :cond_0

    const-string/jumbo p1, "resetUser"

    goto :goto_0

    :cond_0
    const-string p1, "clear"

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Freshchat SDK has not been initialized and "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has been called"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p3}, Lcom/freshchat/consumer/sdk/j/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 p1, 0x1

    invoke-static {p0, v2, p1}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p2, :cond_2

    if-eqz v1, :cond_2

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0, v3}, Lcom/freshchat/consumer/sdk/j/b;->r(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Message;->isUserMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Message;->getUploadState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/freshchat/consumer/sdk/service/a/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Context;ZZ)V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/aa$a;->eD:Lcom/freshchat/consumer/sdk/j/aa$a;

    invoke-static {p0, v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/aa$a;ZZ)V

    return-void
.end method

.method private static a([Landroid/content/pm/ComponentInfo;Landroid/util/SparseBooleanArray;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/freshchat/consumer/sdk/j/aa;->hJ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/aa;->az(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static aA(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/aa;->b([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static aB(Ljava/lang/String;)I
    .locals 4

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static aH(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fc()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/freshchat/consumer/sdk/j/aa;->hJ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/g;->ac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v2, v0}, Lcom/freshchat/consumer/sdk/j/aa;->a([Landroid/content/pm/ComponentInfo;Landroid/util/SparseBooleanArray;)V

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-static {v2, v0}, Lcom/freshchat/consumer/sdk/j/aa;->a([Landroid/content/pm/ComponentInfo;Landroid/util/SparseBooleanArray;)V

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_6

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/aa;->a([Landroid/content/pm/ComponentInfo;Landroid/util/SparseBooleanArray;)V

    :goto_1
    sget-object p0, Lcom/freshchat/consumer/sdk/j/aa;->hJ:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_5

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/freshchat/consumer/sdk/exception/FreshchatComponentNotFoundException;

    sget-object v0, Lcom/freshchat/consumer/sdk/j/aa;->hJ:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/exception/FreshchatComponentNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void

    :cond_6
    new-instance p0, Lcom/freshchat/consumer/sdk/exception/FreshchatComponentNotFoundException;

    const-string v0, "Services"

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/exception/FreshchatComponentNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lcom/freshchat/consumer/sdk/exception/FreshchatComponentNotFoundException;

    const-string v0, "Receivers"

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/exception/FreshchatComponentNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lcom/freshchat/consumer/sdk/exception/FreshchatComponentNotFoundException;

    const-string v0, "Activities"

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/exception/FreshchatComponentNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/FreshchatComponentNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static aI(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Detected launch intent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRESHCHAT"

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "getLaunchIntentForApp() requires a valid context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static aK(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/j/aa$a;->kF:Lcom/freshchat/consumer/sdk/j/aa$a;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/aa$a;ZZ)V

    return-void
.end method

.method public static aL(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/am;->aU(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mounted"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static aM(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "FRESHCHAT"

    const-string v1, "enableConnectivityChangeReceiver() called"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/freshchat/consumer/sdk/receiver/FreshchatNetworkChangeReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_1
    return-void
.end method

.method public static aN(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "FRESHCHAT"

    const-string v1, "disableConnectivityChangeReceiver() called"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/freshchat/consumer/sdk/receiver/FreshchatNetworkChangeReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_1
    return-void
.end method

.method private static az(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/aa;->hJ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/freshchat/consumer/sdk/j/aa;->hJ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static b([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/aa$a;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/c/d;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/d;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/freshchat/consumer/sdk/j/aa$a;->eD:Lcom/freshchat/consumer/sdk/j/aa$a;

    if-ne p1, p0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/d;->bW()V

    return-void

    :cond_0
    sget-object p0, Lcom/freshchat/consumer/sdk/j/aa$a;->kF:Lcom/freshchat/consumer/sdk/j/aa$a;

    if-ne p1, p0, :cond_1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/d;->cx()V

    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/service/a/c;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/service/a/c;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/e;->Y(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/aa;->aM(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreshchatUtils::onNetworkConnectivityChanged() called. connected - "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRESHCHAT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/b/c;->fD()V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/service/a/c;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/b;->M(Landroid/content/Context;)V

    :cond_1
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/o;->by(Landroid/content/Context;)V

    return-void
.end method

.method public static e(Landroid/content/Context;J)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;JZZZ)V

    return-void
.end method

.method public static f(Landroid/content/Context;J)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;JZZZ)V

    return-void
.end method

.method public static fF()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fG()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_0

    new-instance v1, Lcom/freshchat/consumer/sdk/e/g;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/freshchat/consumer/sdk/e/g;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static g(Landroid/content/Context;J)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;JZZZ)V

    return-void
.end method

.method public static h(Landroid/content/Context;J)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;JZZZ)V

    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/c/a;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/c/a;->T(Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/service/a/c;->s(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/e;->aa(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/aa;->aN(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
