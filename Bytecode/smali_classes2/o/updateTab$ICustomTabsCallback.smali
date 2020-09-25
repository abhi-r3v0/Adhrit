.class final Lo/updateTab$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateTab;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/isInputMethodNotNeeded;",
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
        "<no name provided>",
        "",
        "instrument",
        "Lcom/cred/pay/repository/models/Instrument;",
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
.field private synthetic ICustomTabsCallback:Ljava/util/ArrayList;

.field private synthetic asInterface:Ljava/util/ArrayList;

.field private synthetic extraCallback:Ljava/util/ArrayList;

.field private synthetic onMessageChannelReady:Ljava/util/HashMap;

.field private synthetic onNavigationEvent:Ljava/util/ArrayList;

.field private synthetic onPostMessage:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lo/updateTab$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/HashMap;

    iput-object p2, p0, Lo/updateTab$ICustomTabsCallback;->onPostMessage:Ljava/util/HashMap;

    iput-object p3, p0, Lo/updateTab$ICustomTabsCallback;->extraCallback:Ljava/util/ArrayList;

    iput-object p4, p0, Lo/updateTab$ICustomTabsCallback;->onNavigationEvent:Ljava/util/ArrayList;

    iput-object p5, p0, Lo/updateTab$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/ArrayList;

    iput-object p6, p0, Lo/updateTab$ICustomTabsCallback;->asInterface:Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 18
    check-cast p1, Lo/isInputMethodNotNeeded;

    const-string v0, "instrument"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2008
    iget-object v0, p1, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, v0, Lcom/cred/pay/repository/models/Status;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1153
    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_5

    .line 1154
    iget-object v0, p0, Lo/updateTab$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v4

    .line 3008
    iget-object v5, p1, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    if-eqz v5, :cond_3

    .line 3044
    iget-object v5, v5, Lcom/cred/pay/repository/models/Status;->onNavigationEvent:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, v1

    :goto_3
    if-nez v5, :cond_4

    .line 1154
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4008
    :cond_5
    iget-object v0, p1, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    if-eqz v0, :cond_6

    .line 4042
    iget-object v0, v0, Lcom/cred/pay/repository/models/Status;->onPostMessage:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v0, v1

    .line 1156
    :goto_4
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    if-nez v2, :cond_b

    .line 1157
    iget-object v0, p0, Lo/updateTab$ICustomTabsCallback;->onPostMessage:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v2

    .line 5008
    iget-object v3, p1, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    if-eqz v3, :cond_9

    .line 5042
    iget-object v3, v3, Lcom/cred/pay/repository/models/Status;->onPostMessage:Ljava/lang/String;

    goto :goto_5

    :cond_9
    move-object v3, v1

    :goto_5
    if-nez v3, :cond_a

    .line 1157
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_a
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    :cond_b
    instance-of v0, p1, Lcom/cred/pay/repository/models/CredUpiInstrument;

    if-eqz v0, :cond_d

    .line 1161
    iget-object v0, p0, Lo/updateTab$ICustomTabsCallback;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1162
    move-object v0, p1

    check-cast v0, Lcom/cred/pay/repository/models/CredUpiInstrument;

    .line 5269
    iget-object v0, v0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v0, :cond_c

    .line 6048
    iget-object v0, v0, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v0, :cond_c

    .line 6069
    iget-object v1, v0, Lcom/cred/pay/repository/models/Account;->onTransact:Ljava/lang/String;

    :cond_c
    const-string v0, "true"

    .line 1162
    invoke-static {v1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1163
    iget-object v0, p0, Lo/updateTab$ICustomTabsCallback;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1166
    :cond_d
    instance-of v0, p1, Lcom/cred/pay/repository/models/CardInstrument;

    if-eqz v0, :cond_e

    .line 1167
    iget-object v0, p0, Lo/updateTab$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1169
    :cond_e
    instance-of v0, p1, Lcom/cred/pay/repository/models/NetBankingInstrument;

    if-eqz v0, :cond_f

    .line 1170
    iget-object v0, p0, Lo/updateTab$ICustomTabsCallback;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_f
    :goto_6
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
