.class public final Lo/setSubUiVisibilityListener$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSubUiVisibilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setChildInsets;

.field private synthetic onNavigationEvent:Lo/setSubUiVisibilityListener;


# direct methods
.method public constructor <init>(Lo/setSubUiVisibilityListener;Lo/setChildInsets;)V
    .locals 0

    iput-object p1, p0, Lo/setSubUiVisibilityListener$onMessageChannelReady;->onNavigationEvent:Lo/setSubUiVisibilityListener;

    iput-object p2, p0, Lo/setSubUiVisibilityListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setChildInsets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "contacts-sdk"

    const-string v1, "db contact pull requested"

    .line 24
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lo/setSubUiVisibilityListener$onMessageChannelReady;->onNavigationEvent:Lo/setSubUiVisibilityListener;

    invoke-static {v1}, Lo/setSubUiVisibilityListener;->onPostMessage(Lo/setSubUiVisibilityListener;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v1, v2}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "contact permission missing"

    .line 26
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lo/setSubUiVisibilityListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setChildInsets;

    invoke-interface {v0, v2}, Lo/setChildInsets;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lo/setSubUiVisibilityListener$onMessageChannelReady;->onNavigationEvent:Lo/setSubUiVisibilityListener;

    invoke-static {v0}, Lo/setSubUiVisibilityListener;->onMessageChannelReady(Lo/setSubUiVisibilityListener;)Lo/setOnScrollChangeListener;

    move-result-object v0

    .line 1041
    invoke-virtual {v0}, Lo/setOnScrollChangeListener;->onPostMessage()Ljava/util/List;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lo/setSubUiVisibilityListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setChildInsets;

    new-instance v2, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Lo/setChildInsets;->onNavigationEvent(Ljava/util/ArrayList;)V

    return-void
.end method
