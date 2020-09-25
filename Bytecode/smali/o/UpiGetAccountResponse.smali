.class public final Lo/UpiGetAccountResponse;
.super Lo/SimDetailJsonAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UpiGetAccountResponse$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/UpiGetAccountResponse$onPostMessage;

.field private final extraCallback:Lo/DreamAppGlideModule;

.field private final onNavigationEvent:Lo/DreamAppGlideModule;

.field private onPostMessage:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "PgsDecoder"

    .line 48
    invoke-direct {p0, v0}, Lo/SimDetailJsonAdapter;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-direct {v0}, Lo/DreamAppGlideModule;-><init>()V

    iput-object v0, p0, Lo/UpiGetAccountResponse;->onNavigationEvent:Lo/DreamAppGlideModule;

    .line 50
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-direct {v0}, Lo/DreamAppGlideModule;-><init>()V

    iput-object v0, p0, Lo/UpiGetAccountResponse;->extraCallback:Lo/DreamAppGlideModule;

    .line 51
    new-instance v0, Lo/UpiGetAccountResponse$onPostMessage;

    invoke-direct {v0}, Lo/UpiGetAccountResponse$onPostMessage;-><init>()V

    iput-object v0, p0, Lo/UpiGetAccountResponse;->ICustomTabsCallback:Lo/UpiGetAccountResponse$onPostMessage;

    return-void
.end method

.method private static extraCallback(Lo/DreamAppGlideModule;Lo/UpiGetAccountResponse$onPostMessage;)Lo/SimResponseJsonAdapter;
    .locals 5

    .line 82
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v0

    .line 83
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v1

    .line 84
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v2

    .line 86
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x0

    if-le v3, v0, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return-object v4

    :cond_0
    const/16 v0, 0x80

    if-eq v1, v0, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 101
    :pswitch_0
    invoke-static {p1, p0, v2}, Lo/UpiGetAccountResponse$onPostMessage;->extraCallback(Lo/UpiGetAccountResponse$onPostMessage;Lo/DreamAppGlideModule;I)V

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-static {p1, p0, v2}, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback(Lo/UpiGetAccountResponse$onPostMessage;Lo/DreamAppGlideModule;I)V

    goto :goto_0

    .line 95
    :pswitch_2
    invoke-static {p1, p0, v2}, Lo/UpiGetAccountResponse$onPostMessage;->onPostMessage(Lo/UpiGetAccountResponse$onPostMessage;Lo/DreamAppGlideModule;I)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p1}, Lo/UpiGetAccountResponse$onPostMessage;->onPostMessage()Lo/SimResponseJsonAdapter;

    move-result-object v4

    .line 105
    invoke-virtual {p1}, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback()V

    .line 111
    :goto_0
    invoke-virtual {p0, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private extraCallback(Lo/DreamAppGlideModule;)V
    .locals 2

    .line 70
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onTransact()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    .line 71
    iget-object v0, p0, Lo/UpiGetAccountResponse;->onPostMessage:Ljava/util/zip/Inflater;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lo/UpiGetAccountResponse;->onPostMessage:Ljava/util/zip/Inflater;

    .line 74
    :cond_0
    iget-object v0, p0, Lo/UpiGetAccountResponse;->extraCallback:Lo/DreamAppGlideModule;

    iget-object v1, p0, Lo/UpiGetAccountResponse;->onPostMessage:Ljava/util/zip/Inflater;

    invoke-static {p1, v0, v1}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(Lo/DreamAppGlideModule;Lo/DreamAppGlideModule;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lo/UpiGetAccountResponse;->extraCallback:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget-object v1, p0, Lo/UpiGetAccountResponse;->extraCallback:Lo/DreamAppGlideModule;

    invoke-virtual {v1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onNavigationEvent([BIZ)Lo/Status;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 56
    iget-object p3, p0, Lo/UpiGetAccountResponse;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {p3, p1, p2}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 57
    iget-object p1, p0, Lo/UpiGetAccountResponse;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-direct {p0, p1}, Lo/UpiGetAccountResponse;->extraCallback(Lo/DreamAppGlideModule;)V

    .line 58
    iget-object p1, p0, Lo/UpiGetAccountResponse;->ICustomTabsCallback:Lo/UpiGetAccountResponse$onPostMessage;

    invoke-virtual {p1}, Lo/UpiGetAccountResponse$onPostMessage;->ICustomTabsCallback()V

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    :cond_0
    :goto_0
    iget-object p2, p0, Lo/UpiGetAccountResponse;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {p2}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result p2

    const/4 p3, 0x3

    if-lt p2, p3, :cond_1

    .line 61
    iget-object p2, p0, Lo/UpiGetAccountResponse;->onNavigationEvent:Lo/DreamAppGlideModule;

    iget-object p3, p0, Lo/UpiGetAccountResponse;->ICustomTabsCallback:Lo/UpiGetAccountResponse$onPostMessage;

    invoke-static {p2, p3}, Lo/UpiGetAccountResponse;->extraCallback(Lo/DreamAppGlideModule;Lo/UpiGetAccountResponse$onPostMessage;)Lo/SimResponseJsonAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    new-instance p2, Lo/UpiErrorResponse;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/UpiErrorResponse;-><init>(Ljava/util/List;)V

    return-object p2
.end method
