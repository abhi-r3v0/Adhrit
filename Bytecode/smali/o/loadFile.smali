.class final Lo/loadFile;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final onMessageChannelReady:[Lo/CryptLib;

.field private final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lo/loadFile;->onPostMessage:Ljava/util/List;

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lo/CryptLib;

    iput-object p1, p0, Lo/loadFile;->onMessageChannelReady:[Lo/CryptLib;

    return-void
.end method


# virtual methods
.method public final extraCallback(JLo/DreamAppGlideModule;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lo/loadFile;->onMessageChannelReady:[Lo/CryptLib;

    invoke-static {p1, p2, p3, v0}, Lo/UpiAppsInstrumentJsonAdapter;->onMessageChannelReady(JLo/DreamAppGlideModule;[Lo/CryptLib;)V

    return-void
.end method

.method public final onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 46
    :goto_0
    iget-object v3, v0, Lo/loadFile;->onMessageChannelReady:[Lo/CryptLib;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 47
    invoke-virtual/range {p2 .. p2}, Lo/trackApiError$onMessageChannelReady;->extraCallback()V

    .line 48
    invoke-virtual/range {p2 .. p2}, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady()I

    move-result v3

    const/4 v4, 0x3

    move-object/from16 v5, p1

    invoke-interface {v5, v3, v4}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object v3

    .line 49
    iget-object v4, v0, Lo/loadFile;->onPostMessage:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/p$a;

    .line 50
    iget-object v7, v4, Lo/p$a;->onTransact:Ljava/lang/String;

    const-string v6, "application/cea-608"

    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/cea-708"

    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Invalid closed caption mime type provided: "

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51
    invoke-static {v6, v8}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(ZLjava/lang/Object;)V

    .line 54
    iget-object v6, v4, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v4, Lo/p$a;->onNavigationEvent:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent()Ljava/lang/String;

    move-result-object v6

    :goto_3
    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 55
    iget v10, v4, Lo/p$a;->onMessageChannelReady:I

    iget-object v11, v4, Lo/p$a;->cancel:Ljava/lang/String;

    iget v12, v4, Lo/p$a;->INotificationSideChannel:I

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    iget-object v4, v4, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    move-object/from16 v16, v4

    .line 56
    invoke-static/range {v6 .. v16}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILo/generateLink;JLjava/util/List;)Lo/p$a;

    move-result-object v4

    .line 55
    invoke-interface {v3, v4}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    .line 67
    iget-object v4, v0, Lo/loadFile;->onMessageChannelReady:[Lo/CryptLib;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
