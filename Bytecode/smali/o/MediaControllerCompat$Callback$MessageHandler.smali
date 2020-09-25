.class public Lo/MediaControllerCompat$Callback$MessageHandler;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final onPostMessage:Lo/postToHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/postToHandler<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/postToHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/postToHandler<",
            "*>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    return-void
.end method

.method public static onNavigationEvent(Lo/postToHandler;)Lo/MediaControllerCompat$Callback$MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/postToHandler<",
            "*>;)",
            "Lo/MediaControllerCompat$Callback$MessageHandler;"
        }
    .end annotation

    .line 57
    new-instance v0, Lo/MediaControllerCompat$Callback$MessageHandler;

    check-cast p0, Lo/postToHandler;

    invoke-direct {v0, p0}, Lo/MediaControllerCompat$Callback$MessageHandler;-><init>(Lo/postToHandler;)V

    return-object v0
.end method
