.class final Lo/getCompoundHash$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash;->extraCallback(Z)Lo/setTransactionSuccessful;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Stub"
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getCompoundHash;


# direct methods
.method constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 942
    iput-object p1, p0, Lo/getCompoundHash$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 945
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-virtual {v0}, Lo/getCompoundHash;->asInterface()V

    .line 946
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->asBinder(Lo/getCompoundHash;)Lo/getMinKey$ICustomTabsCallback$Stub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->asBinder(Lo/getCompoundHash;)Lo/getMinKey$ICustomTabsCallback$Stub;

    .line 949
    :cond_0
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->INotificationSideChannel(Lo/getCompoundHash;)Lo/getCompoundHash$mayLaunchUrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->INotificationSideChannel(Lo/getCompoundHash;)Lo/getCompoundHash$mayLaunchUrl;

    move-result-object v0

    iget-object v0, v0, Lo/getCompoundHash$mayLaunchUrl;->onPostMessage:Lo/getRight$ICustomTabsCallback;

    .line 1196
    iget-object v0, v0, Lo/getRight$ICustomTabsCallback;->onPostMessage:Lo/getMinKey;

    .line 1186
    invoke-virtual {v0}, Lo/getMinKey;->onMessageChannelReady()V

    :cond_1
    return-void
.end method
