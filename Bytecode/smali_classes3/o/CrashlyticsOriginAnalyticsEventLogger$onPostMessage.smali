.class abstract Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;
.super Lo/AnalyticsEventLogger;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/AnalyticsEventLogger<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field transient ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final extraCallback:Lo/performCreateApp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/performCreateApp<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

.field final onNavigationEvent:I

.field final onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;


# direct methods
.method constructor <init>(Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;Lo/performCreateApp;ILjava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;",
            "Lo/performCreateApp<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2869
    invoke-direct {p0}, Lo/AnalyticsEventLogger;-><init>()V

    .line 2870
    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->onPostMessage:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    .line 2871
    iput-object p2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->onMessageChannelReady:Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;

    .line 2872
    iput-object p3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->extraCallback:Lo/performCreateApp;

    .line 2874
    iput p4, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->onNavigationEvent:I

    .line 2875
    iput-object p5, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2880
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method protected final bridge synthetic onMessageChannelReady()Ljava/util/Map;
    .locals 1

    .line 3880
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method protected final bridge synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 1

    .line 4880
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$onPostMessage;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method
