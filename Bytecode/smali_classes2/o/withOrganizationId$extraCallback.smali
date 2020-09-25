.class public final Lo/withOrganizationId$extraCallback;
.super Lo/withOrganizationId;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/withOrganizationId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
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

    .line 118
    invoke-direct {p0, p1}, Lo/withOrganizationId;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final apply(Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;
    .locals 4

    .line 123
    invoke-static {p1}, Lo/withOrganizationId$extraCallback;->coercedFieldValuesArray(Lo/writeRawMessageSetExtension;)Lo/toByteString$onMessageChannelReady;

    move-result-object p1

    .line 124
    invoke-virtual {p0}, Lo/withOrganizationId;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/writeRawMessageSetExtension;

    const/4 v2, 0x0

    .line 125
    :goto_0
    invoke-virtual {p1}, Lo/toByteString$onMessageChannelReady;->extraCallback()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 126
    invoke-virtual {p1, v2}, Lo/toByteString$onMessageChannelReady;->onNavigationEvent(I)Lo/writeRawMessageSetExtension;

    move-result-object v3

    invoke-static {v3, v1}, Lo/withSessionEndFields;->equals(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    invoke-virtual {p1, v2}, Lo/toByteString$onMessageChannelReady;->onMessageChannelReady(I)Lo/toByteString$onMessageChannelReady;

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_2
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/writeRawMessageSetExtension$extraCallback;->onPostMessage(Lo/toByteString$onMessageChannelReady;)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1
.end method
