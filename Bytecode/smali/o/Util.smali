.class public final Lo/Util;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSessionId;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/UPIJSInterface$2;)Lo/callAPI;
    .locals 3

    .line 34
    iget-object p1, p1, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    .line 37
    new-instance v1, Lo/DreamAppGlideModule;

    invoke-direct {v1, v0, p1}, Lo/DreamAppGlideModule;-><init>([BI)V

    invoke-virtual {p0, v1}, Lo/Util;->onMessageChannelReady(Lo/DreamAppGlideModule;)Lo/GeneratedAppGlideModule;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 41
    :cond_0
    new-instance v0, Lo/callAPI;

    const/4 v1, 0x1

    new-array v1, v1, [Lo/callAPI$onPostMessage;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lo/callAPI;-><init>([Lo/callAPI$onPostMessage;)V

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/DreamAppGlideModule;)Lo/GeneratedAppGlideModule;
    .locals 9

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->IPostMessageService$Stub()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->IPostMessageService$Stub()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v4

    .line 51
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v6

    .line 52
    iget-object v0, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 53
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v1

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 54
    new-instance p1, Lo/GeneratedAppGlideModule;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lo/GeneratedAppGlideModule;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
