.class public abstract Lorg/apache/commons/lang3/text/StrMatcher;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/text/StrMatcher$TrimMatcher;,
        Lorg/apache/commons/lang3/text/StrMatcher$NoMatcher;,
        Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;,
        Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;,
        Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;
    }
.end annotation


# static fields
.field private static final COMMA_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final DOUBLE_QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final NONE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final SINGLE_QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final SPACE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final SPLIT_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final TAB_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

.field private static final TRIM_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->COMMA_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 42
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->TAB_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 46
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->SPACE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 51
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;

    const-string v1, " \t\n\r\u000c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->SPLIT_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 55
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$TrimMatcher;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrMatcher$TrimMatcher;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->TRIM_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 59
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->SINGLE_QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 63
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 67
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;

    const-string v1, "\'\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 71
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$NoMatcher;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrMatcher$NoMatcher;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .line 164
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0
.end method

.method public static charSetMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 2

    if-eqz p0, :cond_2

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 194
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0

    .line 196
    :cond_1
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;-><init>([C)V

    return-object v0

    .line 191
    :cond_2
    :goto_0
    sget-object p0, Lorg/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object p0
.end method

.method public static varargs charSetMatcher([C)Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 2

    if-eqz p0, :cond_2

    .line 174
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 178
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    aget-char p0, p0, v1

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0

    .line 180
    :cond_1
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;-><init>([C)V

    return-object v0

    .line 175
    :cond_2
    :goto_0
    sget-object p0, Lorg/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object p0
.end method

.method public static commaMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .line 81
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->COMMA_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static doubleQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .line 136
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static noneMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .line 154
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static quoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .line 145
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static singleQuoteMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .line 127
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->SINGLE_QUOTE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static spaceMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .line 99
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->SPACE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static splitMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .line 109
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->SPLIT_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .line 206
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object p0, Lorg/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object p0

    .line 209
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrMatcher$StringMatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static tabMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .line 90
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->TAB_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static trimMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .line 118
    sget-object v0, Lorg/apache/commons/lang3/text/StrMatcher;->TRIM_MATCHER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method


# virtual methods
.method public isMatch([CI)I
    .locals 2

    .line 268
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result p1

    return p1
.end method

.method public abstract isMatch([CIII)I
.end method
