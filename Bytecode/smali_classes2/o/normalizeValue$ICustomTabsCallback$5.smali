.class final Lo/normalizeValue$ICustomTabsCallback$5;
.super Lo/childMovedChange;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/normalizeValue$ICustomTabsCallback;->extraCallback(ZILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/normalizeValue$ICustomTabsCallback;

.field private synthetic onNavigationEvent:Lo/getServerCache;


# direct methods
.method varargs constructor <init>(Lo/normalizeValue$ICustomTabsCallback;Ljava/lang/String;[Ljava/lang/Object;Lo/getServerCache;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lo/normalizeValue$ICustomTabsCallback$5;->ICustomTabsCallback:Lo/normalizeValue$ICustomTabsCallback;

    iput-object p4, p0, Lo/normalizeValue$ICustomTabsCallback$5;->onNavigationEvent:Lo/getServerCache;

    invoke-direct {p0, p2, p3}, Lo/childMovedChange;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 5

    .line 673
    :try_start_0
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback$5;->ICustomTabsCallback:Lo/normalizeValue$ICustomTabsCallback;

    iget-object v0, v0, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v0, v0, Lo/normalizeValue;->onMessageChannelReady:Lo/normalizeValue$extraCallback;

    iget-object v1, p0, Lo/normalizeValue$ICustomTabsCallback$5;->onNavigationEvent:Lo/getServerCache;

    invoke-virtual {v0, v1}, Lo/normalizeValue$extraCallback;->onMessageChannelReady(Lo/getServerCache;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 675
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Http2Connection.Listener failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lo/normalizeValue$ICustomTabsCallback$5;->ICustomTabsCallback:Lo/normalizeValue$ICustomTabsCallback;

    iget-object v4, v4, Lo/normalizeValue$ICustomTabsCallback;->onPostMessage:Lo/normalizeValue;

    iget-object v4, v4, Lo/normalizeValue;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lo/getChildAfterChild;->onMessageChannelReady(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 677
    :try_start_1
    iget-object v0, p0, Lo/normalizeValue$ICustomTabsCallback$5;->onNavigationEvent:Lo/getServerCache;

    sget-object v1, Lo/getNodeFilter;->onPostMessage:Lo/getNodeFilter;

    .line 1240
    invoke-virtual {v0, v1}, Lo/getServerCache;->onPostMessage(Lo/getNodeFilter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1243
    iget-object v2, v0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget v0, v0, Lo/getServerCache;->onMessageChannelReady:I

    .line 1341
    iget-object v2, v2, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {v2, v0, v1}, Lo/updateServerSnap;->onPostMessage(ILo/getNodeFilter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method
