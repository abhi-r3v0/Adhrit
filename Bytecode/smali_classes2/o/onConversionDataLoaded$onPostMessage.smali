.class public final Lo/onConversionDataLoaded$onPostMessage;
.super Lo/saveProperties$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onConversionDataLoaded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Integer;

.field private ICustomTabsCallback$Stub:Ljava/lang/String;

.field private extraCallback:Ljava/lang/String;

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:Ljava/lang/String;

.field private onTransact:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/saveProperties$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Integer;)Lo/saveProperties$onMessageChannelReady;
    .locals 0

    .line 1
    iput-object p1, p0, Lo/onConversionDataLoaded$onPostMessage;->ICustomTabsCallback:Ljava/lang/Integer;

    return-object p0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/saveProperties$onMessageChannelReady;
    .locals 0

    .line 1
    iput-object p1, p0, Lo/onConversionDataLoaded$onPostMessage;->onTransact:Ljava/lang/String;

    return-object p0
.end method

.method public final ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/saveProperties$onMessageChannelReady;
    .locals 0

    .line 1
    iput-object p1, p0, Lo/onConversionDataLoaded$onPostMessage;->onRelationshipValidationResult:Ljava/lang/String;

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/saveProperties$onMessageChannelReady;
    .locals 0

    .line 1
    iput-object p1, p0, Lo/onConversionDataLoaded$onPostMessage;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/saveProperties$onMessageChannelReady;
    .locals 0

    .line 1
    iput-object p1, p0, Lo/onConversionDataLoaded$onPostMessage;->extraCallback:Ljava/lang/String;

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/saveProperties$onMessageChannelReady;
    .locals 0

    .line 1
    iput-object p1, p0, Lo/onConversionDataLoaded$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/saveProperties$onMessageChannelReady;
    .locals 0

    .line 2
    iput-object p1, p0, Lo/onConversionDataLoaded$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    return-object p0
.end method

.method public final onPostMessage()Lo/saveProperties;
    .locals 10

    .line 3
    new-instance v9, Lo/onConversionDataLoaded;

    iget-object v1, p0, Lo/onConversionDataLoaded$onPostMessage;->ICustomTabsCallback:Ljava/lang/Integer;

    iget-object v2, p0, Lo/onConversionDataLoaded$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-object v3, p0, Lo/onConversionDataLoaded$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    iget-object v4, p0, Lo/onConversionDataLoaded$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    iget-object v5, p0, Lo/onConversionDataLoaded$onPostMessage;->extraCallback:Ljava/lang/String;

    iget-object v6, p0, Lo/onConversionDataLoaded$onPostMessage;->onTransact:Ljava/lang/String;

    iget-object v7, p0, Lo/onConversionDataLoaded$onPostMessage;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v8, p0, Lo/onConversionDataLoaded$onPostMessage;->onRelationshipValidationResult:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/onConversionDataLoaded;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public final onTransact(Ljava/lang/String;)Lo/saveProperties$onMessageChannelReady;
    .locals 0

    .line 1
    iput-object p1, p0, Lo/onConversionDataLoaded$onPostMessage;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object p0
.end method
