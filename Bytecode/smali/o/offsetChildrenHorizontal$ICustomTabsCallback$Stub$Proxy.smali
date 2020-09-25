.class final Lo/offsetChildrenHorizontal$ICustomTabsCallback$Stub$Proxy;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/offsetChildrenHorizontal;->onNavigationEvent()V
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
.field private synthetic onPostMessage:Lo/offsetChildrenHorizontal;


# direct methods
.method constructor <init>(Lo/offsetChildrenHorizontal;)V
    .locals 0

    iput-object p1, p0, Lo/offsetChildrenHorizontal$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/offsetChildrenHorizontal;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 68
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 1175
    iget-object v1, p0, Lo/offsetChildrenHorizontal$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/offsetChildrenHorizontal;

    invoke-static {v1}, Lo/offsetChildrenHorizontal;->onNavigationEvent(Lo/offsetChildrenHorizontal;)Lo/evictionCount;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/evictionCount;->onMessageChannelReady()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "time_spent"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const-string v1, "pairs"

    .line 1174
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1176
    iget-object p1, p0, Lo/offsetChildrenHorizontal$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/offsetChildrenHorizontal;

    invoke-static {p1}, Lo/offsetChildrenHorizontal;->extraCallback(Lo/offsetChildrenHorizontal;)Lo/onChildAttachedToWindow;

    move-result-object p1

    invoke-virtual {p1}, Lo/onChildAttachedToWindow;->onPostMessage()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo p1, "spin_wheel_cta_click"

    .line 1173
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1178
    iget-object p1, p0, Lo/offsetChildrenHorizontal$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/offsetChildrenHorizontal;

    sget-object v0, Lo/onChildAttachedToWindow$onPostMessage$onTransact;->onNavigationEvent:Lo/onChildAttachedToWindow$onPostMessage$onTransact;

    check-cast v0, Lo/onChildAttachedToWindow$onPostMessage;

    invoke-static {p1, v0}, Lo/offsetChildrenHorizontal;->ICustomTabsCallback(Lo/offsetChildrenHorizontal;Lo/onChildAttachedToWindow$onPostMessage;)V

    .line 68
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
