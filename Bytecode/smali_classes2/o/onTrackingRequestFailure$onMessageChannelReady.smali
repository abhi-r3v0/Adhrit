.class final Lo/onTrackingRequestFailure$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/QueueFile$1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onTrackingRequestFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/QueueFile$1<",
        "Lo/setBrandDomain;",
        ">;"
    }
.end annotation


# static fields
.field static final onMessageChannelReady:Lo/onTrackingRequestFailure$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/onTrackingRequestFailure$onMessageChannelReady;

    invoke-direct {v0}, Lo/onTrackingRequestFailure$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/onTrackingRequestFailure$onMessageChannelReady;->onMessageChannelReady:Lo/onTrackingRequestFailure$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lo/setBrandDomain;

    check-cast p2, Lo/QueueFile$Element;

    .line 2
    invoke-virtual {p1}, Lo/setBrandDomain;->ICustomTabsCallback()Lo/setBrandDomain$onPostMessage;

    move-result-object v0

    const-string v1, "clientType"

    invoke-interface {p2, v1, v0}, Lo/QueueFile$Element;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/QueueFile$Element;

    .line 3
    invoke-virtual {p1}, Lo/setBrandDomain;->onMessageChannelReady()Lo/saveProperties;

    move-result-object p1

    const-string v0, "androidClientInfo"

    invoke-interface {p2, v0, p1}, Lo/QueueFile$Element;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/QueueFile$Element;

    return-void
.end method
