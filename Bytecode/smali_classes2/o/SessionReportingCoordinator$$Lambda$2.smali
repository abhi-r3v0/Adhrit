.class public final Lo/SessionReportingCoordinator$$Lambda$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# static fields
.field private static final HEX_CHARACTERS:[C


# instance fields
.field private final arg$1:Lo/access$lambda$1$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lo/SessionReportingCoordinator$$Lambda$2;->HEX_CHARACTERS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/access$lambda$1$onNavigationEvent;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SessionReportingCoordinator$$Lambda$2;->arg$1:Lo/access$lambda$1$onNavigationEvent;

    return-void
.end method

.method public static castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TC;>;)TC;"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static compareInts(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static compareLongs(JJ)I
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static doubleToHashString(D)Ljava/lang/String;
    .locals 6

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/4 v1, 0x7

    :goto_0
    if-ltz v1, :cond_0

    shl-int/lit8 v2, v1, 0x3

    ushr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v3, v2

    shr-int/lit8 v2, v3, 0x4

    and-int/lit8 v2, v2, 0xf

    and-int/lit8 v3, v3, 0xf

    .line 142
    sget-object v4, Lo/SessionReportingCoordinator$$Lambda$2;->HEX_CHARACTERS:[C

    aget-char v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    sget-object v2, Lo/SessionReportingCoordinator$$Lambda$2;->HEX_CHARACTERS:[C

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static extractPathString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "//"

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x2

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    const-string v2, "?"

    .line 99
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 101
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0

    .line 93
    :cond_2
    new-instance p0, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "Firebase Database URL is missing URL scheme"

    invoke-direct {p0, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TC;>;)TC;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 219
    :cond_0
    const-class v1, Ljava/util/Map;

    invoke-static {p0, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 220
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 222
    invoke-static {p0, p2}, Lo/SessionReportingCoordinator$$Lambda$2;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static hardAssert(Z)V
    .locals 1

    const-string v0, ""

    .line 229
    invoke-static {p0, v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method

.method public static hardAssert(ZLjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 234
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hardAssert failed: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static parseUrl(Ljava/lang/String;)Lo/sendReports;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 39
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 46
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "ns"

    .line 51
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez v3, :cond_0

    const-string v3, "\\."

    .line 53
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 54
    aget-object v3, v3, v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 57
    :cond_0
    new-instance v6, Lo/getOsDisplayVersionString;

    invoke-direct {v6}, Lo/getOsDisplayVersionString;-><init>()V

    .line 58
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lo/getOsDisplayVersionString;->host:Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v5, :cond_3

    const-string v5, "https"

    .line 61
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "wss"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v4, 0x1

    :cond_2
    iput-boolean v4, v6, Lo/getOsDisplayVersionString;->secure:Z

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lo/getOsDisplayVersionString;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lo/getOsDisplayVersionString;->host:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_3
    iput-boolean v2, v6, Lo/getOsDisplayVersionString;->secure:Z

    .line 67
    :goto_0
    iget-object v0, v6, Lo/getOsDisplayVersionString;->host:Ljava/lang/String;

    iput-object v0, v6, Lo/getOsDisplayVersionString;->internalHost:Ljava/lang/String;

    .line 68
    iput-object v3, v6, Lo/getOsDisplayVersionString;->namespace:Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lo/SessionReportingCoordinator$$Lambda$2;->extractPathString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, " "

    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lo/UserMetadata;->validateRootPathString(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lo/sendReports;

    invoke-direct {v1}, Lo/sendReports;-><init>()V

    .line 77
    new-instance v2, Lo/ExecutorUtils$2;

    invoke-direct {v2, v0}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lo/sendReports;->path:Lo/ExecutorUtils$2;

    .line 78
    iput-object v6, v1, Lo/sendReports;->repoInfo:Lo/getOsDisplayVersionString;

    return-object v1

    .line 48
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Database URL does not specify a valid host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Database URL does not specify a URL scheme"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Invalid Firebase Database url specified: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "SHA-1"

    .line 112
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 113
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 114
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x2

    .line 115
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 119
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "UTF-8 encoding is required for Firebase Database to run!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing SHA-1 MessageDigest provider."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static stringHashV2Representation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x5c

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "\\"

    const-string v2, "\\\\"

    .line 126
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    const/16 v2, 0x22

    .line 128
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const-string v3, "\""

    if-eq p0, v1, :cond_1

    const-string p0, "\\\""

    .line 129
    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-gt v0, v2, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    .line 165
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_4

    const/16 v6, 0x39

    if-le v5, v6, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v6, 0xa

    mul-long v2, v2, v6

    add-int/lit8 v5, v5, -0x30

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v1

    :cond_5
    if-eqz v4, :cond_7

    neg-long v2, v2

    const-wide/32 v4, -0x80000000

    cmp-long p0, v2, v4

    if-gez p0, :cond_6

    return-object v1

    :cond_6
    long-to-int p0, v2

    .line 177
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_7
    const-wide/32 v4, 0x7fffffff

    cmp-long p0, v2, v4

    if-lez p0, :cond_8

    return-object v1

    :cond_8
    long-to-int p0, v2

    .line 183
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_3
    return-object v1
.end method

.method public static wrapOnComplete(Lo/isPresent$onPostMessage;)Lo/getSortedCustomAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isPresent$onPostMessage;",
            ")",
            "Lo/getSortedCustomAttributes<",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;",
            "Lo/isPresent$onPostMessage;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 241
    new-instance p0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {p0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 242
    new-instance v0, Lo/SessionReportingCoordinator$$Lambda$2$4;

    invoke-direct {v0, p0}, Lo/SessionReportingCoordinator$$Lambda$2$4;-><init>(Lo/removeBackgroundStateChangeListener;)V

    .line 253
    new-instance v1, Lo/getSortedCustomAttributes;

    .line 1014
    iget-object p0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    .line 253
    invoke-direct {v1, p0, v0}, Lo/getSortedCustomAttributes;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 256
    :cond_0
    new-instance v0, Lo/getSortedCustomAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lo/getSortedCustomAttributes;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 3000
    iget-object v0, p0, Lo/SessionReportingCoordinator$$Lambda$2;->arg$1:Lo/access$lambda$1$onNavigationEvent;

    invoke-static {v0, p1}, Lo/parseCustomAttribute;->lambda$send$0$WithinAppServiceBinder(Lo/access$lambda$1$onNavigationEvent;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
