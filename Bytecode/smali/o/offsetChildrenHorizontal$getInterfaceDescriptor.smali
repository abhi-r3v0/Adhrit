.class final Lo/offsetChildrenHorizontal$getInterfaceDescriptor;
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
.field private synthetic onNavigationEvent:Lo/offsetChildrenHorizontal;


# direct methods
.method constructor <init>(Lo/offsetChildrenHorizontal;)V
    .locals 0

    iput-object p1, p0, Lo/offsetChildrenHorizontal$getInterfaceDescriptor;->onNavigationEvent:Lo/offsetChildrenHorizontal;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 68
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    iget-object p1, p0, Lo/offsetChildrenHorizontal$getInterfaceDescriptor;->onNavigationEvent:Lo/offsetChildrenHorizontal;

    const-string/jumbo v0, "view_details"

    invoke-static {p1, v0}, Lo/offsetChildrenHorizontal;->onNavigationEvent(Lo/offsetChildrenHorizontal;Ljava/lang/String;)V

    .line 1166
    iget-object p1, p0, Lo/offsetChildrenHorizontal$getInterfaceDescriptor;->onNavigationEvent:Lo/offsetChildrenHorizontal;

    invoke-static {p1}, Lo/offsetChildrenHorizontal;->extraCallback(Lo/offsetChildrenHorizontal;)Lo/onChildAttachedToWindow;

    move-result-object p1

    .line 2039
    iget-object p1, p1, Lo/onChildAttachedToWindow;->ICustomTabsCallback$Stub:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1166
    :goto_0
    check-cast p1, Lo/onChildAttachedToWindow$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 3155
    iget-object p1, p1, Lo/onChildAttachedToWindow$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1167
    iget-object v0, p0, Lo/offsetChildrenHorizontal$getInterfaceDescriptor;->onNavigationEvent:Lo/offsetChildrenHorizontal;

    invoke-static {v0}, Lo/offsetChildrenHorizontal;->onPostMessage(Lo/offsetChildrenHorizontal;)Lo/getMoveDuration;

    move-result-object v0

    const-string/jumbo v1, "spin_the_wheel"

    invoke-static {v0, p1, v1}, Lo/getMoveDuration;->onNavigationEvent(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
