.class Lo/unregisterCallbackListener$1;
.super Lo/unregisterCallbackListener$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/unregisterCallbackListener;->onNavigationEvent()Lo/unregisterCallbackListener$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/unregisterCallbackListener$onNavigationEvent<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/Class;II)V
    .locals 0

    .line 4000
    invoke-direct {p0, p1, p2, p3, p4}, Lo/unregisterCallbackListener$onNavigationEvent;-><init>(ILjava/lang/Class;II)V

    return-void
.end method


# virtual methods
.method synthetic ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 4000
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lo/unregisterCallbackListener$1;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method synthetic onMessageChannelReady(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    .line 4000
    invoke-virtual {p0, p1}, Lo/unregisterCallbackListener$1;->onNavigationEvent(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method onMessageChannelReady(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    .line 4011
    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method bridge synthetic onMessageChannelReady(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 4000
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lo/unregisterCallbackListener$1;->onMessageChannelReady(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method onNavigationEvent(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    .line 4005
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityPaneTitle()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 4016
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
