.class final Lo/FreshchatCallbackStatus;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setHierarchy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setHierarchy<",
        "Lo/getEventFromBundle$onPostMessage$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(I)Lo/setController;
    .locals 0

    invoke-static {p1}, Lo/getEventFromBundle$onPostMessage$onMessageChannelReady;->extraCallback(I)Lo/getEventFromBundle$onPostMessage$onMessageChannelReady;

    move-result-object p1

    return-object p1
.end method
