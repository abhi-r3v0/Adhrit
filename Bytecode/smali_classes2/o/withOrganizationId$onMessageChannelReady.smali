.class public final Lo/withOrganizationId$onMessageChannelReady;
.super Lo/withOrganizationId;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/withOrganizationId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lo/withOrganizationId;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final apply(Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;
    .locals 3

    .line 105
    invoke-static {p1}, Lo/withOrganizationId$onMessageChannelReady;->coercedFieldValuesArray(Lo/writeRawMessageSetExtension;)Lo/toByteString$onMessageChannelReady;

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Lo/withOrganizationId;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/writeRawMessageSetExtension;

    .line 107
    invoke-static {p1, v1}, Lo/withSessionEndFields;->contains(Lo/ByteString$CodedBuilder;Lo/writeRawMessageSetExtension;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {p1, v1}, Lo/toByteString$onMessageChannelReady;->onPostMessage(Lo/writeRawMessageSetExtension;)Lo/toByteString$onMessageChannelReady;

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/writeRawMessageSetExtension$extraCallback;->onPostMessage(Lo/toByteString$onMessageChannelReady;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1
.end method
