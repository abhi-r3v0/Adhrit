.class final Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setStateAfterAnimating$onNavigationEvent;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/postEvents;",
        "Lo/nextTransactionOrder<",
        "Lo/isFromUser;",
        "Lo/setSessionPersistenceKey<",
        "-",
        "Lo/addWrites;",
        ">;",
        "Ljava/lang/Object;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/isFromUser;

.field private synthetic extraCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;

.field private synthetic onMessageChannelReady:Lo/setStateAfterAnimating$onNavigationEvent;

.field private onPostMessage:I


# direct methods
.method constructor <init>(Lo/setStateAfterAnimating$onNavigationEvent;Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;->onMessageChannelReady:Lo/setStateAfterAnimating$onNavigationEvent;

    iput-object p2, p0, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;

    invoke-direct {p0, p3}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 2054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 101
    iget v1, p0, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;->onPostMessage:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    .line 3126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 105
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2126
    :cond_2
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_3b

    .line 102
    iget-object p1, p0, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;->onMessageChannelReady:Lo/setStateAfterAnimating$onNavigationEvent;

    iget-object p1, p1, Lo/setStateAfterAnimating$onNavigationEvent;->extraCallback:Lo/setStateAfterAnimating;

    .line 3096
    iget-object p1, p1, Lo/setStateAfterAnimating;->INotificationSideChannel$Stub:Lo/getThreadInitializer;

    .line 102
    iput v2, p0, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;->onPostMessage:I

    invoke-interface {p1, p0}, Lo/getThreadInitializer;->onPostMessage(Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 103
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;->onMessageChannelReady:Lo/setStateAfterAnimating$onNavigationEvent;

    iget-object p1, p1, Lo/setStateAfterAnimating$onNavigationEvent;->extraCallback:Lo/setStateAfterAnimating;

    .line 4091
    iget-object p1, p1, Lo/setStateAfterAnimating;->INotificationSideChannel$Default:Lo/IMediaSession$Stub$Proxy;

    .line 5085
    iget-boolean v0, p1, Lo/IMediaSession$Stub$Proxy;->extraCallback:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 5086
    iput-boolean v1, p1, Lo/IMediaSession$Stub$Proxy;->extraCallback:Z

    .line 5087
    invoke-virtual {p1}, Lo/rewind;->onPostMessage()V

    .line 104
    :cond_4
    iget-object p1, p0, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;->onMessageChannelReady:Lo/setStateAfterAnimating$onNavigationEvent;

    iget-object p1, p1, Lo/setStateAfterAnimating$onNavigationEvent;->extraCallback:Lo/setStateAfterAnimating;

    iget-object v0, p0, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;

    const-string/jumbo v3, "response"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6016
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties;

    .line 6019
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties;->onPostMessage:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Data;

    .line 7016
    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties;

    .line 7019
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;

    .line 7023
    iget-object v5, v3, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Data;->extraCallback:Ljava/util/List;

    .line 5137
    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/dreamplug/fabrik/ui/control/AuthProvider;

    .line 7031
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/control/AuthProvider;->onMessageChannelReady:Ljava/util/List;

    .line 5138
    check-cast v8, Ljava/lang/Iterable;

    .line 5258
    instance-of v9, v8, Ljava/util/Collection;

    if-eqz v9, :cond_6

    move-object v9, v8

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 5259
    :cond_6
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dreamplug/fabrik/ui/control/SubProvider;

    .line 8027
    iget-object v10, v4, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;

    if-eqz v10, :cond_8

    .line 8034
    iget-object v10, v10, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;->onNavigationEvent:Ljava/lang/String;

    goto :goto_1

    :cond_8
    move-object v10, v7

    .line 8040
    :goto_1
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/control/SubProvider;->extraCallback:Ljava/lang/String;

    .line 5139
    invoke-static {v10, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v8, 0x1

    goto :goto_2

    :cond_9
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_5

    goto :goto_3

    :cond_a
    move-object v6, v7

    .line 5137
    :goto_3
    check-cast v6, Lcom/dreamplug/fabrik/ui/control/AuthProvider;

    if-nez v6, :cond_b

    .line 5141
    iget-object v6, p1, Lo/setStateAfterAnimating;->notify:Lcom/dreamplug/fabrik/ui/control/AuthProvider;

    :cond_b
    iput-object v6, p1, Lo/setStateAfterAnimating;->cancel:Lcom/dreamplug/fabrik/ui/control/AuthProvider;

    .line 5143
    iget-object v5, p1, Lo/setStateAfterAnimating;->cancel:Lcom/dreamplug/fabrik/ui/control/AuthProvider;

    .line 9031
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/control/AuthProvider;->onMessageChannelReady:Ljava/util/List;

    .line 5143
    check-cast v5, Ljava/lang/Iterable;

    .line 5261
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/dreamplug/fabrik/ui/control/SubProvider;

    .line 9040
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/control/SubProvider;->extraCallback:Ljava/lang/String;

    .line 10027
    iget-object v9, v4, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;

    if-eqz v9, :cond_d

    .line 10034
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;->onNavigationEvent:Ljava/lang/String;

    goto :goto_4

    :cond_d
    move-object v9, v7

    .line 5144
    :goto_4
    invoke-static {v8, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_5

    :cond_e
    move-object v6, v7

    .line 5262
    :goto_5
    check-cast v6, Lcom/dreamplug/fabrik/ui/control/SubProvider;

    if-nez v6, :cond_f

    .line 5145
    iget-object v6, p1, Lo/setStateAfterAnimating;->INotificationSideChannel:Lcom/dreamplug/fabrik/ui/control/SubProvider;

    :cond_f
    iput-object v6, p1, Lo/setStateAfterAnimating;->cancelAll:Lcom/dreamplug/fabrik/ui/control/SubProvider;

    .line 5147
    iget-object v5, p1, Lo/setStateAfterAnimating;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    .line 11016
    iget-object v6, v0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties;

    .line 11019
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties;->onPostMessage:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Data;

    .line 11023
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Data;->extraCallback:Ljava/util/List;

    .line 5147
    check-cast v6, Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5149
    iget-object v5, p1, Lo/setStateAfterAnimating;->onTransact:Lo/getMediaController;

    .line 12016
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties;

    .line 12019
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;

    .line 12027
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;->onPostMessage:Ljava/lang/String;

    .line 12090
    iget-object v6, v5, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    if-eq v0, v6, :cond_10

    .line 12091
    iput-object v0, v5, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 12092
    invoke-virtual {v5}, Lo/rewind;->onPostMessage()V

    .line 13027
    :cond_10
    iget-object v0, v4, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;

    const-string v5, ""

    if-eqz v0, :cond_16

    .line 14022
    iget-object v6, v3, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Data;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v6, :cond_16

    .line 5151
    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    if-ne v6, v2, :cond_16

    .line 5152
    iget-object v6, p1, Lo/setStateAfterAnimating;->asInterface:Lo/getMediaController;

    .line 14033
    iget-object v8, v0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;->extraCallback:Ljava/lang/String;

    .line 14090
    iget-object v9, v6, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    if-eq v8, v9, :cond_11

    .line 14091
    iput-object v8, v6, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 14092
    invoke-virtual {v6}, Lo/rewind;->onPostMessage()V

    .line 5153
    :cond_11
    iget-object v6, p1, Lo/setStateAfterAnimating;->ICustomTabsCallback:Lo/IMediaSession$Stub$Proxy;

    .line 15085
    iget-boolean v8, v6, Lo/IMediaSession$Stub$Proxy;->extraCallback:Z

    if-eq v2, v8, :cond_12

    .line 15086
    iput-boolean v2, v6, Lo/IMediaSession$Stub$Proxy;->extraCallback:Z

    .line 15087
    invoke-virtual {v6}, Lo/rewind;->onPostMessage()V

    .line 16033
    :cond_12
    iget-object v6, v0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;->ICustomTabsCallback:Ljava/lang/String;

    .line 5154
    iput-object v6, p1, Lo/setStateAfterAnimating;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 17033
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v0, :cond_13

    move-object v0, v5

    .line 17189
    :cond_13
    iget-object v6, p1, Lo/setStateAfterAnimating;->INotificationSideChannel$Stub$Proxy:Landroid/app/Application;

    check-cast v6, Landroid/content/Context;

    .line 17267
    new-instance v8, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-direct {v8, v6}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    .line 17190
    check-cast v0, Ljava/lang/CharSequence;

    const/16 v6, 0x10

    const-string/jumbo v9, "span"

    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18104
    new-instance v10, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v10, v6, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-static {v0, v10}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 17190
    invoke-virtual {v8, v0}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 19047
    iget-object v6, v8, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    const-string v10, "$this$getCompatColor"

    .line 17190
    invoke-static {v6, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v11, 0x7f0600b2

    .line 20019
    invoke-static {v6, v11}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v6

    .line 17190
    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20112
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v0, v11}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 17190
    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21059
    iget-object v6, v8, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, "  "

    .line 17191
    invoke-virtual {v8, v0}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 17192
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130185

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v6, 0xd

    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21104
    new-instance v11, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v11, v6, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-static {v0, v11}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 17192
    invoke-virtual {v8, v0}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onPostMessage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 22047
    iget-object v6, v8, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    .line 17193
    invoke-static {v6, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v10, 0x7f06003d

    .line 23019
    invoke-static {v6, v10}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v6

    .line 17192
    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23112
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v10, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v0, v10}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 24047
    iget-object v6, v8, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent:Landroid/content/Context;

    .line 17193
    invoke-static {v6}, Lo/extraCallback;->onPostMessage(Landroid/content/Context;)Lo/findFirstCompletelyVisibleItemPositions;

    move-result-object v6

    .line 17192
    invoke-static {v0, v6}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24059
    iget-object v6, v8, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24156
    iget-object v0, v8, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast v0, Ljava/lang/CharSequence;

    .line 17189
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 17196
    iget-object v0, p1, Lo/setStateAfterAnimating;->onRelationshipValidationResult:Lo/getMediaController;

    .line 25090
    iget-object v8, v0, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    if-eq v6, v8, :cond_14

    .line 25091
    iput-object v6, v0, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 25092
    invoke-virtual {v0}, Lo/rewind;->onPostMessage()V

    .line 5156
    :cond_14
    iget-object v0, p1, Lo/setStateAfterAnimating;->extraCommand:Lo/IMediaSession$Stub;

    const-string v6, "#f0f0f0"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 26087
    iget v8, v0, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    if-eq v6, v8, :cond_16

    .line 26088
    iput v6, v0, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    .line 26089
    invoke-virtual {v0}, Lo/rewind;->onPostMessage()V

    goto :goto_6

    .line 17192
    :cond_15
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5159
    :cond_16
    :goto_6
    iget-object v0, p1, Lo/setStateAfterAnimating;->cancel:Lcom/dreamplug/fabrik/ui/control/AuthProvider;

    .line 27029
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/control/AuthProvider;->onNavigationEvent:Ljava/lang/String;

    .line 5159
    invoke-virtual {p1, v0}, Lo/setStateAfterAnimating;->extraCallback(Ljava/lang/String;)V

    .line 28022
    iget-object v0, v3, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Data;->ICustomTabsCallback:Ljava/util/List;

    .line 5161
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_7

    :cond_17
    const/4 v0, 0x0

    goto :goto_8

    :cond_18
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_32

    .line 29022
    iget-object v0, v3, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Data;->ICustomTabsCallback:Ljava/util/List;

    .line 29235
    iget-object v6, p1, Lo/setStateAfterAnimating;->ICustomTabsService:Lo/getMediaController;

    invoke-static {v0}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    .line 30090
    iget-object v9, v6, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    if-eq v8, v9, :cond_19

    .line 30091
    iput-object v8, v6, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 30092
    invoke-virtual {v6}, Lo/rewind;->onPostMessage()V

    .line 29236
    :cond_19
    iget-object v6, p1, Lo/setStateAfterAnimating;->newSession:Lo/getMediaController;

    const-string v8, "$this$getOrNull"

    invoke-static {v0, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$this$lastIndex"

    .line 30266
    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v2

    if-gt v2, v10, :cond_1a

    .line 30266
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    goto :goto_9

    :cond_1a
    move-object v10, v7

    .line 32090
    :goto_9
    iget-object v11, v6, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    if-eq v10, v11, :cond_1b

    .line 32091
    iput-object v10, v6, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 32092
    invoke-virtual {v6}, Lo/rewind;->onPostMessage()V

    .line 29237
    :cond_1b
    iget-object v6, p1, Lo/setStateAfterAnimating;->getInterfaceDescriptor:Lo/getMediaController;

    invoke-static {v0, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32266
    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v2

    const/4 v11, 0x2

    if-gt v11, v10, :cond_1c

    .line 32266
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    :cond_1c
    move-object v0, v7

    .line 34090
    :goto_a
    iget-object v10, v6, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    if-eq v0, v10, :cond_1d

    .line 34091
    iput-object v0, v6, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 34092
    invoke-virtual {v6}, Lo/rewind;->onPostMessage()V

    .line 35022
    :cond_1d
    iget-object v0, v3, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Data;->ICustomTabsCallback:Ljava/util/List;

    .line 35209
    iget-object v6, p1, Lo/setStateAfterAnimating;->warmup:Lo/IMediaSession$Stub;

    sget-object v10, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    const-string v10, "$this$firstOrNull"

    invoke-static {v0, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35243
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1e

    move-object v12, v7

    goto :goto_b

    :cond_1e
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 35209
    :goto_b
    check-cast v12, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v12, :cond_1f

    invoke-virtual {v12}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer_code()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_20

    :cond_1f
    move-object v12, v5

    :cond_20
    invoke-static {v12}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 36011
    invoke-static {v12, v1}, Lo/extraCallback;->extraCallback(Ljava/lang/String;I)I

    move-result v12

    .line 36087
    iget v13, v6, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    if-eq v12, v13, :cond_21

    .line 36088
    iput v12, v6, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    .line 36089
    invoke-virtual {v6}, Lo/rewind;->onPostMessage()V

    .line 35211
    :cond_21
    iget-object v6, p1, Lo/setStateAfterAnimating;->ICustomTabsCallback$Stub$Proxy:Lo/IMediaSession$Stub;

    sget-object v12, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {v0, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36266
    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v2

    if-gt v2, v12, :cond_22

    .line 36266
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    goto :goto_c

    :cond_22
    move-object v12, v7

    .line 35211
    :goto_c
    check-cast v12, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v12, :cond_23

    invoke-virtual {v12}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer_code()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_24

    :cond_23
    move-object v12, v5

    :cond_24
    invoke-static {v12}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 38011
    invoke-static {v12, v1}, Lo/extraCallback;->extraCallback(Ljava/lang/String;I)I

    move-result v12

    .line 38087
    iget v13, v6, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    if-eq v12, v13, :cond_25

    .line 38088
    iput v12, v6, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    .line 38089
    invoke-virtual {v6}, Lo/rewind;->onPostMessage()V

    .line 35213
    :cond_25
    iget-object v6, p1, Lo/setStateAfterAnimating;->updateVisuals:Lo/IMediaSession$Stub;

    sget-object v12, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {v0, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38266
    invoke-static {v0, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v2

    if-gt v11, v8, :cond_26

    .line 38266
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_d

    :cond_26
    move-object v8, v7

    .line 35213
    :goto_d
    check-cast v8, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v8, :cond_27

    invoke-virtual {v8}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer_code()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_28

    :cond_27
    move-object v8, v5

    :cond_28
    invoke-static {v8}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 40011
    invoke-static {v8, v1}, Lo/extraCallback;->extraCallback(Ljava/lang/String;I)I

    move-result v8

    .line 40087
    iget v9, v6, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    if-eq v8, v9, :cond_29

    .line 40088
    iput v8, v6, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    .line 40089
    invoke-virtual {v6}, Lo/rewind;->onPostMessage()V

    .line 35216
    :cond_29
    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    if-le v6, v2, :cond_2a

    .line 35217
    iget-object v0, p1, Lo/setStateAfterAnimating;->mayLaunchUrl:Lo/getMediaController;

    iget v5, p1, Lo/setStateAfterAnimating;->setDefaultImpl:I

    invoke-static {v5}, Lo/setStateAfterAnimating;->ICustomTabsCallback(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 41090
    iget-object v6, v0, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    if-eq v5, v6, :cond_2e

    .line 41091
    iput-object v5, v0, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 41092
    invoke-virtual {v0}, Lo/rewind;->onPostMessage()V

    goto :goto_10

    .line 35219
    :cond_2a
    sget-object v6, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->ICustomTabsCallback()Ljava/util/HashMap;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-static {v0, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41243
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2b

    move-object v0, v7

    goto :goto_e

    :cond_2b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 35219
    :goto_e
    check-cast v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer_code()Ljava/lang/String;

    move-result-object v7

    :cond_2c
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;

    if-eqz v0, :cond_2e

    .line 35220
    iget-object v0, v0, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->bgAssetId:Ljava/lang/String;

    if-nez v0, :cond_2d

    move-object v6, v5

    goto :goto_f

    :cond_2d
    move-object v6, v0

    .line 42021
    :goto_f
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "Resources.getSystem()"

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v5, 0x41800000    # 16.0f

    .line 42022
    invoke-static {v2, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 35221
    new-instance v0, Lo/setStateAfterAnimating$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/setStateAfterAnimating$onMessageChannelReady;-><init>(Lo/setStateAfterAnimating;)V

    move-object v11, v0

    check-cast v11, Lo/onDisconnectSetValue;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v9, "#b2b2b2"

    .line 42123
    invoke-static/range {v6 .. v11}, Lo/missCount;->onPostMessage(Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;Lo/onDisconnectSetValue;)V

    .line 35224
    iget-object v0, p1, Lo/setStateAfterAnimating;->getDefaultImpl:Lo/getMediaController;

    const/high16 v5, -0x1000000

    invoke-static {v5}, Lo/setStateAfterAnimating;->ICustomTabsCallback(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 43090
    iget-object v6, v0, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    if-eq v5, v6, :cond_2e

    .line 43091
    iput-object v5, v0, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 43092
    invoke-virtual {v0}, Lo/rewind;->onPostMessage()V

    .line 44022
    :cond_2e
    :goto_10
    iget-object v0, v3, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Data;->ICustomTabsCallback:Ljava/util/List;

    .line 5164
    check-cast v0, Ljava/lang/Iterable;

    .line 5263
    new-instance v5, Ljava/util/ArrayList;

    const-string v6, "$this$collectionSizeOrDefault"

    invoke-static {v0, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44039
    instance-of v6, v0, Ljava/util/Collection;

    if-eqz v6, :cond_2f

    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    goto :goto_11

    :cond_2f
    const/16 v6, 0xa

    .line 5263
    :goto_11
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 5264
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 5265
    check-cast v6, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    .line 5165
    invoke-virtual {v6}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_30

    const-string v6, "UNKNOWN"

    :cond_30
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 5266
    :cond_31
    check-cast v5, Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    const-string v0, "$this$toMutableList"

    .line 5166
    invoke-static {v5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/List;

    .line 5166
    iput-object v0, p1, Lo/setStateAfterAnimating;->IPostMessageService:Ljava/util/List;

    goto :goto_13

    .line 5169
    :cond_32
    iget-object v0, p1, Lo/setStateAfterAnimating;->onNavigationEvent:Lo/IMediaSession$Stub$Proxy;

    .line 45085
    iget-boolean v5, v0, Lo/IMediaSession$Stub$Proxy;->extraCallback:Z

    if-eq v2, v5, :cond_33

    .line 45086
    iput-boolean v2, v0, Lo/IMediaSession$Stub$Proxy;->extraCallback:Z

    .line 45087
    invoke-virtual {v0}, Lo/rewind;->onPostMessage()V

    .line 5170
    :cond_33
    invoke-virtual {p1}, Lo/setStateAfterAnimating;->ICustomTabsCallback()V

    .line 5173
    :goto_13
    iget-object v0, p1, Lo/setStateAfterAnimating;->cancel:Lcom/dreamplug/fabrik/ui/control/AuthProvider;

    .line 46029
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/control/AuthProvider;->onNavigationEvent:Ljava/lang/String;

    .line 5173
    sget-object v5, Lo/isPostponed;->onPostMessage:Lo/isPostponed;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_35

    if-nez v5, :cond_34

    const/4 v0, 0x1

    goto :goto_14

    :cond_34
    const/4 v0, 0x0

    goto :goto_14

    .line 46056
    :cond_35
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    const v5, 0x7f1302d2

    if-eqz v0, :cond_36

    .line 5174
    iget-object v0, p1, Lo/setStateAfterAnimating;->asBinder:Lo/getMediaController;

    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "Google"

    aput-object v6, v2, v1

    invoke-static {v5, v2}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 46090
    iget-object v5, v0, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    if-eq v2, v5, :cond_37

    .line 46091
    iput-object v2, v0, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 46092
    invoke-virtual {v0}, Lo/rewind;->onPostMessage()V

    goto :goto_15

    .line 5176
    :cond_36
    iget-object v0, p1, Lo/setStateAfterAnimating;->asBinder:Lo/getMediaController;

    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p1, Lo/setStateAfterAnimating;->cancelAll:Lcom/dreamplug/fabrik/ui/control/SubProvider;

    .line 47040
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/control/SubProvider;->extraCallback:Ljava/lang/String;

    .line 5176
    invoke-static {v6}, Lo/childWrites;->onTransact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-static {v5, v2}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 47090
    iget-object v5, v0, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    if-eq v2, v5, :cond_37

    .line 47091
    iput-object v2, v0, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 47092
    invoke-virtual {v0}, Lo/rewind;->onPostMessage()V

    .line 5179
    :cond_37
    :goto_15
    new-instance v0, Lo/hasVoiceSearch$onMessageChannelReady;

    new-instance v2, Lo/setHideReplaced;

    invoke-direct {v2}, Lo/setHideReplaced;-><init>()V

    .line 48019
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v5, "java.util.Collections.singletonList(element)"

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48026
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;->onMessageChannelReady:Ljava/util/List;

    .line 5179
    invoke-direct {v0, v2, v4}, Lo/hasVoiceSearch$onMessageChannelReady;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 49022
    iget-object v2, v3, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Data;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v2, :cond_38

    .line 5180
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_16

    :cond_38
    const/4 v2, 0x0

    .line 5181
    :goto_16
    iget-object v4, p1, Lo/setStateAfterAnimating;->cancelAll:Lcom/dreamplug/fabrik/ui/control/SubProvider;

    .line 5180
    new-instance v5, Lo/supportPostponeEnterTransition$onPostMessage;

    invoke-direct {v5, v2, v0, v4}, Lo/supportPostponeEnterTransition$onPostMessage;-><init>(ILo/hasVoiceSearch$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/control/SubProvider;)V

    .line 5182
    iget-object v0, p1, Lo/setStateAfterAnimating;->validateRelationship:Lo/setActive;

    invoke-virtual {v0, v5}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 5184
    iget-object p1, p1, Lo/setStateAfterAnimating;->postMessage:Lo/IMediaSession$Stub;

    .line 50022
    iget-object v0, v3, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Data;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v0, :cond_39

    .line 5184
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 50023
    :cond_39
    iget v0, p1, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    if-eq v1, v0, :cond_3a

    .line 50024
    iput v1, p1, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    .line 50025
    invoke-virtual {p1}, Lo/rewind;->onPostMessage()V

    .line 105
    :cond_3a
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 2126
    :cond_3b
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/setSessionPersistenceKey<",
            "*>;)",
            "Lo/setSessionPersistenceKey<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;

    iget-object v1, p0, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;->onMessageChannelReady:Lo/setStateAfterAnimating$onNavigationEvent;

    iget-object v2, p0, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;

    invoke-direct {v0, v1, v2, p2}, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;-><init>(Lo/setStateAfterAnimating$onNavigationEvent;Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;->ICustomTabsCallback:Lo/isFromUser;

    return-object v0
.end method
