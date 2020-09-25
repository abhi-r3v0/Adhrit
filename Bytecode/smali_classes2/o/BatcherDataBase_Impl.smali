.class public final Lo/BatcherDataBase_Impl;
.super Ljava/lang/Object;


# instance fields
.field private ICustomTabsCallback:Z

.field private extraCallback:Z

.field private onMessageChannelReady:Z

.field private onNavigationEvent:Z

.field private onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/BatcherDataBase_Impl;)Z
    .locals 0

    iget-boolean p0, p0, Lo/BatcherDataBase_Impl;->extraCallback:Z

    return p0
.end method

.method static synthetic extraCallback(Lo/BatcherDataBase_Impl;)Z
    .locals 0

    iget-boolean p0, p0, Lo/BatcherDataBase_Impl;->ICustomTabsCallback:Z

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/BatcherDataBase_Impl;)Z
    .locals 0

    iget-boolean p0, p0, Lo/BatcherDataBase_Impl;->onMessageChannelReady:Z

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/BatcherDataBase_Impl;)Z
    .locals 0

    iget-boolean p0, p0, Lo/BatcherDataBase_Impl;->onNavigationEvent:Z

    return p0
.end method

.method static synthetic onPostMessage(Lo/BatcherDataBase_Impl;)Z
    .locals 0

    iget-boolean p0, p0, Lo/BatcherDataBase_Impl;->onPostMessage:Z

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Z)Lo/BatcherDataBase_Impl;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/BatcherDataBase_Impl;->onMessageChannelReady:Z

    return-object p0
.end method

.method public final extraCallback(Z)Lo/BatcherDataBase_Impl;
    .locals 0

    iput-boolean p1, p0, Lo/BatcherDataBase_Impl;->onNavigationEvent:Z

    return-object p0
.end method

.method public final onMessageChannelReady(Z)Lo/BatcherDataBase_Impl;
    .locals 0

    iput-boolean p1, p0, Lo/BatcherDataBase_Impl;->ICustomTabsCallback:Z

    return-object p0
.end method

.method public final onNavigationEvent(Z)Lo/BatcherDataBase_Impl;
    .locals 0

    iput-boolean p1, p0, Lo/BatcherDataBase_Impl;->extraCallback:Z

    return-object p0
.end method

.method public final onPostMessage(Z)Lo/BatcherDataBase_Impl;
    .locals 0

    iput-boolean p1, p0, Lo/BatcherDataBase_Impl;->onPostMessage:Z

    return-object p0
.end method
