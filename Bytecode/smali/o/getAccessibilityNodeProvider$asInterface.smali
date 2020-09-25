.class final Lo/getAccessibilityNodeProvider$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAccessibilityNodeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/getAccessibilityNodeProvider$asInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getAccessibilityNodeProvider$asInterface;

    invoke-direct {v0}, Lo/getAccessibilityNodeProvider$asInterface;-><init>()V

    sput-object v0, Lo/getAccessibilityNodeProvider$asInterface;->onMessageChannelReady:Lo/getAccessibilityNodeProvider$asInterface;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 120
    sget-object v0, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    invoke-static {v0}, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback(Lo/getAccessibilityNodeProvider;)Lo/sendAccessibilityEventUnchecked;

    move-result-object v0

    .line 1098
    iget-object v0, v0, Lo/sendAccessibilityEventUnchecked;->onMessageChannelReady:Lcom/dreamplug/batcher/database/BatcherDataBase;

    invoke-virtual {v0}, Lcom/dreamplug/batcher/database/BatcherDataBase;->onTransact()Lo/performAccessibilityAction;

    move-result-object v0

    invoke-virtual {v0}, Lo/performAccessibilityAction;->onNavigationEvent()Ljava/util/List;

    move-result-object v0

    .line 120
    check-cast v0, Ljava/lang/Iterable;

    .line 141
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    sget-object v2, Lo/getAccessibilityNodeProvider;->ICustomTabsCallback:Lo/getAccessibilityNodeProvider;

    invoke-static {v2, v1}, Lo/getAccessibilityNodeProvider;->onNavigationEvent(Lo/getAccessibilityNodeProvider;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
