.class final Lo/setStartTime;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/eq;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    check-cast p1, Lo/fa;

    sget v0, Lo/fa$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v1}, Lo/fa;->ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
