.class final Lo/isLayoutHierarchical$onTransact;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isLayoutHierarchical;->onNavigationEvent(Ljava/lang/Integer;)V
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lkotlin/Pair;",
        "",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/sms/BankSmsViewModel$sendSms$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/isLayoutHierarchical;

.field final synthetic onNavigationEvent:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lo/isLayoutHierarchical;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    iput-object p2, p0, Lo/isLayoutHierarchical$onTransact;->onNavigationEvent:Ljava/lang/Integer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 30
    check-cast p1, Lo/addWrite;

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2027
    iget-object v0, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1130
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x2a451ade

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "SMS_SENT"

    .line 1131
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1132
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1133
    iget-object p1, p0, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    .line 2036
    iget-object p1, p1, Lo/isLayoutHierarchical;->ICustomTabsCallback:Lo/setActive;

    .line 1133
    sget-object v0, Lo/performAccessibilityActionForItem$onNavigationEvent;->onMessageChannelReady:Lo/performAccessibilityActionForItem$onNavigationEvent;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1134
    iget-object p1, p0, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    new-instance v0, Lo/performAccessibilityActionForItem$onTransact;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130099

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/performAccessibilityActionForItem$onTransact;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/performAccessibilityActionForItem;

    invoke-static {p1, v0}, Lo/isLayoutHierarchical;->onMessageChannelReady(Lo/isLayoutHierarchical;Lo/performAccessibilityActionForItem;)V

    goto/16 :goto_0

    .line 1136
    :cond_1
    iget-object p1, p0, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    invoke-static {p1}, Lo/isLayoutHierarchical;->onNavigationEvent(Lo/isLayoutHierarchical;)Z

    move-result p1

    const v0, 0x7f130091

    if-eqz p1, :cond_2

    .line 1137
    iget-object p1, p0, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    .line 3004
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v2, "send_sms_attempt_2_failure_load"

    invoke-interface {p1, v2, v1}, Lo/setThumbResource;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1138
    iget-object p1, p0, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    .line 3036
    iget-object p1, p1, Lo/isLayoutHierarchical;->ICustomTabsCallback:Lo/setActive;

    .line 1138
    new-instance v9, Lo/performAccessibilityActionForItem$extraCallback;

    .line 1139
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .line 1140
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130090

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    .line 1141
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13008e

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    .line 1142
    new-instance v0, Lo/isLayoutHierarchical$onTransact$4;

    invoke-direct {v0, p0}, Lo/isLayoutHierarchical$onTransact$4;-><init>(Lo/isLayoutHierarchical$onTransact;)V

    move-object v5, v0

    check-cast v5, Lo/getServerTime;

    .line 1147
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13008d

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    .line 1148
    new-instance v0, Lo/isLayoutHierarchical$onTransact$3;

    invoke-direct {v0, p0}, Lo/isLayoutHierarchical$onTransact$3;-><init>(Lo/isLayoutHierarchical$onTransact;)V

    move-object v7, v0

    check-cast v7, Lo/getServerTime;

    const v8, 0x7f0802ea

    move-object v1, v9

    .line 1138
    invoke-direct/range {v1 .. v8}, Lo/performAccessibilityActionForItem$extraCallback;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lo/getServerTime;Ljava/lang/CharSequence;Lo/getServerTime;I)V

    invoke-virtual {p1, v9}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_0

    .line 1155
    :cond_2
    iget-object p1, p0, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    .line 4004
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v2, "send_sms_attempt_1_failure_load"

    invoke-interface {p1, v2, v1}, Lo/setThumbResource;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1156
    iget-object p1, p0, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    .line 4036
    iget-object p1, p1, Lo/isLayoutHierarchical;->ICustomTabsCallback:Lo/setActive;

    .line 1156
    new-instance v9, Lo/performAccessibilityActionForItem$extraCallback;

    .line 1157
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .line 1158
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13008f

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    .line 1159
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13008c

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    .line 1160
    new-instance v0, Lo/isLayoutHierarchical$onTransact$5;

    invoke-direct {v0, p0}, Lo/isLayoutHierarchical$onTransact$5;-><init>(Lo/isLayoutHierarchical$onTransact;)V

    move-object v5, v0

    check-cast v5, Lo/getServerTime;

    .line 1167
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13008b

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    .line 1168
    new-instance v0, Lo/isLayoutHierarchical$onTransact$1;

    invoke-direct {v0, p0}, Lo/isLayoutHierarchical$onTransact$1;-><init>(Lo/isLayoutHierarchical$onTransact;)V

    move-object v7, v0

    check-cast v7, Lo/getServerTime;

    const v8, 0x7f0802ea

    move-object v1, v9

    .line 1156
    invoke-direct/range {v1 .. v8}, Lo/performAccessibilityActionForItem$extraCallback;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lo/getServerTime;Ljava/lang/CharSequence;Lo/getServerTime;I)V

    invoke-virtual {p1, v9}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1174
    iget-object p1, p0, Lo/isLayoutHierarchical$onTransact;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    invoke-static {p1}, Lo/isLayoutHierarchical;->ICustomTabsCallback$Stub(Lo/isLayoutHierarchical;)V

    .line 30
    :cond_3
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
