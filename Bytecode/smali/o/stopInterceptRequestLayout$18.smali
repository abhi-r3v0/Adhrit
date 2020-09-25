.class final Lo/stopInterceptRequestLayout$18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$18;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 36
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 1377
    iget-object v0, p0, Lo/stopInterceptRequestLayout$18;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 2037
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 2389
    iget-object v0, v0, Lo/releaseGlows;->onPostMessage:Lo/releaseGlows$onPostMessage;

    .line 1377
    iget-object v1, p0, Lo/stopInterceptRequestLayout$18;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 3037
    iget-object v1, v1, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 1377
    iget-object v2, p0, Lo/stopInterceptRequestLayout$18;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 3039
    iget-object v2, v2, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 1377
    invoke-static {v2, v3, v4, v5}, Lo/pullGlows;->extraCallback(Lo/pullGlows;ZLjava/util/Map;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lo/releaseGlows$onPostMessage;->onPostMessage(Lo/releaseGlows;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;)V

    return-void
.end method
