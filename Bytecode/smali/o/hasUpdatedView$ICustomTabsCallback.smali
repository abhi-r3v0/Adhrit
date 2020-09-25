.class public final Lo/hasUpdatedView$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasUpdatedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/InputItemsAdapter$Companion;",
        "",
        "()V",
        "ADDRESS_LIST_ITEM",
        "",
        "CANDIDATE_LIST_ITEM",
        "CHECKBOX_LIST_ITEM",
        "DROPDOWN_LIST_ITEM",
        "TYPE_SECTION",
        "TYPE_USER_INPUT_FIELD",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/isSet;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/isSet;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/hasUpdatedView$ICustomTabsCallback;->onPostMessage:Lo/isSet;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 8

    .line 2000
    iget-object v0, p0, Lo/hasUpdatedView$ICustomTabsCallback;->onPostMessage:Lo/isSet;

    .line 3000
    iget-object v1, v0, Lo/isSet;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "reportBinderDeath"

    invoke-virtual {v1, v4, v3}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lo/isSet;->asBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onPostMessage$extraCallback;

    if-nez v1, :cond_3

    iget-object v1, v0, Lo/isSet;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lo/isSet;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "%s : Binder has died."

    invoke-virtual {v1, v4, v3}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lo/isSet;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/removeDependent;

    .line 4000
    iget-object v4, v4, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    if-eqz v4, :cond_1

    .line 3000
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-ge v5, v6, :cond_0

    new-instance v5, Landroid/os/RemoteException;

    invoke-direct {v5}, Landroid/os/RemoteException;-><init>()V

    goto :goto_1

    :cond_0
    new-instance v5, Landroid/os/RemoteException;

    iget-object v6, v0, Lo/isSet;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, " : Binder has died."

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 5000
    :goto_1
    iget-object v4, v4, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {v4, v5}, Lo/Onboarding;->extraCallback(Ljava/lang/Exception;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3000
    :cond_2
    iget-object v0, v0, Lo/isSet;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    iget-object v0, v0, Lo/isSet;->extraCallback:Lo/addItemDecoration$onPostMessage;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "calling onBinderDied"

    invoke-virtual {v0, v2, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
