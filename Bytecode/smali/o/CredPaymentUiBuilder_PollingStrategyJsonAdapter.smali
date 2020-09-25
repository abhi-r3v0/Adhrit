.class public final Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;


# static fields
.field public static final extraCallback:Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;


# instance fields
.field private onNavigationEvent:I

.field private final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;-><init>(Ljava/util/Map;)V

    sput-object v0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->extraCallback:Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage:Ljava/util/Map;

    return-void
.end method

.method private static extraCallback(Ljava/util/Map;Lo/VisaPayloadWrapper;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lo/VisaPayloadWrapper;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 144
    invoke-virtual {p1}, Lo/VisaPayloadWrapper;->onPostMessage()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->extraCallback(Ljava/util/HashMap;Ljava/util/List;)V

    .line 145
    invoke-virtual {p1}, Lo/VisaPayloadWrapper;->extraCallback()Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->extraCallback(Ljava/util/HashMap;Ljava/util/Map;)V

    return-object v0
.end method

.method private static extraCallback(Ljava/util/HashMap;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 150
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 151
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static extraCallback(Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static onPostMessage(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)Z"
        }
    .end annotation

    .line 128
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 131
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 134
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static onPostMessage(Ljava/lang/Object;)[B
    .locals 3

    .line 162
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 163
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    .line 164
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 165
    check-cast p0, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    .line 166
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 167
    check-cast p0, [B

    return-object p0

    .line 169
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;J)J
    .locals 1

    .line 91
    iget-object v0, p0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object p2, p0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 93
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage:Ljava/util/Map;

    check-cast p1, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    iget-object p1, p1, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage:Ljava/util/Map;

    invoke-static {v0, p1}, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 117
    iget v0, p0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onNavigationEvent:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    goto :goto_0

    .line 122
    :cond_0
    iput v0, p0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onNavigationEvent:I

    .line 124
    :cond_1
    iget v0, p0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onNavigationEvent:I

    return v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object p2, p0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 83
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_0
    return-object p2
.end method

.method public final onPostMessage()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Lo/VisaPayloadWrapper;)Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage:Ljava/util/Map;

    invoke-static {v0, p1}, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->extraCallback(Ljava/util/Map;Lo/VisaPayloadWrapper;)Ljava/util/Map;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage:Ljava/util/Map;

    invoke-static {v0, p1}, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;->onPostMessage(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 59
    :cond_0
    new-instance v0, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    invoke-direct {v0, p1}, Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
