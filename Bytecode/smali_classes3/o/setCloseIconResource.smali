.class public final synthetic Lo/setCloseIconResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Landroid/os/Bundle;

.field private final onMessageChannelReady:Lo/setChipIconSize;


# direct methods
.method public constructor <init>(Lo/setChipIconSize;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setCloseIconResource;->onMessageChannelReady:Lo/setChipIconSize;

    iput-object p2, p0, Lo/setCloseIconResource;->extraCallback:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lo/setCloseIconResource;->onMessageChannelReady:Lo/setChipIconSize;

    iget-object v1, p0, Lo/setCloseIconResource;->extraCallback:Landroid/os/Bundle;

    .line 2
    invoke-static {}, Lo/ParserException;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    sget-object v3, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$3:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->IPostMessageService$Stub:Lo/setIconPadding;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lo/setIconPadding;->extraCallback(Landroid/os/Bundle;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v2

    iget-object v2, v2, Lo/setBackgroundTintList;->IPostMessageService$Stub:Lo/setIconPadding;

    invoke-virtual {v2}, Lo/setIconPadding;->ICustomTabsCallback()Landroid/os/Bundle;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 10
    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_4

    instance-of v8, v7, Ljava/lang/Long;

    if-nez v8, :cond_4

    instance-of v8, v7, Ljava/lang/Double;

    if-nez v8, :cond_4

    .line 11
    invoke-virtual {v0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    invoke-static {v7}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 12
    invoke-virtual {v0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v8

    const/16 v9, 0x1b

    .line 13
    invoke-virtual {v8, v9, v6, v6, v5}, Lo/setHelperTextEnabled;->onMessageChannelReady(ILjava/lang/String;Ljava/lang/String;I)V

    .line 14
    :cond_3
    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v5

    .line 15
    invoke-virtual {v5}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v5

    const-string v6, "Invalid default event parameter type. Name, value"

    .line 16
    invoke-virtual {v5, v6, v4, v7}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-static {v4}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 19
    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v5

    .line 20
    invoke-virtual {v5}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v5

    const-string v6, "Invalid default event parameter name. Name"

    .line 21
    invoke-virtual {v5, v6, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-nez v7, :cond_6

    .line 24
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {v0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v5

    const/16 v6, 0x64

    const-string v8, "param"

    .line 27
    invoke-virtual {v5, v8, v4, v6, v7}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 28
    invoke-virtual {v0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v7}, Lo/setHelperTextEnabled;->extraCallback(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_7
    invoke-virtual {v0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    .line 31
    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    invoke-virtual {v1}, Lo/setStartIconTintList;->onPostMessage()I

    move-result v1

    .line 32
    invoke-static {v2, v1}, Lo/setHelperTextEnabled;->onNavigationEvent(Landroid/os/Bundle;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 33
    invoke-virtual {v0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v1

    const/16 v3, 0x1a

    .line 34
    invoke-virtual {v1, v3, v6, v6, v5}, Lo/setHelperTextEnabled;->onMessageChannelReady(ILjava/lang/String;Ljava/lang/String;I)V

    .line 35
    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onRelationshipValidationResult()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v3, "Too many default event parameters set. Discarding beyond event parameter limit"

    .line 37
    invoke-virtual {v1, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 38
    :cond_8
    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v1

    iget-object v1, v1, Lo/setBackgroundTintList;->IPostMessageService$Stub:Lo/setIconPadding;

    invoke-virtual {v1, v2}, Lo/setIconPadding;->extraCallback(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {v0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/setChipSpacingResource;->onNavigationEvent(Landroid/os/Bundle;)V

    :cond_9
    :goto_1
    return-void
.end method
