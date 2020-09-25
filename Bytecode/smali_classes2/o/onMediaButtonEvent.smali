.class Lo/onMediaButtonEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onMediaButtonEvent$onMessageChannelReady;
    }
.end annotation


# direct methods
.method public static onPostMessage(IIILo/onMediaButtonEvent$onMessageChannelReady;)Ljava/lang/Object;
    .locals 1

    .line 27
    new-instance v0, Lo/onMediaButtonEvent$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/onMediaButtonEvent$2;-><init>(IIILo/onMediaButtonEvent$onMessageChannelReady;)V

    return-object v0
.end method
