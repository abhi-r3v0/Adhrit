.class public final Lo/computeSFixed64SizeNoTag;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onPostMessage:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    .line 30
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lo/computeSFixed64SizeNoTag;->onPostMessage:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 126
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v3, v0, 0x4

    .line 129
    invoke-static {v1, v0, v3}, Lo/computeSFixed64SizeNoTag;->onMessageChannelReady(Ljava/lang/String;II)I

    move-result v0

    .line 1288
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2d

    const/4 v7, 0x1

    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v4, v3, 0x2

    .line 135
    invoke-static {v1, v3, v4}, Lo/computeSFixed64SizeNoTag;->onMessageChannelReady(Ljava/lang/String;II)I

    move-result v3

    .line 2288
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v8, v4, 0x2

    .line 141
    invoke-static {v1, v4, v8}, Lo/computeSFixed64SizeNoTag;->onMessageChannelReady(Ljava/lang/String;II)I

    move-result v4

    .line 3288
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x54

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_5

    .line 151
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v10, v8, :cond_5

    .line 152
    new-instance v5, Ljava/util/GregorianCalendar;

    sub-int/2addr v3, v7

    invoke-direct {v5, v0, v3, v4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 154
    invoke-virtual {v2, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 155
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_5
    const/16 v10, 0x2b

    const/16 v11, 0x5a

    const/4 v12, 0x2

    if-eqz v9, :cond_10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v8, 0x2

    .line 161
    invoke-static {v1, v8, v9}, Lo/computeSFixed64SizeNoTag;->onMessageChannelReady(Ljava/lang/String;II)I

    move-result v8

    .line 4288
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x3a

    if-ge v9, v13, :cond_6

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v14, :cond_6

    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_7

    add-int/lit8 v9, v9, 0x1

    :cond_7
    add-int/lit8 v13, v9, 0x2

    .line 166
    invoke-static {v1, v9, v13}, Lo/computeSFixed64SizeNoTag;->onMessageChannelReady(Ljava/lang/String;II)I

    move-result v9

    .line 5288
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v13, v15, :cond_8

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v14, :cond_8

    const/4 v14, 0x1

    goto :goto_4

    :cond_8
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_9

    add-int/lit8 v13, v13, 0x1

    .line 171
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v13, :cond_f

    .line 172
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v11, :cond_f

    if-eq v14, v10, :cond_f

    if-eq v14, v5, :cond_f

    add-int/lit8 v14, v13, 0x2

    .line 174
    invoke-static {v1, v13, v14}, Lo/computeSFixed64SizeNoTag;->onMessageChannelReady(Ljava/lang/String;II)I

    move-result v13

    const/16 v15, 0x3b

    if-le v13, v15, :cond_a

    const/16 v15, 0x3f

    if-ge v13, v15, :cond_a

    const/16 v13, 0x3b

    .line 6288
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_b

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v6, 0x2e

    if-ne v15, v6, :cond_b

    const/4 v6, 0x1

    goto :goto_5

    :cond_b
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_e

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v6, v14, 0x1

    .line 179
    invoke-static {v1, v6}, Lo/computeSFixed64SizeNoTag;->onPostMessage(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v15, v14, 0x3

    .line 180
    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 181
    invoke-static {v1, v14, v15}, Lo/computeSFixed64SizeNoTag;->onMessageChannelReady(Ljava/lang/String;II)I

    move-result v16

    sub-int/2addr v15, v14

    if-eq v15, v7, :cond_d

    if-eq v15, v12, :cond_c

    goto :goto_6

    :cond_c
    mul-int/lit8 v16, v16, 0xa

    goto :goto_6

    :cond_d
    mul-int/lit8 v16, v16, 0x64

    :goto_6
    move/from16 v14, v16

    move/from16 v17, v8

    move v8, v6

    move/from16 v6, v17

    goto :goto_9

    :cond_e
    move v6, v8

    move v8, v14

    goto :goto_8

    :cond_f
    move v6, v8

    move v8, v13

    goto :goto_7

    :cond_10
    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_7
    const/4 v13, 0x0

    :goto_8
    const/4 v14, 0x0

    .line 200
    :goto_9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    if-le v15, v8, :cond_19

    .line 205
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/4 v12, 0x5

    if-ne v15, v11, :cond_11

    .line 208
    sget-object v5, Lo/computeSFixed64SizeNoTag;->onPostMessage:Ljava/util/TimeZone;

    add-int/2addr v8, v7

    goto/16 :goto_e

    :cond_11
    if-eq v15, v10, :cond_13

    if-ne v15, v5, :cond_12

    goto :goto_a

    .line 245
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid time zone indicator \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_13
    :goto_a
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v12, :cond_14

    goto :goto_b

    :cond_14
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "00"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 216
    :goto_b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    const-string v10, "+0000"

    .line 218
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    const-string v10, "+00:00"

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    goto :goto_d

    :cond_15
    const-string v10, "GMT"

    .line 225
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 228
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 230
    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    .line 231
    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_17

    const-string v15, ":"

    const-string v12, ""

    .line 237
    invoke-virtual {v11, v15, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 238
    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    goto :goto_c

    .line 239
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mismatching time zone indicator: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " given, resolves to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_c
    move-object v5, v10

    goto :goto_e

    .line 219
    :cond_18
    :goto_d
    sget-object v5, Lo/computeSFixed64SizeNoTag;->onPostMessage:Ljava/util/TimeZone;

    .line 248
    :goto_e
    new-instance v10, Ljava/util/GregorianCalendar;

    invoke-direct {v10, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v5, 0x0

    .line 249
    invoke-virtual {v10, v5}, Ljava/util/Calendar;->setLenient(Z)V

    .line 250
    invoke-virtual {v10, v7, v0}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v3, v7

    const/4 v0, 0x2

    .line 251
    invoke-virtual {v10, v0, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 252
    invoke-virtual {v10, v0, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    .line 253
    invoke-virtual {v10, v0, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 254
    invoke-virtual {v10, v0, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 255
    invoke-virtual {v10, v0, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 256
    invoke-virtual {v10, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 258
    invoke-virtual {v2, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 259
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 201
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "No time zone indicator"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_f

    :catch_2
    move-exception v0

    :goto_f
    if-nez v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_10

    .line 269
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 271
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 272
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 274
    :cond_1c
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to parse date ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 275
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 276
    throw v4
.end method

.method private static onMessageChannelReady(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-ltz p1, :cond_4

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_4

    if-gt p1, p2, :cond_4

    const/4 v0, 0x0

    const-string v1, "Invalid number: "

    const/16 v2, 0xa

    if-ge p1, p2, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 309
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_0

    neg-int v3, v3

    goto :goto_0

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    add-int/lit8 v4, v0, 0x1

    .line 316
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-ltz v0, :cond_2

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v3, v0

    move v0, v4

    goto :goto_0

    .line 318
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    neg-int p0, v3

    return p0

    .line 302
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static onPostMessage(Ljava/lang/String;I)I
    .locals 2

    .line 345
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 346
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    .line 349
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method
