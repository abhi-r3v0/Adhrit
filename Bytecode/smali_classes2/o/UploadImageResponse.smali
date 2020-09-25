.class final Lo/UploadImageResponse;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Landroid/content/Context;

.field private final synthetic asBinder:Landroid/os/Bundle;

.field private final synthetic asInterface:Lo/getCsatResponse;

.field private final synthetic extraCallback:Ljava/lang/String;

.field private final synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/getCsatResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/UploadImageResponse;->asInterface:Lo/getCsatResponse;

    iput-object p2, p0, Lo/UploadImageResponse;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/UploadImageResponse;->extraCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/UploadImageResponse;->ICustomTabsCallback:Landroid/content/Context;

    iput-object p5, p0, Lo/UploadImageResponse;->asBinder:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lo/getCsatResponse$ICustomTabsCallback;-><init>(Lo/getCsatResponse;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-object v2, p0, Lo/UploadImageResponse;->asInterface:Lo/getCsatResponse;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lo/getCsatResponse;->extraCallback(Lo/getCsatResponse;Ljava/util/List;)Ljava/util/List;

    .line 6
    iget-object v2, p0, Lo/UploadImageResponse;->asInterface:Lo/getCsatResponse;

    iget-object v3, p0, Lo/UploadImageResponse;->onPostMessage:Ljava/lang/String;

    iget-object v4, p0, Lo/UploadImageResponse;->extraCallback:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 7
    iget-object v3, p0, Lo/UploadImageResponse;->extraCallback:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lo/UploadImageResponse;->onPostMessage:Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lo/UploadImageResponse;->asInterface:Lo/getCsatResponse;

    invoke-static {v4}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v2

    move-object v11, v3

    move-object v9, v4

    goto :goto_0

    :cond_0
    move-object v9, v3

    move-object v10, v9

    move-object v11, v10

    .line 10
    :goto_0
    iget-object v2, p0, Lo/UploadImageResponse;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v2}, Lo/getCsatResponse;->extraCallback(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lo/getCsatResponse;->asBinder()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 12
    :goto_2
    iget-object v3, p0, Lo/UploadImageResponse;->asInterface:Lo/getCsatResponse;

    iget-object v4, p0, Lo/UploadImageResponse;->asInterface:Lo/getCsatResponse;

    iget-object v5, p0, Lo/UploadImageResponse;->ICustomTabsCallback:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lo/getCsatResponse;->ICustomTabsCallback(Landroid/content/Context;Z)Lo/setControllerHideOnTouch;

    move-result-object v4

    invoke-static {v3, v4}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;Lo/setControllerHideOnTouch;)Lo/setControllerHideOnTouch;

    .line 13
    iget-object v3, p0, Lo/UploadImageResponse;->asInterface:Lo/getCsatResponse;

    invoke-static {v3}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v3

    if-nez v3, :cond_3

    .line 14
    iget-object v2, p0, Lo/UploadImageResponse;->asInterface:Lo/getCsatResponse;

    invoke-static {v2}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to connect to measurement client."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 16
    :cond_3
    iget-object v3, p0, Lo/UploadImageResponse;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v3}, Lo/getCsatResponse;->onNavigationEvent(Landroid/content/Context;)I

    move-result v3

    .line 17
    iget-object v4, p0, Lo/UploadImageResponse;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v4}, Lo/getCsatResponse;->onMessageChannelReady(Landroid/content/Context;)I

    move-result v4

    if-eqz v2, :cond_5

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v4, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    move v8, v3

    goto :goto_5

    :cond_5
    if-lez v3, :cond_6

    move v4, v3

    :cond_6
    if-lez v3, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    move v8, v2

    move v2, v4

    .line 23
    :goto_5
    new-instance v13, Lo/setStatusCode;

    const-wide/16 v4, 0x7949

    int-to-long v6, v2

    iget-object v12, p0, Lo/UploadImageResponse;->asBinder:Landroid/os/Bundle;

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lo/setStatusCode;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    iget-object v2, p0, Lo/UploadImageResponse;->asInterface:Lo/getCsatResponse;

    invoke-static {v2}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v2

    iget-object v3, p0, Lo/UploadImageResponse;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v3}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v3

    iget-wide v4, p0, Lo/UploadImageResponse;->onNavigationEvent:J

    invoke-interface {v2, v3, v13, v4, v5}, Lo/setControllerHideOnTouch;->initialize(Lo/getEventName;Lo/setStatusCode;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 27
    iget-object v3, p0, Lo/UploadImageResponse;->asInterface:Lo/getCsatResponse;

    invoke-static {v3, v2, v1, v0}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse;Ljava/lang/Exception;ZZ)V

    return-void
.end method
