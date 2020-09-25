.class public final Lo/IPostMessageService$Stub$Proxy;
.super Landroid/content/ContextWrapper;
.source ""


# instance fields
.field private ICustomTabsCallback:Landroid/view/LayoutInflater;

.field public extraCallback:I

.field private onMessageChannelReady:Landroid/content/res/Resources$Theme;

.field private onNavigationEvent:Landroid/content/res/Resources;

.field private onPostMessage:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 64
    iput p2, p0, Lo/IPostMessageService$Stub$Proxy;->extraCallback:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object p2, p0, Lo/IPostMessageService$Stub$Proxy;->onMessageChannelReady:Landroid/content/res/Resources$Theme;

    return-void
.end method

.method private extraCallback()V
    .locals 3

    .line 186
    iget-object v0, p0, Lo/IPostMessageService$Stub$Proxy;->onMessageChannelReady:Landroid/content/res/Resources$Theme;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lo/IPostMessageService$Stub$Proxy;->onMessageChannelReady:Landroid/content/res/Resources$Theme;

    .line 189
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v2, p0, Lo/IPostMessageService$Stub$Proxy;->onMessageChannelReady:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 194
    :cond_1
    iget-object v0, p0, Lo/IPostMessageService$Stub$Proxy;->onMessageChannelReady:Landroid/content/res/Resources$Theme;

    iget v2, p0, Lo/IPostMessageService$Stub$Proxy;->extraCallback:I

    .line 1182
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method


# virtual methods
.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final extraCallback(Landroid/content/res/Configuration;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lo/IPostMessageService$Stub$Proxy;->onNavigationEvent:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lo/IPostMessageService$Stub$Proxy;->onPostMessage:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lo/IPostMessageService$Stub$Proxy;->onPostMessage:Landroid/content/res/Configuration;

    return-void

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Override configuration has already been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getResources() or getAssets() has already been called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 4

    .line 1113
    iget-object v0, p0, Lo/IPostMessageService$Stub$Proxy;->onNavigationEvent:Landroid/content/res/Resources;

    if-nez v0, :cond_2

    .line 1114
    iget-object v0, p0, Lo/IPostMessageService$Stub$Proxy;->onPostMessage:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    .line 1115
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lo/IPostMessageService$Stub$Proxy;->onNavigationEvent:Landroid/content/res/Resources;

    goto :goto_0

    .line 1116
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 1117
    iget-object v0, p0, Lo/IPostMessageService$Stub$Proxy;->onPostMessage:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lo/IPostMessageService$Stub$Proxy;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 1118
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lo/IPostMessageService$Stub$Proxy;->onNavigationEvent:Landroid/content/res/Resources;

    goto :goto_0

    .line 1120
    :cond_1
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1121
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1122
    iget-object v2, p0, Lo/IPostMessageService$Stub$Proxy;->onPostMessage:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1123
    new-instance v2, Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lo/IPostMessageService$Stub$Proxy;->onNavigationEvent:Landroid/content/res/Resources;

    .line 1126
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/IPostMessageService$Stub$Proxy;->onNavigationEvent:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "layout_inflater"

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object p1, p0, Lo/IPostMessageService$Stub$Proxy;->ICustomTabsCallback:Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lo/IPostMessageService$Stub$Proxy;->ICustomTabsCallback:Landroid/view/LayoutInflater;

    .line 165
    :cond_0
    iget-object p1, p0, Lo/IPostMessageService$Stub$Proxy;->ICustomTabsCallback:Landroid/view/LayoutInflater;

    return-object p1

    .line 167
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 147
    iget-object v0, p0, Lo/IPostMessageService$Stub$Proxy;->onMessageChannelReady:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    return-object v0

    .line 151
    :cond_0
    iget v0, p0, Lo/IPostMessageService$Stub$Proxy;->extraCallback:I

    if-nez v0, :cond_1

    .line 152
    sget v0, Lo/extraCallback$onTransact;->Theme_AppCompat_Light:I

    iput v0, p0, Lo/IPostMessageService$Stub$Proxy;->extraCallback:I

    .line 154
    :cond_1
    invoke-direct {p0}, Lo/IPostMessageService$Stub$Proxy;->extraCallback()V

    .line 156
    iget-object v0, p0, Lo/IPostMessageService$Stub$Proxy;->onMessageChannelReady:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final setTheme(I)V
    .locals 1

    .line 131
    iget v0, p0, Lo/IPostMessageService$Stub$Proxy;->extraCallback:I

    if-eq v0, p1, :cond_0

    .line 132
    iput p1, p0, Lo/IPostMessageService$Stub$Proxy;->extraCallback:I

    .line 133
    invoke-direct {p0}, Lo/IPostMessageService$Stub$Proxy;->extraCallback()V

    :cond_0
    return-void
.end method
