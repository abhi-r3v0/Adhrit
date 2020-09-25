.class final Lo/getMessageUserAlias;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setRegex;


# static fields
.field private static final onNavigationEvent:Lo/getCreatedMillis;


# instance fields
.field private final onPostMessage:Lo/getCreatedMillis;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lo/addMessageFragment;

    invoke-direct {v0}, Lo/addMessageFragment;-><init>()V

    sput-object v0, Lo/getMessageUserAlias;->onNavigationEvent:Lo/getCreatedMillis;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2
    new-instance v0, Lo/isRead;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/getCreatedMillis;

    .line 3
    invoke-static {}, Lo/getSeen;->onMessageChannelReady()Lo/getSeen;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lo/getMessageUserAlias;->ICustomTabsCallback()Lo/getCreatedMillis;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lo/isRead;-><init>([Lo/getCreatedMillis;)V

    .line 4
    invoke-direct {p0, v0}, Lo/getMessageUserAlias;-><init>(Lo/getCreatedMillis;)V

    return-void
.end method

.method private constructor <init>(Lo/getCreatedMillis;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 7
    invoke-static {p1, v0}, Lo/fromString;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCreatedMillis;

    iput-object p1, p0, Lo/getMessageUserAlias;->onPostMessage:Lo/getCreatedMillis;

    return-void
.end method

.method private static ICustomTabsCallback()Lo/getCreatedMillis;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 54
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 55
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getCreatedMillis;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    sget-object v0, Lo/getMessageUserAlias;->onNavigationEvent:Lo/getCreatedMillis;

    return-object v0
.end method

.method private static onPostMessage(Lo/getUploadState;)Z
    .locals 1

    .line 53
    invoke-interface {p0}, Lo/getUploadState;->ICustomTabsCallback()I

    move-result p0

    sget v0, Lo/MarketingMessageStatus$onMessageChannelReady;->asBinder:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Class;)Lo/setReplacementStr;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/setReplacementStr<",
            "TT;>;"
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lo/MessageMask;->extraCallback(Ljava/lang/Class;)V

    .line 10
    iget-object v0, p0, Lo/getMessageUserAlias;->onPostMessage:Lo/getCreatedMillis;

    invoke-interface {v0, p1}, Lo/getCreatedMillis;->onNavigationEvent(Ljava/lang/Class;)Lo/getUploadState;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Lo/getUploadState;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    const-class v0, Lo/MarketingMessageStatus;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-static {}, Lo/MessageMask;->onMessageChannelReady()Lo/getContentType;

    move-result-object p1

    .line 14
    invoke-static {}, Lo/getDisplayCode;->onMessageChannelReady()Lo/setVariant;

    move-result-object v0

    .line 15
    invoke-interface {v2}, Lo/getUploadState;->onMessageChannelReady()Lo/access$502;

    move-result-object v1

    .line 16
    invoke-static {p1, v0, v1}, Lo/access$602;->onPostMessage(Lo/getContentType;Lo/setVariant;Lo/access$502;)Lo/access$602;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    invoke-static {}, Lo/MessageMask;->extraCallback()Lo/getContentType;

    move-result-object p1

    .line 18
    invoke-static {}, Lo/getDisplayCode;->onPostMessage()Lo/setVariant;

    move-result-object v0

    .line 19
    invoke-interface {v2}, Lo/getUploadState;->onMessageChannelReady()Lo/access$502;

    move-result-object v1

    .line 20
    invoke-static {p1, v0, v1}, Lo/access$602;->onPostMessage(Lo/getContentType;Lo/setVariant;Lo/access$502;)Lo/access$602;

    move-result-object p1

    return-object p1

    .line 22
    :cond_1
    const-class v0, Lo/MarketingMessageStatus;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-static {v2}, Lo/getMessageUserAlias;->onPostMessage(Lo/getUploadState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-static {}, Lo/alias;->ICustomTabsCallback()Lo/access$802;

    move-result-object v3

    .line 26
    invoke-static {}, Lo/isUserMessage;->onNavigationEvent()Lo/isUserMessage;

    move-result-object v4

    .line 27
    invoke-static {}, Lo/MessageMask;->onMessageChannelReady()Lo/getContentType;

    move-result-object v5

    .line 28
    invoke-static {}, Lo/getDisplayCode;->onMessageChannelReady()Lo/setVariant;

    move-result-object v6

    .line 29
    invoke-static {}, Lo/isUploaded;->onMessageChannelReady()Lo/getMessageFragments;

    move-result-object v7

    move-object v1, p1

    .line 30
    invoke-static/range {v1 .. v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Class;Lo/getUploadState;Lo/access$802;Lo/isUserMessage;Lo/getContentType;Lo/setVariant;Lo/getMessageFragments;)Lo/access$902;

    move-result-object p1

    return-object p1

    .line 32
    :cond_2
    invoke-static {}, Lo/alias;->ICustomTabsCallback()Lo/access$802;

    move-result-object v3

    .line 33
    invoke-static {}, Lo/isUserMessage;->onNavigationEvent()Lo/isUserMessage;

    move-result-object v4

    .line 34
    invoke-static {}, Lo/MessageMask;->onMessageChannelReady()Lo/getContentType;

    move-result-object v5

    const/4 v6, 0x0

    .line 35
    invoke-static {}, Lo/isUploaded;->onMessageChannelReady()Lo/getMessageFragments;

    move-result-object v7

    move-object v1, p1

    .line 36
    invoke-static/range {v1 .. v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Class;Lo/getUploadState;Lo/access$802;Lo/isUserMessage;Lo/getContentType;Lo/setVariant;Lo/getMessageFragments;)Lo/access$902;

    move-result-object p1

    return-object p1

    .line 38
    :cond_3
    invoke-static {v2}, Lo/getMessageUserAlias;->onPostMessage(Lo/getUploadState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    invoke-static {}, Lo/alias;->onPostMessage()Lo/access$802;

    move-result-object v3

    .line 41
    invoke-static {}, Lo/isUserMessage;->ICustomTabsCallback()Lo/isUserMessage;

    move-result-object v4

    .line 42
    invoke-static {}, Lo/MessageMask;->extraCallback()Lo/getContentType;

    move-result-object v5

    .line 43
    invoke-static {}, Lo/getDisplayCode;->onPostMessage()Lo/setVariant;

    move-result-object v6

    .line 44
    invoke-static {}, Lo/isUploaded;->onNavigationEvent()Lo/getMessageFragments;

    move-result-object v7

    move-object v1, p1

    .line 45
    invoke-static/range {v1 .. v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Class;Lo/getUploadState;Lo/access$802;Lo/isUserMessage;Lo/getContentType;Lo/setVariant;Lo/getMessageFragments;)Lo/access$902;

    move-result-object p1

    return-object p1

    .line 47
    :cond_4
    invoke-static {}, Lo/alias;->onPostMessage()Lo/access$802;

    move-result-object v3

    .line 48
    invoke-static {}, Lo/isUserMessage;->ICustomTabsCallback()Lo/isUserMessage;

    move-result-object v4

    .line 49
    invoke-static {}, Lo/MessageMask;->onPostMessage()Lo/getContentType;

    move-result-object v5

    const/4 v6, 0x0

    .line 50
    invoke-static {}, Lo/isUploaded;->onNavigationEvent()Lo/getMessageFragments;

    move-result-object v7

    move-object v1, p1

    .line 51
    invoke-static/range {v1 .. v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Class;Lo/getUploadState;Lo/access$802;Lo/isUserMessage;Lo/getContentType;Lo/setVariant;Lo/getMessageFragments;)Lo/access$902;

    move-result-object p1

    return-object p1
.end method
