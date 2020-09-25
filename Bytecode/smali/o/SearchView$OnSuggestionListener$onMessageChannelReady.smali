.class public final Lo/SearchView$OnSuggestionListener$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SearchView$OnSuggestionListener;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\u0006\u0010\u0011\u001a\u00020\u0007R\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/util/ExoPlayerWrapper;",
        "",
        "simpleExoPlayer",
        "Lcom/google/android/exoplayer2/SimpleExoPlayer;",
        "(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V",
        "onUnlink",
        "Lkotlin/Function0;",
        "",
        "getOnUnlink",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnUnlink",
        "(Lkotlin/jvm/functions/Function0;)V",
        "getSimpleExoPlayer",
        "()Lcom/google/android/exoplayer2/SimpleExoPlayer;",
        "link",
        "playerView",
        "Lcom/google/android/exoplayer2/ui/PlayerView;",
        "unlink",
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
.field public extraCallback:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/s$d;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/s$d;)V
    .locals 1

    const-string/jumbo v0, "simpleExoPlayer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SearchView$OnSuggestionListener$onMessageChannelReady;->onMessageChannelReady:Lo/s$d;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/OrderDetailsJsonAdapter;Lo/getServerTime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/OrderDetailsJsonAdapter;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "playerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUnlink"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lo/SearchView$OnSuggestionListener$onMessageChannelReady;->extraCallback:Lo/getServerTime;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 1114
    iput-object v0, p0, Lo/SearchView$OnSuggestionListener$onMessageChannelReady;->extraCallback:Lo/getServerTime;

    .line 1108
    iget-object v0, p0, Lo/SearchView$OnSuggestionListener$onMessageChannelReady;->onMessageChannelReady:Lo/s$d;

    check-cast v0, Lo/allow;

    invoke-virtual {p1, v0}, Lo/OrderDetailsJsonAdapter;->setPlayer(Lo/allow;)V

    .line 1109
    iput-object p2, p0, Lo/SearchView$OnSuggestionListener$onMessageChannelReady;->extraCallback:Lo/getServerTime;

    return-void
.end method
