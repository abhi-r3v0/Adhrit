.class public Lo/onSupportContentChanged;
.super Ljava/lang/Object;

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onSupportContentChanged$extraCallback;,
        Lo/onSupportContentChanged$onNavigationEvent;,
        Lo/onSupportContentChanged$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\nH\u0002\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\u00a8\u0006\u000b"
    }
    d2 = {
        "BROADCAST_ANIMATION_STATE_ENDED",
        "",
        "getBROADCAST_ANIMATION_STATE_ENDED",
        "()I",
        "BROADCAST_ANIMATION_STATE_RUNNING",
        "getBROADCAST_ANIMATION_STATE_RUNNING",
        "getLeaderboardList",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LeaderBoardInnerItem;",
        "responseCard",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onSupportContentChanged;->onMessageChannelReady:Ljava/lang/String;

    iput-object p2, p0, Lo/onSupportContentChanged;->extraCallback:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1013
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 1122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "context"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1013
    :cond_0
    check-cast v1, Landroid/content/Context;

    .line 2007
    iget-object v2, p0, Lo/onSupportContentChanged;->onMessageChannelReady:Ljava/lang/String;

    .line 3007
    iget-object v3, p0, Lo/onSupportContentChanged;->extraCallback:Ljava/util/Map;

    .line 1013
    invoke-virtual {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
