.class public final Lo/convertBoolean;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Ljava/util/regex/Pattern;

.field private static final onNavigationEvent:Ljava/util/regex/Pattern;

.field private static final onPostMessage:Ljava/util/regex/Pattern;

.field private static final onRelationshipValidationResult:Ljava/util/regex/Pattern;


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field private final ICustomTabsCallback$Stub:Ljava/lang/String;

.field private final ICustomTabsService:Z

.field private final asBinder:J

.field private final asInterface:Ljava/lang/String;

.field private final newSession:Z

.field public final onMessageChannelReady:Ljava/lang/String;

.field private final onTransact:Z

.field private final warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{2,4})[^\\d]*"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/convertBoolean;->onPostMessage:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/convertBoolean;->onNavigationEvent:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/convertBoolean;->extraCallback:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/convertBoolean;->onRelationshipValidationResult:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lo/convertBoolean;->ICustomTabsCallback:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lo/convertBoolean;->onMessageChannelReady:Ljava/lang/String;

    .line 71
    iput-wide p3, p0, Lo/convertBoolean;->asBinder:J

    .line 72
    iput-object p5, p0, Lo/convertBoolean;->asInterface:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lo/convertBoolean;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 74
    iput-boolean p7, p0, Lo/convertBoolean;->onTransact:Z

    .line 75
    iput-boolean p8, p0, Lo/convertBoolean;->ICustomTabsService:Z

    .line 76
    iput-boolean p9, p0, Lo/convertBoolean;->warmup:Z

    .line 77
    iput-boolean p10, p0, Lo/convertBoolean;->newSession:Z

    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/String;)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    .line 410
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    return-wide v0

    :cond_0
    return-wide v2

    :catch_0
    move-exception v2

    const-string v3, "-?\\d+"

    .line 414
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "-"

    .line 415
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide v0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 417
    :cond_2
    throw v2
.end method

.method public static onMessageChannelReady(Lo/isFullyInitialized;Lo/shouldIncludeField;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isFullyInitialized;",
            "Lo/shouldIncludeField;",
            ")",
            "Ljava/util/List<",
            "Lo/convertBoolean;",
            ">;"
        }
    .end annotation

    const-string v0, "Set-Cookie"

    .line 441
    invoke-virtual {p1, v0}, Lo/shouldIncludeField;->onNavigationEvent(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 444
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 445
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5, p0, v3}, Lo/convertBoolean;->onMessageChannelReady(JLo/isFullyInitialized;Ljava/lang/String;)Lo/convertBoolean;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 448
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 452
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 453
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static onMessageChannelReady(JLo/isFullyInitialized;Ljava/lang/String;)Lo/convertBoolean;
    .locals 28

    move-object/from16 v0, p3

    const-string v1, "."

    .line 224
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3b

    const/4 v4, 0x0

    .line 225
    invoke-static {v0, v4, v2, v3}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;IIC)I

    move-result v5

    const/16 v6, 0x3d

    .line 227
    invoke-static {v0, v4, v5, v6}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;IIC)I

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v5, :cond_0

    return-object v8

    .line 230
    :cond_0
    invoke-static {v0, v4, v7}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    .line 231
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2a

    invoke-static {v10}, Lo/generateEventsForType;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_1

    goto/16 :goto_e

    :cond_1
    const/4 v9, 0x1

    add-int/2addr v7, v9

    .line 233
    invoke-static {v0, v7, v5}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    .line 234
    invoke-static {v7}, Lo/generateEventsForType;->ICustomTabsCallback(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v11, :cond_2

    return-object v8

    :cond_2
    add-int/2addr v5, v9

    move-object/from16 v22, v8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-wide/16 v20, -0x1

    const-wide v23, 0xe677d21fdbffL

    :goto_0
    if-ge v5, v2, :cond_1c

    .line 247
    invoke-static {v0, v5, v2, v3}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;IIC)I

    move-result v14

    .line 249
    invoke-static {v0, v5, v14, v6}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;IIC)I

    move-result v15

    .line 250
    invoke-static {v0, v5, v15}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    if-ge v15, v14, :cond_3

    add-int/lit8 v15, v15, 0x1

    .line 252
    invoke-static {v0, v15, v14}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_3
    const-string v15, ""

    :goto_1
    const-string v6, "expires"

    .line 255
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 257
    :try_start_0
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    .line 1329
    invoke-static {v15, v4, v5, v4}, Lo/convertBoolean;->onPostMessage(Ljava/lang/String;IIZ)I

    move-result v6

    .line 1337
    sget-object v12, Lo/convertBoolean;->onRelationshipValidationResult:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v13, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    :goto_2
    if-ge v6, v5, :cond_a

    add-int/lit8 v11, v6, 0x1

    .line 1340
    invoke-static {v15, v11, v5, v9}, Lo/convertBoolean;->onPostMessage(Ljava/lang/String;IIZ)I

    move-result v11

    .line 1341
    invoke-virtual {v12, v6, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    .line 1343
    sget-object v6, Lo/convertBoolean;->onRelationshipValidationResult:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1344
    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x2

    .line 1345
    invoke-virtual {v12, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/4 v6, 0x3

    .line 1346
    invoke-virtual {v12, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v6, v25

    goto :goto_3

    :cond_4
    move/from16 v6, v25

    const/4 v9, -0x1

    if-ne v6, v9, :cond_6

    .line 1347
    sget-object v9, Lo/convertBoolean;->extraCallback:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    .line 1348
    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    :cond_5
    const/4 v9, -0x1

    :cond_6
    if-ne v4, v9, :cond_8

    .line 1349
    sget-object v9, Lo/convertBoolean;->onNavigationEvent:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    .line 1350
    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 1351
    sget-object v9, Lo/convertBoolean;->onNavigationEvent:Ljava/util/regex/Pattern;

    invoke-virtual {v9}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    goto :goto_3

    :cond_7
    const/4 v9, -0x1

    :cond_8
    if-ne v13, v9, :cond_9

    .line 1352
    sget-object v9, Lo/convertBoolean;->onPostMessage:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    .line 1353
    invoke-virtual {v12, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    :cond_9
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    .line 1356
    invoke-static {v15, v11, v5, v9}, Lo/convertBoolean;->onPostMessage(Ljava/lang/String;IIZ)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v25, v6

    move v6, v11

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_a
    move/from16 v6, v25

    const/16 v5, 0x46

    if-lt v13, v5, :cond_b

    const/16 v5, 0x63

    if-gt v13, v5, :cond_b

    add-int/lit16 v13, v13, 0x76c

    :cond_b
    if-ltz v13, :cond_c

    const/16 v5, 0x45

    if-gt v13, v5, :cond_c

    add-int/lit16 v13, v13, 0x7d0

    :cond_c
    const/16 v5, 0x641

    if-lt v13, v5, :cond_12

    const/4 v9, -0x1

    if-eq v4, v9, :cond_11

    if-lez v6, :cond_10

    const/16 v5, 0x1f

    if-gt v6, v5, :cond_10

    if-ltz v3, :cond_f

    const/16 v5, 0x17

    if-gt v3, v5, :cond_f

    move/from16 v11, v26

    const/16 v12, 0x3b

    if-ltz v11, :cond_e

    if-gt v11, v12, :cond_e

    move/from16 v5, v27

    if-ltz v5, :cond_d

    if-gt v5, v12, :cond_d

    .line 1372
    :try_start_1
    new-instance v15, Ljava/util/GregorianCalendar;

    sget-object v9, Lo/generateEventsForType;->onPostMessage:Ljava/util/TimeZone;

    invoke-direct {v15, v9}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v9, 0x0

    .line 1373
    invoke-virtual {v15, v9}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v9, 0x1

    .line 1374
    invoke-virtual {v15, v9, v13}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v4, v4, -0x1

    const/4 v9, 0x2

    .line 1375
    invoke-virtual {v15, v9, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x5

    .line 1376
    invoke-virtual {v15, v4, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    .line 1377
    invoke-virtual {v15, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 1378
    invoke-virtual {v15, v3, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 1379
    invoke-virtual {v15, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    const/4 v4, 0x0

    .line 1380
    invoke-virtual {v15, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1381
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v23

    goto :goto_4

    .line 1370
    :cond_d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1369
    :cond_e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_f
    const/16 v12, 0x3b

    .line 1368
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_10
    const/16 v12, 0x3b

    .line 1367
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_11
    const/16 v12, 0x3b

    .line 1366
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_12
    const/16 v12, 0x3b

    .line 1365
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    const/16 v12, 0x3b

    goto :goto_5

    :cond_13
    const/16 v12, 0x3b

    const-string v3, "max-age"

    .line 262
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 264
    :try_start_2
    invoke-static {v15}, Lo/convertBoolean;->onMessageChannelReady(Ljava/lang/String;)J

    move-result-wide v20
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    const/16 v19, 0x1

    goto :goto_5

    :cond_14
    const-string v3, "domain"

    .line 269
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1426
    :try_start_3
    invoke-virtual {v15, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1429
    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    .line 1430
    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 1432
    :cond_15
    invoke-static {v15}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    move-object v8, v3

    const/16 v18, 0x0

    goto :goto_5

    .line 1434
    :cond_16
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1427
    :cond_17
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_18
    const-string v3, "path"

    .line 276
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v22, v15

    goto :goto_5

    :cond_19
    const-string v3, "secure"

    .line 278
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/16 v16, 0x1

    goto :goto_5

    :cond_1a
    const-string v3, "httponly"

    .line 280
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/16 v17, 0x1

    :catch_1
    :cond_1b
    :goto_5
    add-int/lit8 v5, v14, 0x1

    const/16 v3, 0x3b

    const/4 v4, 0x0

    const/16 v6, 0x3d

    const/4 v9, 0x1

    const/4 v11, -0x1

    goto/16 :goto_0

    :cond_1c
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, v20, v0

    if-nez v2, :cond_1e

    :cond_1d
    move-wide v12, v0

    move-object/from16 v0, p2

    goto :goto_8

    :cond_1e
    const-wide/16 v0, -0x1

    cmp-long v2, v20, v0

    if-eqz v2, :cond_21

    const-wide v0, 0x20c49ba5e353f7L

    cmp-long v2, v20, v0

    if-gtz v2, :cond_1f

    const-wide/16 v0, 0x3e8

    mul-long v20, v20, v0

    goto :goto_6

    :cond_1f
    const-wide v20, 0x7fffffffffffffffL

    :goto_6
    add-long v0, p0, v20

    cmp-long v2, v0, p0

    if-ltz v2, :cond_20

    const-wide v2, 0xe677d21fdbffL

    cmp-long v4, v0, v2

    if-lez v4, :cond_1d

    goto :goto_7

    :cond_20
    const-wide v2, 0xe677d21fdbffL

    :goto_7
    move-object/from16 v0, p2

    move-wide v12, v2

    goto :goto_8

    :cond_21
    move-object/from16 v0, p2

    move-wide/from16 v12, v23

    .line 1486
    :goto_8
    iget-object v1, v0, Lo/isFullyInitialized;->extraCallback:Ljava/lang/String;

    if-nez v8, :cond_22

    move-object v14, v1

    const/4 v2, 0x0

    goto :goto_b

    .line 2186
    :cond_22
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    :goto_9
    const/4 v9, 0x1

    goto :goto_a

    .line 2190
    :cond_23
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2191
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_24

    .line 2192
    invoke-static {v1}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_9

    :cond_24
    const/4 v9, 0x0

    :goto_a
    const/4 v2, 0x0

    if-nez v9, :cond_25

    return-object v2

    :cond_25
    move-object v14, v8

    .line 310
    :goto_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_26

    .line 311
    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->extraCallback()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v1

    invoke-virtual {v1, v14}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_26

    return-object v2

    :cond_26
    const-string v1, "/"

    move-object/from16 v8, v22

    if-eqz v8, :cond_28

    .line 317
    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_c

    :cond_27
    move-object v15, v8

    goto :goto_d

    .line 318
    :cond_28
    :goto_c
    invoke-virtual/range {p2 .. p2}, Lo/isFullyInitialized;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    .line 319
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eqz v2, :cond_29

    const/4 v3, 0x0

    .line 320
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_29
    move-object v15, v1

    .line 323
    :goto_d
    new-instance v0, Lo/convertBoolean;

    move-object v9, v0

    move-object v11, v7

    invoke-direct/range {v9 .. v19}, Lo/convertBoolean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    return-object v0

    :cond_2a
    :goto_e
    move-object v0, v8

    return-object v0
.end method

.method private static onPostMessage(Ljava/lang/String;IIZ)I
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_7

    .line 390
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    :cond_0
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_5

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_5

    :cond_1
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7a

    if-le v0, v1, :cond_5

    :cond_2
    const/16 v1, 0x41

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5a

    if-le v0, v1, :cond_5

    :cond_3
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    xor-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_6

    return p1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    return p2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 586
    instance-of v0, p1, Lo/convertBoolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 587
    :cond_0
    check-cast p1, Lo/convertBoolean;

    .line 588
    iget-object v0, p1, Lo/convertBoolean;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/convertBoolean;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo/convertBoolean;->onMessageChannelReady:Ljava/lang/String;

    iget-object v2, p0, Lo/convertBoolean;->onMessageChannelReady:Ljava/lang/String;

    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo/convertBoolean;->asInterface:Ljava/lang/String;

    iget-object v2, p0, Lo/convertBoolean;->asInterface:Ljava/lang/String;

    .line 590
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo/convertBoolean;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v2, p0, Lo/convertBoolean;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 591
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p1, Lo/convertBoolean;->asBinder:J

    iget-wide v4, p0, Lo/convertBoolean;->asBinder:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lo/convertBoolean;->onTransact:Z

    iget-boolean v2, p0, Lo/convertBoolean;->onTransact:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lo/convertBoolean;->ICustomTabsService:Z

    iget-boolean v2, p0, Lo/convertBoolean;->ICustomTabsService:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lo/convertBoolean;->newSession:Z

    iget-boolean v2, p0, Lo/convertBoolean;->newSession:Z

    if-ne v0, v2, :cond_1

    iget-boolean p1, p1, Lo/convertBoolean;->warmup:Z

    iget-boolean v0, p0, Lo/convertBoolean;->warmup:Z

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 601
    iget-object v0, p0, Lo/convertBoolean;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 602
    iget-object v1, p0, Lo/convertBoolean;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 603
    iget-object v1, p0, Lo/convertBoolean;->asInterface:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 604
    iget-object v1, p0, Lo/convertBoolean;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 605
    iget-wide v1, p0, Lo/convertBoolean;->asBinder:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 606
    iget-boolean v1, p0, Lo/convertBoolean;->onTransact:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 607
    iget-boolean v1, p0, Lo/convertBoolean;->ICustomTabsService:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 608
    iget-boolean v1, p0, Lo/convertBoolean;->newSession:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 609
    iget-boolean v1, p0, Lo/convertBoolean;->warmup:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 2551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2552
    iget-object v1, p0, Lo/convertBoolean;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    .line 2553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2554
    iget-object v1, p0, Lo/convertBoolean;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    iget-boolean v1, p0, Lo/convertBoolean;->newSession:Z

    if-eqz v1, :cond_1

    .line 2557
    iget-wide v1, p0, Lo/convertBoolean;->asBinder:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, "; max-age=0"

    .line 2558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "; expires="

    .line 2560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lo/convertBoolean;->asBinder:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lo/hasEnd;->onPostMessage(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lo/convertBoolean;->warmup:Z

    if-nez v1, :cond_2

    const-string v1, "; domain="

    .line 2565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2569
    iget-object v1, p0, Lo/convertBoolean;->asInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "; path="

    .line 2572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/convertBoolean;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2574
    iget-boolean v1, p0, Lo/convertBoolean;->onTransact:Z

    if-eqz v1, :cond_3

    const-string v1, "; secure"

    .line 2575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    :cond_3
    iget-boolean v1, p0, Lo/convertBoolean;->ICustomTabsService:Z

    if-eqz v1, :cond_4

    const-string v1, "; httponly"

    .line 2579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2582
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
