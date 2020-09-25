.class public final Lo/SessionParams;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Ljava/util/regex/Pattern;


# instance fields
.field public onNavigationEvent:I

.field public onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/SessionParams;->extraCallback:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lo/SessionParams;->onPostMessage:I

    .line 52
    iput v0, p0, Lo/SessionParams;->onNavigationEvent:I

    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/String;)Z
    .locals 4

    .line 107
    sget-object v0, Lo/SessionParams;->extraCallback:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 110
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    .line 111
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-gtz v1, :cond_0

    if-lez p1, :cond_1

    .line 113
    :cond_0
    iput v1, p0, Lo/SessionParams;->onPostMessage:I

    .line 114
    iput p1, p0, Lo/SessionParams;->onNavigationEvent:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final extraCallback(Lo/callAPI;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    :goto_0
    invoke-virtual {p1}, Lo/callAPI;->ICustomTabsCallback()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 80
    invoke-virtual {p1, v1}, Lo/callAPI;->onPostMessage(I)Lo/callAPI$onPostMessage;

    move-result-object v2

    .line 81
    instance-of v3, v2, Lo/Registry$NoSourceEncoderAvailableException;

    const-string v4, "iTunSMPB"

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 82
    check-cast v2, Lo/Registry$NoSourceEncoderAvailableException;

    .line 83
    iget-object v3, v2, Lo/Registry$NoSourceEncoderAvailableException;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lo/Registry$NoSourceEncoderAvailableException;->onMessageChannelReady:Ljava/lang/String;

    .line 84
    invoke-direct {p0, v2}, Lo/SessionParams;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v5

    .line 87
    :cond_0
    instance-of v3, v2, Lo/GlideException;

    if-eqz v3, :cond_1

    .line 88
    check-cast v2, Lo/GlideException;

    .line 89
    iget-object v3, v2, Lo/GlideException;->extraCallback:Ljava/lang/String;

    const-string v6, "com.apple.iTunes"

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lo/GlideException;->onMessageChannelReady:Ljava/lang/String;

    .line 90
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lo/GlideException;->ICustomTabsCallback:Ljava/lang/String;

    .line 91
    invoke-direct {p0, v2}, Lo/SessionParams;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final onNavigationEvent()Z
    .locals 2

    .line 128
    iget v0, p0, Lo/SessionParams;->onPostMessage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lo/SessionParams;->onNavigationEvent:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent(I)Z
    .locals 1

    shr-int/lit8 v0, p1, 0xc

    and-int/lit16 p1, p1, 0xfff

    if-gtz v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 65
    :cond_1
    :goto_0
    iput v0, p0, Lo/SessionParams;->onPostMessage:I

    .line 66
    iput p1, p0, Lo/SessionParams;->onNavigationEvent:I

    const/4 p1, 0x1

    return p1
.end method
