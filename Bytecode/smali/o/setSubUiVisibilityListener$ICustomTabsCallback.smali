.class public final Lo/setSubUiVisibilityListener$ICustomTabsCallback;
.super Lo/subUiVisibilityChanged;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSubUiVisibilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/subUiVisibilityChanged<",
        "Lo/setSubUiVisibilityListener;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/contacthelper/ContactHelper$Companion;",
        "Lcom/dreamplug/contacthelper/SingletonHolder;",
        "Lcom/dreamplug/contacthelper/ContactHelper;",
        "Landroid/content/Context;",
        "()V",
        "contact_helper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    sget-object v0, Lo/setSubUiVisibilityListener$ICustomTabsCallback$2;->extraCallback:Lo/setSubUiVisibilityListener$ICustomTabsCallback$2;

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-direct {p0, v0}, Lo/subUiVisibilityChanged;-><init>(Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/setSubUiVisibilityListener$ICustomTabsCallback;-><init>()V

    return-void
.end method
