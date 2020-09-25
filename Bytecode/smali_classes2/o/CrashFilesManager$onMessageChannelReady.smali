.class final Lo/CrashFilesManager$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashFilesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/CrashFilesManager;


# direct methods
.method private constructor <init>(Lo/CrashFilesManager;)V
    .locals 0

    .line 1082
    iput-object p1, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/CrashFilesManager;B)V
    .locals 0

    .line 1082
    invoke-direct {p0, p1}, Lo/CrashFilesManager$onMessageChannelReady;-><init>(Lo/CrashFilesManager;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lorg/json/JSONObject;)V
    .locals 2

    .line 1100
    iget-object v0, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1101
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1102
    iget-object p1, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-static {p1}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final extraCallback(Lorg/json/JSONObject;)V
    .locals 2

    .line 1114
    iget-object v0, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1115
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1116
    iget-object p1, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-static {p1}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 1121
    iget-object v0, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1122
    iget-object v1, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-static {v1}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onMessageChannelReady(Lorg/json/JSONObject;)V
    .locals 2

    .line 1086
    iget-object v0, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1087
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1088
    iget-object p1, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-static {p1}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onNavigationEvent(Lorg/json/JSONObject;)V
    .locals 2

    .line 1093
    iget-object v0, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1094
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1095
    iget-object p1, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-static {p1}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 1127
    iget-object v0, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1128
    iget-object v1, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-static {v1}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onPostMessage(Lorg/json/JSONObject;)V
    .locals 2

    .line 1107
    iget-object v0, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-static {v0}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1108
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1109
    iget-object p1, p0, Lo/CrashFilesManager$onMessageChannelReady;->ICustomTabsCallback:Lo/CrashFilesManager;

    invoke-static {p1}, Lo/CrashFilesManager;->onPostMessage(Lo/CrashFilesManager;)Lo/CrashFilesManager$ICustomTabsCallback$Stub;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
