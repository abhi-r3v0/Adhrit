.class final Lo/getTrackTintMode$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTrackTintMode;->asInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/getTrackTintMode$warmup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getTrackTintMode$warmup;

    invoke-direct {v0}, Lo/getTrackTintMode$warmup;-><init>()V

    sput-object v0, Lo/getTrackTintMode$warmup;->onMessageChannelReady:Lo/getTrackTintMode$warmup;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 319
    sget-object v0, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {v0}, Lo/getTrackTintMode;->ICustomTabsCallback(Lo/getTrackTintMode;)Lo/Settings;

    move-result-object v0

    .line 3350
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v2, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2894
    iget-object v1, v0, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    new-instance v2, Lo/buildInstanceIdentifierChanged$extraCallback;

    iget-object v0, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-direct {v2, v0}, Lo/buildInstanceIdentifierChanged$extraCallback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lo/buildInstanceIdentifierChanged;->onNavigationEvent(Lo/buildInstanceIdentifierChanged$extraCallback;)V

    .line 320
    :cond_0
    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 4122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 320
    :cond_1
    check-cast v0, Landroid/content/Context;

    sget-object v1, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {}, Lo/getTrackTintMode;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/Settings;->onPostMessage(Landroid/content/Context;Ljava/lang/String;)Lo/Settings;

    move-result-object v0

    .line 4249
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v1}, Lo/AppSpiCall;->asInterface()V

    .line 5008
    iget-object v1, v0, Lo/Settings;->extraCallback:Landroid/content/Context;

    invoke-static {v1}, Lo/buildInstanceIdentifierChanged;->onPostMessage(Landroid/content/Context;)Lo/buildInstanceIdentifierChanged;

    move-result-object v1

    .line 4250
    new-instance v2, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;

    iget-object v3, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-direct {v2, v3}, Lo/buildInstanceIdentifierChanged$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 5112
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x7

    .line 5113
    iput v4, v3, Landroid/os/Message;->what:I

    .line 5114
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5116
    iget-object v1, v1, Lo/buildInstanceIdentifierChanged;->extraCallback:Lo/buildInstanceIdentifierChanged$onTransact;

    invoke-virtual {v1, v3}, Lo/buildInstanceIdentifierChanged$onTransact;->ICustomTabsCallback(Landroid/os/Message;)V

    .line 5926
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    invoke-virtual {v1}, Lo/AppSpiCall;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4251
    invoke-virtual {v0, v1, v2}, Lo/Settings;->onMessageChannelReady(Ljava/lang/String;Z)V

    .line 4252
    iget-object v1, v0, Lo/Settings;->onTransact:Lo/SettingsJsonParser;

    const/4 v3, 0x0

    .line 6026
    iput-object v3, v1, Lo/SettingsJsonParser;->ICustomTabsCallback:Ljava/lang/String;

    .line 6027
    iput v2, v1, Lo/SettingsJsonParser;->onMessageChannelReady:I

    .line 4253
    iget-object v1, v0, Lo/Settings;->ICustomTabsCallback$Stub:Lo/getSingleFileWithExtension;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1, v2}, Lo/getSingleFileWithExtension;->extraCallback(Lorg/json/JSONArray;)V

    .line 4254
    iget-object v1, v0, Lo/Settings;->ICustomTabsCallback$Stub:Lo/getSingleFileWithExtension;

    invoke-interface {v1}, Lo/getSingleFileWithExtension;->ICustomTabsCallback()V

    .line 7350
    iget-object v1, v0, Lo/Settings;->asInterface:Lo/AppSpiCall;

    iget-object v2, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/AppSpiCall;->newSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6894
    iget-object v1, v0, Lo/Settings;->onNavigationEvent:Lo/buildInstanceIdentifierChanged;

    new-instance v2, Lo/buildInstanceIdentifierChanged$extraCallback;

    iget-object v0, v0, Lo/Settings;->onPostMessage:Ljava/lang/String;

    invoke-direct {v2, v0}, Lo/buildInstanceIdentifierChanged$extraCallback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lo/buildInstanceIdentifierChanged;->onNavigationEvent(Lo/buildInstanceIdentifierChanged$extraCallback;)V

    :cond_2
    return-void
.end method
