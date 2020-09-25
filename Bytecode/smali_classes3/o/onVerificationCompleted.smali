.class public final Lo/onVerificationCompleted;
.super Lo/getComponentsInCycle;


# instance fields
.field private final ICustomTabsCallback:Ljava/io/File;

.field private final extraCallback:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Long;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lo/getComponentsInCycle;-><init>()V

    iput-object p1, p0, Lo/onVerificationCompleted;->onMessageChannelReady:Ljava/io/File;

    iput-object p2, p0, Lo/onVerificationCompleted;->ICustomTabsCallback:Ljava/io/File;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lo/onVerificationCompleted;->extraCallback:Ljava/util/NavigableMap;

    iget-object p1, p0, Lo/onVerificationCompleted;->onMessageChannelReady:Ljava/io/File;

    iget-object p2, p0, Lo/onVerificationCompleted;->ICustomTabsCallback:Ljava/io/File;

    invoke-static {p1, p2}, Lo/extraCallback$asBinder;->extraCallback(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const-wide/16 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    iget-object v4, p0, Lo/onVerificationCompleted;->extraCallback:Ljava/util/NavigableMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lo/getFactory;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lo/onVerificationCompleted;->onMessageChannelReady:Ljava/io/File;

    aput-object v1, p2, v0

    iget-object v0, p0, Lo/onVerificationCompleted;->ICustomTabsCallback:Ljava/io/File;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-string v0, "Virtualized slice archive empty for %s, %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/getFactory;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final extraCallback(JLjava/lang/Long;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lo/onVerificationCompleted;->extraCallback:Ljava/util/NavigableMap;

    invoke-interface {v1, p3}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long/2addr p1, v3

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lo/getFactory;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "Virtualized slice archive corrupt, could not skip in file with key %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/getFactory;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final extraCallback(JJ)Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, p1, v2

    if-ltz v5, :cond_3

    cmp-long v5, p3, v2

    if-ltz v5, :cond_3

    add-long v2, p1, p3

    invoke-virtual {p0}, Lo/getComponentsInCycle;->onMessageChannelReady()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gtz v7, :cond_2

    iget-object v0, p0, Lo/onVerificationCompleted;->extraCallback:Ljava/util/NavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lo/onVerificationCompleted;->extraCallback:Ljava/util/NavigableMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lo/isEmailVerified;

    invoke-direct {p0, p1, p2, v0}, Lo/onVerificationCompleted;->extraCallback(JLjava/lang/Long;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1, p3, p4}, Lo/isEmailVerified;-><init>(Ljava/io/InputStream;J)V

    return-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lo/onVerificationCompleted;->extraCallback(JLjava/lang/Long;)Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lo/onVerificationCompleted;->extraCallback:Ljava/util/NavigableMap;

    invoke-interface {v3, v0, v4, v1, v4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lo/isEagerInDefaultApp;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {v3, v0}, Lo/isEagerInDefaultApp;-><init>(Ljava/util/Enumeration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lo/isEmailVerified;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lo/onVerificationCompleted;->extraCallback:Ljava/util/NavigableMap;

    invoke-interface {v4, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, p1

    sub-long/2addr p3, v4

    invoke-direct {v0, v3, p3, p4}, Lo/isEmailVerified;-><init>(Ljava/io/InputStream;J)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/io/SequenceInputStream;

    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    return-object p1

    :cond_2
    new-instance p1, Lo/getFactory;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lo/getComponentsInCycle;->onMessageChannelReady()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Trying to access archive out of bounds. Archive ends at: %s. Tried accessing: %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/getFactory;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v2, Lo/getFactory;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Invalid input parameters %s, %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lo/getFactory;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final onMessageChannelReady()J
    .locals 5

    iget-object v0, p0, Lo/onVerificationCompleted;->extraCallback:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1
.end method
