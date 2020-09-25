.class public abstract Lo/getCallingPackage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCallingPackage$ICustomTabsCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent(Lo/toLegacyStreamType;)Lo/getCallingPackage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/toLegacyStreamType;",
            ":",
            "Lo/removeOnActiveChangeListener;",
            ">(TT;)",
            "Lo/getCallingPackage;"
        }
    .end annotation

    .line 128
    new-instance v0, Lo/getRemoteControlClient;

    move-object v1, p0

    check-cast v1, Lo/removeOnActiveChangeListener;

    invoke-interface {v1}, Lo/removeOnActiveChangeListener;->getViewModelStore()Lo/setRatingType;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/getRemoteControlClient;-><init>(Lo/toLegacyStreamType;Lo/setRatingType;)V

    return-object v0
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Landroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            "Lo/getCallingPackage$ICustomTabsCallback<",
            "TD;>;)",
            "Lo/getCurrentControllerInfo<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback()V
.end method

.method public abstract onPostMessage(ILandroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lo/getCallingPackage$ICustomTabsCallback<",
            "TD;>;)",
            "Lo/getCurrentControllerInfo<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
