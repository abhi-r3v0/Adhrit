.class public final Lo/PreferredInstruments;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Event;


# static fields
.field private static final extraCallback:Ljava/util/regex/Pattern;

.field private static final onMessageChannelReady:Ljava/util/regex/Pattern;


# instance fields
.field private final ICustomTabsCallback:Lo/getWaivers;

.field private asBinder:[B

.field private asInterface:Lo/ExceptionTracker;

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Lo/DreamAppGlideModule;

.field private onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LOCAL:([^,]+)"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/PreferredInstruments;->onMessageChannelReady:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(\\d+)"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/PreferredInstruments;->extraCallback:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/getWaivers;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lo/PreferredInstruments;->onNavigationEvent:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lo/PreferredInstruments;->ICustomTabsCallback:Lo/getWaivers;

    .line 64
    new-instance p1, Lo/DreamAppGlideModule;

    invoke-direct {p1}, Lo/DreamAppGlideModule;-><init>()V

    iput-object p1, p0, Lo/PreferredInstruments;->onPostMessage:Lo/DreamAppGlideModule;

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 65
    iput-object p1, p0, Lo/PreferredInstruments;->asBinder:[B

    return-void
.end method

.method private extraCallback()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 132
    new-instance v0, Lo/DreamAppGlideModule;

    iget-object v1, p0, Lo/PreferredInstruments;->asBinder:[B

    invoke-direct {v0, v1}, Lo/DreamAppGlideModule;-><init>([B)V

    .line 135
    invoke-static {v0}, Lo/CtaAction;->ICustomTabsCallback(Lo/DreamAppGlideModule;)V

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    .line 143
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lo/DreamAppGlideModule;->ICustomTabsService$Stub()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_3

    const-string v8, "X-TIMESTAMP-MAP"

    .line 144
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 145
    sget-object v3, Lo/PreferredInstruments;->onMessageChannelReady:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    sget-object v4, Lo/PreferredInstruments;->extraCallback:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 150
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/CtaAction;->onPostMessage(Ljava/lang/String;)J

    move-result-wide v5

    .line 154
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/getWaivers;->onNavigationEvent(J)J

    move-result-wide v3

    goto :goto_0

    .line 151
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_3
    invoke-static {v0}, Lo/CtaAction;->extraCallback(Lo/DreamAppGlideModule;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v0, :cond_4

    .line 162
    invoke-direct {p0, v1, v2}, Lo/PreferredInstruments;->onNavigationEvent(J)Lo/CryptLib;

    return-void

    .line 166
    :cond_4
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/CtaAction;->onPostMessage(Ljava/lang/String;)J

    move-result-wide v0

    .line 167
    iget-object v2, p0, Lo/PreferredInstruments;->ICustomTabsCallback:Lo/getWaivers;

    add-long/2addr v3, v0

    sub-long/2addr v3, v5

    .line 168
    invoke-static {v3, v4}, Lo/getWaivers;->onMessageChannelReady(J)J

    move-result-wide v3

    .line 167
    invoke-virtual {v2, v3, v4}, Lo/getWaivers;->extraCallback(J)J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 171
    invoke-direct {p0, v0, v1}, Lo/PreferredInstruments;->onNavigationEvent(J)Lo/CryptLib;

    move-result-object v5

    .line 173
    iget-object v0, p0, Lo/PreferredInstruments;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object v1, p0, Lo/PreferredInstruments;->asBinder:[B

    iget v2, p0, Lo/PreferredInstruments;->onTransact:I

    invoke-virtual {v0, v1, v2}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 174
    iget-object v0, p0, Lo/PreferredInstruments;->onPostMessage:Lo/DreamAppGlideModule;

    iget v1, p0, Lo/PreferredInstruments;->onTransact:I

    invoke-interface {v5, v0, v1}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    const/4 v8, 0x1

    .line 175
    iget v9, p0, Lo/PreferredInstruments;->onTransact:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    return-void
.end method

.method private onNavigationEvent(J)Lo/CryptLib;
    .locals 10

    .line 179
    iget-object v0, p0, Lo/PreferredInstruments;->asInterface:Lo/ExceptionTracker;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object v0

    .line 180
    iget-object v6, p0, Lo/PreferredInstruments;->onNavigationEvent:Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "text/vtt"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v8, p1

    invoke-static/range {v1 .. v9}, Lo/p$a;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lo/generateLink;J)Lo/p$a;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    .line 182
    iget-object p1, p0, Lo/PreferredInstruments;->asInterface:Lo/ExceptionTracker;

    invoke-interface {p1}, Lo/ExceptionTracker;->onPostMessage()V

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Lo/ExceptionTracker;)V
    .locals 3

    .line 91
    iput-object p1, p0, Lo/PreferredInstruments;->asInterface:Lo/ExceptionTracker;

    .line 92
    new-instance v0, Lo/UpiSdkCallback$extraCallback;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lo/UpiSdkCallback$extraCallback;-><init>(J)V

    invoke-interface {p1, v0}, Lo/ExceptionTracker;->onNavigationEvent(Lo/UpiSdkCallback;)V

    return-void
.end method

.method public final extraCallback(Lo/Event$Action;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lo/PreferredInstruments;->asBinder:[B

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1, v2}, Lo/Event$Action;->onNavigationEvent([BIIZ)Z

    .line 75
    iget-object v0, p0, Lo/PreferredInstruments;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object v3, p0, Lo/PreferredInstruments;->asBinder:[B

    invoke-virtual {v0, v3, v1}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 76
    iget-object v0, p0, Lo/PreferredInstruments;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-static {v0}, Lo/CtaAction;->onNavigationEvent(Lo/DreamAppGlideModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 80
    :cond_0
    iget-object v0, p0, Lo/PreferredInstruments;->asBinder:[B

    const/4 v3, 0x3

    invoke-interface {p1, v0, v1, v3, v2}, Lo/Event$Action;->onNavigationEvent([BIIZ)Z

    .line 85
    iget-object p1, p0, Lo/PreferredInstruments;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object v0, p0, Lo/PreferredInstruments;->asBinder:[B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 86
    iget-object p1, p0, Lo/PreferredInstruments;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-static {p1}, Lo/CtaAction;->onNavigationEvent(Lo/DreamAppGlideModule;)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Lo/Event$Action;Lo/SessionInfo;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 109
    invoke-interface {p1}, Lo/Event$Action;->onPostMessage()J

    move-result-wide v0

    long-to-int p2, v0

    .line 112
    iget v0, p0, Lo/PreferredInstruments;->onTransact:I

    iget-object v1, p0, Lo/PreferredInstruments;->asBinder:[B

    array-length v2, v1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    if-eq p2, v3, :cond_0

    move v0, p2

    goto :goto_0

    .line 113
    :cond_0
    array-length v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lo/PreferredInstruments;->asBinder:[B

    .line 118
    :cond_1
    iget-object v0, p0, Lo/PreferredInstruments;->asBinder:[B

    iget v1, p0, Lo/PreferredInstruments;->onTransact:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-interface {p1, v0, v1, v2}, Lo/Event$Action;->ICustomTabsCallback([BII)I

    move-result p1

    if-eq p1, v3, :cond_3

    .line 120
    iget v0, p0, Lo/PreferredInstruments;->onTransact:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/PreferredInstruments;->onTransact:I

    if-eq p2, v3, :cond_2

    if-eq v0, p2, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 127
    :cond_3
    invoke-direct {p0}, Lo/PreferredInstruments;->extraCallback()V

    return v3
.end method
