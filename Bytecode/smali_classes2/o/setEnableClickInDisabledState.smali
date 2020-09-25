.class public final Lo/setEnableClickInDisabledState;
.super Ljava/lang/Object;


# instance fields
.field private final ICustomTabsCallback:Landroid/net/Uri;

.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Z

.field private final onPostMessage:Ljava/lang/String;

.field private final onTransact:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 7

    const/4 v1, 0x0

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lo/setEnableClickInDisabledState;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setEnableClickInDisabledState;->extraCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/setEnableClickInDisabledState;->ICustomTabsCallback:Landroid/net/Uri;

    iput-object p3, p0, Lo/setEnableClickInDisabledState;->onPostMessage:Ljava/lang/String;

    iput-object p4, p0, Lo/setEnableClickInDisabledState;->onMessageChannelReady:Ljava/lang/String;

    iput-boolean p5, p0, Lo/setEnableClickInDisabledState;->onNavigationEvent:Z

    iput-boolean p6, p0, Lo/setEnableClickInDisabledState;->onTransact:Z

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setEnableClickInDisabledState;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lo/setEnableClickInDisabledState;->ICustomTabsCallback:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/setEnableClickInDisabledState;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/setEnableClickInDisabledState;->extraCallback:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/setEnableClickInDisabledState;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/setEnableClickInDisabledState;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/setEnableClickInDisabledState;)Z
    .locals 0

    iget-boolean p0, p0, Lo/setEnableClickInDisabledState;->onTransact:Z

    return p0
.end method

.method static synthetic onPostMessage(Lo/setEnableClickInDisabledState;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/setEnableClickInDisabledState;->onMessageChannelReady:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic onTransact(Lo/setEnableClickInDisabledState;)Z
    .locals 0

    iget-boolean p0, p0, Lo/setEnableClickInDisabledState;->onNavigationEvent:Z

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/setOnSeekerChangeListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/setOnSeekerChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lo/setOnSeekerChangeListener;->onNavigationEvent(Lo/setEnableClickInDisabledState;Ljava/lang/String;Ljava/lang/String;)Lo/setOnSeekerChangeListener;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/setEnableClickInDisabledState;
    .locals 8

    new-instance v7, Lo/setEnableClickInDisabledState;

    iget-object v1, p0, Lo/setEnableClickInDisabledState;->extraCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/setEnableClickInDisabledState;->ICustomTabsCallback:Landroid/net/Uri;

    iget-object v3, p0, Lo/setEnableClickInDisabledState;->onPostMessage:Ljava/lang/String;

    iget-boolean v5, p0, Lo/setEnableClickInDisabledState;->onNavigationEvent:Z

    iget-boolean v6, p0, Lo/setEnableClickInDisabledState;->onTransact:Z

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lo/setEnableClickInDisabledState;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v7
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/setEnableClickInDisabledState;
    .locals 8

    iget-boolean v5, p0, Lo/setEnableClickInDisabledState;->onNavigationEvent:Z

    if-nez v5, :cond_0

    new-instance v7, Lo/setEnableClickInDisabledState;

    iget-object v1, p0, Lo/setEnableClickInDisabledState;->extraCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/setEnableClickInDisabledState;->ICustomTabsCallback:Landroid/net/Uri;

    iget-object v4, p0, Lo/setEnableClickInDisabledState;->onMessageChannelReady:Ljava/lang/String;

    iget-boolean v6, p0, Lo/setEnableClickInDisabledState;->onTransact:Z

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lo/setEnableClickInDisabledState;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v7

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set GServices prefix and skip GServices"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;Lo/setButtonEnabled;)Lo/setOnSeekerChangeListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lo/setButtonEnabled<",
            "TT;>;)",
            "Lo/setOnSeekerChangeListener<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lo/setOnSeekerChangeListener;->onPostMessage(Lo/setEnableClickInDisabledState;Ljava/lang/String;Ljava/lang/Object;Lo/setButtonEnabled;)Lo/setOnSeekerChangeListener;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/String;Z)Lo/setOnSeekerChangeListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lo/setOnSeekerChangeListener<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lo/setOnSeekerChangeListener;->ICustomTabsCallback(Lo/setEnableClickInDisabledState;Ljava/lang/String;Z)Lo/setOnSeekerChangeListener;

    move-result-object p1

    return-object p1
.end method
