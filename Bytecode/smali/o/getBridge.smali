.class public final Lo/getBridge;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fR1\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@@X\u0087\u008e\u0002\u00a2\u0006\u0018\n\u0004\u0008\u000b\u0010\u000c\u0012\u0004\u0008\u0006\u0010\u0002\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/auth/internals/AuthState;",
        "",
        "()V",
        "<set-?>",
        "",
        "currentState",
        "currentState$annotations",
        "getCurrentState",
        "()I",
        "setCurrentState$auth_release",
        "(I)V",
        "currentState$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "stateChangeListenerList",
        "",
        "Lcom/dreamplug/auth/helpers/AuthStateChangeListener;",
        "addStateChangeListener",
        "",
        "stateChangeListener",
        "removeStateChangeListener",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static synthetic ICustomTabsCallback:[Lo/applyUserOverwrite;

.field private static final extraCallback:Lo/resolveScalarDeferredValue;

.field private static final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/instantiateReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/getBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/applyUserOverwrite;

    new-instance v1, Lo/access$2802;

    const-class v2, Lo/getBridge;

    invoke-static {v2}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v2

    const-string v3, "currentState"

    const-string v4, "getCurrentState()I"

    invoke-direct {v1, v2, v3, v4}, Lo/access$2802;-><init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/applyEmulatorSettings;->onNavigationEvent(Lo/stopListening;)Lo/getCompleteView;

    move-result-object v1

    check-cast v1, Lo/applyUserOverwrite;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/getBridge;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    .line 8
    new-instance v0, Lo/getBridge;

    invoke-direct {v0}, Lo/getBridge;-><init>()V

    sput-object v0, Lo/getBridge;->onPostMessage:Lo/getBridge;

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lo/getBridge;->onMessageChannelReady:Ljava/util/List;

    .line 13
    sget-object v0, Lo/generateServerValues;->ICustomTabsCallback:Lo/generateServerValues;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 31
    new-instance v1, Lo/getBridge$onNavigationEvent;

    invoke-direct {v1, v0}, Lo/getBridge$onNavigationEvent;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lo/resolveScalarDeferredValue;

    .line 33
    sput-object v1, Lo/getBridge;->extraCallback:Lo/resolveScalarDeferredValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final ICustomTabsCallback()I
    .locals 3

    sget-object v0, Lo/getBridge;->extraCallback:Lo/resolveScalarDeferredValue;

    sget-object v1, Lo/getBridge;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lo/resolveScalarDeferredValue;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic onNavigationEvent()Ljava/util/List;
    .locals 1

    .line 8
    sget-object v0, Lo/getBridge;->onMessageChannelReady:Ljava/util/List;

    return-object v0
.end method

.method public static onNavigationEvent(Lo/instantiateReceiver;)V
    .locals 3

    const-string/jumbo v0, "stateChangeListener"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lo/getBridge;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    sget-object v0, Lo/getBridge;->extraCallback:Lo/resolveScalarDeferredValue;

    sget-object v1, Lo/getBridge;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lo/resolveScalarDeferredValue;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 22
    invoke-interface {p0, v0}, Lo/instantiateReceiver;->ICustomTabsCallback(I)V

    .line 23
    sget-object v0, Lo/getBridge;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final onPostMessage(I)V
    .locals 3

    sget-object v0, Lo/getBridge;->extraCallback:Lo/resolveScalarDeferredValue;

    sget-object v1, Lo/getBridge;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lo/resolveScalarDeferredValue;->ICustomTabsCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    return-void
.end method

.method public static onPostMessage(Lo/instantiateReceiver;)V
    .locals 1

    const-string/jumbo v0, "stateChangeListener"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lo/getBridge;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
