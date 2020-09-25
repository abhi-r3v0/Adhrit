.class public final Lo/getSwitchMinWidth;
.super Ljava/lang/Object;

# interfaces
.implements Lo/showSoftInputIfNecessary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getSwitchMinWidth$onPostMessage;,
        Lo/getSwitchMinWidth$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/datadog/android/log/internal/user/NoOpUserInfoProvider;",
        "Lcom/datadog/android/log/internal/user/MutableUserInfoProvider;",
        "()V",
        "getUserInfo",
        "Lcom/datadog/android/log/internal/user/UserInfo;",
        "setUserInfo",
        "",
        "userInfo",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Lo/ShareActionProvider;
    .locals 2

    .line 1022
    new-instance v0, Lo/ShareActionProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ShareActionProvider;-><init>(B)V

    return-object v0
.end method
