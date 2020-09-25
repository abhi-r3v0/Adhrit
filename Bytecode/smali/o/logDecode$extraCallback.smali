.class final Lo/logDecode$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Account;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/logDecode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/logDecode;

.field private onNavigationEvent:Lo/Account$extraCallback;

.field private final onPostMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/logDecode;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lo/logDecode$extraCallback;->extraCallback:Lo/logDecode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p1, v0}, Lo/newIoExceptionForInBitmapAssertion;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/Account$extraCallback;

    move-result-object p1

    iput-object p1, p0, Lo/logDecode$extraCallback;->onNavigationEvent:Lo/Account$extraCallback;

    .line 177
    iput-object p2, p0, Lo/logDecode$extraCallback;->onPostMessage:Ljava/lang/Object;

    return-void
.end method

.method private onNavigationEvent(Lo/Account$ICustomTabsCallback;)Lo/Account$ICustomTabsCallback;
    .locals 14

    .line 285
    iget-object v0, p0, Lo/logDecode$extraCallback;->extraCallback:Lo/logDecode;

    iget-object v1, p0, Lo/logDecode$extraCallback;->onPostMessage:Ljava/lang/Object;

    iget-wide v2, p1, Lo/Account$ICustomTabsCallback;->onRelationshipValidationResult:J

    invoke-virtual {v0, v1, v2, v3}, Lo/logDecode;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 286
    iget-object v0, p0, Lo/logDecode$extraCallback;->extraCallback:Lo/logDecode;

    iget-object v1, p0, Lo/logDecode$extraCallback;->onPostMessage:Ljava/lang/Object;

    iget-wide v2, p1, Lo/Account$ICustomTabsCallback;->asBinder:J

    invoke-virtual {v0, v1, v2, v3}, Lo/logDecode;->ICustomTabsCallback(Ljava/lang/Object;J)J

    move-result-wide v12

    .line 287
    iget-wide v0, p1, Lo/Account$ICustomTabsCallback;->onRelationshipValidationResult:J

    cmp-long v2, v10, v0

    if-nez v2, :cond_0

    iget-wide v0, p1, Lo/Account$ICustomTabsCallback;->asBinder:J

    cmp-long v2, v12, v0

    if-nez v2, :cond_0

    return-object p1

    .line 291
    :cond_0
    new-instance v0, Lo/Account$ICustomTabsCallback;

    iget v5, p1, Lo/Account$ICustomTabsCallback;->extraCallback:I

    iget v6, p1, Lo/Account$ICustomTabsCallback;->onMessageChannelReady:I

    iget-object v7, p1, Lo/Account$ICustomTabsCallback;->onNavigationEvent:Lo/p$a;

    iget v8, p1, Lo/Account$ICustomTabsCallback;->onPostMessage:I

    iget-object v9, p1, Lo/Account$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Object;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lo/Account$ICustomTabsCallback;-><init>(IILo/p$a;ILjava/lang/Object;JJ)V

    return-object v0
.end method

.method private onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 269
    iget-object v0, p0, Lo/logDecode$extraCallback;->extraCallback:Lo/logDecode;

    iget-object v1, p0, Lo/logDecode$extraCallback;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lo/logDecode;->onPostMessage(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 275
    :cond_1
    iget-object v0, p0, Lo/logDecode$extraCallback;->extraCallback:Lo/logDecode;

    iget-object v1, p0, Lo/logDecode$extraCallback;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lo/logDecode;->onNavigationEvent(Ljava/lang/Object;I)I

    move-result p1

    .line 276
    iget-object v0, p0, Lo/logDecode$extraCallback;->onNavigationEvent:Lo/Account$extraCallback;

    iget v0, v0, Lo/Account$extraCallback;->extraCallback:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lo/logDecode$extraCallback;->onNavigationEvent:Lo/Account$extraCallback;

    iget-object v0, v0, Lo/Account$extraCallback;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 277
    invoke-static {v0, p2}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 278
    :cond_2
    iget-object v0, p0, Lo/logDecode$extraCallback;->extraCallback:Lo/logDecode;

    const-wide/16 v1, 0x0

    .line 279
    invoke-virtual {v0, p1, p2, v1, v2}, Lo/logDecode;->onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;J)Lo/Account$extraCallback;

    move-result-object p1

    iput-object p1, p0, Lo/logDecode$extraCallback;->onNavigationEvent:Lo/Account$extraCallback;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 0

    .line 243
    invoke-direct {p0, p1, p2}, Lo/logDecode$extraCallback;->onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lo/logDecode$extraCallback;->onNavigationEvent:Lo/Account$extraCallback;

    invoke-virtual {p1}, Lo/Account$extraCallback;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1, p2}, Lo/logDecode$extraCallback;->onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lo/logDecode$extraCallback;->onNavigationEvent:Lo/Account$extraCallback;

    invoke-direct {p0, p4}, Lo/logDecode$extraCallback;->onNavigationEvent(Lo/Account$ICustomTabsCallback;)Lo/Account$ICustomTabsCallback;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lo/Account$extraCallback;->onMessageChannelReady(Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1, p2}, Lo/logDecode$extraCallback;->onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lo/logDecode$extraCallback;->onNavigationEvent:Lo/Account$extraCallback;

    invoke-virtual {p1}, Lo/Account$extraCallback;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1, p2}, Lo/logDecode$extraCallback;->onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lo/logDecode$extraCallback;->onNavigationEvent:Lo/Account$extraCallback;

    invoke-direct {p0, p4}, Lo/logDecode$extraCallback;->onNavigationEvent(Lo/Account$ICustomTabsCallback;)Lo/Account$ICustomTabsCallback;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lo/Account$extraCallback;->onNavigationEvent(Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1, p2}, Lo/logDecode$extraCallback;->onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lo/logDecode$extraCallback;->onNavigationEvent:Lo/Account$extraCallback;

    invoke-virtual {p1}, Lo/Account$extraCallback;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;Ljava/io/IOException;Z)V
    .locals 0

    .line 235
    invoke-direct {p0, p1, p2}, Lo/logDecode$extraCallback;->onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lo/logDecode$extraCallback;->onNavigationEvent:Lo/Account$extraCallback;

    .line 237
    invoke-direct {p0, p4}, Lo/logDecode$extraCallback;->onNavigationEvent(Lo/Account$ICustomTabsCallback;)Lo/Account$ICustomTabsCallback;

    move-result-object p2

    .line 236
    invoke-virtual {p1, p3, p2, p5, p6}, Lo/Account$extraCallback;->onPostMessage(Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$ICustomTabsCallback;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2}, Lo/logDecode$extraCallback;->onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lo/logDecode$extraCallback;->onNavigationEvent:Lo/Account$extraCallback;

    invoke-direct {p0, p3}, Lo/logDecode$extraCallback;->onNavigationEvent(Lo/Account$ICustomTabsCallback;)Lo/Account$ICustomTabsCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/Account$extraCallback;->extraCallback(Lo/Account$ICustomTabsCallback;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1, p2}, Lo/logDecode$extraCallback;->onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lo/logDecode$extraCallback;->onNavigationEvent:Lo/Account$extraCallback;

    invoke-direct {p0, p4}, Lo/logDecode$extraCallback;->onNavigationEvent(Lo/Account$ICustomTabsCallback;)Lo/Account$ICustomTabsCallback;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lo/Account$extraCallback;->extraCallback(Lo/Account$onMessageChannelReady;Lo/Account$ICustomTabsCallback;)V

    :cond_0
    return-void
.end method
