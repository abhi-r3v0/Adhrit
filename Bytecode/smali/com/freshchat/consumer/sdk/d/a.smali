.class public final Lcom/freshchat/consumer/sdk/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lo/computeFloatSize;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/computeFloatSize;"
    }
.end annotation


# instance fields
.field private final es:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final et:Ljava/lang/String;

.field private final eu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final ev:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lw:Ljava/lang/String;

.field private final lx:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RuntimeTypeAdapterFactory.UNKNOWN_TYPE_LABEL"

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/d/a;->lw:Ljava/lang/String;

    const-string v0, "rawJsonOfUnsupportedType"

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/d/a;->lx:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/d/a;->eu:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/d/a;->ev:Ljava/util/Map;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/d/a;->es:Ljava/lang/Class;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/d/a;->et:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/freshchat/consumer/sdk/d/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/freshchat/consumer/sdk/d/a;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/d/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/d/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/d/a;->et:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/d/a;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/d/a;->bi(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/d/a;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/d/a;->es:Ljava/lang/Class;

    return-object p0
.end method

.method private bi(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/a;->eu:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/d/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/d/a;->ev:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/freshchat/consumer/sdk/d/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "RuntimeTypeAdapterFactory.UNKNOWN_TYPE_LABEL"

    invoke-virtual {p0, p1, v0}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/freshchat/consumer/sdk/d/a<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/a;->ev:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/a;->eu:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/a;->eu:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/a;->ev:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "types and labels must be unique"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public final create(Lo/writeStringNoTag;Lo/writeRawByte;)Lo/computeDoubleSize;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/writeStringNoTag;",
            "Lo/writeRawByte<",
            "TR;>;)",
            "Lo/computeDoubleSize<",
            "TR;>;"
        }
    .end annotation

    .line 1094
    iget-object p2, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/d/a;->es:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/d/a;->eu:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-static {v3}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v3

    invoke-virtual {p1, p0, v3}, Lo/writeStringNoTag;->onNavigationEvent(Lo/computeFloatSize;Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/freshchat/consumer/sdk/d/a$1;

    invoke-direct {p1, p0, p2, v0}, Lcom/freshchat/consumer/sdk/d/a$1;-><init>(Lcom/freshchat/consumer/sdk/d/a;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {p1}, Lo/computeDoubleSize;->nullSafe()Lo/computeDoubleSize;

    move-result-object p1

    return-object p1
.end method
