.class public final Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/serializeObject$onMessageChannelReady$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/buildFrom;

.field public extraCallback:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

.field public onMessageChannelReady:Ljava/lang/Long;

.field public onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()Lo/serializeObject$onMessageChannelReady$onPostMessage;
    .locals 9

    .line 607
    iget-object v1, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 608
    iget-object v2, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->extraCallback:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    if-eqz v2, :cond_1

    .line 609
    iget-object v0, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 613
    new-instance v8, Lo/serializeObject$onMessageChannelReady$onPostMessage;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const/4 v5, 0x0

    iget-object v6, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;->ICustomTabsCallback:Lo/buildFrom;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/serializeObject$onMessageChannelReady$onPostMessage;-><init>(Ljava/lang/String;Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;JLo/buildFrom;Lo/buildFrom;B)V

    return-object v8

    .line 3910
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "timestampNanos"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2910
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "severity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1910
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "description"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
