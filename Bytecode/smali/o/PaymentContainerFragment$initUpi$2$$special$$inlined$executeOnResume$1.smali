.class public final Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/Cache;


# static fields
.field private static final extraCallback:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static onMessageChannelReady:Z

.field private static onPostMessage:Z


# instance fields
.field private final ICustomTabsCallback:Lo/InstrumentAttribute;

.field private final ICustomTabsCallback$Stub:Ljava/util/Random;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

.field private final asBinder:Lo/ViesPayPayloadJsonAdapter;

.field private final asInterface:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache$extraCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private newSession:J

.field private final onNavigationEvent:Ljava/io/File;

.field private final onRelationshipValidationResult:Lo/InstrumentAttributeJsonAdapter;

.field private final onTransact:Z

.field private warmup:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->extraCallback:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lo/InstrumentAttribute;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0, p1, p2, v0, v1}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;-><init>(Ljava/io/File;Lo/InstrumentAttribute;[BZ)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lo/InstrumentAttribute;Lo/ViesPayPayloadJsonAdapter;Lo/InstrumentAttributeJsonAdapter;)V
    .locals 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-static {p1}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iput-object p1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/io/File;

    .line 278
    iput-object p2, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/InstrumentAttribute;

    .line 279
    iput-object p3, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    .line 280
    iput-object p4, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/InstrumentAttributeJsonAdapter;

    .line 281
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asInterface:Ljava/util/HashMap;

    .line 282
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Ljava/util/Random;

    .line 283
    invoke-interface {p2}, Lo/InstrumentAttribute;->onPostMessage()Z

    move-result p1

    iput-boolean p1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onTransact:Z

    const-wide/16 p1, -0x1

    .line 284
    iput-wide p1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->warmup:J

    .line 287
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 288
    new-instance p2, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1$3;

    const-string p3, "SimpleCache.initialize()"

    invoke-direct {p2, p0, p3, p1}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1$3;-><init>(Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 297
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 298
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void

    .line 274
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Another SimpleCache instance uses the folder: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/io/File;Lo/InstrumentAttribute;Lo/getBrandDomain;[BZZ)V
    .locals 7

    .line 254
    new-instance v6, Lo/ViesPayPayloadJsonAdapter;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p1

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lo/ViesPayPayloadJsonAdapter;-><init>(Lo/getBrandDomain;Ljava/io/File;[BZZ)V

    if-eqz p3, :cond_0

    if-nez p6, :cond_0

    new-instance p4, Lo/InstrumentAttributeJsonAdapter;

    invoke-direct {p4, p3}, Lo/InstrumentAttributeJsonAdapter;-><init>(Lo/getBrandDomain;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v6, p4}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;-><init>(Ljava/io/File;Lo/InstrumentAttribute;Lo/ViesPayPayloadJsonAdapter;Lo/InstrumentAttributeJsonAdapter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lo/InstrumentAttribute;[BZ)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 200
    invoke-direct/range {v0 .. v6}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;-><init>(Ljava/io/File;Lo/InstrumentAttribute;Lo/getBrandDomain;[BZZ)V

    return-void
.end method

.method private static ICustomTabsCallback([Ljava/io/File;)J
    .locals 5

    .line 786
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 787
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".uid"

    .line 788
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 790
    :try_start_0
    invoke-static {v3}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 793
    :catch_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Malformed UID file: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimpleCache"

    invoke-static {v4, v3}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private ICustomTabsCallback(Ljava/lang/String;J)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;
    .locals 2

    .line 575
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    invoke-virtual {v0, p1}, Lo/ViesPayPayloadJsonAdapter;->extraCallback(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 577
    invoke-static {p1, p2, p3}, Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;J)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    move-result-object p1

    return-object p1

    .line 580
    :cond_0
    :goto_0
    invoke-virtual {v0, p2, p3}, Lo/PrefetchPayloadJsonAdapter;->ICustomTabsCallback(J)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    move-result-object p1

    .line 581
    iget-boolean v1, p1, Lo/JustPaySafePayloadJsonAdapter;->onMessageChannelReady:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lo/JustPaySafePayloadJsonAdapter;->onPostMessage:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 584
    invoke-direct {p0}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent()V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private ICustomTabsCallback(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z[",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/InstrumentAttributeUpdateRequestJsonAdapter;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_8

    .line 662
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_3

    .line 671
    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_7

    aget-object v8, p3, v1

    .line 672
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    const/16 v3, 0x2e

    .line 673
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 674
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v8, v0, v2, p4}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 677
    invoke-static {v2}, Lo/ViesPayPayloadJsonAdapter;->onPostMessage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ".uid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_2
    const-wide/16 v3, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p4, :cond_3

    .line 683
    invoke-interface {p4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/InstrumentAttributeUpdateRequestJsonAdapter;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 685
    iget-wide v3, v2, Lo/InstrumentAttributeUpdateRequestJsonAdapter;->onPostMessage:J

    .line 686
    iget-wide v5, v2, Lo/InstrumentAttributeUpdateRequestJsonAdapter;->extraCallback:J

    .line 688
    :cond_4
    iget-object v7, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    move-object v2, v8

    .line 689
    invoke-static/range {v2 .. v7}, Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/io/File;JJLo/ViesPayPayloadJsonAdapter;)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 691
    invoke-direct {p0, v2}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->extraCallback(Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;)V

    goto :goto_2

    .line 693
    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_3
    if-nez p2, :cond_9

    .line 667
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_9
    return-void
.end method

.method private ICustomTabsCallback(Lo/JustPaySafePayloadJsonAdapter;)V
    .locals 5

    .line 711
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    iget-object v1, p1, Lo/JustPaySafePayloadJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/ViesPayPayloadJsonAdapter;->extraCallback(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 712
    invoke-virtual {v0, p1}, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent(Lo/JustPaySafePayloadJsonAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 715
    :cond_0
    iget-wide v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->newSession:J

    iget-wide v3, p1, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->newSession:J

    .line 716
    iget-object v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/InstrumentAttributeJsonAdapter;

    if-eqz v1, :cond_1

    .line 717
    iget-object v1, p1, Lo/JustPaySafePayloadJsonAdapter;->onPostMessage:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 719
    :try_start_0
    iget-object v2, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/InstrumentAttributeJsonAdapter;

    invoke-virtual {v2, v1}, Lo/InstrumentAttributeJsonAdapter;->onPostMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 723
    :catch_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to remove file index entry for: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimpleCache"

    invoke-static {v2, v1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_1
    :goto_0
    iget-object v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    iget-object v0, v0, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lo/ViesPayPayloadJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 727
    invoke-direct {p0, p1}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/JustPaySafePayloadJsonAdapter;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private extraCallback(Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;)V
    .locals 4

    .line 705
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    iget-object v1, p1, Lo/JustPaySafePayloadJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/ViesPayPayloadJsonAdapter;->onNavigationEvent(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady(Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;)V

    .line 706
    iget-wide v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->newSession:J

    iget-wide v2, p1, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->newSession:J

    .line 707
    invoke-direct {p0, p1}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onPostMessage(Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady()V

    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/String;)J
    .locals 2

    const/16 v0, 0x2e

    .line 817
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private onMessageChannelReady()V
    .locals 7

    .line 593
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "SimpleCache"

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create cache directory: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-static {v1, v0}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsService:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to list cache directory files: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    invoke-static {v1, v0}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsService:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    return-void

    .line 610
    :cond_1
    invoke-static {v0}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback([Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->warmup:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 613
    :try_start_0
    iget-object v2, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/io/File;

    invoke-static {v2}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->warmup:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create cache UID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-static {v1, v2, v0}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 617
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsService:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    return-void

    .line 623
    :cond_2
    :goto_0
    :try_start_1
    iget-object v2, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    iget-wide v3, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->warmup:J

    invoke-virtual {v2, v3, v4}, Lo/ViesPayPayloadJsonAdapter;->extraCallback(J)V

    .line 624
    iget-object v2, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/InstrumentAttributeJsonAdapter;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 625
    iget-object v2, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/InstrumentAttributeJsonAdapter;

    iget-wide v4, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->warmup:J

    invoke-virtual {v2, v4, v5}, Lo/InstrumentAttributeJsonAdapter;->onMessageChannelReady(J)V

    .line 626
    iget-object v2, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/InstrumentAttributeJsonAdapter;

    invoke-virtual {v2}, Lo/InstrumentAttributeJsonAdapter;->onPostMessage()Ljava/util/Map;

    move-result-object v2

    .line 627
    iget-object v4, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/io/File;

    invoke-direct {p0, v4, v3, v0, v2}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    .line 628
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/InstrumentAttributeJsonAdapter;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/InstrumentAttributeJsonAdapter;->onNavigationEvent(Ljava/util/Set;)V

    goto :goto_1

    .line 630
    :cond_3
    iget-object v2, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/io/File;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v0, v4}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 639
    :goto_1
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    invoke-virtual {v0}, Lo/ViesPayPayloadJsonAdapter;->onMessageChannelReady()V

    .line 641
    :try_start_2
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    invoke-virtual {v0}, Lo/ViesPayPayloadJsonAdapter;->ICustomTabsCallback()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v2, "Storing index file failed"

    .line 643
    invoke-static {v1, v2, v0}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception v0

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialize cache indices: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 634
    invoke-static {v1, v2, v0}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 635
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsService:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    return-void
.end method

.method private onMessageChannelReady(Lo/JustPaySafePayloadJsonAdapter;)V
    .locals 3

    .line 749
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asInterface:Ljava/util/HashMap;

    iget-object v1, p1, Lo/JustPaySafePayloadJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 752
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$extraCallback;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$extraCallback;->onNavigationEvent(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/JustPaySafePayloadJsonAdapter;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 755
    :cond_0
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/InstrumentAttribute;

    invoke-interface {v0, p0, p1}, Lo/InstrumentAttribute;->onNavigationEvent(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/JustPaySafePayloadJsonAdapter;)V

    return-void
.end method

.method private static declared-synchronized onMessageChannelReady(Ljava/io/File;)Z
    .locals 2

    const-class v0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;

    monitor-enter v0

    .line 821
    :try_start_0
    sget-boolean v1, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    .line 822
    monitor-exit v0

    return p0

    .line 824
    :cond_0
    :try_start_1
    sget-object v1, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->extraCallback:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static onNavigationEvent(Ljava/io/File;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 804
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 805
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    const/16 v2, 0x10

    .line 807
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    .line 808
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".uid"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 809
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide v0

    .line 811
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to create UID file: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic onNavigationEvent(Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;)Lo/InstrumentAttribute;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/InstrumentAttribute;

    return-object p0
.end method

.method private onNavigationEvent()V
    .locals 5

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 736
    iget-object v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    invoke-virtual {v1}, Lo/ViesPayPayloadJsonAdapter;->extraCallback()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/PrefetchPayloadJsonAdapter;

    .line 737
    invoke-virtual {v2}, Lo/PrefetchPayloadJsonAdapter;->ICustomTabsCallback()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/JustPaySafePayloadJsonAdapter;

    .line 738
    iget-object v4, v3, Lo/JustPaySafePayloadJsonAdapter;->onPostMessage:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 739
    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 743
    :goto_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 744
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/JustPaySafePayloadJsonAdapter;

    invoke-direct {p0, v2}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/JustPaySafePayloadJsonAdapter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private onPostMessage(Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;)V
    .locals 3

    .line 759
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asInterface:Ljava/util/HashMap;

    iget-object v1, p1, Lo/JustPaySafePayloadJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 762
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$extraCallback;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$extraCallback;->extraCallback(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/JustPaySafePayloadJsonAdapter;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 765
    :cond_0
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/InstrumentAttribute;

    invoke-interface {v0, p0, p1}, Lo/InstrumentAttribute;->extraCallback(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/JustPaySafePayloadJsonAdapter;)V

    return-void
.end method

.method private onPostMessage(Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;Lo/JustPaySafePayloadJsonAdapter;)V
    .locals 3

    .line 769
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asInterface:Ljava/util/HashMap;

    iget-object v1, p1, Lo/JustPaySafePayloadJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 772
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$extraCallback;

    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/Cache$extraCallback;->ICustomTabsCallback(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/JustPaySafePayloadJsonAdapter;Lo/JustPaySafePayloadJsonAdapter;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 775
    :cond_0
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/InstrumentAttribute;

    invoke-interface {v0, p0, p1, p2}, Lo/InstrumentAttribute;->ICustomTabsCallback(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lo/JustPaySafePayloadJsonAdapter;Lo/JustPaySafePayloadJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized extraCallback()J
    .locals 2

    monitor-enter p0

    .line 378
    :try_start_0
    iget-boolean v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 379
    iget-wide v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->newSession:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized extraCallback(Ljava/lang/String;J)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 385
    :try_start_0
    iget-boolean v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 386
    invoke-virtual {p0}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onPostMessage()V

    .line 389
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;J)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 391
    monitor-exit p0

    return-object v0

    .line 397
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback(Ljava/lang/String;)Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;
    .locals 1

    monitor-enter p0

    .line 557
    :try_start_0
    iget-boolean v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 558
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    invoke-virtual {v0, p1}, Lo/ViesPayPayloadJsonAdapter;->onRelationshipValidationResult(Ljava/lang/String;)Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback(Ljava/lang/String;Lo/VisaPayloadWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 544
    :try_start_0
    iget-boolean v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 545
    invoke-virtual {p0}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onPostMessage()V

    .line 547
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    invoke-virtual {v0, p1, p2}, Lo/ViesPayPayloadJsonAdapter;->onNavigationEvent(Ljava/lang/String;Lo/VisaPayloadWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :try_start_1
    iget-object p1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    invoke-virtual {p1}, Lo/ViesPayPayloadJsonAdapter;->ICustomTabsCallback()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 551
    :try_start_2
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback(Lo/JustPaySafePayloadJsonAdapter;)V
    .locals 2

    monitor-enter p0

    .line 512
    :try_start_0
    iget-boolean v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 513
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    iget-object p1, p1, Lo/JustPaySafePayloadJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lo/ViesPayPayloadJsonAdapter;->extraCallback(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;

    move-result-object p1

    .line 514
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    invoke-virtual {p1}, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent()Z

    move-result v0

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 516
    invoke-virtual {p1, v1}, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady(Z)V

    .line 517
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    iget-object p1, p1, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lo/ViesPayPayloadJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 450
    :try_start_0
    iget-boolean v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 451
    invoke-virtual {p0}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onPostMessage()V

    .line 453
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    invoke-virtual {v0, p1}, Lo/ViesPayPayloadJsonAdapter;->extraCallback(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;

    move-result-object v0

    .line 454
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-virtual {v0}, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent()Z

    move-result v1

    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 456
    iget-object v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 458
    iget-object v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 459
    invoke-direct {p0}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent()V

    .line 461
    :cond_1
    iget-object v1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/InstrumentAttribute;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lo/InstrumentAttribute;->onPostMessage(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V

    .line 463
    new-instance v2, Ljava/io/File;

    iget-object p1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Ljava/io/File;

    iget-object p4, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub:Ljava/util/Random;

    const/16 p5, 0xa

    invoke-virtual {p4, p5}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v2, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 465
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 467
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 468
    iget v3, v0, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    move-wide v4, p2

    invoke-static/range {v2 .. v7}, Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/String;J)Lo/JustPaySafePayloadJsonAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;J)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized onNavigationEvent(Ljava/lang/String;J)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 406
    :try_start_0
    iget-boolean v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 407
    invoke-virtual {p0}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onPostMessage()V

    .line 409
    invoke-direct {p0, p1, p2, p3}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;J)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    move-result-object p2

    .line 412
    iget-boolean p3, p2, Lo/JustPaySafePayloadJsonAdapter;->onMessageChannelReady:Z

    if-eqz p3, :cond_3

    .line 413
    iget-boolean p3, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onTransact:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_1

    .line 414
    monitor-exit p0

    return-object p2

    .line 416
    :cond_1
    :try_start_1
    iget-object p3, p2, Lo/JustPaySafePayloadJsonAdapter;->onPostMessage:Ljava/io/File;

    invoke-static {p3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 417
    iget-wide v5, p2, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent:J

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 420
    iget-object p3, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/InstrumentAttributeJsonAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_2

    .line 422
    :try_start_2
    iget-object v3, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/InstrumentAttributeJsonAdapter;

    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Lo/InstrumentAttributeJsonAdapter;->extraCallback(Ljava/lang/String;JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string p3, "SimpleCache"

    const-string v0, "Failed to update index with new touch timestamp."

    .line 424
    invoke-static {p3, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 431
    :goto_1
    iget-object p3, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    .line 432
    invoke-virtual {p3, p1}, Lo/ViesPayPayloadJsonAdapter;->extraCallback(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, v9, v10, v1}, Lo/PrefetchPayloadJsonAdapter;->ICustomTabsCallback(Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;JZ)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    move-result-object p1

    .line 433
    invoke-direct {p0, p2, p1}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onPostMessage(Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;Lo/JustPaySafePayloadJsonAdapter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 434
    monitor-exit p0

    return-object p1

    .line 437
    :cond_3
    :try_start_4
    iget-object p3, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    invoke-virtual {p3, p1}, Lo/ViesPayPayloadJsonAdapter;->onNavigationEvent(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;

    move-result-object p1

    .line 438
    invoke-virtual {p1}, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent()Z

    move-result p3

    if-nez p3, :cond_4

    .line 440
    invoke-virtual {p1, v2}, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 441
    monitor-exit p0

    return-object p2

    :cond_4
    const/4 p1, 0x0

    .line 445
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(Ljava/io/File;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 473
    :try_start_0
    iget-boolean v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 474
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 475
    monitor-exit p0

    return-void

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-nez v0, :cond_2

    .line 478
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    monitor-exit p0

    return-void

    .line 482
    :cond_2
    :try_start_2
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    .line 483
    invoke-static {p1, p2, p3, v0}, Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/io/File;JLo/ViesPayPayloadJsonAdapter;)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    move-result-object p2

    invoke-static {p2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    .line 484
    iget-object p3, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    iget-object v0, p2, Lo/JustPaySafePayloadJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lo/ViesPayPayloadJsonAdapter;->extraCallback(Ljava/lang/String;)Lo/PrefetchPayloadJsonAdapter;

    move-result-object p3

    invoke-static {p3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/PrefetchPayloadJsonAdapter;

    .line 485
    invoke-virtual {p3}, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent()Z

    move-result v0

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 488
    invoke-virtual {p3}, Lo/PrefetchPayloadJsonAdapter;->onPostMessage()Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    move-result-object p3

    invoke-static {p3}, Lo/CredPaymentUiBuilder$PollingStrategy;->onNavigationEvent(Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p3, v3, v5

    if-eqz p3, :cond_4

    .line 490
    iget-wide v5, p2, Lo/JustPaySafePayloadJsonAdapter;->extraCallback:J

    iget-wide v7, p2, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent:J

    add-long/2addr v5, v7

    cmp-long p3, v5, v3

    if-gtz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 493
    :cond_4
    iget-object p3, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/InstrumentAttributeJsonAdapter;

    if-eqz p3, :cond_5

    .line 494
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 496
    :try_start_3
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onRelationshipValidationResult:Lo/InstrumentAttributeJsonAdapter;

    iget-wide v2, p2, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent:J

    iget-wide v4, p2, Lo/JustPaySafePayloadJsonAdapter;->onTransact:J

    invoke-virtual/range {v0 .. v5}, Lo/InstrumentAttributeJsonAdapter;->extraCallback(Ljava/lang/String;JJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 498
    :try_start_4
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 501
    :cond_5
    :goto_2
    invoke-direct {p0, p2}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->extraCallback(Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 503
    :try_start_5
    iget-object p1, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->asBinder:Lo/ViesPayPayloadJsonAdapter;

    invoke-virtual {p1}, Lo/ViesPayPayloadJsonAdapter;->ICustomTabsCallback()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 507
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 508
    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    .line 505
    :try_start_7
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(Lo/JustPaySafePayloadJsonAdapter;)V
    .locals 1

    monitor-enter p0

    .line 523
    :try_start_0
    iget-boolean v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 524
    invoke-direct {p0, p1}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/JustPaySafePayloadJsonAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic onPostMessage(Ljava/lang/String;J)Lo/JustPaySafePayloadJsonAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;J)Lo/CheckoutContainerFragment$addFragment$$inlined$executeOnResume$1;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized onPostMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 307
    :try_start_0
    sget-boolean v0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsService:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    if-nez v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;->ICustomTabsService:Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
