.class abstract Lo/unregisterCallbackListener$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/unregisterCallbackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:I


# direct methods
.method constructor <init>(ILjava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4085
    invoke-direct {p0, p1, p2, v0, p3}, Lo/unregisterCallbackListener$onNavigationEvent;-><init>(ILjava/lang/Class;II)V

    return-void
.end method

.method constructor <init>(ILjava/lang/Class;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;II)V"
        }
    .end annotation

    .line 4090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4091
    iput p1, p0, Lo/unregisterCallbackListener$onNavigationEvent;->ICustomTabsCallback:I

    .line 4092
    iput-object p2, p0, Lo/unregisterCallbackListener$onNavigationEvent;->extraCallback:Ljava/lang/Class;

    .line 4093
    iput p4, p0, Lo/unregisterCallbackListener$onNavigationEvent;->onMessageChannelReady:I

    return-void
.end method

.method private onMessageChannelReady()Z
    .locals 2

    .line 4127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onPostMessage()Z
    .locals 2

    .line 4123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lo/unregisterCallbackListener$onNavigationEvent;->onMessageChannelReady:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method ICustomTabsCallback(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 4112
    invoke-direct {p0}, Lo/unregisterCallbackListener$onNavigationEvent;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4113
    invoke-virtual {p0, p1}, Lo/unregisterCallbackListener$onNavigationEvent;->onMessageChannelReady(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4114
    :cond_0
    invoke-direct {p0}, Lo/unregisterCallbackListener$onNavigationEvent;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4115
    iget v0, p0, Lo/unregisterCallbackListener$onNavigationEvent;->ICustomTabsCallback:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 4116
    iget-object v0, p0, Lo/unregisterCallbackListener$onNavigationEvent;->extraCallback:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 4131
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method extraCallback(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .line 4097
    invoke-direct {p0}, Lo/unregisterCallbackListener$onNavigationEvent;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4098
    invoke-virtual {p0, p1, p2}, Lo/unregisterCallbackListener$onNavigationEvent;->onMessageChannelReady(Landroid/view/View;Ljava/lang/Object;)V

    return-void

    .line 4099
    :cond_0
    invoke-direct {p0}, Lo/unregisterCallbackListener$onNavigationEvent;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lo/unregisterCallbackListener$onNavigationEvent;->ICustomTabsCallback(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lo/unregisterCallbackListener$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4100
    invoke-static {p1}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;)Lo/onSessionDestroyed;

    .line 4101
    iget v0, p0, Lo/unregisterCallbackListener$onNavigationEvent;->ICustomTabsCallback:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 4105
    invoke-static {p1, p2}, Lo/unregisterCallbackListener;->onTransact(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method abstract onMessageChannelReady(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method onMessageChannelReady(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4138
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    .line 4139
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_1
    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method
