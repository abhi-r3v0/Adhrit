.class final Lo/HttpRequestFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TOPIC_NAME_REGEXP:Ljava/util/regex/Pattern;


# instance fields
.field private final operation:Ljava/lang/String;

.field private final serializedString:Ljava/lang/String;

.field private final topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-zA-Z0-9-_.~%]{1,900}"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/HttpRequestFactory;->TOPIC_NAME_REGEXP:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2, p1}, Lo/HttpRequestFactory;->normalizeTopicOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/HttpRequestFactory;->topic:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lo/HttpRequestFactory;->operation:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/HttpRequestFactory;->serializedString:Ljava/lang/String;

    return-void
.end method

.method static from(Ljava/lang/String;)Lo/HttpRequestFactory;
    .locals 3

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    const-string v2, "!"

    .line 19
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 20
    array-length v0, p0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return-object v1

    .line 22
    :cond_1
    new-instance v0, Lo/HttpRequestFactory;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Lo/HttpRequestFactory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static normalizeTopicOrThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, "/topics/"

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Format /topics/topic-name is deprecated. Only \'topic-name\' should be used in %s."

    .line 8
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "FirebaseMessaging"

    .line 9
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 11
    sget-object p1, Lo/HttpRequestFactory;->TOPIC_NAME_REGEXP:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "[a-zA-Z0-9-_.~%]{1,900}"

    aput-object p0, v2, v0

    const-string p0, "Invalid topic name: %s does not match the allowed format %s."

    .line 13
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static subscribe(Ljava/lang/String;)Lo/HttpRequestFactory;
    .locals 2

    .line 15
    new-instance v0, Lo/HttpRequestFactory;

    const-string v1, "S"

    invoke-direct {v0, v1, p0}, Lo/HttpRequestFactory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static unsubscribe(Ljava/lang/String;)Lo/HttpRequestFactory;
    .locals 2

    .line 16
    new-instance v0, Lo/HttpRequestFactory;

    const-string v1, "U"

    invoke-direct {v0, v1, p0}, Lo/HttpRequestFactory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 26
    instance-of v0, p1, Lo/HttpRequestFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 28
    :cond_0
    check-cast p1, Lo/HttpRequestFactory;

    .line 29
    iget-object v0, p0, Lo/HttpRequestFactory;->topic:Ljava/lang/String;

    iget-object v2, p1, Lo/HttpRequestFactory;->topic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/HttpRequestFactory;->operation:Ljava/lang/String;

    iget-object p1, p1, Lo/HttpRequestFactory;->operation:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final getOperation()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/HttpRequestFactory;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopic()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/HttpRequestFactory;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lo/HttpRequestFactory;->operation:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/HttpRequestFactory;->topic:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1002
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final serialize()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/HttpRequestFactory;->serializedString:Ljava/lang/String;

    return-object v0
.end method
