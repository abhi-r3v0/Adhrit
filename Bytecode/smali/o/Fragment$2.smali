.class public abstract Lo/Fragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse;",
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0006H&J\u001c\u0010\n\u001a\u00020\u00082\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/CredProtectResponseCallback;",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "()V",
        "createFallbackResponse",
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;",
        "onFailure",
        "",
        "fallbackResponse",
        "onResponse",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "onSuccess",
        "response",
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;
    .locals 15

    .line 29
    new-instance v8, Lcom/dreamplug/fabrik/ui/cm/models/Image;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/dreamplug/fabrik/ui/cm/models/Image;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    new-instance v0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f13013a

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$this$toEncodedString"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2005
    new-instance v3, Lo/getTargetScrollPosition;

    invoke-direct {v3, v1}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-direct {v0, v8, v3}, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;-><init>(Lcom/dreamplug/fabrik/ui/cm/models/Image;Lo/getTargetScrollPosition;)V

    .line 31
    new-instance v1, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;

    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f13013b

    invoke-static {v3}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3005
    new-instance v4, Lo/getTargetScrollPosition;

    invoke-direct {v4, v3}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-direct {v1, v8, v4}, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;-><init>(Lcom/dreamplug/fabrik/ui/cm/models/Image;Lo/getTargetScrollPosition;)V

    .line 32
    new-instance v3, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;

    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v4, 0x7f13013c

    invoke-static {v4}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4005
    new-instance v2, Lo/getTargetScrollPosition;

    invoke-direct {v2, v4}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-direct {v3, v8, v2}, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;-><init>(Lcom/dreamplug/fabrik/ui/cm/models/Image;Lo/getTargetScrollPosition;)V

    .line 34
    new-instance v2, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "gmail"

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    new-instance v4, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const-string v0, "elements"

    invoke-static {v5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$asList"

    .line 4076
    invoke-static {v5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5013
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ArraysUtilJVM.asList(this)"

    .line 4129
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130139

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v4, v0, v2, v1}, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;-><init>(Ljava/util/List;Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public abstract onNavigationEvent(Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;)V
.end method

.method public abstract onPostMessage(Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;)V
.end method

.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_4

    .line 15
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 15
    check-cast p1, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1013
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse;->ICustomTabsCallback:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 16
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;

    .line 1016
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;->onMessageChannelReady:Ljava/lang/String;

    const-string v3, "cp_flow"

    .line 16
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;

    :cond_2
    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p0, v0}, Lo/Fragment$2;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;)V

    return-void

    .line 20
    :cond_3
    invoke-static {}, Lo/Fragment$2;->ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Fragment$2;->onPostMessage(Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;)V

    return-void

    .line 23
    :cond_4
    invoke-static {}, Lo/Fragment$2;->ICustomTabsCallback()Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Fragment$2;->onPostMessage(Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;)V

    return-void
.end method
