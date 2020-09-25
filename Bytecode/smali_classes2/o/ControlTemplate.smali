.class final Lo/ControlTemplate;
.super Ljava/lang/Object;


# instance fields
.field final ICustomTabsCallback:J

.field final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SpinTheWheelResponse_MetaJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field extraCallback:J

.field final onMessageChannelReady:Ljava/lang/String;

.field final onNavigationEvent:J

.field final onPostMessage:Ljava/lang/String;

.field final onRelationshipValidationResult:J

.field final onTransact:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lo/SpinTheWheelResponse_MetaJsonAdapter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ControlTemplate;->onPostMessage:Ljava/lang/String;

    const-string p1, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lo/ControlTemplate;->onMessageChannelReady:Ljava/lang/String;

    iput-wide p3, p0, Lo/ControlTemplate;->ICustomTabsCallback:J

    iput-wide p5, p0, Lo/ControlTemplate;->onNavigationEvent:J

    iput-wide p7, p0, Lo/ControlTemplate;->onTransact:J

    iput-wide p9, p0, Lo/ControlTemplate;->onRelationshipValidationResult:J

    iput-object p11, p0, Lo/ControlTemplate;->asBinder:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lo/GameWebViewFragment$MyJavascriptInterface;)V
    .locals 15

    move-object/from16 v0, p2

    iget-object v3, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->onNavigationEvent:Ljava/lang/String;

    iget-wide v4, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->onPostMessage:J

    iget-wide v6, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback:J

    iget-wide v8, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->extraCallback:J

    iget-wide v10, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->onTransact:J

    iget-object v1, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->asInterface:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->asInterface:Ljava/util/List;

    move-object v12, v1

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback$Stub:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v12

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    new-instance v13, Lo/SpinTheWheelResponse_MetaJsonAdapter;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v13, v14, v12}, Lo/SpinTheWheelResponse_MetaJsonAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v12, v2

    :goto_1
    move-object v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v12}, Lo/ControlTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    iget-object v0, v0, Lo/GameWebViewFragment$MyJavascriptInterface;->onMessageChannelReady:[B

    array-length v0, v0

    int-to-long v0, v0

    move-object v2, p0

    iput-wide v0, v2, Lo/ControlTemplate;->extraCallback:J

    return-void
.end method

.method static onMessageChannelReady(Lo/OverlayJsonAdapter;)Lo/ControlTemplate;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lo/CashBackDisabled;->onMessageChannelReady(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lo/CashBackDisabled;->extraCallback(Lo/OverlayJsonAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lo/CashBackDisabled;->extraCallback(Lo/OverlayJsonAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lo/CashBackDisabled;->onPostMessage(Ljava/io/InputStream;)J

    move-result-wide v5

    invoke-static {p0}, Lo/CashBackDisabled;->onPostMessage(Ljava/io/InputStream;)J

    move-result-wide v7

    invoke-static {p0}, Lo/CashBackDisabled;->onPostMessage(Ljava/io/InputStream;)J

    move-result-wide v9

    invoke-static {p0}, Lo/CashBackDisabled;->onPostMessage(Ljava/io/InputStream;)J

    move-result-wide v11

    invoke-static {p0}, Lo/CashBackDisabled;->onMessageChannelReady(Lo/OverlayJsonAdapter;)Ljava/util/List;

    move-result-object v13

    new-instance p0, Lo/ControlTemplate;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lo/ControlTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method final onMessageChannelReady(Ljava/io/OutputStream;)Z
    .locals 5

    const v0, 0x20150306

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lo/CashBackDisabled;->onPostMessage(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Lo/ControlTemplate;->onPostMessage:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/CashBackDisabled;->onNavigationEvent(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lo/ControlTemplate;->onMessageChannelReady:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ControlTemplate;->onMessageChannelReady:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Lo/CashBackDisabled;->onNavigationEvent(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v3, p0, Lo/ControlTemplate;->ICustomTabsCallback:J

    invoke-static {p1, v3, v4}, Lo/CashBackDisabled;->onNavigationEvent(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lo/ControlTemplate;->onNavigationEvent:J

    invoke-static {p1, v3, v4}, Lo/CashBackDisabled;->onNavigationEvent(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lo/ControlTemplate;->onTransact:J

    invoke-static {p1, v3, v4}, Lo/CashBackDisabled;->onNavigationEvent(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lo/ControlTemplate;->onRelationshipValidationResult:J

    invoke-static {p1, v3, v4}, Lo/CashBackDisabled;->onNavigationEvent(Ljava/io/OutputStream;J)V

    iget-object v0, p0, Lo/ControlTemplate;->asBinder:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Lo/CashBackDisabled;->onPostMessage(Ljava/io/OutputStream;I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/SpinTheWheelResponse_MetaJsonAdapter;

    invoke-virtual {v3}, Lo/SpinTheWheelResponse_MetaJsonAdapter;->onNavigationEvent()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lo/CashBackDisabled;->onNavigationEvent(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v3}, Lo/SpinTheWheelResponse_MetaJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lo/CashBackDisabled;->onNavigationEvent(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v2}, Lo/CashBackDisabled;->onPostMessage(Ljava/io/OutputStream;I)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%s"

    invoke-static {p1, v0}, Lo/AutoDebitAddAccountFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
