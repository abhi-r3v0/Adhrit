.class public Lcom/freshchat/consumer/sdk/j/bg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/bg$a;,
        Lcom/freshchat/consumer/sdk/j/bg$b;
    }
.end annotation


# direct methods
.method private static A(Landroid/content/Context;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/c/i;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/c/i;->Y(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;

    move-result-object p0

    return-object p0
.end method

.method static synthetic B(Landroid/content/Context;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;
    .locals 0

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/bg;->A(Landroid/content/Context;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Landroid/content/Context;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;
    .locals 0

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/bg;->z(Landroid/content/Context;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/freshchat/consumer/sdk/Event;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "Error bundling Value of Property "

    const-string v1, "FRESHCHAT"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/Event;->getEventName()Lcom/freshchat/consumer/sdk/Event$EventName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/Event$EventName;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "event_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/Event;->getProperties()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/Event$Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/Event$Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/Event$Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/Event$Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-virtual {v5}, Lcom/freshchat/consumer/sdk/Event$Property;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/Event$Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    return-object v2
.end method

.method private static a(Lcom/freshchat/consumer/sdk/Event$EventName;)Lcom/freshchat/consumer/sdk/j/bg$a;
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/j/bg$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freshchat/consumer/sdk/j/bg$a;-><init>(Lcom/freshchat/consumer/sdk/Event$EventName;Lcom/freshchat/consumer/sdk/j/bh;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;JZILjava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/freshchat/consumer/sdk/j/bx;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/freshchat/consumer/sdk/j/bx;-><init>(Landroid/content/Context;JZILjava/lang/String;)V

    invoke-static {p0, v7}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;J[Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/bv;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/freshchat/consumer/sdk/j/bv;-><init>(Landroid/content/Context;J[Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/bl;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/j/bl;-><init>(Landroid/net/Uri;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V
    .locals 2

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/be;->eC()Lcom/freshchat/consumer/sdk/j/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/be;->gx()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/j/bp;

    invoke-direct {v1, p0, p1}, Lcom/freshchat/consumer/sdk/j/bp;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/bs;

    invoke-direct {v0, p1, p2, p3}, Lcom/freshchat/consumer/sdk/j/bs;-><init>(Ljava/lang/String;IZ)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/freshchat/consumer/sdk/service/e/n$a;)V
    .locals 8

    new-instance v7, Lcom/freshchat/consumer/sdk/j/bh;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/freshchat/consumer/sdk/j/bh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/freshchat/consumer/sdk/service/e/n$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/freshchat/consumer/sdk/j/bm;

    move-object v0, v7

    move-object v1, p4

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/freshchat/consumer/sdk/j/bm;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/bq;

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/freshchat/consumer/sdk/j/bq;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/Event$EventName;)Lcom/freshchat/consumer/sdk/j/bg$a;
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/bg;->a(Lcom/freshchat/consumer/sdk/Event$EventName;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object p0

    return-object p0
.end method

.method public static bK(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/bt;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/bt;-><init>()V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method public static bL(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/bj;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/bj;-><init>()V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method public static bM(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/bo;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/bo;-><init>()V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method private static c(Landroid/content/Context;J)Lcom/freshchat/consumer/sdk/beans/Conversation;
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/c/e;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/c/e;->f(J)Lcom/freshchat/consumer/sdk/beans/Conversation;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;JJ)V
    .locals 7

    new-instance v6, Lcom/freshchat/consumer/sdk/j/bw;

    move-object v0, v6

    move-wide v1, p3

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/bw;-><init>(JLandroid/content/Context;J)V

    invoke-static {p0, v6}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method public static c(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/br;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/j/br;-><init>([Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method public static d(Landroid/content/Context;JJ)V
    .locals 7

    new-instance v6, Lcom/freshchat/consumer/sdk/j/bk;

    move-object v0, v6

    move-wide v1, p3

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/j/bk;-><init>(JLandroid/content/Context;J)V

    invoke-static {p0, v6}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method public static d(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/bu;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/j/bu;-><init>([Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method public static e(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/Event;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/Event$EventName;->get(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/Event$EventName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "FRESHCHAT_WARNING"

    const-string v0, "event_name missing in Event::fromBundle()"

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v1, "event_name"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/Event$Property;->get(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Event$Property;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not find eventName property - "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FRESHCHAT"

    invoke-static {v4, v3}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/freshchat/consumer/sdk/Event;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/Event;-><init>()V

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/Event;->setEventName(Lcom/freshchat/consumer/sdk/Event$EventName;)V

    invoke-virtual {p0, v1}, Lcom/freshchat/consumer/sdk/Event;->setProperties(Ljava/util/Map;)V

    return-object p0
.end method

.method private static j(Landroid/content/Context;J)Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/c/c;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/c/c;->e(J)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/content/Context;J)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/bi;

    invoke-direct {v0, p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/bi;-><init>(Landroid/content/Context;J)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method public static l(Landroid/content/Context;J)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/bn;

    invoke-direct {v0, p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/bn;-><init>(Landroid/content/Context;J)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/bg;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bg$b;)V

    return-void
.end method

.method static synthetic m(Landroid/content/Context;J)Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/bg;->j(Landroid/content/Context;J)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Landroid/content/Context;J)Lcom/freshchat/consumer/sdk/beans/Conversation;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/bg;->c(Landroid/content/Context;J)Lcom/freshchat/consumer/sdk/beans/Conversation;

    move-result-object p0

    return-object p0
.end method

.method private static z(Landroid/content/Context;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/c/i;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/c/i;->ab(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;

    move-result-object p0

    return-object p0
.end method
