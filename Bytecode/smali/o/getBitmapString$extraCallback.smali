.class final Lo/getBitmapString$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CardInstrumentJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getBitmapString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getBitmapString;

.field public final onMessageChannelReady:Lo/CardInstrumentJsonAdapter;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/getBitmapString;Lo/CardInstrumentJsonAdapter;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lo/getBitmapString$extraCallback;->ICustomTabsCallback:Lo/getBitmapString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p2, p0, Lo/getBitmapString$extraCallback;->onMessageChannelReady:Lo/CardInstrumentJsonAdapter;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(J)I
    .locals 1

    .line 326
    iget-object v0, p0, Lo/getBitmapString$extraCallback;->ICustomTabsCallback:Lo/getBitmapString;

    invoke-virtual {v0}, Lo/getBitmapString;->asInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 329
    :cond_0
    iget-object v0, p0, Lo/getBitmapString$extraCallback;->onMessageChannelReady:Lo/CardInstrumentJsonAdapter;

    invoke-interface {v0, p1, p2}, Lo/CardInstrumentJsonAdapter;->ICustomTabsCallback(J)I

    move-result p1

    return p1
.end method

.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lo/getBitmapString$extraCallback;->onPostMessage:Z

    return-void
.end method

.method public final extraCallback(Lo/q;Lo/setReferrerCustomerId;Z)I
    .locals 10

    .line 294
    iget-object v0, p0, Lo/getBitmapString$extraCallback;->ICustomTabsCallback:Lo/getBitmapString;

    invoke-virtual {v0}, Lo/getBitmapString;->asInterface()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 297
    :cond_0
    iget-boolean v0, p0, Lo/getBitmapString$extraCallback;->onPostMessage:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p2, v2}, Lo/getChannel;->a_(I)V

    return v3

    .line 301
    :cond_1
    iget-object v0, p0, Lo/getBitmapString$extraCallback;->onMessageChannelReady:Lo/CardInstrumentJsonAdapter;

    invoke-interface {v0, p1, p2, p3}, Lo/CardInstrumentJsonAdapter;->extraCallback(Lo/q;Lo/setReferrerCustomerId;Z)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_6

    .line 303
    iget-object p2, p1, Lo/q;->onMessageChannelReady:Lo/p$a;

    .line 304
    iget p3, p2, Lo/p$a;->IPostMessageService$Stub:I

    if-nez p3, :cond_2

    iget p3, p2, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    if-eqz p3, :cond_5

    .line 306
    :cond_2
    iget-object p3, p0, Lo/getBitmapString$extraCallback;->ICustomTabsCallback:Lo/getBitmapString;

    iget-wide v1, p3, Lo/getBitmapString;->extraCallback:J

    const-wide/16 v6, 0x0

    const/4 p3, 0x0

    cmp-long v3, v1, v6

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget v1, p2, Lo/p$a;->IPostMessageService$Stub:I

    .line 307
    :goto_0
    iget-object v2, p0, Lo/getBitmapString$extraCallback;->ICustomTabsCallback:Lo/getBitmapString;

    iget-wide v2, v2, Lo/getBitmapString;->ICustomTabsCallback:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    iget p3, p2, Lo/p$a;->IPostMessageService$Stub$Proxy:I

    .line 308
    :goto_1
    invoke-virtual {p2, v1, p3}, Lo/p$a;->extraCallback(II)Lo/p$a;

    move-result-object p2

    iput-object p2, p1, Lo/q;->onMessageChannelReady:Lo/p$a;

    :cond_5
    return v0

    .line 312
    :cond_6
    iget-object p1, p0, Lo/getBitmapString$extraCallback;->ICustomTabsCallback:Lo/getBitmapString;

    iget-wide v6, p1, Lo/getBitmapString;->ICustomTabsCallback:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_9

    if-ne p3, v3, :cond_7

    iget-wide v6, p2, Lo/setReferrerCustomerId;->onPostMessage:J

    iget-object p1, p0, Lo/getBitmapString$extraCallback;->ICustomTabsCallback:Lo/getBitmapString;

    iget-wide v8, p1, Lo/getBitmapString;->ICustomTabsCallback:J

    cmp-long p1, v6, v8

    if-gez p1, :cond_8

    :cond_7
    if-ne p3, v1, :cond_9

    iget-object p1, p0, Lo/getBitmapString$extraCallback;->ICustomTabsCallback:Lo/getBitmapString;

    .line 315
    invoke-virtual {p1}, Lo/getBitmapString;->extraCallback()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_9

    .line 316
    :cond_8
    invoke-virtual {p2}, Lo/getChannel;->onMessageChannelReady()V

    .line 317
    invoke-virtual {p2, v2}, Lo/getChannel;->a_(I)V

    const/4 p1, 0x1

    .line 318
    iput-boolean p1, p0, Lo/getBitmapString$extraCallback;->onPostMessage:Z

    return v3

    :cond_9
    return p3
.end method

.method public final extraCallback()Z
    .locals 1

    .line 283
    iget-object v0, p0, Lo/getBitmapString$extraCallback;->ICustomTabsCallback:Lo/getBitmapString;

    invoke-virtual {v0}, Lo/getBitmapString;->asInterface()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/getBitmapString$extraCallback;->onMessageChannelReady:Lo/CardInstrumentJsonAdapter;

    invoke-interface {v0}, Lo/CardInstrumentJsonAdapter;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lo/getBitmapString$extraCallback;->onMessageChannelReady:Lo/CardInstrumentJsonAdapter;

    invoke-interface {v0}, Lo/CardInstrumentJsonAdapter;->onMessageChannelReady()V

    return-void
.end method
