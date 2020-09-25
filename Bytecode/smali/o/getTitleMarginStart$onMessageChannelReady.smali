.class public final Lo/getTitleMarginStart$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTitleMarginStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/androidapp/gating/EligibilityViewModel$updateDobPan$1",
        "Lcom/dreamplug/network/helper/BaseCallback;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onFailure",
        "",
        "t",
        "",
        "errorResponse",
        "onResponse",
        "response",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Lo/getTitleMarginStart;


# direct methods
.method constructor <init>(Lo/getTitleMarginStart;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lo/getTitleMarginStart$onMessageChannelReady;->onMessageChannelReady:Lo/getTitleMarginStart;

    iput-object p2, p0, Lo/getTitleMarginStart$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 12

    .line 59
    check-cast p2, Lcom/dreamplug/utils/model/BaseResponse;

    .line 1061
    iget-object v0, p0, Lo/getTitleMarginStart$onMessageChannelReady;->onMessageChannelReady:Lo/getTitleMarginStart;

    .line 2027
    iget-object v0, v0, Lo/getTitleMarginStart;->asInterface:Lo/appendViewToAllSpans$extraCallback;

    if-nez v0, :cond_0

    const-string/jumbo v1, "snackBarViewModel"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2145
    :cond_0
    iget-object v0, v0, Lo/appendViewToAllSpans$extraCallback;->onPostMessage:Lo/setActive;

    .line 1061
    new-instance v1, Lo/getThumbTintList;

    .line 1062
    new-instance v11, Lo/appendViewToAllSpans$onNavigationEvent;

    .line 1063
    invoke-static {p1, p2}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3c

    const-string v4, ""

    move-object v2, v11

    .line 1062
    invoke-direct/range {v2 .. v10}, Lo/appendViewToAllSpans$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/appendViewToAllSpans$ICustomTabsCallback;JIZI)V

    .line 1061
    invoke-direct {v1, v11}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1066
    iget-object p1, p0, Lo/getTitleMarginStart$onMessageChannelReady;->onMessageChannelReady:Lo/getTitleMarginStart;

    .line 3025
    iget-object p1, p1, Lo/getTitleMarginStart;->onRelationshipValidationResult:Lo/setActive;

    .line 1066
    invoke-virtual {p1, p2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 9

    .line 3070
    iget-object p1, p0, Lo/getTitleMarginStart$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "dob"

    .line 4056
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    const/4 v1, 0x0

    const-string v2, "$this$toMutableMap"

    const-string v3, "newDataMap"

    const-string v4, "java.util.Collections.si\u2026(pair.first, pair.second)"

    const-string v5, "false"

    const-string v6, "pair"

    if-eqz p1, :cond_1

    .line 3071
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    sget-object p1, Lo/setTrackTintMode;->IPostMessageService$Stub$Proxy:Lo/setTitleTextColor;

    sget-object v7, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v8, 0x1c

    aget-object v7, v7, v8

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v7, v8}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 3072
    new-instance p1, Lo/getHorizontalMargins;

    invoke-direct {p1}, Lo/getHorizontalMargins;-><init>()V

    .line 5043
    new-instance v7, Lo/addWrite;

    const-string v8, "dob_mismatch"

    invoke-direct {v7, v8, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6010
    invoke-static {v7, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6011
    invoke-static {v7, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7027
    iget-object v5, v7, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 7028
    iget-object v6, v7, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 6027
    invoke-static {v5, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6011
    invoke-static {v5, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8015
    iput v0, p1, Lo/getHorizontalMargins;->onPostMessage:I

    .line 8016
    invoke-static {v5, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8607
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    check-cast v0, Ljava/util/Map;

    .line 8016
    invoke-virtual {p1, v0, v1}, Lo/getHorizontalMargins;->onPostMessage(Ljava/util/Map;Lo/RecyclerView$Recycler;)V

    goto :goto_1

    .line 3074
    :cond_1
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 9000
    sget-object p1, Lo/setTrackTintMode;->cancelAll:Lo/setTitleTextColor;

    sget-object v7, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v8, 0x1b

    aget-object v7, v7, v8

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v7, v8}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 3075
    new-instance p1, Lo/getHorizontalMargins;

    invoke-direct {p1}, Lo/getHorizontalMargins;-><init>()V

    .line 9043
    new-instance v7, Lo/addWrite;

    const-string v8, "pan_mismatch"

    invoke-direct {v7, v8, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10010
    invoke-static {v7, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10011
    invoke-static {v7, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11027
    iget-object v5, v7, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 11028
    iget-object v6, v7, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 10027
    invoke-static {v5, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10011
    invoke-static {v5, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12015
    iput v0, p1, Lo/getHorizontalMargins;->onPostMessage:I

    .line 12016
    invoke-static {v5, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12607
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    check-cast v0, Ljava/util/Map;

    .line 12016
    invoke-virtual {p1, v0, v1}, Lo/getHorizontalMargins;->onPostMessage(Ljava/util/Map;Lo/RecyclerView$Recycler;)V

    .line 3077
    :goto_1
    iget-object p1, p0, Lo/getTitleMarginStart$onMessageChannelReady;->onMessageChannelReady:Lo/getTitleMarginStart;

    iget-object v0, p0, Lo/getTitleMarginStart$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 13023
    iput-object v0, p1, Lo/getTitleMarginStart;->extraCallback:Ljava/lang/String;

    .line 3078
    iget-object p1, p0, Lo/getTitleMarginStart$onMessageChannelReady;->onMessageChannelReady:Lo/getTitleMarginStart;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13031
    sget-object v1, Lo/setTitleMargin;->onNavigationEvent:Lo/setTitleMargin;

    iget-object v2, p1, Lo/getTitleMarginStart;->extraCallback:Ljava/lang/String;

    iget-object p1, p1, Lo/getTitleMarginStart;->onMessageChannelReady:Lo/setActive;

    invoke-virtual {v1, v2, v0, p1}, Lo/setTitleMargin;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Boolean;Lo/setActive;)V

    return-void
.end method
