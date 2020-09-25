.class public final Lo/getDrawableIfKnown;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\u0011\u001a\u00020\u0012R4\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/deeplink/CredPayLinkInfo;",
        "",
        "()V",
        "value",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/androidapp/deeplink/CredPayDeepLinkData;",
        "credPayDeepLinkData",
        "getCredPayDeepLinkData",
        "()Lcom/dreamplug/androidapp/core/Event;",
        "setCredPayDeepLinkData",
        "(Lcom/dreamplug/androidapp/core/Event;)V",
        "extractData",
        "",
        "uri",
        "Landroid/net/Uri;",
        "callingActivity",
        "",
        "hasPayLink",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static extraCallback:Lo/getThumbTintList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getThumbTintList<",
            "Lo/TintInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final onMessageChannelReady:Lo/getDrawableIfKnown;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lo/getDrawableIfKnown;

    invoke-direct {v0}, Lo/getDrawableIfKnown;-><init>()V

    sput-object v0, Lo/getDrawableIfKnown;->onMessageChannelReady:Lo/getDrawableIfKnown;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady()Lo/getThumbTintList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getThumbTintList<",
            "Lo/TintInfo;",
            ">;"
        }
    .end annotation

    .line 9
    sget-object v0, Lo/getDrawableIfKnown;->extraCallback:Lo/getThumbTintList;

    return-object v0
.end method

.method public static onPostMessage()Z
    .locals 3

    .line 25
    sget-object v0, Lo/clear;->ICustomTabsCallback$Stub:Lo/clear;

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 25
    :goto_0
    check-cast v0, Lo/getThumbTintList;

    if-eqz v0, :cond_2

    .line 2011
    iget-boolean v1, v0, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2016
    :cond_1
    iget-object v2, v0, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 25
    :goto_1
    check-cast v2, Lo/TintInfo;

    :cond_2
    if-eqz v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
