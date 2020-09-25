.class public Lo/copyTo;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final FALSE_REGEX:Ljava/util/regex/Pattern;

.field public static final FRC_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

.field static final TRUE_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private final activatedConfigsCache:Lo/copyFromUtf8;

.field private final defaultConfigsCache:Lo/copyFromUtf8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    .line 64
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/copyTo;->FRC_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

    const/4 v0, 0x2

    const-string v1, "^(1|true|t|yes|y|on)$"

    .line 67
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lo/copyTo;->TRUE_REGEX:Ljava/util/regex/Pattern;

    const-string v1, "^(0|false|f|no|n|off|)$"

    .line 70
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/copyTo;->FALSE_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lo/copyFromUtf8;Lo/copyFromUtf8;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lo/copyTo;->activatedConfigsCache:Lo/copyFromUtf8;

    .line 78
    iput-object p2, p0, Lo/copyTo;->defaultConfigsCache:Lo/copyFromUtf8;

    return-void
.end method

.method private static getConfigsFromCache(Lo/copyFromUtf8;)Lo/ByteString;
    .locals 0

    .line 407
    invoke-virtual {p0}, Lo/copyFromUtf8;->getBlocking()Lo/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private static getDoubleFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    .line 355
    invoke-static {p0}, Lo/copyTo;->getConfigsFromCache(Lo/copyFromUtf8;)Lo/ByteString;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 361
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lo/ByteString;->getConfigs()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static getKeySetFromCache(Lo/copyFromUtf8;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/copyFromUtf8;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 388
    invoke-static {p0}, Lo/copyTo;->getConfigsFromCache(Lo/copyFromUtf8;)Lo/ByteString;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 393
    :cond_0
    invoke-virtual {p0}, Lo/ByteString;->getConfigs()Lorg/json/JSONObject;

    move-result-object p0

    .line 394
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 395
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getKeysByPrefix(Ljava/lang/String;Lo/ByteString;)Ljava/util/TreeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/ByteString;",
            ")",
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 295
    invoke-virtual {p1}, Lo/ByteString;->getConfigs()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 296
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 298
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getLongFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 373
    invoke-static {p0}, Lo/copyTo;->getConfigsFromCache(Lo/copyFromUtf8;)Lo/ByteString;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 379
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lo/ByteString;->getConfigs()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static getStringFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 337
    invoke-static {p0}, Lo/copyTo;->getConfigsFromCache(Lo/copyFromUtf8;)Lo/ByteString;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 343
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lo/ByteString;->getConfigs()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static logParameterValueDoesNotExist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "No value of type \'%s\' exists for parameter key \'%s\'."

    .line 412
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FirebaseRemoteConfig"

    .line 411
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getAll()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/FileStore;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 318
    iget-object v1, p0, Lo/copyTo;->activatedConfigsCache:Lo/copyFromUtf8;

    invoke-static {v1}, Lo/copyTo;->getKeySetFromCache(Lo/copyFromUtf8;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 319
    iget-object v1, p0, Lo/copyTo;->defaultConfigsCache:Lo/copyFromUtf8;

    invoke-static {v1}, Lo/copyTo;->getKeySetFromCache(Lo/copyFromUtf8;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 321
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 322
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 323
    invoke-virtual {p0, v2}, Lo/copyTo;->getValue(Ljava/lang/String;)Lo/FileStore;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4

    .line 125
    iget-object v0, p0, Lo/copyTo;->activatedConfigsCache:Lo/copyFromUtf8;

    invoke-static {v0, p1}, Lo/copyTo;->getStringFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 127
    sget-object v3, Lo/copyTo;->TRUE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 129
    :cond_0
    sget-object v3, Lo/copyTo;->FALSE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 134
    :cond_1
    iget-object v0, p0, Lo/copyTo;->defaultConfigsCache:Lo/copyFromUtf8;

    invoke-static {v0, p1}, Lo/copyTo;->getStringFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 136
    sget-object v3, Lo/copyTo;->TRUE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 138
    :cond_2
    sget-object v1, Lo/copyTo;->FALSE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const-string v0, "Boolean"

    .line 143
    invoke-static {p1, v0}, Lo/copyTo;->logParameterValueDoesNotExist(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 161
    iget-object v0, p0, Lo/copyTo;->activatedConfigsCache:Lo/copyFromUtf8;

    invoke-static {v0, p1}, Lo/copyTo;->getStringFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    sget-object p1, Lo/copyTo;->FRC_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    .line 166
    :cond_0
    iget-object v0, p0, Lo/copyTo;->defaultConfigsCache:Lo/copyFromUtf8;

    invoke-static {v0, p1}, Lo/copyTo;->getStringFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    sget-object p1, Lo/copyTo;->FRC_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "ByteArray"

    .line 171
    invoke-static {p1, v0}, Lo/copyTo;->logParameterValueDoesNotExist(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object p1, Lo/CrashlyticsReportPersistence$$Lambda$4;->DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

    return-object p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .line 191
    iget-object v0, p0, Lo/copyTo;->activatedConfigsCache:Lo/copyFromUtf8;

    invoke-static {v0, p1}, Lo/copyTo;->getDoubleFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 196
    :cond_0
    iget-object v0, p0, Lo/copyTo;->defaultConfigsCache:Lo/copyFromUtf8;

    invoke-static {v0, p1}, Lo/copyTo;->getDoubleFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_1
    const-string v0, "Double"

    .line 201
    invoke-static {p1, v0}, Lo/copyTo;->logParameterValueDoesNotExist(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getKeysByPrefix(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 276
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 278
    iget-object v1, p0, Lo/copyTo;->activatedConfigsCache:Lo/copyFromUtf8;

    invoke-static {v1}, Lo/copyTo;->getConfigsFromCache(Lo/copyFromUtf8;)Lo/ByteString;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 280
    invoke-static {p1, v1}, Lo/copyTo;->getKeysByPrefix(Ljava/lang/String;Lo/ByteString;)Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 283
    :cond_1
    iget-object v1, p0, Lo/copyTo;->defaultConfigsCache:Lo/copyFromUtf8;

    invoke-static {v1}, Lo/copyTo;->getConfigsFromCache(Lo/copyFromUtf8;)Lo/ByteString;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 285
    invoke-static {p1, v1}, Lo/copyTo;->getKeysByPrefix(Ljava/lang/String;Lo/ByteString;)Ljava/util/TreeSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 221
    iget-object v0, p0, Lo/copyTo;->activatedConfigsCache:Lo/copyFromUtf8;

    invoke-static {v0, p1}, Lo/copyTo;->getLongFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 226
    :cond_0
    iget-object v0, p0, Lo/copyTo;->defaultConfigsCache:Lo/copyFromUtf8;

    invoke-static {v0, p1}, Lo/copyTo;->getLongFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-string v0, "Long"

    .line 231
    invoke-static {p1, v0}, Lo/copyTo;->logParameterValueDoesNotExist(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/copyTo;->activatedConfigsCache:Lo/copyFromUtf8;

    invoke-static {v0, p1}, Lo/copyTo;->getStringFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lo/copyTo;->defaultConfigsCache:Lo/copyFromUtf8;

    invoke-static {v0, p1}, Lo/copyTo;->getStringFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "String"

    .line 105
    invoke-static {p1, v0}, Lo/copyTo;->logParameterValueDoesNotExist(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public getValue(Ljava/lang/String;)Lo/FileStore;
    .locals 2

    .line 249
    iget-object v0, p0, Lo/copyTo;->activatedConfigsCache:Lo/copyFromUtf8;

    invoke-static {v0, p1}, Lo/copyTo;->getStringFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    new-instance p1, Lo/newInput;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lo/newInput;-><init>(Ljava/lang/String;I)V

    return-object p1

    .line 254
    :cond_0
    iget-object v0, p0, Lo/copyTo;->defaultConfigsCache:Lo/copyFromUtf8;

    invoke-static {v0, p1}, Lo/copyTo;->getStringFromCache(Lo/copyFromUtf8;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    new-instance p1, Lo/newInput;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lo/newInput;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_1
    const-string v0, "FirebaseRemoteConfigValue"

    .line 259
    invoke-static {p1, v0}, Lo/copyTo;->logParameterValueDoesNotExist(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance p1, Lo/newInput;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p1, v1, v0}, Lo/newInput;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method
