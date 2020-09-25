.class final Lo/Attr;
.super Ljava/lang/Object;

# interfaces
.implements Lo/c$onPostMessage;


# instance fields
.field private final onPostMessage:Lcom/google/android/exoplayer2/ExoPlaybackException;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Attr;->onPostMessage:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/allow$onNavigationEvent;)V
    .locals 1

    iget-object v0, p0, Lo/Attr;->onPostMessage:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 1000
    invoke-static {v0, p1}, Lo/j;->onMessageChannelReady(Lcom/google/android/exoplayer2/ExoPlaybackException;Lo/allow$onNavigationEvent;)V

    return-void
.end method
