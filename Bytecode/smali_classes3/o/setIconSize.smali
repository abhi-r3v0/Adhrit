.class public final Lo/setIconSize;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private extraCallback:Z

.field private onMessageChannelReady:Z

.field private final synthetic onNavigationEvent:Lo/setBackgroundTintList;

.field private final onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/setBackgroundTintList;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setIconSize;->onNavigationEvent:Lo/setBackgroundTintList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/setIconSize;->ICustomTabsCallback:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lo/setIconSize;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Z)V
    .locals 2

    .line 11
    iget-object v0, p0, Lo/setIconSize;->onNavigationEvent:Lo/setBackgroundTintList;

    invoke-virtual {v0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lo/setIconSize;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    iput-boolean p1, p0, Lo/setIconSize;->extraCallback:Z

    return-void
.end method

.method public final onPostMessage()Z
    .locals 3

    .line 7
    iget-boolean v0, p0, Lo/setIconSize;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lo/setIconSize;->onMessageChannelReady:Z

    .line 9
    iget-object v0, p0, Lo/setIconSize;->onNavigationEvent:Lo/setBackgroundTintList;

    invoke-virtual {v0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lo/setIconSize;->ICustomTabsCallback:Ljava/lang/String;

    iget-boolean v2, p0, Lo/setIconSize;->onPostMessage:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/setIconSize;->extraCallback:Z

    .line 10
    :cond_0
    iget-boolean v0, p0, Lo/setIconSize;->extraCallback:Z

    return v0
.end method
