.class public final Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;
.super Lo/FirebaseCrashlyticsNdk$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseCrashlyticsNdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FirebaseCrashlyticsNdk$onMessageChannelReady$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/TextView;",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getFilesForSession$extraCallback;",
            ">;",
            "Ljava/lang/String;",
            "Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 474
    invoke-direct {p0, p1, p2, p3, v0}, Lo/FirebaseCrashlyticsNdk$extraCallback;-><init>(Ljava/util/List;Ljava/lang/String;Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;Z)V

    .line 475
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback(Landroid/view/View;)V
    .locals 0

    .line 472
    invoke-super {p0, p1}, Lo/FirebaseCrashlyticsNdk$extraCallback;->ICustomTabsCallback(Landroid/view/View;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 3

    .line 480
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 481
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 482
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 483
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;)V
    .locals 2

    .line 491
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 492
    check-cast p1, Landroid/widget/TextView;

    .line 493
    new-instance v0, Lo/FirebaseCrashlyticsNdk$onMessageChannelReady$ICustomTabsCallback;

    invoke-direct {v0, p0, p1}, Lo/FirebaseCrashlyticsNdk$onMessageChannelReady$ICustomTabsCallback;-><init>(Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;Landroid/view/View;)V

    .line 494
    iget-object v1, p0, Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 498
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 499
    iget-object v1, p0, Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
