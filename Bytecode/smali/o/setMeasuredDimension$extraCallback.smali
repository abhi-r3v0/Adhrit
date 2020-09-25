.class final Lo/setMeasuredDimension$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setMeasuredDimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setMeasuredDimension;


# direct methods
.method constructor <init>(Lo/setMeasuredDimension;)V
    .locals 0

    iput-object p1, p0, Lo/setMeasuredDimension$extraCallback;->onMessageChannelReady:Lo/setMeasuredDimension;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 36
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    iget-object p1, p0, Lo/setMeasuredDimension$extraCallback;->onMessageChannelReady:Lo/setMeasuredDimension;

    .line 2036
    iget-object p1, p1, Lo/setMeasuredDimension;->onNavigationEvent:Lo/createFullSpanItemFromEnd;

    const-string v0, "accountChangeAdd"

    .line 1118
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/setMeasuredDimension$extraCallback;->onMessageChannelReady:Lo/setMeasuredDimension;

    .line 3036
    iget-object v0, v0, Lo/setMeasuredDimension;->getInterfaceDescriptor:Landroid/view/View;

    .line 1118
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130038

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "pairs"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-array p1, v1, [Lo/addWrite;

    .line 3043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "source"

    const-string v5, "bank_screen"

    invoke-direct {v3, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p1, v2

    .line 1119
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "stash_credit_account_click_add_account"

    .line 1119
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1120
    iget-object p1, p0, Lo/setMeasuredDimension$extraCallback;->onMessageChannelReady:Lo/setMeasuredDimension;

    invoke-virtual {p1}, Lo/setMeasuredDimension;->onPostMessage()V

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    new-array v3, p1, [Lo/addWrite;

    .line 1122
    iget-object v4, p0, Lo/setMeasuredDimension$extraCallback;->onMessageChannelReady:Lo/setMeasuredDimension;

    .line 4036
    iget-object v4, v4, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 4070
    iget-object v4, v4, Lo/getSpanIndex;->IPostMessageService$Stub:Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 5070
    iget-object v4, v4, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 6043
    :goto_0
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "suggested_bank"

    invoke-direct {v6, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v2

    .line 1122
    iget-object v2, p0, Lo/setMeasuredDimension$extraCallback;->onMessageChannelReady:Lo/setMeasuredDimension;

    .line 7036
    iget-object v2, v2, Lo/setMeasuredDimension;->warmup:Lo/getSpanIndex;

    .line 7070
    iget-object v2, v2, Lo/getSpanIndex;->IPostMessageService$Stub:Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;

    if-eqz v2, :cond_2

    .line 7074
    iget-boolean v2, v2, Lo/isSpanGroupIndexCacheEnabled$ICustomTabsCallback;->onTransact:Z

    .line 1122
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 8043
    :cond_2
    new-instance v2, Lo/addWrite;

    const-string v4, "penny_drop_done"

    invoke-direct {v2, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v3, v1

    .line 1122
    invoke-static {v3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "stash_credit_account_click_change_account"

    .line 1122
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1123
    iget-object p1, p0, Lo/setMeasuredDimension$extraCallback;->onMessageChannelReady:Lo/setMeasuredDimension;

    invoke-virtual {p1}, Lo/setMeasuredDimension;->onPostMessage()V

    .line 36
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
