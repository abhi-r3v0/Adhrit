.class Lo/CrashlyticsReportJsonTransform$ObjectParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final API_KEY_FORMAT:Ljava/util/regex/Pattern;

.field private static final APP_ID_IDENTIFICATION_SUBSTRING:Ljava/lang/String; = ":"

.field public static final AUTH_TOKEN_EXPIRATION_BUFFER_IN_SECS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lo/CrashlyticsReportJsonTransform$ObjectParser;->AUTH_TOKEN_EXPIRATION_BUFFER_IN_SECS:J

    const-string v0, "\\AA[\\w-]{38}\\z"

    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/CrashlyticsReportJsonTransform$ObjectParser;->API_KEY_FORMAT:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isValidApiKeyFormat(Ljava/lang/String;)Z
    .locals 1

    .line 54
    sget-object v0, Lo/CrashlyticsReportJsonTransform$ObjectParser;->API_KEY_FORMAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method static isValidAppIdFormat(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ":"

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public currentTimeInSecs()J
    .locals 3

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAuthTokenExpired(Lo/jsonFromMapEntryString;)Z
    .locals 8

    .line 34
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 37
    :cond_0
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getTokenCreationEpochInSecs()J

    move-result-wide v2

    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getExpiresInSecs()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 38
    invoke-virtual {p0}, Lo/CrashlyticsReportJsonTransform$ObjectParser;->currentTimeInSecs()J

    move-result-wide v4

    sget-wide v6, Lo/CrashlyticsReportJsonTransform$ObjectParser;->AUTH_TOKEN_EXPIRATION_BUFFER_IN_SECS:J

    add-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
