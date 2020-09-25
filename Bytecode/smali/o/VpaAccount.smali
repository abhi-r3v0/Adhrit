.class public final Lo/VpaAccount;
.super Lo/SimDetailJsonAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/VpaAccount$onMessageChannelReady;,
        Lo/VpaAccount$extraCallback;,
        Lo/VpaAccount$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/regex/Pattern;

.field private static final ICustomTabsCallback$Stub:Ljava/util/regex/Pattern;

.field private static final asBinder:Lo/VpaAccount$onNavigationEvent;

.field private static final extraCallback:Ljava/util/regex/Pattern;

.field private static final onMessageChannelReady:Ljava/util/regex/Pattern;

.field private static final onNavigationEvent:Ljava/util/regex/Pattern;

.field private static final onPostMessage:Ljava/util/regex/Pattern;

.field private static final onRelationshipValidationResult:Lo/VpaAccount$extraCallback;


# instance fields
.field private final onTransact:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/VpaAccount;->ICustomTabsCallback:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 77
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/VpaAccount;->onMessageChannelReady:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 78
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/VpaAccount;->extraCallback:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 80
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/VpaAccount;->onNavigationEvent:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    .line 82
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/VpaAccount;->onPostMessage:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    .line 83
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/VpaAccount;->ICustomTabsCallback$Stub:Ljava/util/regex/Pattern;

    .line 87
    new-instance v0, Lo/VpaAccount$onNavigationEvent;

    const/4 v1, 0x1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-direct {v0, v2, v1, v1}, Lo/VpaAccount$onNavigationEvent;-><init>(FII)V

    sput-object v0, Lo/VpaAccount;->asBinder:Lo/VpaAccount$onNavigationEvent;

    .line 89
    new-instance v0, Lo/VpaAccount$extraCallback;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lo/VpaAccount$extraCallback;-><init>(II)V

    sput-object v0, Lo/VpaAccount;->onRelationshipValidationResult:Lo/VpaAccount$extraCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "TtmlDecoder"

    .line 95
    invoke-direct {p0, v0}, Lo/SimDetailJsonAdapter;-><init>(Ljava/lang/String;)V

    .line 97
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lo/VpaAccount;->onTransact:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;Lo/VpaAccount$onNavigationEvent;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 672
    sget-object v0, Lo/VpaAccount;->ICustomTabsCallback:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 673
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_3

    .line 674
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 675
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0xe10

    mul-long v8, v8, v10

    long-to-double v8, v8

    .line 676
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 677
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    mul-long v10, v10, v12

    long-to-double v10, v10

    add-double/2addr v8, v10

    .line 678
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 679
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-double v6, v6

    add-double/2addr v8, v6

    .line 680
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v5, 0x0

    if-eqz p0, :cond_0

    .line 681
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_0

    :cond_0
    move-wide v10, v5

    :goto_0
    add-double/2addr v8, v10

    .line 682
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 684
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-float p0, v10

    iget v1, p1, Lo/VpaAccount$onNavigationEvent;->ICustomTabsCallback:F

    div-float/2addr p0, v1

    float-to-double v10, p0

    goto :goto_1

    :cond_1
    move-wide v10, v5

    :goto_1
    add-double/2addr v8, v10

    const/4 p0, 0x6

    .line 685
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 687
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lo/VpaAccount$onNavigationEvent;->onNavigationEvent:I

    int-to-double v4, p0

    div-double/2addr v0, v4

    iget p0, p1, Lo/VpaAccount$onNavigationEvent;->ICustomTabsCallback:F

    float-to-double p0, p0

    div-double v5, v0, p0

    :cond_2
    add-double/2addr v8, v5

    mul-double v8, v8, v2

    double-to-long p0, v8

    return-wide p0

    .line 692
    :cond_3
    sget-object v0, Lo/VpaAccount;->onMessageChannelReady:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 694
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 695
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 696
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    .line 697
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v11, 0x66

    if-eq v1, v11, :cond_9

    const/16 v11, 0x68

    if-eq v1, v11, :cond_8

    const/16 v11, 0x6d

    if-eq v1, v11, :cond_7

    const/16 v11, 0xda6

    if-eq v1, v11, :cond_6

    const/16 v11, 0x73

    if-eq v1, v11, :cond_5

    const/16 v7, 0x74

    if-eq v1, v7, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "t"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x5

    goto :goto_3

    :cond_5
    const-string/jumbo v1, "s"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_6
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x3

    goto :goto_3

    :cond_7
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    const-string v1, "h"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x4

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v7, -0x1

    :goto_3
    if-eqz v7, :cond_f

    if-eq v7, v8, :cond_e

    if-eq v7, v6, :cond_d

    if-eq v7, v5, :cond_c

    if-eq v7, v4, :cond_b

    goto :goto_6

    .line 714
    :cond_b
    iget p0, p1, Lo/VpaAccount$onNavigationEvent;->onMessageChannelReady:I

    int-to-double p0, p0

    goto :goto_4

    .line 711
    :cond_c
    iget p0, p1, Lo/VpaAccount$onNavigationEvent;->ICustomTabsCallback:F

    float-to-double p0, p0

    goto :goto_4

    :cond_d
    const-wide p0, 0x408f400000000000L    # 1000.0

    :goto_4
    div-double/2addr v9, p0

    goto :goto_6

    :cond_e
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    goto :goto_5

    :cond_f
    const-wide p0, 0x40ac200000000000L    # 3600.0

    :goto_5
    mul-double v9, v9, p0

    :goto_6
    mul-double v9, v9, v2

    double-to-long p0, v9

    return-wide p0

    .line 719
    :cond_10
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Malformed time expression: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ICustomTabsCallback(Lorg/xmlpull/v1/XmlPullParser;)Lo/VpaAccount$onNavigationEvent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "frameRate"

    .line 179
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "frameRateMultiplier"

    .line 185
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v2, " "

    .line 187
    invoke-static {v3, v2}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 188
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    .line 191
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    .line 192
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    goto :goto_1

    .line 189
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v0, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_2
    :goto_1
    sget-object v3, Lo/VpaAccount;->asBinder:Lo/VpaAccount$onNavigationEvent;

    iget v3, v3, Lo/VpaAccount$onNavigationEvent;->onNavigationEvent:I

    const-string/jumbo v4, "subFrameRate"

    .line 197
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 199
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 202
    :cond_3
    sget-object v4, Lo/VpaAccount;->asBinder:Lo/VpaAccount$onNavigationEvent;

    iget v4, v4, Lo/VpaAccount$onNavigationEvent;->onMessageChannelReady:I

    const-string/jumbo v5, "tickRate"

    .line 203
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 207
    :cond_4
    new-instance p1, Lo/VpaAccount$onNavigationEvent;

    int-to-float v0, v1

    mul-float v0, v0, v2

    invoke-direct {p1, v0, v3, v4}, Lo/VpaAccount$onNavigationEvent;-><init>(FII)V

    return-object p1
.end method

.method private extraCallback(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lo/VpaAccount$extraCallback;Lo/VpaAccount$onMessageChannelReady;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/VpaAccountsJsonAdapter;",
            ">;",
            "Lo/VpaAccount$extraCallback;",
            "Lo/VpaAccount$onMessageChannelReady;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/UpiLinkAccountResponseJsonAdapter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/VpaAccountsJsonAdapter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 265
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v0, "style"

    .line 266
    invoke-static {p1, v0}, Lo/getStatementDetails;->ICustomTabsCallback(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    invoke-static {p1, v0}, Lo/getStatementDetails;->onMessageChannelReady(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    new-instance v1, Lo/VpaAccountsJsonAdapter;

    invoke-direct {v1}, Lo/VpaAccountsJsonAdapter;-><init>()V

    invoke-direct {p0, p1, v1}, Lo/VpaAccount;->onMessageChannelReady(Lorg/xmlpull/v1/XmlPullParser;Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 270
    invoke-direct {p0, v0}, Lo/VpaAccount;->extraCallback(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 271
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/VpaAccountsJsonAdapter;

    invoke-virtual {v1, v4}, Lo/VpaAccountsJsonAdapter;->onNavigationEvent(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {v1}, Lo/VpaAccountsJsonAdapter;->asBinder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 275
    invoke-virtual {v1}, Lo/VpaAccountsJsonAdapter;->asBinder()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v0, "region"

    .line 277
    invoke-static {p1, v0}, Lo/getStatementDetails;->ICustomTabsCallback(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    invoke-direct {p0, p1, p3, p4}, Lo/VpaAccount;->extraCallback(Lorg/xmlpull/v1/XmlPullParser;Lo/VpaAccount$extraCallback;Lo/VpaAccount$onMessageChannelReady;)Lo/UpiLinkAccountResponseJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 280
    iget-object v1, v0, Lo/UpiLinkAccountResponseJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {p5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v0, "metadata"

    .line 282
    invoke-static {p1, v0}, Lo/getStatementDetails;->ICustomTabsCallback(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    invoke-direct {p0, p1, p6}, Lo/VpaAccount;->onNavigationEvent(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    :cond_4
    :goto_1
    const-string v0, "head"

    .line 285
    invoke-static {p1, v0}, Lo/getStatementDetails;->onPostMessage(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2
.end method

.method private extraCallback(Lorg/xmlpull/v1/XmlPullParser;Lo/VpaAccount$extraCallback;Lo/VpaAccount$onMessageChannelReady;)Lo/UpiLinkAccountResponseJsonAdapter;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "id"

    .line 313
    invoke-static {v0, v2}, Lo/getStatementDetails;->onMessageChannelReady(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    if-nez v4, :cond_0

    return-object v2

    :cond_0
    const-string v3, "origin"

    .line 321
    invoke-static {v0, v3}, Lo/getStatementDetails;->onMessageChannelReady(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "TtmlDecoder"

    if-eqz v3, :cond_e

    .line 323
    sget-object v6, Lo/VpaAccount;->onNavigationEvent:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 324
    sget-object v7, Lo/VpaAccount;->onPostMessage:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 325
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const-string v9, "Ignoring region with malformed origin: "

    const-string v10, "Ignoring region with missing tts:extent: "

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v8, :cond_1

    .line 327
    :try_start_0
    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    div-float/2addr v7, v11

    .line 328
    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v6, v11

    move/from16 v16, v7

    move v7, v6

    move/from16 v6, v16

    goto :goto_0

    .line 330
    :catch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 333
    :cond_1
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_d

    if-nez v1, :cond_2

    .line 335
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 339
    :cond_2
    :try_start_1
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 340
    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v6, v6

    .line 342
    iget v8, v1, Lo/VpaAccount$onMessageChannelReady;->onPostMessage:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    int-to-float v7, v7

    .line 343
    iget v8, v1, Lo/VpaAccount$onMessageChannelReady;->onMessageChannelReady:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    int-to-float v8, v8

    div-float/2addr v7, v8

    :goto_0
    const-string v8, "extent"

    .line 364
    invoke-static {v0, v8}, Lo/getStatementDetails;->onMessageChannelReady(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 366
    sget-object v9, Lo/VpaAccount;->onNavigationEvent:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 367
    sget-object v14, Lo/VpaAccount;->onPostMessage:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 368
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    const-string v15, "Ignoring region with malformed extent: "

    if-eqz v14, :cond_3

    .line 370
    :try_start_2
    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v11

    .line 371
    invoke-virtual {v9, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    div-float/2addr v2, v11

    move v9, v1

    move v10, v2

    goto :goto_1

    .line 373
    :catch_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 376
    :cond_3
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_b

    if-nez v1, :cond_4

    .line 378
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 382
    :cond_4
    :try_start_3
    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 383
    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    .line 385
    iget v10, v1, Lo/VpaAccount$onMessageChannelReady;->onPostMessage:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v8, v8

    .line 386
    iget v1, v1, Lo/VpaAccount$onMessageChannelReady;->onMessageChannelReady:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    int-to-float v1, v1

    div-float/2addr v8, v1

    move v10, v8

    :goto_1
    const-string v1, "displayAlign"

    .line 406
    invoke-static {v0, v1}, Lo/getStatementDetails;->onMessageChannelReady(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 409
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v5, -0x514d33ab

    if-eq v3, v5, :cond_6

    const v5, 0x58705dc

    if-eq v3, v5, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, "after"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const-string v3, "center"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    :cond_7
    :goto_2
    if-eqz v2, :cond_9

    if-eq v2, v13, :cond_8

    goto :goto_3

    :cond_8
    add-float/2addr v7, v10

    const/4 v8, 0x2

    goto :goto_4

    :cond_9
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v10, v0

    add-float/2addr v7, v0

    const/4 v8, 0x1

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v8, 0x0

    :goto_4
    const/high16 v0, 0x3f800000    # 1.0f

    move-object/from16 v1, p2

    .line 424
    iget v1, v1, Lo/VpaAccount$extraCallback;->onMessageChannelReady:I

    int-to-float v1, v1

    div-float v12, v0, v1

    .line 425
    new-instance v0, Lo/UpiLinkAccountResponseJsonAdapter;

    const/4 v1, 0x0

    const/4 v11, 0x1

    move-object v3, v0

    move v5, v6

    move v6, v7

    move v7, v1

    invoke-direct/range {v3 .. v12}, Lo/UpiLinkAccountResponseJsonAdapter;-><init>(Ljava/lang/String;FFIIFFIF)V

    return-object v0

    .line 388
    :catch_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 392
    :cond_b
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring region with unsupported extent: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_c
    const-string v0, "Ignoring region without an extent"

    .line 396
    invoke-static {v5, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 345
    :catch_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 349
    :cond_d
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring region with unsupported origin: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_e
    const-string v0, "Ignoring region without an origin"

    .line 353
    invoke-static {v5, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private extraCallback(Lorg/xmlpull/v1/XmlPullParser;Lo/VpaAccount$extraCallback;)Lo/VpaAccount$extraCallback;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    .line 212
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 217
    :cond_0
    sget-object v0, Lo/VpaAccount;->ICustomTabsCallback$Stub:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Ignoring malformed cell resolution: "

    const-string v3, "TtmlDecoder"

    if-nez v1, :cond_1

    .line 219
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    const/4 v1, 0x1

    .line 223
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    .line 224
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 228
    new-instance v4, Lo/VpaAccount$extraCallback;

    invoke-direct {v4, v1, v0}, Lo/VpaAccount$extraCallback;-><init>(II)V

    return-object v4

    .line 226
    :cond_2
    new-instance v4, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid cell resolution "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private extraCallback(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 438
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, "\\s+"

    invoke-static {p1, v0}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;
    .locals 0

    if-nez p1, :cond_0

    .line 531
    new-instance p1, Lo/VpaAccountsJsonAdapter;

    invoke-direct {p1}, Lo/VpaAccountsJsonAdapter;-><init>()V

    :cond_0
    return-object p1
.end method

.method private onMessageChannelReady(Lorg/xmlpull/v1/XmlPullParser;Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;
    .locals 11

    .line 443
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_d

    .line 445
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "backgroundColor"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_1
    const-string v5, "fontSize"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_2
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_3
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_4
    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_5
    const-string/jumbo v5, "textDecoration"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_6
    const-string/jumbo v5, "textAlign"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_2

    :sswitch_7
    const-string v5, "fontFamily"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_8
    const-string v5, "fontStyle"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v4, -0x1

    :goto_2
    const-string v5, "TtmlDecoder"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    .line 507
    :pswitch_0
    invoke-static {v3}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    goto :goto_3

    :sswitch_9
    const-string v4, "linethrough"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v7, 0x0

    goto :goto_3

    :sswitch_a
    const-string v4, "nolinethrough"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v7, 0x1

    goto :goto_3

    :sswitch_b
    const-string/jumbo v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v7, 0x2

    goto :goto_3

    :sswitch_c
    const-string v4, "nounderline"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v7, 0x3

    :cond_1
    :goto_3
    if-eqz v7, :cond_5

    if-eq v7, v10, :cond_4

    if-eq v7, v8, :cond_3

    if-eq v7, v9, :cond_2

    goto/16 :goto_5

    .line 518
    :cond_2
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    invoke-virtual {p2, v1}, Lo/VpaAccountsJsonAdapter;->onMessageChannelReady(Z)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    goto/16 :goto_5

    .line 515
    :cond_3
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    invoke-virtual {p2, v10}, Lo/VpaAccountsJsonAdapter;->onMessageChannelReady(Z)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    goto/16 :goto_5

    .line 512
    :cond_4
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    invoke-virtual {p2, v1}, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback(Z)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    goto/16 :goto_5

    .line 509
    :cond_5
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    invoke-virtual {p2, v10}, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback(Z)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    goto/16 :goto_5

    .line 488
    :pswitch_1
    invoke-static {v3}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    goto :goto_4

    :sswitch_d
    const-string/jumbo v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :sswitch_e
    const-string/jumbo v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v7, 0x2

    goto :goto_4

    :sswitch_f
    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v7, 0x0

    goto :goto_4

    :sswitch_10
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v7, 0x3

    goto :goto_4

    :sswitch_11
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v7, 0x4

    :cond_6
    :goto_4
    if-eqz v7, :cond_b

    if-eq v7, v10, :cond_a

    if-eq v7, v8, :cond_9

    if-eq v7, v9, :cond_8

    if-eq v7, v6, :cond_7

    goto/16 :goto_5

    .line 502
    :cond_7
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lo/VpaAccountsJsonAdapter;->extraCallback(Landroid/text/Layout$Alignment;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    goto/16 :goto_5

    .line 499
    :cond_8
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lo/VpaAccountsJsonAdapter;->extraCallback(Landroid/text/Layout$Alignment;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    goto/16 :goto_5

    .line 496
    :cond_9
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lo/VpaAccountsJsonAdapter;->extraCallback(Landroid/text/Layout$Alignment;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    goto/16 :goto_5

    .line 493
    :cond_a
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lo/VpaAccountsJsonAdapter;->extraCallback(Landroid/text/Layout$Alignment;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    goto/16 :goto_5

    .line 490
    :cond_b
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lo/VpaAccountsJsonAdapter;->extraCallback(Landroid/text/Layout$Alignment;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    goto/16 :goto_5

    .line 484
    :pswitch_2
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    const-string v4, "italic"

    .line 485
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 484
    invoke-virtual {p2, v3}, Lo/VpaAccountsJsonAdapter;->onPostMessage(Z)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    goto/16 :goto_5

    .line 480
    :pswitch_3
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    const-string v4, "bold"

    .line 481
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 480
    invoke-virtual {p2, v3}, Lo/VpaAccountsJsonAdapter;->onNavigationEvent(Z)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    goto :goto_5

    .line 473
    :pswitch_4
    :try_start_0
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    .line 474
    invoke-static {v3, p2}, Lo/VpaAccount;->onMessageChannelReady(Ljava/lang/String;Lo/VpaAccountsJsonAdapter;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 476
    :catch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed parsing fontSize value: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 469
    :pswitch_5
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    invoke-virtual {p2, v3}, Lo/VpaAccountsJsonAdapter;->extraCallback(Ljava/lang/String;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    goto :goto_5

    .line 461
    :pswitch_6
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    .line 463
    :try_start_1
    invoke-static {v3}, Lo/setOnSwipeListener;->onNavigationEvent(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lo/VpaAccountsJsonAdapter;->onNavigationEvent(I)Lo/VpaAccountsJsonAdapter;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 465
    :catch_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed parsing color value: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 453
    :pswitch_7
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    .line 455
    :try_start_2
    invoke-static {v3}, Lo/setOnSwipeListener;->onNavigationEvent(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lo/VpaAccountsJsonAdapter;->extraCallback(I)Lo/VpaAccountsJsonAdapter;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 457
    :catch_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed parsing background value: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 448
    :pswitch_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "style"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 449
    invoke-direct {p0, p2}, Lo/VpaAccount;->onMessageChannelReady(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    invoke-virtual {p2, v3}, Lo/VpaAccountsJsonAdapter;->onNavigationEvent(Ljava/lang/String;)Lo/VpaAccountsJsonAdapter;

    move-result-object p2

    :cond_c
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_8
        -0x48ff636d -> :sswitch_7
        -0x3f826a28 -> :sswitch_6
        -0x3468fa43 -> :sswitch_5
        -0x2bc67c59 -> :sswitch_4
        0xd1b -> :sswitch_3
        0x5a72f63 -> :sswitch_2
        0x15caa0f0 -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x57195dd5 -> :sswitch_c
        -0x3d363934 -> :sswitch_b
        0x36723ff0 -> :sswitch_a
        0x641ec051 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x514d33ab -> :sswitch_11
        0x188db -> :sswitch_10
        0x32a007 -> :sswitch_f
        0x677c21c -> :sswitch_e
        0x68ac462 -> :sswitch_d
    .end sparse-switch
.end method

.method private static onMessageChannelReady(Ljava/lang/String;Lo/VpaAccountsJsonAdapter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    const-string v0, "\\s+"

    .line 625
    invoke-static {p0, v0}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 627
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 628
    sget-object v0, Lo/VpaAccount;->extraCallback:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 629
    :cond_0
    array-length v1, v0

    if-ne v1, v2, :cond_9

    .line 630
    sget-object v1, Lo/VpaAccount;->extraCallback:Ljava/util/regex/Pattern;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "TtmlDecoder"

    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 631
    invoke-static {v1, v4}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v4, "\'."

    if-eqz v1, :cond_8

    const/4 p0, 0x3

    .line 639
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, -0x1

    .line 640
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const/16 v7, 0x25

    if-eq v6, v7, :cond_3

    const/16 v7, 0xca8

    if-eq v6, v7, :cond_2

    const/16 v7, 0xe08

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "px"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const-string v6, "em"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x2

    :cond_4
    :goto_1
    if-eqz v5, :cond_7

    if-eq v5, v3, :cond_6

    if-ne v5, v2, :cond_5

    .line 648
    invoke-virtual {p1, p0}, Lo/VpaAccountsJsonAdapter;->onPostMessage(I)Lo/VpaAccountsJsonAdapter;

    goto :goto_2

    .line 651
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid unit for fontSize: \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 645
    :cond_6
    invoke-virtual {p1, v2}, Lo/VpaAccountsJsonAdapter;->onPostMessage(I)Lo/VpaAccountsJsonAdapter;

    goto :goto_2

    .line 642
    :cond_7
    invoke-virtual {p1, v3}, Lo/VpaAccountsJsonAdapter;->onPostMessage(I)Lo/VpaAccountsJsonAdapter;

    .line 653
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lo/VpaAccountsJsonAdapter;->onMessageChannelReady(F)Lo/VpaAccountsJsonAdapter;

    return-void

    .line 655
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid expression for fontSize: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 634
    :cond_9
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid number of entries for fontSize: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onMessageChannelReady(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "tt"

    .line 606
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "head"

    .line 607
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "body"

    .line 608
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "div"

    .line 609
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "p"

    .line 610
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "span"

    .line 611
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "br"

    .line 612
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "style"

    .line 613
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "styling"

    .line 614
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "layout"

    .line 615
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "region"

    .line 616
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "metadata"

    .line 617
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image"

    .line 618
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data"

    .line 619
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "information"

    .line 620
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private onNavigationEvent(Lorg/xmlpull/v1/XmlPullParser;Lo/UpiSuccessResponse;Ljava/util/Map;Lo/VpaAccount$onNavigationEvent;)Lo/UpiSuccessResponse;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lo/UpiSuccessResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/UpiLinkAccountResponseJsonAdapter;",
            ">;",
            "Lo/VpaAccount$onNavigationEvent;",
            ")",
            "Lo/UpiSuccessResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 543
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v5, 0x0

    .line 544
    invoke-direct {v0, v1, v5}, Lo/VpaAccount;->onMessageChannelReady(Lorg/xmlpull/v1/XmlPullParser;Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;

    move-result-object v11

    const-string v9, ""

    move-object v12, v5

    move-object v14, v12

    move-object v13, v9

    const/4 v5, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    if-ge v5, v4, :cond_9

    .line 546
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 547
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 548
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "backgroundImage"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x5

    goto :goto_2

    :sswitch_1
    const-string/jumbo v8, "style"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_2
    const-string v8, "begin"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_3
    const-string v8, "end"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :sswitch_4
    const-string v8, "dur"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_5
    const-string v8, "region"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x4

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v8, -0x1

    :goto_2
    if-eqz v8, :cond_7

    const/4 v6, 0x1

    if-eq v8, v6, :cond_6

    const/4 v6, 0x2

    if-eq v8, v6, :cond_5

    const/4 v6, 0x3

    if-eq v8, v6, :cond_4

    const/4 v6, 0x4

    if-eq v8, v6, :cond_3

    const/4 v6, 0x5

    if-eq v8, v6, :cond_1

    goto :goto_3

    :cond_1
    const-string v6, "#"

    .line 575
    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    .line 576
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    :cond_2
    :goto_3
    move-object/from16 v6, p3

    goto :goto_4

    :cond_3
    move-object/from16 v6, p3

    .line 566
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v13, v7

    goto :goto_4

    :cond_4
    move-object/from16 v6, p3

    .line 560
    invoke-direct {v0, v7}, Lo/VpaAccount;->extraCallback(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 561
    array-length v8, v7

    if-lez v8, :cond_8

    move-object v12, v7

    goto :goto_4

    :cond_5
    move-object/from16 v6, p3

    .line 556
    invoke-static {v7, v3}, Lo/VpaAccount;->ICustomTabsCallback(Ljava/lang/String;Lo/VpaAccount$onNavigationEvent;)J

    move-result-wide v17

    goto :goto_4

    :cond_6
    move-object/from16 v6, p3

    .line 553
    invoke-static {v7, v3}, Lo/VpaAccount;->ICustomTabsCallback(Ljava/lang/String;Lo/VpaAccount$onNavigationEvent;)J

    move-result-wide v15

    goto :goto_4

    :cond_7
    move-object/from16 v6, p3

    .line 550
    invoke-static {v7, v3}, Lo/VpaAccount;->ICustomTabsCallback(Ljava/lang/String;Lo/VpaAccount$onNavigationEvent;)J

    move-result-wide v9

    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v2, :cond_b

    .line 584
    iget-wide v3, v2, Lo/UpiSuccessResponse;->onMessageChannelReady:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_c

    cmp-long v3, v9, v5

    if-eqz v3, :cond_a

    .line 586
    iget-wide v3, v2, Lo/UpiSuccessResponse;->onMessageChannelReady:J

    add-long/2addr v9, v3

    :cond_a
    cmp-long v3, v15, v5

    if-eqz v3, :cond_c

    .line 589
    iget-wide v3, v2, Lo/UpiSuccessResponse;->onMessageChannelReady:J

    add-long/2addr v15, v3

    goto :goto_5

    :cond_b
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :cond_c
    :goto_5
    move-wide v7, v9

    cmp-long v3, v15, v5

    if-nez v3, :cond_e

    cmp-long v3, v17, v5

    if-eqz v3, :cond_d

    add-long v17, v7, v17

    move-wide/from16 v9, v17

    goto :goto_6

    :cond_d
    if-eqz v2, :cond_e

    .line 596
    iget-wide v3, v2, Lo/UpiSuccessResponse;->onPostMessage:J

    cmp-long v9, v3, v5

    if-eqz v9, :cond_e

    .line 598
    iget-wide v2, v2, Lo/UpiSuccessResponse;->onPostMessage:J

    move-wide v9, v2

    goto :goto_6

    :cond_e
    move-wide v9, v15

    .line 602
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 601
    invoke-static/range {v6 .. v14}, Lo/UpiSuccessResponse;->ICustomTabsCallback(Ljava/lang/String;JJLo/VpaAccountsJsonAdapter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/UpiSuccessResponse;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch
.end method

.method private onNavigationEvent(Lorg/xmlpull/v1/XmlPullParser;)Lo/VpaAccount$onMessageChannelReady;
    .locals 5

    const-string v0, "extent"

    .line 236
    invoke-static {p1, v0}, Lo/getStatementDetails;->onMessageChannelReady(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 241
    :cond_0
    sget-object v1, Lo/VpaAccount;->onPostMessage:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "TtmlDecoder"

    if-nez v2, :cond_1

    .line 243
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Ignoring non-pixel tts extent: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v2, 0x1

    .line 247
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    .line 248
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 249
    new-instance v4, Lo/VpaAccount$onMessageChannelReady;

    invoke-direct {v4, v2, v1}, Lo/VpaAccount$onMessageChannelReady;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 251
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Ignoring malformed tts extent: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private onNavigationEvent(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 292
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "image"

    .line 293
    invoke-static {p1, v0}, Lo/getStatementDetails;->ICustomTabsCallback(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    .line 294
    invoke-static {p1, v0}, Lo/getStatementDetails;->onMessageChannelReady(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "metadata"

    .line 300
    invoke-static {p1, v0}, Lo/getStatementDetails;->onPostMessage(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback([BIZ)Lo/CardDetails;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 108
    :try_start_0
    iget-object v0, v8, Lo/VpaAccount;->onTransact:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 109
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 110
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 111
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v0, ""

    .line 112
    new-instance v1, Lo/UpiLinkAccountResponseJsonAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/UpiLinkAccountResponseJsonAdapter;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v3, v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 114
    invoke-interface {v9, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 116
    new-instance v13, Ljava/util/ArrayDeque;

    invoke-direct {v13}, Ljava/util/ArrayDeque;-><init>()V

    .line 118
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 119
    sget-object v3, Lo/VpaAccount;->asBinder:Lo/VpaAccount$onNavigationEvent;

    .line 120
    sget-object v4, Lo/VpaAccount;->onRelationshipValidationResult:Lo/VpaAccount$extraCallback;

    move-object v15, v2

    const/4 v14, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 123
    invoke-virtual {v13}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/UpiSuccessResponse;

    const/4 v6, 0x2

    if-nez v14, :cond_7

    .line 125
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v5, "tt"

    if-ne v0, v6, :cond_4

    .line 127
    :try_start_1
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {v8, v9}, Lo/VpaAccount;->ICustomTabsCallback(Lorg/xmlpull/v1/XmlPullParser;)Lo/VpaAccount$onNavigationEvent;

    move-result-object v3

    .line 129
    sget-object v0, Lo/VpaAccount;->onRelationshipValidationResult:Lo/VpaAccount$extraCallback;

    invoke-direct {v8, v9, v0}, Lo/VpaAccount;->extraCallback(Lorg/xmlpull/v1/XmlPullParser;Lo/VpaAccount$extraCallback;)Lo/VpaAccount$extraCallback;

    move-result-object v4

    .line 130
    invoke-direct {v8, v9}, Lo/VpaAccount;->onNavigationEvent(Lorg/xmlpull/v1/XmlPullParser;)Lo/VpaAccount$onMessageChannelReady;

    move-result-object v2

    :cond_0
    move-object/from16 v16, v2

    move-object v6, v3

    move-object/from16 v17, v4

    .line 132
    invoke-static {v7}, Lo/VpaAccount;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "TtmlDecoder"

    if-nez v0, :cond_1

    .line 133
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring unsupported tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lo/JusPayWrapper;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    move-object v3, v6

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto/16 :goto_4

    :cond_1
    const-string v0, "head"

    .line 135
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v4, v17

    move-object/from16 v5, v16

    move-object v7, v6

    move-object v6, v11

    move-object/from16 p2, v15

    move-object v15, v7

    move-object v7, v12

    .line 136
    invoke-direct/range {v1 .. v7}, Lo/VpaAccount;->extraCallback(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lo/VpaAccount$extraCallback;Lo/VpaAccount$onMessageChannelReady;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_2
    move-object/from16 p2, v15

    move-object v15, v6

    .line 139
    :try_start_3
    invoke-direct {v8, v9, v1, v11, v15}, Lo/VpaAccount;->onNavigationEvent(Lorg/xmlpull/v1/XmlPullParser;Lo/UpiSuccessResponse;Ljava/util/Map;Lo/VpaAccount$onNavigationEvent;)Lo/UpiSuccessResponse;

    move-result-object v0

    .line 140
    invoke-virtual {v13, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    .line 142
    invoke-virtual {v1, v0}, Lo/UpiSuccessResponse;->onPostMessage(Lo/UpiSuccessResponse;)V
    :try_end_3
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_1
    move-object v3, v15

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "Suppressing parser error"

    .line 145
    invoke-static {v2, v1, v0}, Lo/JusPayWrapper;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 p2, v15

    const/4 v6, 0x4

    if-ne v0, v6, :cond_5

    .line 151
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/UpiSuccessResponse;->onPostMessage(Ljava/lang/String;)Lo/UpiSuccessResponse;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/UpiSuccessResponse;->onPostMessage(Lo/UpiSuccessResponse;)V

    goto :goto_3

    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 153
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    new-instance v15, Lo/CardDetails;

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/UpiSuccessResponse;

    invoke-direct {v15, v0, v10, v11, v12}, Lo/CardDetails;-><init>(Lo/UpiSuccessResponse;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2

    :cond_6
    move-object/from16 v15, p2

    .line 156
    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_4

    :cond_7
    move-object/from16 p2, v15

    if-ne v0, v6, :cond_8

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    add-int/lit8 v14, v14, -0x1

    :cond_9
    :goto_3
    move-object/from16 v15, p2

    .line 165
    :goto_4
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 166
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_a
    move-object/from16 p2, v15

    return-object p2

    :catch_1
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error when reading input."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 170
    new-instance v1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v2, "Unable to decode source"

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final synthetic onNavigationEvent([BIZ)Lo/Status;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lo/VpaAccount;->ICustomTabsCallback([BIZ)Lo/CardDetails;

    move-result-object p1

    return-object p1
.end method
