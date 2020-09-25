.class public final Lo/FirebaseCrashlyticsNdk$onPostMessage;
.super Lo/FirebaseCrashlyticsNdk$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseCrashlyticsNdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;
    }
.end annotation


# instance fields
.field final extraCallback:I

.field private final onMessageChannelReady:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/lang/String;Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getFilesForSession$extraCallback;",
            ">;I",
            "Ljava/lang/String;",
            "Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 359
    invoke-direct {p0, p1, p3, p4, v0}, Lo/FirebaseCrashlyticsNdk$extraCallback;-><init>(Ljava/util/List;Ljava/lang/String;Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;Z)V

    .line 360
    iput p2, p0, Lo/FirebaseCrashlyticsNdk$onPostMessage;->extraCallback:I

    .line 361
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lo/FirebaseCrashlyticsNdk$onPostMessage;->onMessageChannelReady:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static extraCallback(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 4

    .line 407
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAccessibilityDelegate"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 408
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 409
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$AccessibilityDelegate;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MixpanelAPI.ViewVisitor"

    const-string v1, "getAccessibilityDelegate threw an exception when called."

    .line 415
    invoke-static {v0, v1, p0}, Lo/TrimmedThrowableData;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback(Landroid/view/View;)V
    .locals 0

    .line 357
    invoke-super {p0, p1}, Lo/FirebaseCrashlyticsNdk$extraCallback;->ICustomTabsCallback(Landroid/view/View;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 4

    .line 366
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$onPostMessage;->onMessageChannelReady:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 367
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 368
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;

    .line 369
    invoke-static {v2}, Lo/FirebaseCrashlyticsNdk$onPostMessage;->extraCallback(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 1427
    iget-object v1, v1, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;->extraCallback:Landroid/view/View$AccessibilityDelegate;

    .line 371
    invoke-virtual {v2, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    .line 372
    :cond_1
    instance-of v2, v3, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;

    if-eqz v2, :cond_0

    .line 373
    check-cast v3, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;

    .line 1441
    :goto_1
    iget-object v2, v3, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;->extraCallback:Landroid/view/View$AccessibilityDelegate;

    if-ne v2, v1, :cond_2

    .line 2427
    iget-object v1, v1, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;->extraCallback:Landroid/view/View$AccessibilityDelegate;

    .line 1442
    iput-object v1, v3, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;->extraCallback:Landroid/view/View$AccessibilityDelegate;

    goto :goto_0

    .line 1443
    :cond_2
    iget-object v2, v3, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;->extraCallback:Landroid/view/View$AccessibilityDelegate;

    instance-of v2, v2, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;

    if-eqz v2, :cond_0

    .line 1444
    iget-object v2, v3, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;->extraCallback:Landroid/view/View$AccessibilityDelegate;

    move-object v3, v2

    check-cast v3, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;

    goto :goto_1

    .line 380
    :cond_3
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$onPostMessage;->onMessageChannelReady:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;)V
    .locals 4

    .line 385
    invoke-static {p1}, Lo/FirebaseCrashlyticsNdk$onPostMessage;->extraCallback(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    .line 386
    instance-of v1, v0, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;

    if-eqz v1, :cond_2

    .line 387
    move-object v1, v0

    check-cast v1, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;

    .line 2579
    iget-object v2, p0, Lo/FirebaseCrashlyticsNdk$extraCallback;->onNavigationEvent:Ljava/lang/String;

    .line 3431
    :goto_0
    iget-object v3, v1, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;->onPostMessage:Lo/FirebaseCrashlyticsNdk$onPostMessage;

    .line 3579
    iget-object v3, v3, Lo/FirebaseCrashlyticsNdk$extraCallback;->onNavigationEvent:Ljava/lang/String;

    if-ne v3, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 3433
    :cond_0
    iget-object v3, v1, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;->extraCallback:Landroid/view/View$AccessibilityDelegate;

    instance-of v3, v3, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;

    if-eqz v3, :cond_1

    .line 3434
    iget-object v1, v1, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;->extraCallback:Landroid/view/View$AccessibilityDelegate;

    check-cast v1, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 394
    :cond_2
    new-instance v1, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;

    invoke-direct {v1, p0, v0}, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;-><init>(Lo/FirebaseCrashlyticsNdk$onPostMessage;Landroid/view/View$AccessibilityDelegate;)V

    .line 395
    invoke-virtual {p1, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 396
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$onPostMessage;->onMessageChannelReady:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
