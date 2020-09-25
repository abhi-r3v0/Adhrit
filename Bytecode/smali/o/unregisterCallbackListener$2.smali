.class Lo/unregisterCallbackListener$2;
.super Lo/unregisterCallbackListener$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/unregisterCallbackListener;->onPostMessage()Lo/unregisterCallbackListener$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/unregisterCallbackListener$onNavigationEvent<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/Class;I)V
    .locals 0

    .line 3928
    invoke-direct {p0, p1, p2, p3}, Lo/unregisterCallbackListener$onNavigationEvent;-><init>(ILjava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method ICustomTabsCallback(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 0

    .line 3944
    invoke-virtual {p0, p1, p2}, Lo/unregisterCallbackListener$2;->onMessageChannelReady(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method bridge synthetic ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 3928
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lo/unregisterCallbackListener$2;->ICustomTabsCallback(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method extraCallback(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 0

    .line 3933
    invoke-virtual {p1}, Landroid/view/View;->isScreenReaderFocusable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method extraCallback(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 0

    .line 3939
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScreenReaderFocusable(Z)V

    return-void
.end method

.method synthetic onMessageChannelReady(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    .line 3928
    invoke-virtual {p0, p1}, Lo/unregisterCallbackListener$2;->extraCallback(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method synthetic onMessageChannelReady(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 3928
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lo/unregisterCallbackListener$2;->extraCallback(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method
