.class final Lo/getOutOfStore$onPostMessage$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/startTracking$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getOutOfStore$onPostMessage;-><init>(Lo/getOutOfStore;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getOutOfStore$onPostMessage;

.field private synthetic onNavigationEvent:I

.field private synthetic onPostMessage:Lo/setPreinstallAttribution;


# direct methods
.method constructor <init>(Lo/getOutOfStore$onPostMessage;Lo/setPreinstallAttribution;I)V
    .locals 0

    .line 169
    iput-object p1, p0, Lo/getOutOfStore$onPostMessage$2;->onMessageChannelReady:Lo/getOutOfStore$onPostMessage;

    iput-object p2, p0, Lo/getOutOfStore$onPostMessage$2;->onPostMessage:Lo/setPreinstallAttribution;

    iput p3, p0, Lo/getOutOfStore$onPostMessage$2;->onNavigationEvent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/getCardBackgroundColor;I)V
    .locals 3

    if-eqz p1, :cond_6

    .line 173
    iget-object v0, p0, Lo/getOutOfStore$onPostMessage$2;->onMessageChannelReady:Lo/getOutOfStore$onPostMessage;

    .line 1143
    iget-object v0, v0, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 1326
    iget v1, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v1, :cond_0

    iget v1, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v1, :cond_1

    .line 1327
    :cond_0
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 1209
    :cond_1
    iget-object v1, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 2064
    iget-object v1, v1, Lo/setProgress;->onNavigationEvent:Ljava/lang/String;

    const-string v2, "image_format"

    .line 173
    invoke-interface {v0, v2, v1}, Lo/setPreinstallAttribution;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lo/getOutOfStore$onPostMessage$2;->onMessageChannelReady:Lo/getOutOfStore$onPostMessage;

    iget-object v0, v0, Lo/getOutOfStore$onPostMessage;->extraCallback:Lo/getOutOfStore;

    .line 3052
    iget-boolean v0, v0, Lo/getOutOfStore;->ICustomTabsCallback:Z

    if-nez v0, :cond_3

    and-int/lit8 v0, p2, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 175
    :cond_3
    iget-object v0, p0, Lo/getOutOfStore$onPostMessage$2;->onPostMessage:Lo/setPreinstallAttribution;

    invoke-interface {v0}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lo/getOutOfStore$onPostMessage$2;->onMessageChannelReady:Lo/getOutOfStore$onPostMessage;

    iget-object v1, v1, Lo/getOutOfStore$onPostMessage;->extraCallback:Lo/getOutOfStore;

    .line 4052
    iget-boolean v1, v1, Lo/getOutOfStore;->onPostMessage:Z

    if-nez v1, :cond_4

    .line 4150
    iget-object v1, v0, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 177
    invoke-static {v1}, Lo/setLayoutDirection;->onMessageChannelReady(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4170
    :cond_4
    iget-object v1, v0, Lo/getHostPrefix;->onRelationshipValidationResult:Lo/ɩ;

    .line 5166
    iget-object v0, v0, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    .line 181
    iget v2, p0, Lo/getOutOfStore$onPostMessage$2;->onNavigationEvent:I

    .line 179
    invoke-static {v1, v0, p1, v2}, Lo/extraCallback;->onMessageChannelReady(Lo/ɩ;Lo/ǃ;Lo/getCardBackgroundColor;I)I

    move-result v0

    .line 5190
    iput v0, p1, Lo/getCardBackgroundColor;->onRelationshipValidationResult:I

    .line 187
    :cond_5
    iget-object v0, p0, Lo/getOutOfStore$onPostMessage$2;->onPostMessage:Lo/setPreinstallAttribution;

    .line 188
    invoke-interface {v0}, Lo/setPreinstallAttribution;->ICustomTabsCallback$Stub()Lo/context;

    .line 194
    iget-object v0, p0, Lo/getOutOfStore$onPostMessage$2;->onMessageChannelReady:Lo/getOutOfStore$onPostMessage;

    invoke-static {v0, p1, p2}, Lo/getOutOfStore$onPostMessage;->ICustomTabsCallback(Lo/getOutOfStore$onPostMessage;Lo/getCardBackgroundColor;I)V

    :cond_6
    return-void
.end method
