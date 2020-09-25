.class final Lo/getFirstChild$asInterface;
.super Lo/getFirstChild;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFirstChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "asInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getFirstChild<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/ensureIndexed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ensureIndexed<",
            "TT;",
            "Lo/isCompleteForPath;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/ensureIndexed;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ensureIndexed<",
            "TT;",
            "Lo/isCompleteForPath;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Lo/getFirstChild;-><init>()V

    .line 313
    iput-object p1, p0, Lo/getFirstChild$asInterface;->onNavigationEvent:Lo/ensureIndexed;

    .line 314
    iput-object p2, p0, Lo/getFirstChild$asInterface;->onPostMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final synthetic onPostMessage(Lo/getMaxNode;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_3

    .line 1323
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1324
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1328
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Content-Disposition"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1334
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "form-data; name=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    const-string v3, "Content-Transfer-Encoding"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    iget-object v3, p0, Lo/getFirstChild$asInterface;->onPostMessage:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v2}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;)Lo/shouldIncludeField;

    move-result-object v1

    .line 1338
    iget-object v2, p0, Lo/getFirstChild$asInterface;->onNavigationEvent:Lo/ensureIndexed;

    invoke-interface {v2, v0}, Lo/ensureIndexed;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isCompleteForPath;

    .line 2177
    iget-object v2, p1, Lo/getMaxNode;->asBinder:Lo/serializedName$onMessageChannelReady;

    .line 2318
    invoke-static {v1, v0}, Lo/serializedName$ICustomTabsCallback;->onPostMessage(Lo/shouldIncludeField;Lo/isCompleteForPath;)Lo/serializedName$ICustomTabsCallback;

    move-result-object v0

    .line 2334
    iget-object v1, v2, Lo/serializedName$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1330
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Part map contained null value for key \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1326
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Part map contained null key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    .line 1320
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Part map was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
