.class final Lo/setVerticalOffset$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RatingCompat$StarStyle$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setVerticalOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/RatingCompat$StarStyle$extraCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/setVerticalOffset$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setVerticalOffset$onMessageChannelReady<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/RatingCompat$StarStyle$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/setVerticalOffset$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setVerticalOffset$extraCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/RatingCompat$StarStyle$extraCallback;Lo/setVerticalOffset$extraCallback;Lo/setVerticalOffset$onMessageChannelReady;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "TT;>;",
            "Lo/setVerticalOffset$extraCallback<",
            "TT;>;",
            "Lo/setVerticalOffset$onMessageChannelReady<",
            "TT;>;)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lo/setVerticalOffset$onPostMessage;->onMessageChannelReady:Lo/RatingCompat$StarStyle$extraCallback;

    .line 155
    iput-object p2, p0, Lo/setVerticalOffset$onPostMessage;->onPostMessage:Lo/setVerticalOffset$extraCallback;

    .line 156
    iput-object p3, p0, Lo/setVerticalOffset$onPostMessage;->extraCallback:Lo/setVerticalOffset$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 176
    instance-of v0, p1, Lo/setVerticalOffset$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 177
    move-object v0, p1

    check-cast v0, Lo/setVerticalOffset$onNavigationEvent;

    invoke-interface {v0}, Lo/setVerticalOffset$onNavigationEvent;->f_()Lo/setHorizontalOffset;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/setHorizontalOffset;->onPostMessage(Z)V

    .line 179
    :cond_0
    iget-object v0, p0, Lo/setVerticalOffset$onPostMessage;->extraCallback:Lo/setVerticalOffset$onMessageChannelReady;

    invoke-interface {v0, p1}, Lo/setVerticalOffset$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lo/setVerticalOffset$onPostMessage;->onMessageChannelReady:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v0, p1}, Lo/RatingCompat$StarStyle$extraCallback;->onMessageChannelReady(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onPostMessage()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lo/setVerticalOffset$onPostMessage;->onMessageChannelReady:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-interface {v0}, Lo/RatingCompat$StarStyle$extraCallback;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lo/setVerticalOffset$onPostMessage;->onPostMessage:Lo/setVerticalOffset$extraCallback;

    invoke-interface {v0}, Lo/setVerticalOffset$extraCallback;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "FactoryPools"

    .line 164
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Created new "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    instance-of v1, v0, Lo/setVerticalOffset$onNavigationEvent;

    if-eqz v1, :cond_1

    .line 169
    move-object v1, v0

    check-cast v1, Lo/setVerticalOffset$onNavigationEvent;

    invoke-interface {v1}, Lo/setVerticalOffset$onNavigationEvent;->f_()Lo/setHorizontalOffset;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/setHorizontalOffset;->onPostMessage(Z)V

    :cond_1
    return-object v0
.end method
