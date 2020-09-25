.class Lcom/freshchat/consumer/sdk/j/bg$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private eventName:Lcom/freshchat/consumer/sdk/Event$EventName;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/freshchat/consumer/sdk/Event$Property;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/freshchat/consumer/sdk/Event$EventName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/bg$a;->properties:Ljava/util/Map;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/bg$a;->eventName:Lcom/freshchat/consumer/sdk/Event$EventName;

    return-void
.end method

.method synthetic constructor <init>(Lcom/freshchat/consumer/sdk/Event$EventName;Lcom/freshchat/consumer/sdk/j/bh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/j/bg$a;-><init>(Lcom/freshchat/consumer/sdk/Event$EventName;)V

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/bg$a;)Lcom/freshchat/consumer/sdk/Event;
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/bg$a;->gz()Lcom/freshchat/consumer/sdk/Event;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;
    .locals 2

    const-string v0, "FRESHCHAT_WARNING"

    if-nez p1, :cond_0

    const-string p1, "property can not be null for Event::Builder::addProperty()"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    if-eqz p2, :cond_2

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    const-string/jumbo p1, "value can not be null/empty for Event::Builder::addProperty()"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/bg$a;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object p0

    return-object p0
.end method

.method private gz()Lcom/freshchat/consumer/sdk/Event;
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/Event;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/Event;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/bg$a;->eventName:Lcom/freshchat/consumer/sdk/Event$EventName;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/Event;->setEventName(Lcom/freshchat/consumer/sdk/Event$EventName;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/bg$a;->properties:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/Event;->setProperties(Ljava/util/Map;)V

    return-object v0
.end method
