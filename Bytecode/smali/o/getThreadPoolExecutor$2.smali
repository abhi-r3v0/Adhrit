.class final Lo/getThreadPoolExecutor$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isEncrypt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getThreadPoolExecutor;


# direct methods
.method constructor <init>(Lo/getThreadPoolExecutor;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lo/getThreadPoolExecutor$2;->ICustomTabsCallback:Lo/getThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/getCardBackgroundColor;ILo/AFKeystoreWrapper;Lo/AFDeepLinkManager;)Lo/convertToJsonObject;
    .locals 3

    .line 1326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_0

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_1

    .line 1327
    :cond_0
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 1209
    :cond_1
    iget-object v0, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 57
    sget-object v1, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    if-ne v0, v1, :cond_2

    .line 58
    iget-object v0, p0, Lo/getThreadPoolExecutor$2;->ICustomTabsCallback:Lo/getThreadPoolExecutor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/getThreadPoolExecutor;->onPostMessage(Lo/getCardBackgroundColor;ILo/AFKeystoreWrapper;Lo/AFDeepLinkManager;)Lo/onAppLinkFetchFailed;

    move-result-object p1

    return-object p1

    .line 59
    :cond_2
    sget-object v1, Lo/getFrame;->onPostMessage:Lo/setProgress;

    if-ne v0, v1, :cond_9

    .line 60
    iget-object v0, p0, Lo/getThreadPoolExecutor$2;->ICustomTabsCallback:Lo/getThreadPoolExecutor;

    .line 2326
    iget v1, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v1, :cond_3

    iget v1, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v1, :cond_4

    .line 2327
    :cond_3
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 2230
    :cond_4
    iget v1, p1, Lo/getCardBackgroundColor;->asInterface:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 3326
    iget v1, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v1, :cond_5

    iget v1, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v1, :cond_6

    .line 3327
    :cond_5
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 3236
    :cond_6
    iget v1, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-eq v1, v2, :cond_8

    .line 2138
    iget-object v1, v0, Lo/getThreadPoolExecutor;->onNavigationEvent:Lo/isEncrypt;

    if-eqz v1, :cond_7

    .line 2139
    iget-object v0, v0, Lo/getThreadPoolExecutor;->onNavigationEvent:Lo/isEncrypt;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/isEncrypt;->onNavigationEvent(Lo/getCardBackgroundColor;ILo/AFKeystoreWrapper;Lo/AFDeepLinkManager;)Lo/convertToJsonObject;

    move-result-object p1

    return-object p1

    .line 2141
    :cond_7
    invoke-virtual {v0, p1, p4}, Lo/getThreadPoolExecutor;->onPostMessage(Lo/getCardBackgroundColor;Lo/AFDeepLinkManager;)Lo/onAppLinkFetchFailed;

    move-result-object p1

    return-object p1

    .line 2136
    :cond_8
    new-instance p2, Lcom/facebook/imagepipeline/decoder/DecodeException;

    const-string p3, "image width or height is incorrect"

    invoke-direct {p2, p3, p1}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Lo/getCardBackgroundColor;)V

    throw p2

    .line 61
    :cond_9
    sget-object v1, Lo/getFrame;->onTransact:Lo/setProgress;

    if-ne v0, v1, :cond_a

    .line 62
    iget-object v0, p0, Lo/getThreadPoolExecutor$2;->ICustomTabsCallback:Lo/getThreadPoolExecutor;

    .line 4207
    iget-object v0, v0, Lo/getThreadPoolExecutor;->ICustomTabsCallback:Lo/isEncrypt;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/isEncrypt;->onNavigationEvent(Lo/getCardBackgroundColor;ILo/AFKeystoreWrapper;Lo/AFDeepLinkManager;)Lo/convertToJsonObject;

    move-result-object p1

    return-object p1

    .line 63
    :cond_a
    sget-object p2, Lo/setProgress;->onPostMessage:Lo/setProgress;

    if-eq v0, p2, :cond_b

    .line 66
    iget-object p2, p0, Lo/getThreadPoolExecutor$2;->ICustomTabsCallback:Lo/getThreadPoolExecutor;

    invoke-virtual {p2, p1, p4}, Lo/getThreadPoolExecutor;->onPostMessage(Lo/getCardBackgroundColor;Lo/AFDeepLinkManager;)Lo/onAppLinkFetchFailed;

    move-result-object p1

    return-object p1

    .line 64
    :cond_b
    new-instance p2, Lcom/facebook/imagepipeline/decoder/DecodeException;

    const-string/jumbo p3, "unknown image format"

    invoke-direct {p2, p3, p1}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Lo/getCardBackgroundColor;)V

    throw p2
.end method
