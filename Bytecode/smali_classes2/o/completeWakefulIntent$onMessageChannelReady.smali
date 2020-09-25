.class public final Lo/completeWakefulIntent$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/completeWakefulIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/contacts/ContactsAdapter$Companion;",
        "",
        "()V",
        "ITEM_TYPE_CONTACT",
        "",
        "ITEM_TYPE_HEADER",
        "ITEM_TYPE_SEPARATOR",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/Foreground$4$4;

.field private final extraCallback:Lo/AppsFlyerTrackingRequestListener;

.field private final onMessageChannelReady:Lo/disk;

.field private final onPostMessage:Lo/OaidClient$Info;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/disk;Lo/OaidClient$Info;Lo/AppsFlyerTrackingRequestListener;Lo/Foreground$4$4;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/completeWakefulIntent$onMessageChannelReady;->onMessageChannelReady:Lo/disk;

    iput-object p2, p0, Lo/completeWakefulIntent$onMessageChannelReady;->onPostMessage:Lo/OaidClient$Info;

    iput-object p3, p0, Lo/completeWakefulIntent$onMessageChannelReady;->extraCallback:Lo/AppsFlyerTrackingRequestListener;

    iput-object p4, p0, Lo/completeWakefulIntent$onMessageChannelReady;->ICustomTabsCallback:Lo/Foreground$4$4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 2000
    iget-object v0, p0, Lo/completeWakefulIntent$onMessageChannelReady;->onMessageChannelReady:Lo/disk;

    iget-object v1, p0, Lo/completeWakefulIntent$onMessageChannelReady;->onPostMessage:Lo/OaidClient$Info;

    iget-object v2, p0, Lo/completeWakefulIntent$onMessageChannelReady;->extraCallback:Lo/AppsFlyerTrackingRequestListener;

    iget-object v3, p0, Lo/completeWakefulIntent$onMessageChannelReady;->ICustomTabsCallback:Lo/Foreground$4$4;

    .line 2069
    :try_start_0
    iget-object v4, v0, Lo/disk;->onPostMessage:Lo/getUrl;

    .line 2070
    invoke-virtual {v1}, Lo/OaidClient$Info;->extraCallback()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lo/getUrl;->onMessageChannelReady(Ljava/lang/String;)Lo/ContentFetcher$2;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "Transport backend \'%s\' is not registered"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 2075
    invoke-virtual {v1}, Lo/OaidClient$Info;->extraCallback()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 2073
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2076
    sget-object v1, Lo/disk;->extraCallback:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 2077
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lo/AppsFlyerTrackingRequestListener;->onSchedule(Ljava/lang/Exception;)V

    return-void

    .line 2080
    :cond_0
    invoke-interface {v4, v3}, Lo/ContentFetcher$2;->extraCallback(Lo/Foreground$4$4;)Lo/Foreground$4$4;

    move-result-object v3

    .line 2081
    iget-object v4, v0, Lo/disk;->onMessageChannelReady:Lo/b$e;

    .line 3000
    new-instance v5, Lo/onActivityResumed$extraCallback;

    invoke-direct {v5, v0, v1, v3}, Lo/onActivityResumed$extraCallback;-><init>(Lo/disk;Lo/OaidClient$Info;Lo/Foreground$4$4;)V

    .line 2081
    invoke-interface {v4, v5}, Lo/b$e;->ICustomTabsCallback(Lo/b$e$ICustomTabsCallback;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2087
    invoke-interface {v2, v0}, Lo/AppsFlyerTrackingRequestListener;->onSchedule(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2089
    sget-object v1, Lo/disk;->extraCallback:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error scheduling event "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 2090
    invoke-interface {v2, v0}, Lo/AppsFlyerTrackingRequestListener;->onSchedule(Ljava/lang/Exception;)V

    return-void
.end method
