.class public Lo/ImmutableList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ImmutableList$onPostMessage;,
        Lo/ImmutableList$extraCallback;,
        Lo/ImmutableList$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final MAX_DEPTH:I = 0x1f4

.field private static final mappers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/ImmutableList$ICustomTabsCallback<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lo/ImmutableList;->mappers:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/reflect/Type;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-static {p0, p1, p2}, Lo/ImmutableList;->deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/Object;Lo/ImmutableList$extraCallback;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lo/ImmutableList;->serialize(Ljava/lang/Object;Lo/ImmutableList$extraCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(ZLjava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lo/ImmutableList;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method

.method private static convertBean(Ljava/lang/Object;Ljava/lang/Class;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/ImmutableList$onPostMessage;",
            ")TT;"
        }
    .end annotation

    .line 540
    invoke-static {p1}, Lo/ImmutableList;->loadOrCreateBeanMapperForClass(Ljava/lang/Class;)Lo/ImmutableList$ICustomTabsCallback;

    move-result-object v0

    .line 541
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 542
    invoke-static {p0, p2}, Lo/ImmutableList;->expectMap(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lo/ImmutableList$ICustomTabsCallback;->deserialize(Ljava/util/Map;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 544
    :cond_0
    iget-object p2, p2, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t convert object of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 544
    invoke-static {p2, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static convertBlob(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;
    .locals 2

    .line 510
    instance-of v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    if-eqz v0, :cond_0

    .line 511
    check-cast p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    return-object p0

    .line 513
    :cond_0
    iget-object p1, p1, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to convert value of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to Blob"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 513
    invoke-static {p1, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static convertBoolean(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/lang/Boolean;
    .locals 2

    .line 466
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 467
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 469
    :cond_0
    iget-object p1, p1, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to convert value of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to boolean"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 469
    invoke-static {p1, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static convertDate(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/util/Date;
    .locals 2

    .line 486
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 487
    check-cast p0, Ljava/util/Date;

    return-object p0

    .line 488
    :cond_0
    instance-of v0, p0, Lo/getStream;

    if-eqz v0, :cond_1

    .line 489
    check-cast p0, Lo/getStream;

    invoke-virtual {p0}, Lo/getStream;->toDate()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 491
    :cond_1
    iget-object p1, p1, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to convert value of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to Date"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 491
    invoke-static {p1, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static convertDocumentReference(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;
    .locals 2

    .line 530
    instance-of v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    if-eqz v0, :cond_0

    .line 531
    check-cast p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    return-object p0

    .line 533
    :cond_0
    iget-object p1, p1, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to convert value of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to DocumentReference"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 533
    invoke-static {p1, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static convertDouble(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/lang/Double;
    .locals 6

    .line 441
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 442
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 443
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 444
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    .line 445
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 446
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return-object v1

    .line 449
    :cond_1
    iget-object p1, p1, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loss of precision while converting number to double: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Did you mean to use a 64-bit long instead?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 456
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 457
    check-cast p0, Ljava/lang/Double;

    return-object p0

    .line 459
    :cond_3
    iget-object p1, p1, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to convert a value of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to double"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 459
    invoke-static {p1, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static convertGeoPoint(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Lo/toBuilder;
    .locals 2

    .line 520
    instance-of v0, p0, Lo/toBuilder;

    if-eqz v0, :cond_0

    .line 521
    check-cast p0, Lo/toBuilder;

    return-object p0

    .line 523
    :cond_0
    iget-object p1, p1, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to convert value of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to GeoPoint"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 523
    invoke-static {p1, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static convertInteger(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/lang/Integer;
    .locals 5

    .line 397
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 398
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 399
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    iget-object p1, p1, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to convert a value of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to int"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 411
    invoke-static {p1, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 400
    :cond_2
    :goto_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_3

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_3

    .line 402
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 404
    :cond_3
    iget-object p0, p1, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric value out of 32-bit integer range: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ". Did you mean to use a long or double instead of an int?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static convertLong(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/lang/Long;
    .locals 5

    .line 418
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 419
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 420
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 421
    check-cast p0, Ljava/lang/Long;

    return-object p0

    .line 422
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 423
    check-cast p0, Ljava/lang/Double;

    .line 424
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_2

    .line 425
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 427
    :cond_2
    iget-object p1, p1, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value out of 64-bit long range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Did you mean to use a double instead of a long?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 434
    :cond_3
    iget-object p1, p1, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to convert a value of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to long"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 434
    invoke-static {p1, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static convertString(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/lang/String;
    .locals 2

    .line 476
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 477
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 479
    :cond_0
    iget-object p1, p1, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to convert value of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to String"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 479
    invoke-static {p1, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static convertTimestamp(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Lo/getStream;
    .locals 2

    .line 498
    instance-of v0, p0, Lo/getStream;

    if-eqz v0, :cond_0

    .line 499
    check-cast p0, Lo/getStream;

    return-object p0

    .line 500
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 501
    new-instance p1, Lo/getStream;

    check-cast p0, Ljava/util/Date;

    invoke-direct {p1, p0}, Lo/getStream;-><init>(Ljava/util/Date;)V

    return-object p1

    .line 503
    :cond_1
    iget-object p1, p1, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to convert value of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to Timestamp"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 503
    invoke-static {p1, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static convertToCustomClass(Ljava/lang/Object;Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;",
            ")TT;"
        }
    .end annotation

    .line 100
    new-instance v0, Lo/ImmutableList$onPostMessage;

    sget-object v1, Lo/ImmutableList$extraCallback;->EMPTY:Lo/ImmutableList$extraCallback;

    invoke-direct {v0, v1, p2}, Lo/ImmutableList$onPostMessage;-><init>(Lo/ImmutableList$extraCallback;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;)V

    invoke-static {p0, p1, v0}, Lo/ImmutableList;->deserializeToClass(Ljava/lang/Object;Ljava/lang/Class;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convertToPlainJavaTypes(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-static {p0}, Lo/ImmutableList;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convertToPlainJavaTypes(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lo/ImmutableList;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 83
    instance-of v0, p0, Ljava/util/Map;

    invoke-static {v0}, Lo/ImmutableList;->hardAssert(Z)V

    .line 85
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1

    .line 559
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Could not deserialize object. "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 560
    invoke-virtual {p0}, Lo/ImmutableList$extraCallback;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (found in field \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 563
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static deserializeToClass(Ljava/lang/Object;Ljava/lang/Class;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/ImmutableList$onPostMessage;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 222
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_c

    const-class v0, Ljava/lang/Number;

    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    const-class v0, Ljava/lang/Boolean;

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    const-class v0, Ljava/lang/Character;

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 227
    :cond_1
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-static {p0, p2}, Lo/ImmutableList;->convertString(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 229
    :cond_2
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    invoke-static {p0, p2}, Lo/ImmutableList;->convertDate(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 231
    :cond_3
    const-class v0, Lo/getStream;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    invoke-static {p0, p2}, Lo/ImmutableList;->convertTimestamp(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Lo/getStream;

    move-result-object p0

    return-object p0

    .line 233
    :cond_4
    const-class v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    invoke-static {p0, p2}, Lo/ImmutableList;->convertBlob(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    move-result-object p0

    return-object p0

    .line 235
    :cond_5
    const-class v0, Lo/toBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 236
    invoke-static {p0, p2}, Lo/ImmutableList;->convertGeoPoint(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Lo/toBuilder;

    move-result-object p0

    return-object p0

    .line 237
    :cond_6
    const-class v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 238
    invoke-static {p0, p2}, Lo/ImmutableList;->convertDocumentReference(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    move-result-object p0

    return-object p0

    .line 239
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_b

    .line 242
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_a

    .line 248
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object p0

    .line 250
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 251
    invoke-static {p0, p1, p2}, Lo/ImmutableList;->deserializeToEnum(Ljava/lang/Object;Ljava/lang/Class;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 253
    :cond_9
    invoke-static {p0, p1, p2}, Lo/ImmutableList;->convertBean(Ljava/lang/Object;Ljava/lang/Class;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 243
    :cond_a
    iget-object p0, p2, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Class "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has generic type parameters, please use GenericTypeIndicator instead"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-static {p0, p1}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 240
    :cond_b
    iget-object p0, p2, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    const-string p1, "Converting to Arrays is not supported, please use Lists instead"

    invoke-static {p0, p1}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 226
    :cond_c
    :goto_0
    invoke-static {p0, p1, p2}, Lo/ImmutableList;->deserializeToPrimitive(Ljava/lang/Object;Ljava/lang/Class;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static deserializeToEnum(Ljava/lang/Object;Ljava/lang/Class;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/ImmutableList$onPostMessage;",
            ")TT;"
        }
    .end annotation

    .line 339
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 340
    check-cast p0, Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 346
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 347
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    invoke-static {v3}, Lo/ImmutableList$ICustomTabsCallback;->access$000(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    .line 349
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :cond_1
    :goto_1
    :try_start_0
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 359
    :catch_0
    iget-object p2, p2, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find enum value of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for value \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 359
    invoke-static {p2, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 364
    :cond_2
    iget-object p2, p2, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected a String while deserializing to enum "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but got a "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 364
    invoke-static {p2, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static deserializeToParameterizedType(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lo/ImmutableList$onPostMessage;",
            ")TT;"
        }
    .end annotation

    .line 261
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 262
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 263
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    aget-object p1, p1, v2

    .line 264
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 265
    check-cast p0, Ljava/util/List;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 270
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p2, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-virtual {v3, v4}, Lo/ImmutableList$extraCallback;->child(Ljava/lang/String;)Lo/ImmutableList$extraCallback;

    move-result-object v3

    invoke-virtual {p2, v3}, Lo/ImmutableList$onPostMessage;->newInstanceWithErrorPath(Lo/ImmutableList$extraCallback;)Lo/ImmutableList$onPostMessage;

    move-result-object v3

    .line 269
    invoke-static {v1, p1, v3}, Lo/ImmutableList;->deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;

    move-result-object v1

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 276
    :cond_1
    iget-object p1, p2, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expected a List, but got a "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 278
    :cond_2
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 279
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    .line 280
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 281
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 286
    invoke-static {p0, p2}, Lo/ImmutableList;->expectMap(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/util/Map;

    move-result-object p0

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 288
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 290
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 292
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p2, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    .line 294
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lo/ImmutableList$extraCallback;->child(Ljava/lang/String;)Lo/ImmutableList$extraCallback;

    move-result-object v1

    invoke-virtual {p2, v1}, Lo/ImmutableList$onPostMessage;->newInstanceWithErrorPath(Lo/ImmutableList$extraCallback;)Lo/ImmutableList$onPostMessage;

    move-result-object v1

    .line 291
    invoke-static {v3, p1, v1}, Lo/ImmutableList;->deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v0

    .line 282
    :cond_4
    iget-object p0, p2, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Only Maps with string keys are supported, but found Map with key type "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 297
    :cond_5
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 301
    invoke-static {p0, p2}, Lo/ImmutableList;->expectMap(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/util/Map;

    move-result-object p0

    .line 302
    invoke-static {v0}, Lo/ImmutableList;->loadOrCreateBeanMapperForClass(Ljava/lang/Class;)Lo/ImmutableList$ICustomTabsCallback;

    move-result-object v0

    .line 303
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 304
    invoke-static {v0}, Lo/ImmutableList$ICustomTabsCallback;->access$100(Lo/ImmutableList$ICustomTabsCallback;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 305
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 306
    array-length v4, p1

    array-length v5, v3

    if-ne v4, v5, :cond_7

    .line 309
    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 310
    aget-object v4, v3, v2

    aget-object v5, p1, v2

    invoke-virtual {v1, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 312
    :cond_6
    invoke-virtual {v0, p0, v1, p2}, Lo/ImmutableList$ICustomTabsCallback;->deserialize(Ljava/util/Map;Ljava/util/Map;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 307
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Mismatched lengths for type variables and actual types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 298
    :cond_8
    iget-object p0, p2, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    const-string p1, "Collections are not supported, please use Lists instead"

    invoke-static {p0, p1}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static deserializeToPrimitive(Ljava/lang/Object;Ljava/lang/Class;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/ImmutableList$onPostMessage;",
            ")TT;"
        }
    .end annotation

    .line 319
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 321
    :cond_0
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 323
    :cond_1
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 325
    :cond_2
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 327
    :cond_3
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 330
    :cond_4
    iget-object p0, p2, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Deserializing values to %s is not supported"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-static {p0, p1}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 328
    :cond_5
    :goto_0
    invoke-static {p0, p2}, Lo/ImmutableList;->convertDouble(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 326
    :cond_6
    :goto_1
    invoke-static {p0, p2}, Lo/ImmutableList;->convertLong(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 324
    :cond_7
    :goto_2
    invoke-static {p0, p2}, Lo/ImmutableList;->convertDouble(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 322
    :cond_8
    :goto_3
    invoke-static {p0, p2}, Lo/ImmutableList;->convertBoolean(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 320
    :cond_9
    :goto_4
    invoke-static {p0, p2}, Lo/ImmutableList;->convertInteger(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static deserializeToType(Ljava/lang/Object;Ljava/lang/reflect/Type;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lo/ImmutableList$onPostMessage;",
            ")TT;"
        }
    .end annotation

    :goto_0
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 186
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 187
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lo/ImmutableList;->deserializeToParameterizedType(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 188
    :cond_1
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 189
    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lo/ImmutableList;->deserializeToClass(Ljava/lang/Object;Ljava/lang/Class;Lo/ImmutableList$onPostMessage;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 190
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 191
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 192
    array-length v3, v3

    if-gtz v3, :cond_4

    .line 201
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 202
    array-length v3, v0

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Unexpected type bounds on wildcard "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ImmutableList;->hardAssert(ZLjava/lang/String;)V

    .line 203
    aget-object p1, v0, v2

    goto :goto_0

    .line 193
    :cond_4
    iget-object p0, p2, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    const-string p1, "Generic lower-bounded wildcard types are not supported"

    invoke-static {p0, p1}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 204
    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_7

    .line 206
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 207
    array-length v3, v0

    if-lez v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Unexpected type bounds on type variable "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ImmutableList;->hardAssert(ZLjava/lang/String;)V

    .line 208
    aget-object p1, v0, v2

    goto :goto_0

    .line 210
    :cond_7
    instance-of p0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz p0, :cond_8

    .line 211
    iget-object p0, p2, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    const-string p1, "Generic Arrays are not supported, please use Lists instead"

    invoke-static {p0, p1}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 214
    :cond_8
    iget-object p0, p2, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unknown type encountered: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static expectMap(Ljava/lang/Object;Lo/ImmutableList$onPostMessage;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/ImmutableList$onPostMessage;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 387
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 389
    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 391
    :cond_0
    iget-object p1, p1, Lo/ImmutableList$onPostMessage;->errorPath:Lo/ImmutableList$extraCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected a Map while deserializing, but got a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 391
    invoke-static {p1, p0}, Lo/ImmutableList;->deserializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static hardAssert(Z)V
    .locals 1

    const-string v0, "Internal inconsistency"

    .line 61
    invoke-static {p0, v0}, Lo/ImmutableList;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method

.method private static hardAssert(ZLjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Hard assert failed: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static loadOrCreateBeanMapperForClass(Ljava/lang/Class;)Lo/ImmutableList$ICustomTabsCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/ImmutableList$ICustomTabsCallback<",
            "TT;>;"
        }
    .end annotation

    .line 375
    sget-object v0, Lo/ImmutableList;->mappers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImmutableList$ICustomTabsCallback;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Lo/ImmutableList$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/ImmutableList$ICustomTabsCallback;-><init>(Ljava/lang/Class;)V

    .line 380
    sget-object v1, Lo/ImmutableList;->mappers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static serialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 104
    sget-object v0, Lo/ImmutableList$extraCallback;->EMPTY:Lo/ImmutableList$extraCallback;

    invoke-static {p0, v0}, Lo/ImmutableList;->serialize(Ljava/lang/Object;Lo/ImmutableList$extraCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static serialize(Ljava/lang/Object;Lo/ImmutableList$extraCallback;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/ImmutableList$extraCallback;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Lo/ImmutableList$extraCallback;->getLength()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 119
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Numbers of type %s are not supported, please use an int, long, float or double"

    .line 124
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 122
    invoke-static {p1, p0}, Lo/ImmutableList;->serializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    return-object p0

    .line 128
    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    return-object p0

    .line 130
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    return-object p0

    .line 132
    :cond_5
    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_10

    .line 134
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 138
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 139
    check-cast v2, Ljava/lang/String;

    .line 140
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Lo/ImmutableList$extraCallback;->child(Ljava/lang/String;)Lo/ImmutableList$extraCallback;

    move-result-object v3

    invoke-static {v1, v3}, Lo/ImmutableList;->serialize(Ljava/lang/Object;Lo/ImmutableList$extraCallback;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const-string p0, "Maps with non-string keys are not supported"

    .line 142
    invoke-static {p1, p0}, Lo/ImmutableList;->serializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_7
    return-object v0

    .line 146
    :cond_8
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_b

    .line 147
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_a

    .line 148
    check-cast p0, Ljava/util/List;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 151
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lo/ImmutableList$extraCallback;->child(Ljava/lang/String;)Lo/ImmutableList$extraCallback;

    move-result-object v3

    invoke-static {v2, v3}, Lo/ImmutableList;->serialize(Ljava/lang/Object;Lo/ImmutableList$extraCallback;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    return-object v0

    :cond_a
    const-string p0, "Serializing Collections is not supported, please use Lists instead"

    .line 155
    invoke-static {p1, p0}, Lo/ImmutableList;->serializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 158
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_f

    .line 160
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_c

    .line 161
    move-object p1, p0

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 163
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 164
    invoke-static {p0}, Lo/ImmutableList$ICustomTabsCallback;->access$000(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1

    .line 168
    :cond_c
    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_e

    instance-of v0, p0, Lo/getStream;

    if-nez v0, :cond_e

    instance-of v0, p0, Lo/toBuilder;

    if-nez v0, :cond_e

    instance-of v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    if-nez v0, :cond_e

    instance-of v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    if-nez v0, :cond_e

    instance-of v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventEncoder;

    if-eqz v0, :cond_d

    goto :goto_3

    .line 176
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lo/ImmutableList;->loadOrCreateBeanMapperForClass(Ljava/lang/Class;)Lo/ImmutableList$ICustomTabsCallback;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p0, p1}, Lo/ImmutableList$ICustomTabsCallback;->serialize(Ljava/lang/Object;Lo/ImmutableList$extraCallback;)Ljava/util/Map;

    move-result-object p0

    :cond_e
    :goto_3
    return-object p0

    :cond_f
    const-string p0, "Serializing Arrays is not supported, please use Lists instead"

    .line 159
    invoke-static {p1, p0}, Lo/ImmutableList;->serializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_10
    const-string p0, "Characters are not supported, please use Strings"

    .line 133
    invoke-static {p1, p0}, Lo/ImmutableList;->serializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_11
    const-string p0, "Exceeded maximum depth of 500, which likely indicates there\'s an object cycle"

    .line 110
    invoke-static {p1, p0}, Lo/ImmutableList;->serializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private static serializeError(Lo/ImmutableList$extraCallback;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 1

    .line 551
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Could not serialize object. "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 552
    invoke-virtual {p0}, Lo/ImmutableList$extraCallback;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (found in field \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 555
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
