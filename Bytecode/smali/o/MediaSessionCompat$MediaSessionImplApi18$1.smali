.class public abstract Lo/MediaSessionCompat$MediaSessionImplApi18$1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final extraCallback:I

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi18$1;->onPostMessage:I

    .line 49
    iput p2, p0, Lo/MediaSessionCompat$MediaSessionImplApi18$1;->extraCallback:I

    return-void
.end method


# virtual methods
.method public abstract onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V
.end method
