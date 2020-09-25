.class final Lo/onSelected$onTransact;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSelected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/addWrite<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Integer;",
        ">;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lkotlin/Pair;",
        "",
        "",
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
.field final synthetic ICustomTabsCallback:Lo/onSelected;


# direct methods
.method constructor <init>(Lo/onSelected;)V
    .locals 0

    iput-object p1, p0, Lo/onSelected$onTransact;->ICustomTabsCallback:Lo/onSelected;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 54
    check-cast p1, Lo/addWrite;

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2027
    iget-object v0, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1194
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x29f738de

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    const v2, 0x2a451ade

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "SMS_SENT"

    .line 1195
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2028
    iget-object v0, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1196
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "pairs"

    const/4 v4, 0x1

    const-string/jumbo v5, "type"

    const-string/jumbo v6, "stash_okyc_aadhaar_sms_sent"

    const/4 v7, 0x0

    if-ne v0, v1, :cond_3

    .line 1197
    iget-object p1, p0, Lo/onSelected$onTransact;->ICustomTabsCallback:Lo/onSelected;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lo/cachePreLayoutSpanMapping;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    check-cast v3, Lo/cachePreLayoutSpanMapping;

    if-eqz v3, :cond_2

    new-array p1, v4, [Lo/addWrite;

    .line 2043
    new-instance v0, Lo/addWrite;

    const-string/jumbo v1, "success"

    invoke-direct {v0, v5, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v7

    .line 1197
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1197
    invoke-interface {v3, v6, v0}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1198
    :cond_2
    iget-object p1, p0, Lo/onSelected$onTransact;->ICustomTabsCallback:Lo/onSelected;

    invoke-static {p1}, Lo/onSelected;->onPostMessage(Lo/onSelected;)Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/onSelected$onTransact;->ICustomTabsCallback:Lo/onSelected;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    new-instance v3, Lo/onSelected$onTransact$5;

    invoke-direct {v3, p0}, Lo/onSelected$onTransact$5;-><init>(Lo/onSelected$onTransact;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    goto/16 :goto_3

    .line 1207
    :cond_3
    iget-object v0, p0, Lo/onSelected$onTransact;->ICustomTabsCallback:Lo/onSelected;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/cachePreLayoutSpanMapping;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    check-cast v3, Lo/cachePreLayoutSpanMapping;

    if-eqz v3, :cond_5

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    .line 3043
    new-instance v8, Lo/addWrite;

    const-string v9, "failure"

    invoke-direct {v8, v5, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v1, v7

    .line 4028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 4043
    new-instance v5, Lo/addWrite;

    const-string v8, "error_code"

    invoke-direct {v5, v8, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v4

    .line 1207
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1207
    invoke-interface {v3, v6, p1}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1208
    :cond_5
    iget-object p1, p0, Lo/onSelected$onTransact;->ICustomTabsCallback:Lo/onSelected;

    invoke-static {p1}, Lo/onSelected;->onPostMessage(Lo/onSelected;)Landroid/widget/TextView;

    move-result-object p1

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130441

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    iget-object p1, p0, Lo/onSelected$onTransact;->ICustomTabsCallback:Lo/onSelected;

    invoke-static {p1}, Lo/onSelected;->ICustomTabsCallback(Lo/onSelected;)Landroid/widget/TextView;

    move-result-object p1

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130444

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    iget-object p1, p0, Lo/onSelected$onTransact;->ICustomTabsCallback:Lo/onSelected;

    invoke-static {p1, v7}, Lo/onSelected;->onPostMessage(Lo/onSelected;Z)V

    goto :goto_3

    :cond_6
    const-string p1, "SMS_DELIVERED"

    .line 1213
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1214
    iget-object p1, p0, Lo/onSelected$onTransact;->ICustomTabsCallback:Lo/onSelected;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lo/cachePreLayoutSpanMapping;

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    move-object v3, p1

    :goto_2
    check-cast v3, Lo/cachePreLayoutSpanMapping;

    if-eqz v3, :cond_8

    .line 5006
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    const-string/jumbo v0, "stash_okyc_aadhaar_sms_delivered"

    invoke-interface {v3, v0, p1}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    :cond_8
    :goto_3
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
