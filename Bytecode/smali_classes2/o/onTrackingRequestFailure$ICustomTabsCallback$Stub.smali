.class final Lo/onTrackingRequestFailure$ICustomTabsCallback$Stub;
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
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/QueueFile$1<",
        "Lo/onResponse;",
        ">;"
    }
.end annotation


# static fields
.field static final onNavigationEvent:Lo/onTrackingRequestFailure$ICustomTabsCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/onTrackingRequestFailure$ICustomTabsCallback$Stub;

    invoke-direct {v0}, Lo/onTrackingRequestFailure$ICustomTabsCallback$Stub;-><init>()V

    sput-object v0, Lo/onTrackingRequestFailure$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/onTrackingRequestFailure$ICustomTabsCallback$Stub;

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
    check-cast p1, Lo/onResponse;

    check-cast p2, Lo/QueueFile$Element;

    .line 2
    invoke-virtual {p1}, Lo/onResponse;->onNavigationEvent()Lo/onResponse$onMessageChannelReady;

    move-result-object v0

    const-string v1, "networkType"

    invoke-interface {p2, v1, v0}, Lo/QueueFile$Element;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/QueueFile$Element;

    .line 3
    invoke-virtual {p1}, Lo/onResponse;->onMessageChannelReady()Lo/onResponse$ICustomTabsCallback;

    move-result-object p1

    const-string v0, "mobileSubtype"

    invoke-interface {p2, v0, p1}, Lo/QueueFile$Element;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/QueueFile$Element;

    return-void
.end method
