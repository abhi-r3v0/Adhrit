.class public Lo/setNotificationConfig;
.super Lo/setUserProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lo/setNotificationConfig<",
        "TM;>;>",
        "Lo/setUserProperty;"
    }
.end annotation


# instance fields
.field protected extraCallback:Lo/restoreUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/setUserProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic ICustomTabsCallback()Lo/setUserProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/setUserProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setNotificationConfig;

    return-object v0
.end method

.method public ICustomTabsCallback(Lo/setPushRegistrationToken;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/setNotificationConfig;->extraCallback:Lo/restoreUser;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/setNotificationConfig;->extraCallback:Lo/restoreUser;

    invoke-virtual {v1}, Lo/restoreUser;->extraCallback()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lo/setNotificationConfig;->extraCallback:Lo/restoreUser;

    invoke-virtual {v1, v0}, Lo/restoreUser;->ICustomTabsCallback(I)Lo/setUser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/setUser;->extraCallback(Lo/setPushRegistrationToken;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/setNotificationConfig;->onPostMessage()Lo/setNotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method protected onNavigationEvent()I
    .locals 3

    iget-object v0, p0, Lo/setNotificationConfig;->extraCallback:Lo/restoreUser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lo/setNotificationConfig;->extraCallback:Lo/restoreUser;

    invoke-virtual {v2}, Lo/restoreUser;->extraCallback()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lo/setNotificationConfig;->extraCallback:Lo/restoreUser;

    invoke-virtual {v2, v0}, Lo/restoreUser;->ICustomTabsCallback(I)Lo/setUser;

    move-result-object v2

    invoke-virtual {v2}, Lo/setUser;->onPostMessage()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public onPostMessage()Lo/setNotificationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lo/setUserProperty;->ICustomTabsCallback()Lo/setUserProperty;

    move-result-object v0

    check-cast v0, Lo/setNotificationConfig;

    invoke-static {p0, v0}, Lo/getUser;->extraCallback(Lo/setNotificationConfig;Lo/setNotificationConfig;)V

    return-object v0
.end method
