.class public final Lo/setStrokeWidthResource;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Ljava/lang/String;

.field private final synthetic onMessageChannelReady:Lo/setBackgroundTintList;

.field private onNavigationEvent:Z

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/setBackgroundTintList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setStrokeWidthResource;->onMessageChannelReady:Lo/setBackgroundTintList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/setStrokeWidthResource;->extraCallback:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lo/setStrokeWidthResource;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 3

    .line 7
    iget-boolean v0, p0, Lo/setStrokeWidthResource;->onNavigationEvent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lo/setStrokeWidthResource;->onNavigationEvent:Z

    .line 9
    iget-object v0, p0, Lo/setStrokeWidthResource;->onMessageChannelReady:Lo/setBackgroundTintList;

    invoke-virtual {v0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lo/setStrokeWidthResource;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/setStrokeWidthResource;->onPostMessage:Ljava/lang/String;

    .line 10
    :cond_0
    iget-object v0, p0, Lo/setStrokeWidthResource;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lo/setStrokeWidthResource;->onMessageChannelReady:Lo/setBackgroundTintList;

    invoke-virtual {v0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lo/setStrokeWidthResource;->extraCallback:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    iput-object p1, p0, Lo/setStrokeWidthResource;->onPostMessage:Ljava/lang/String;

    return-void
.end method
