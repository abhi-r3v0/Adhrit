.class public final Lo/prettyfyAndloadFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/endTransaction;


# instance fields
.field private extraCallback:Lo/getWaivers;

.field private onMessageChannelReady:Lo/CryptLib;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/getWaivers;Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 2

    .line 38
    iput-object p1, p0, Lo/prettyfyAndloadFile;->extraCallback:Lo/getWaivers;

    .line 39
    invoke-virtual {p3}, Lo/trackApiError$onMessageChannelReady;->extraCallback()V

    .line 40
    invoke-virtual {p3}, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady()I

    move-result p1

    const/4 v0, 0x4

    invoke-interface {p2, p1, v0}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object p1

    iput-object p1, p0, Lo/prettyfyAndloadFile;->onMessageChannelReady:Lo/CryptLib;

    .line 41
    invoke-virtual {p3}, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "application/x-scte35"

    const/4 v1, -0x1

    invoke-static {p2, v0, p3, v1, p3}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo/generateLink;)Lo/p$a;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    return-void
.end method

.method public final onPostMessage(Lo/DreamAppGlideModule;)V
    .locals 8

    .line 47
    iget-boolean v0, p0, Lo/prettyfyAndloadFile;->onPostMessage:Z

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lo/prettyfyAndloadFile;->extraCallback:Lo/getWaivers;

    invoke-virtual {v0}, Lo/getWaivers;->onNavigationEvent()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lo/prettyfyAndloadFile;->onMessageChannelReady:Lo/CryptLib;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/prettyfyAndloadFile;->extraCallback:Lo/getWaivers;

    .line 53
    invoke-virtual {v2}, Lo/getWaivers;->onNavigationEvent()J

    move-result-wide v2

    const-string v4, "application/x-scte35"

    .line 52
    invoke-static {v1, v4, v2, v3}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;J)Lo/p$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lo/prettyfyAndloadFile;->onPostMessage:Z

    .line 56
    :cond_1
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v5

    .line 57
    iget-object v0, p0, Lo/prettyfyAndloadFile;->onMessageChannelReady:Lo/CryptLib;

    invoke-interface {v0, p1, v5}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 58
    iget-object v1, p0, Lo/prettyfyAndloadFile;->onMessageChannelReady:Lo/CryptLib;

    iget-object p1, p0, Lo/prettyfyAndloadFile;->extraCallback:Lo/getWaivers;

    invoke-virtual {p1}, Lo/getWaivers;->onMessageChannelReady()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    return-void
.end method
