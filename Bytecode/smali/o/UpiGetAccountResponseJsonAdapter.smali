.class public final Lo/UpiGetAccountResponseJsonAdapter;
.super Lo/SimDetailJsonAdapter;
.source ""


# static fields
.field private static final onPostMessage:Ljava/util/regex/Pattern;


# instance fields
.field private ICustomTabsCallback:I

.field private extraCallback:I

.field private final onMessageChannelReady:Z

.field private onNavigationEvent:I

.field private onRelationshipValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)(?::|\\.)(\\d+)"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/UpiGetAccountResponseJsonAdapter;->onPostMessage:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0}, Lo/UpiGetAccountResponseJsonAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "SsaDecoder"

    .line 63
    invoke-direct {p0, v0}, Lo/SimDetailJsonAdapter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 64
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Lo/UpiGetAccountResponseJsonAdapter;->onMessageChannelReady:Z

    .line 66
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Format: "

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 68
    invoke-direct {p0, v0}, Lo/UpiGetAccountResponseJsonAdapter;->extraCallback(Ljava/lang/String;)V

    .line 69
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lo/DreamAppGlideModule;-><init>([B)V

    invoke-direct {p0, v0}, Lo/UpiGetAccountResponseJsonAdapter;->onPostMessage(Lo/DreamAppGlideModule;)V

    return-void

    .line 71
    :cond_0
    iput-boolean v0, p0, Lo/UpiGetAccountResponseJsonAdapter;->onMessageChannelReady:Z

    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/String;Ljava/util/List;Lo/WavFileException;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;",
            "Lo/WavFileException;",
            ")V"
        }
    .end annotation

    .line 170
    iget v0, p0, Lo/UpiGetAccountResponseJsonAdapter;->ICustomTabsCallback:I

    const-string v1, "SsaDecoder"

    if-nez v0, :cond_0

    .line 171
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Skipping dialogue line before complete format: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xa

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lo/UpiGetAccountResponseJsonAdapter;->ICustomTabsCallback:I

    const-string v3, ","

    .line 176
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 177
    array-length v2, v0

    iget v3, p0, Lo/UpiGetAccountResponseJsonAdapter;->ICustomTabsCallback:I

    if-eq v2, v3, :cond_1

    .line 178
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Skipping dialogue line with fewer columns than format: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_1
    iget v2, p0, Lo/UpiGetAccountResponseJsonAdapter;->extraCallback:I

    aget-object v2, v0, v2

    invoke-static {v2}, Lo/UpiGetAccountResponseJsonAdapter;->onNavigationEvent(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "Skipping invalid timing: "

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    if-nez v7, :cond_2

    .line 184
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 189
    :cond_2
    iget v7, p0, Lo/UpiGetAccountResponseJsonAdapter;->onNavigationEvent:I

    aget-object v7, v0, v7

    .line 190
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 191
    invoke-static {v7}, Lo/UpiGetAccountResponseJsonAdapter;->onNavigationEvent(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_4

    .line 193
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    move-wide v7, v5

    .line 198
    :cond_4
    iget p1, p0, Lo/UpiGetAccountResponseJsonAdapter;->onRelationshipValidationResult:I

    aget-object p1, v0, p1

    const-string v0, "\\{.*?\\}"

    const-string v1, ""

    .line 199
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    const-string v1, "\\\\N"

    .line 200
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\\\n"

    .line 201
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    new-instance v0, Lo/SimResponseJsonAdapter;

    invoke-direct {v0, p1}, Lo/SimResponseJsonAdapter;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p3, v2, v3}, Lo/WavFileException;->extraCallback(J)V

    cmp-long p1, v7, v5

    if-eqz p1, :cond_5

    .line 205
    sget-object p1, Lo/SimResponseJsonAdapter;->onNavigationEvent:Lo/SimResponseJsonAdapter;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p3, v7, v8}, Lo/WavFileException;->extraCallback(J)V

    :cond_5
    return-void
.end method

.method private extraCallback(Ljava/lang/String;)V
    .locals 8

    const/16 v0, 0x8

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 133
    array-length v0, p1

    iput v0, p0, Lo/UpiGetAccountResponseJsonAdapter;->ICustomTabsCallback:I

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lo/UpiGetAccountResponseJsonAdapter;->extraCallback:I

    .line 135
    iput v0, p0, Lo/UpiGetAccountResponseJsonAdapter;->onNavigationEvent:I

    .line 136
    iput v0, p0, Lo/UpiGetAccountResponseJsonAdapter;->onRelationshipValidationResult:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 137
    :goto_0
    iget v3, p0, Lo/UpiGetAccountResponseJsonAdapter;->ICustomTabsCallback:I

    if-ge v2, v3, :cond_7

    .line 138
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const v5, 0x188db

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    const v5, 0x36452d

    if-eq v4, v5, :cond_1

    const v5, 0x68ac462

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_2

    :cond_2
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, -0x1

    :goto_2
    if-eqz v3, :cond_6

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_4

    goto :goto_3

    .line 147
    :cond_4
    iput v2, p0, Lo/UpiGetAccountResponseJsonAdapter;->onRelationshipValidationResult:I

    goto :goto_3

    .line 144
    :cond_5
    iput v2, p0, Lo/UpiGetAccountResponseJsonAdapter;->onNavigationEvent:I

    goto :goto_3

    .line 141
    :cond_6
    iput v2, p0, Lo/UpiGetAccountResponseJsonAdapter;->extraCallback:I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_7
    iget p1, p0, Lo/UpiGetAccountResponseJsonAdapter;->extraCallback:I

    if-eq p1, v0, :cond_8

    iget p1, p0, Lo/UpiGetAccountResponseJsonAdapter;->onNavigationEvent:I

    if-eq p1, v0, :cond_8

    iget p1, p0, Lo/UpiGetAccountResponseJsonAdapter;->onRelationshipValidationResult:I

    if-ne p1, v0, :cond_9

    .line 158
    :cond_8
    iput v1, p0, Lo/UpiGetAccountResponseJsonAdapter;->ICustomTabsCallback:I

    :cond_9
    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;)J
    .locals 8

    .line 217
    sget-object v0, Lo/UpiGetAccountResponseJsonAdapter;->onPostMessage:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 218
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    const-wide/32 v4, 0xf4240

    mul-long v0, v0, v4

    const/4 v6, 0x2

    .line 222
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long v6, v6, v2

    mul-long v6, v6, v4

    add-long/2addr v0, v6

    const/4 v2, 0x3

    .line 223
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    .line 224
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private onPostMessage(Lo/DreamAppGlideModule;)V
    .locals 2

    .line 99
    :cond_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsService$Stub()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "[Events]"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method private onPostMessage(Lo/DreamAppGlideModule;Ljava/util/List;Lo/WavFileException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DreamAppGlideModule;",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;",
            "Lo/WavFileException;",
            ")V"
        }
    .end annotation

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->ICustomTabsService$Stub()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 118
    iget-boolean v1, p0, Lo/UpiGetAccountResponseJsonAdapter;->onMessageChannelReady:Z

    if-nez v1, :cond_1

    const-string v1, "Format: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-direct {p0, v0}, Lo/UpiGetAccountResponseJsonAdapter;->extraCallback(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "Dialogue: "

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-direct {p0, v0, p2, p3}, Lo/UpiGetAccountResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/List;Lo/WavFileException;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected final onMessageChannelReady([BIZ)Lo/UpiErrorResponseJsonAdapter;
    .locals 2

    .line 77
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v0, Lo/WavFileException;

    invoke-direct {v0}, Lo/WavFileException;-><init>()V

    .line 80
    new-instance v1, Lo/DreamAppGlideModule;

    invoke-direct {v1, p1, p2}, Lo/DreamAppGlideModule;-><init>([BI)V

    .line 81
    iget-boolean p1, p0, Lo/UpiGetAccountResponseJsonAdapter;->onMessageChannelReady:Z

    if-nez p1, :cond_0

    .line 82
    invoke-direct {p0, v1}, Lo/UpiGetAccountResponseJsonAdapter;->onPostMessage(Lo/DreamAppGlideModule;)V

    .line 84
    :cond_0
    invoke-direct {p0, v1, p3, v0}, Lo/UpiGetAccountResponseJsonAdapter;->onPostMessage(Lo/DreamAppGlideModule;Ljava/util/List;Lo/WavFileException;)V

    .line 86
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    new-array p1, p1, [Lo/SimResponseJsonAdapter;

    .line 87
    invoke-virtual {p3, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    invoke-virtual {v0}, Lo/WavFileException;->ICustomTabsCallback()[J

    move-result-object p2

    .line 89
    new-instance p3, Lo/UpiErrorResponseJsonAdapter;

    invoke-direct {p3, p1, p2}, Lo/UpiErrorResponseJsonAdapter;-><init>([Lo/SimResponseJsonAdapter;[J)V

    return-object p3
.end method

.method public final synthetic onNavigationEvent([BIZ)Lo/Status;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lo/UpiGetAccountResponseJsonAdapter;->onMessageChannelReady([BIZ)Lo/UpiErrorResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method
