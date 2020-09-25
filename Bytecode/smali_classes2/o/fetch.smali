.class public final Lo/fetch;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/loadProperties;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/loadProperties<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Lo/getReferrer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrer<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/isEnableLog;

.field private final onNavigationEvent:Lo/OaidClient$Info;

.field private final onPostMessage:Lo/isLat;


# direct methods
.method public constructor <init>(Lo/OaidClient$Info;Ljava/lang/String;Lo/isEnableLog;Lo/getReferrer;Lo/isLat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/OaidClient$Info;",
            "Ljava/lang/String;",
            "Lo/isEnableLog;",
            "Lo/getReferrer<",
            "TT;[B>;",
            "Lo/isLat;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/fetch;->onNavigationEvent:Lo/OaidClient$Info;

    .line 37
    iput-object p2, p0, Lo/fetch;->ICustomTabsCallback:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lo/fetch;->onMessageChannelReady:Lo/isEnableLog;

    .line 39
    iput-object p4, p0, Lo/fetch;->extraCallback:Lo/getReferrer;

    .line 40
    iput-object p5, p0, Lo/fetch;->onPostMessage:Lo/isLat;

    return-void
.end method


# virtual methods
.method public final schedule(Lo/isLogsDisabledCompletely;Lo/AppsFlyerTrackingRequestListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isLogsDisabledCompletely<",
            "TT;>;",
            "Lo/AppsFlyerTrackingRequestListener;",
            ")V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lo/fetch;->onPostMessage:Lo/isLat;

    .line 1039
    new-instance v1, Lo/Foreground$4$3$onPostMessage;

    invoke-direct {v1}, Lo/Foreground$4$3$onPostMessage;-><init>()V

    .line 51
    iget-object v2, p0, Lo/fetch;->onNavigationEvent:Lo/OaidClient$Info;

    .line 52
    invoke-virtual {v1, v2}, Lo/OneLinkHttpTask$onNavigationEvent;->onNavigationEvent(Lo/OaidClient$Info;)Lo/OneLinkHttpTask$onNavigationEvent;

    move-result-object v1

    .line 53
    invoke-virtual {v1, p1}, Lo/OneLinkHttpTask$onNavigationEvent;->extraCallback(Lo/isLogsDisabledCompletely;)Lo/OneLinkHttpTask$onNavigationEvent;

    move-result-object p1

    iget-object v1, p0, Lo/fetch;->ICustomTabsCallback:Ljava/lang/String;

    .line 54
    invoke-virtual {p1, v1}, Lo/OneLinkHttpTask$onNavigationEvent;->extraCallback(Ljava/lang/String;)Lo/OneLinkHttpTask$onNavigationEvent;

    move-result-object p1

    iget-object v1, p0, Lo/fetch;->extraCallback:Lo/getReferrer;

    .line 55
    invoke-virtual {p1, v1}, Lo/OneLinkHttpTask$onNavigationEvent;->onNavigationEvent(Lo/getReferrer;)Lo/OneLinkHttpTask$onNavigationEvent;

    move-result-object p1

    iget-object v1, p0, Lo/fetch;->onMessageChannelReady:Lo/isEnableLog;

    .line 56
    invoke-virtual {p1, v1}, Lo/OneLinkHttpTask$onNavigationEvent;->onPostMessage(Lo/isEnableLog;)Lo/OneLinkHttpTask$onNavigationEvent;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lo/OneLinkHttpTask$onNavigationEvent;->ICustomTabsCallback()Lo/OneLinkHttpTask;

    move-result-object p1

    .line 50
    invoke-interface {v0, p1, p2}, Lo/isLat;->extraCallback(Lo/OneLinkHttpTask;Lo/AppsFlyerTrackingRequestListener;)V

    return-void
.end method

.method public final send(Lo/isLogsDisabledCompletely;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isLogsDisabledCompletely<",
            "TT;>;)V"
        }
    .end annotation

    .line 1000
    sget-object v0, Lo/getProperties$ICustomTabsCallback;->extraCallback:Lo/getProperties$ICustomTabsCallback;

    .line 45
    invoke-virtual {p0, p1, v0}, Lo/fetch;->schedule(Lo/isLogsDisabledCompletely;Lo/AppsFlyerTrackingRequestListener;)V

    return-void
.end method
